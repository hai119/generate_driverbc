; ModuleID = '../bcout/drivers/media/dvb-frontends/cxd2820r_core.llvm.bc'
source_filename = "drivers/media/dvb-frontends/cxd2820r_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_cxd2820r_driver_init6:\09\09\09"
module asm ".long\09cxd2820r_driver_init - .\09\09\09"
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.page = type { i64, %union.anon.4, %union.anon.18, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, {}*, {}*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type opaque
%struct.proc_dir_entry = type opaque
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.64], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.64 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.65 }>
%union.anon.65 = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, void (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i8*)* }
%struct.analog_demod_info = type { i8* }
%struct.kmem_cache = type opaque
%struct.cxd2820r_priv = type { [2 x %struct.i2c_client*], [2 x %struct.regmap*], %struct.i2c_adapter*, %struct.dvb_frontend, i8, i8, i8, i8, i64, i64, i8, [3 x i8], %struct.gpio_chip, i32, i8 }
%struct.regmap = type opaque
%struct.gpio_chip = type { i8*, %struct.gpio_device*, %struct.device*, %struct.module*, i32 (%struct.gpio_chip*, i32)*, void (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32, i32)*, i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i64*, i64*)*, void (%struct.gpio_chip*, i32, i32)*, void (%struct.gpio_chip*, i64*, i64*)*, i32 (%struct.gpio_chip*, i32, i64)*, i32 (%struct.gpio_chip*, i32)*, void (%struct.seq_file*, %struct.gpio_chip*)*, i32 (%struct.gpio_chip*, i64*, i32)*, i32 (%struct.gpio_chip*)*, i32, i16, i8**, i8, i64 (i8*)*, void (i8*, i64)*, i8, i8*, i8*, i8*, i8*, i8*, i8, i32, %struct.spinlock, i64, i64, %struct.gpio_irq_chip, i64*, %struct.device_node*, i32, i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)* }
%struct.gpio_device = type opaque
%struct.gpio_irq_chip = type { %struct.irq_chip*, %struct.irq_domain*, %struct.irq_domain_ops*, %struct.fwnode_handle*, %struct.irq_domain*, i32 (%struct.gpio_chip*, i32, i32, i32*, i32*)*, i8* (%struct.gpio_chip*, i32, i32)*, i32 (%struct.gpio_chip*, i32)*, %struct.irq_domain_ops, void (%struct.irq_desc*)*, i32, %struct.lock_class_key*, %struct.lock_class_key*, void (%struct.irq_desc*)*, i8*, i32, i32*, i32*, i8, i32 (%struct.gpio_chip*)*, void (%struct.gpio_chip*, i64*, i32)*, i64*, i32, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)* }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.reg_val_mask = type { i32, i8, i8 }
%struct.cxd2820r_config = type { i8, i8, i8, i8, i8 }
%struct.cxd2820r_platform_data = type { i8, i8, i8, i8, i32**, %struct.dvb_frontend* (%struct.i2c_client*)*, i8 }

@.str = private unnamed_addr constant [9 x i8] c"cxd2820r\00", align 1
@__UNIQUE_ID___addressable_cxd2820r_driver_init224 = internal global i8* bitcast (i32 ()* @cxd2820r_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@cxd2820r_driver = internal global %struct.i2c_driver { i32 0, i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cxd2820r_probe, i32 (%struct.i2c_client*)* @cxd2820r_remove, i32 (%struct.i2c_client*)* null, void (%struct.i2c_client*)* null, void (%struct.i2c_client*, i32, i32)* null, i32 (%struct.i2c_client*, i32, i8*)* null, %struct.device_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 1, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.i2c_device_id* getelementptr inbounds ([2 x %struct.i2c_device_id], [2 x %struct.i2c_device_id]* @cxd2820r_id_table, i32 0, i32 0), i32 (%struct.i2c_client*, %struct.i2c_board_info*)* null, i16* null, %struct.list_head zeroinitializer }, align 8, !dbg !375
@__exitcall_cxd2820r_driver_exit = internal global void ()* @cxd2820r_driver_exit, section ".exitcall.exit", align 8, !dbg !346
@__UNIQUE_ID_author225 = internal constant [47 x i8] c"cxd2820r.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1, !dbg !353
@__UNIQUE_ID_description226 = internal constant [54 x i8] c"cxd2820r.description=Sony CXD2820R demodulator driver\00", section ".modinfo", align 1, !dbg !360
@__UNIQUE_ID_file227 = internal constant [51 x i8] c"cxd2820r.file=drivers/media/dvb-frontends/cxd2820r\00", section ".modinfo", align 1, !dbg !365
@__UNIQUE_ID_license228 = internal constant [21 x i8] c"cxd2820r.license=GPL\00", section ".modinfo", align 1, !dbg !370
@cxd2820r_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cxd2820r\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.i2c_device_id zeroinitializer], align 16, !dbg !4840
@cxd2820r_probe.regmap_range_cfg0 = internal constant [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { i8* null, i32 0, i32 16383, i32 0, i32 255, i32 0, i32 0, i32 256 }], align 16, !dbg !4418
@cxd2820r_probe.regmap_range_cfg1 = internal constant [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { i8* null, i32 0, i32 511, i32 0, i32 255, i32 0, i32 0, i32 256 }], align 16, !dbg !4433
@cxd2820r_probe.regmap_config0 = internal constant %struct.regmap_config { i8* null, i32 8, i32 0, i32 0, i32 8, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i8 0, void (i8*)* null, void (i8*)* null, i8* null, i32 (i8*, i32, i32*)* null, i32 (i8*, i32, i32)* null, i8 0, i32 16383, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.reg_default* null, i32 0, i32 0, i8* null, i32 0, i64 0, i64 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, %struct.regmap_range_cfg* getelementptr inbounds ([1 x %struct.regmap_range_cfg], [1 x %struct.regmap_range_cfg]* @cxd2820r_probe.regmap_range_cfg0, i32 0, i32 0), i32 1, i8 0, i32 0, i32 0, i8 0 }, align 8, !dbg !4435
@cxd2820r_probe.regmap_config1 = internal constant %struct.regmap_config { i8* null, i32 8, i32 0, i32 0, i32 8, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i8 0, void (i8*)* null, void (i8*)* null, i8* null, i32 (i8*, i32, i32*)* null, i32 (i8*, i32, i32)* null, i8 0, i32 511, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.reg_default* null, i32 0, i32 0, i8* null, i32 0, i64 0, i64 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, %struct.regmap_range_cfg* getelementptr inbounds ([1 x %struct.regmap_range_cfg], [1 x %struct.regmap_range_cfg]* @cxd2820r_probe.regmap_range_cfg1, i32 0, i32 0), i32 1, i8 0, i32 0, i32 0, i8 0 }, align 8, !dbg !4516
@.str.1 = private unnamed_addr constant [25 x i8] c"I2C registration failed\0A\00", align 1
@cxd2820r_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Sony CXD2820R\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1810104658 }, [8 x i8] c"\03\10\01\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @cxd2820r_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @cxd2820r_init, i32 (%struct.dvb_frontend*)* @cxd2820r_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* @cxd2820r_get_frontend_algo, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @cxd2820r_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @cxd2820r_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @cxd2820r_read_status, i32 (%struct.dvb_frontend*, i32*)* @cxd2820r_read_ber, i32 (%struct.dvb_frontend*, i16*)* @cxd2820r_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @cxd2820r_read_snr, i32 (%struct.dvb_frontend*, i32*)* @cxd2820r_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @cxd2820r_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @cxd2820r_search, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !4518
@.str.2 = private unnamed_addr constant [39 x i8] c"Sony CXD2820R successfully identified\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_cxd2820r_driver_init224 to i8*), i8* bitcast (void ()* @cxd2820r_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_cxd2820r_driver_exit to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_author225, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_description226, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_file227, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license228, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cxd2820r_wr_reg_val_mask_tab(%struct.cxd2820r_priv* %priv, %struct.reg_val_mask* %tab, i32 %tab_len) #0 !dbg !4848 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.cxd2820r_priv*, align 8
  %tab.addr = alloca %struct.reg_val_mask*, align 8
  %tab_len.addr = alloca i32, align 4
  %client = alloca %struct.i2c_client*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %reg = alloca i32, align 4
  %mask = alloca i32, align 4
  %val = alloca i32, align 4
  %regmap = alloca %struct.regmap*, align 8
  store %struct.cxd2820r_priv* %priv, %struct.cxd2820r_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv.addr, metadata !5019, metadata !DIExpression()), !dbg !5020
  store %struct.reg_val_mask* %tab, %struct.reg_val_mask** %tab.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reg_val_mask** %tab.addr, metadata !5021, metadata !DIExpression()), !dbg !5022
  store i32 %tab_len, i32* %tab_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tab_len.addr, metadata !5023, metadata !DIExpression()), !dbg !5024
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5025, metadata !DIExpression()), !dbg !5026
  %0 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv.addr, align 8, !dbg !5027
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %0, i32 0, i32 0, !dbg !5028
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !5027
  %1 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !5027
  store %struct.i2c_client* %1, %struct.i2c_client** %client, align 8, !dbg !5026
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5029, metadata !DIExpression()), !dbg !5030
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5031, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !5033, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !5035, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5037, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.declare(metadata %struct.regmap** %regmap, metadata !5039, metadata !DIExpression()), !dbg !5040
  store i32 0, i32* %i, align 4, !dbg !5041
  br label %for.cond, !dbg !5043

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !5044
  %3 = load i32, i32* %tab_len.addr, align 4, !dbg !5046
  %cmp = icmp ult i32 %2, %3, !dbg !5047
  br i1 %cmp, label %for.body, label %for.end, !dbg !5048

for.body:                                         ; preds = %for.cond
  %4 = load %struct.reg_val_mask*, %struct.reg_val_mask** %tab.addr, align 8, !dbg !5049
  %5 = load i32, i32* %i, align 4, !dbg !5052
  %idxprom = zext i32 %5 to i64, !dbg !5049
  %arrayidx2 = getelementptr %struct.reg_val_mask, %struct.reg_val_mask* %4, i64 %idxprom, !dbg !5049
  %reg3 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %arrayidx2, i32 0, i32 0, !dbg !5053
  %6 = load i32, i32* %reg3, align 4, !dbg !5053
  %shr = lshr i32 %6, 16, !dbg !5054
  %and = and i32 %shr, 1, !dbg !5055
  %tobool = icmp ne i32 %and, 0, !dbg !5055
  br i1 %tobool, label %if.then, label %if.else, !dbg !5056

if.then:                                          ; preds = %for.body
  %7 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv.addr, align 8, !dbg !5057
  %regmap4 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %7, i32 0, i32 1, !dbg !5058
  %arrayidx5 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap4, i64 0, i64 1, !dbg !5057
  %8 = load %struct.regmap*, %struct.regmap** %arrayidx5, align 8, !dbg !5057
  store %struct.regmap* %8, %struct.regmap** %regmap, align 8, !dbg !5059
  br label %if.end, !dbg !5060

if.else:                                          ; preds = %for.body
  %9 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv.addr, align 8, !dbg !5061
  %regmap6 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %9, i32 0, i32 1, !dbg !5062
  %arrayidx7 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap6, i64 0, i64 0, !dbg !5061
  %10 = load %struct.regmap*, %struct.regmap** %arrayidx7, align 8, !dbg !5061
  store %struct.regmap* %10, %struct.regmap** %regmap, align 8, !dbg !5063
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.reg_val_mask*, %struct.reg_val_mask** %tab.addr, align 8, !dbg !5064
  %12 = load i32, i32* %i, align 4, !dbg !5065
  %idxprom8 = zext i32 %12 to i64, !dbg !5064
  %arrayidx9 = getelementptr %struct.reg_val_mask, %struct.reg_val_mask* %11, i64 %idxprom8, !dbg !5064
  %reg10 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %arrayidx9, i32 0, i32 0, !dbg !5066
  %13 = load i32, i32* %reg10, align 4, !dbg !5066
  %shr11 = lshr i32 %13, 0, !dbg !5067
  %and12 = and i32 %shr11, 65535, !dbg !5068
  store i32 %and12, i32* %reg, align 4, !dbg !5069
  %14 = load %struct.reg_val_mask*, %struct.reg_val_mask** %tab.addr, align 8, !dbg !5070
  %15 = load i32, i32* %i, align 4, !dbg !5071
  %idxprom13 = zext i32 %15 to i64, !dbg !5070
  %arrayidx14 = getelementptr %struct.reg_val_mask, %struct.reg_val_mask* %14, i64 %idxprom13, !dbg !5070
  %val15 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %arrayidx14, i32 0, i32 1, !dbg !5072
  %16 = load i8, i8* %val15, align 4, !dbg !5072
  %conv = zext i8 %16 to i32, !dbg !5070
  store i32 %conv, i32* %val, align 4, !dbg !5073
  %17 = load %struct.reg_val_mask*, %struct.reg_val_mask** %tab.addr, align 8, !dbg !5074
  %18 = load i32, i32* %i, align 4, !dbg !5075
  %idxprom16 = zext i32 %18 to i64, !dbg !5074
  %arrayidx17 = getelementptr %struct.reg_val_mask, %struct.reg_val_mask* %17, i64 %idxprom16, !dbg !5074
  %mask18 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %arrayidx17, i32 0, i32 2, !dbg !5076
  %19 = load i8, i8* %mask18, align 1, !dbg !5076
  %conv19 = zext i8 %19 to i32, !dbg !5074
  store i32 %conv19, i32* %mask, align 4, !dbg !5077
  %20 = load i32, i32* %mask, align 4, !dbg !5078
  %cmp20 = icmp eq i32 %20, 255, !dbg !5080
  br i1 %cmp20, label %if.then22, label %if.else23, !dbg !5081

if.then22:                                        ; preds = %if.end
  %21 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !5082
  %22 = load i32, i32* %reg, align 4, !dbg !5083
  %23 = load i32, i32* %val, align 4, !dbg !5084
  %call = call i32 @regmap_write(%struct.regmap* %21, i32 %22, i32 %23) #9, !dbg !5085
  store i32 %call, i32* %ret, align 4, !dbg !5086
  br label %if.end25, !dbg !5087

if.else23:                                        ; preds = %if.end
  %24 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !5088
  %25 = load i32, i32* %reg, align 4, !dbg !5089
  %26 = load i32, i32* %mask, align 4, !dbg !5090
  %27 = load i32, i32* %val, align 4, !dbg !5091
  %call24 = call i32 @regmap_write_bits(%struct.regmap* %24, i32 %25, i32 %26, i32 %27) #9, !dbg !5092
  store i32 %call24, i32* %ret, align 4, !dbg !5093
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then22
  %28 = load i32, i32* %ret, align 4, !dbg !5094
  %tobool26 = icmp ne i32 %28, 0, !dbg !5094
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5096

if.then27:                                        ; preds = %if.end25
  br label %error, !dbg !5097

if.end28:                                         ; preds = %if.end25
  br label %for.inc, !dbg !5098

for.inc:                                          ; preds = %if.end28
  %29 = load i32, i32* %i, align 4, !dbg !5099
  %inc = add i32 %29, 1, !dbg !5099
  store i32 %inc, i32* %i, align 4, !dbg !5099
  br label %for.cond, !dbg !5100, !llvm.loop !5101

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5103
  br label %return, !dbg !5103

error:                                            ; preds = %if.then27
  call void @llvm.dbg.label(metadata !5104), !dbg !5105
  %30 = load i32, i32* %ret, align 4, !dbg !5106
  store i32 %30, i32* %retval, align 4, !dbg !5107
  br label %return, !dbg !5107

return:                                           ; preds = %error, %for.end
  %31 = load i32, i32* %retval, align 4, !dbg !5108
  ret i32 %31, !dbg !5108
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regmap_write_bits(%struct.regmap* %map, i32 %reg, i32 %mask, i32 %val) #0 !dbg !5109 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5114, metadata !DIExpression()), !dbg !5115
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5116, metadata !DIExpression()), !dbg !5117
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5120
  %1 = load i32, i32* %reg.addr, align 4, !dbg !5121
  %2 = load i32, i32* %mask.addr, align 4, !dbg !5122
  %3 = load i32, i32* %val.addr, align 4, !dbg !5123
  %call = call i32 @regmap_update_bits_base(%struct.regmap* %0, i32 %1, i32 %2, i32 %3, i8* null, i1 zeroext false, i1 zeroext true) #9, !dbg !5124
  ret i32 %call, !dbg !5125
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cxd2820r_gpio(%struct.dvb_frontend* %fe, i8* %gpio) #0 !dbg !5126 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %gpio.addr = alloca i8*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp0 = alloca i8, align 1
  %tmp1 = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  store i8* %gpio, i8** %gpio.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpio.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !5133, metadata !DIExpression()), !dbg !5134
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5135
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5136
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5136
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !5135
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !5134
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5137, metadata !DIExpression()), !dbg !5138
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5139
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !5140
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !5139
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !5139
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !5138
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5141, metadata !DIExpression()), !dbg !5142
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5143
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !5144
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5142
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5145, metadata !DIExpression()), !dbg !5146
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5147, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.declare(metadata i8* %tmp0, metadata !5149, metadata !DIExpression()), !dbg !5150
  call void @llvm.dbg.declare(metadata i8* %tmp1, metadata !5151, metadata !DIExpression()), !dbg !5152
  %6 = load i8*, i8** %gpio.addr, align 8, !dbg !5153
  %7 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5155
  %gpio2 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %7, i32 0, i32 11, !dbg !5156
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %gpio2, i64 0, i64 0, !dbg !5155
  %call = call i32 @memcmp(i8* %6, i8* %arraydecay, i64 3) #9, !dbg !5157
  %tobool = icmp ne i32 %call, 0, !dbg !5157
  br i1 %tobool, label %if.end, label %if.then, !dbg !5158

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5159
  br label %return, !dbg !5159

if.end:                                           ; preds = %entry
  store i8 0, i8* %tmp0, align 1, !dbg !5160
  store i8 0, i8* %tmp1, align 1, !dbg !5161
  store i32 0, i32* %i, align 4, !dbg !5162
  br label %for.cond, !dbg !5164

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !5165
  %conv = sext i32 %8 to i64, !dbg !5165
  %cmp = icmp ult i64 %conv, 3, !dbg !5167
  br i1 %cmp, label %for.body, label %for.end, !dbg !5168

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %gpio.addr, align 8, !dbg !5169
  %10 = load i32, i32* %i, align 4, !dbg !5172
  %idxprom = sext i32 %10 to i64, !dbg !5169
  %arrayidx4 = getelementptr i8, i8* %9, i64 %idxprom, !dbg !5169
  %11 = load i8, i8* %arrayidx4, align 1, !dbg !5169
  %conv5 = zext i8 %11 to i32, !dbg !5169
  %and = and i32 %conv5, 1, !dbg !5173
  %tobool6 = icmp ne i32 %and, 0, !dbg !5173
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !5174

if.then7:                                         ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !5175
  %mul = mul i32 2, %12, !dbg !5176
  %shr = ashr i32 128, %mul, !dbg !5177
  %13 = load i8, i8* %tmp0, align 1, !dbg !5178
  %conv8 = zext i8 %13 to i32, !dbg !5178
  %or = or i32 %conv8, %shr, !dbg !5178
  %conv9 = trunc i32 %or to i8, !dbg !5178
  store i8 %conv9, i8* %tmp0, align 1, !dbg !5178
  br label %if.end15, !dbg !5179

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !5180
  %mul10 = mul i32 2, %14, !dbg !5181
  %shr11 = ashr i32 64, %mul10, !dbg !5182
  %15 = load i8, i8* %tmp0, align 1, !dbg !5183
  %conv12 = zext i8 %15 to i32, !dbg !5183
  %or13 = or i32 %conv12, %shr11, !dbg !5183
  %conv14 = trunc i32 %or13 to i8, !dbg !5183
  store i8 %conv14, i8* %tmp0, align 1, !dbg !5183
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %16 = load i8*, i8** %gpio.addr, align 8, !dbg !5184
  %17 = load i32, i32* %i, align 4, !dbg !5186
  %idxprom16 = sext i32 %17 to i64, !dbg !5184
  %arrayidx17 = getelementptr i8, i8* %16, i64 %idxprom16, !dbg !5184
  %18 = load i8, i8* %arrayidx17, align 1, !dbg !5184
  %conv18 = zext i8 %18 to i32, !dbg !5184
  %and19 = and i32 %conv18, 2, !dbg !5187
  %tobool20 = icmp ne i32 %and19, 0, !dbg !5187
  br i1 %tobool20, label %if.then21, label %if.else25, !dbg !5188

if.then21:                                        ; preds = %if.end15
  %19 = load i32, i32* %i, align 4, !dbg !5189
  %add = add i32 3, %19, !dbg !5190
  %shl = shl i32 1, %add, !dbg !5191
  %20 = load i8, i8* %tmp1, align 1, !dbg !5192
  %conv22 = zext i8 %20 to i32, !dbg !5192
  %or23 = or i32 %conv22, %shl, !dbg !5192
  %conv24 = trunc i32 %or23 to i8, !dbg !5192
  store i8 %conv24, i8* %tmp1, align 1, !dbg !5192
  br label %if.end31, !dbg !5193

if.else25:                                        ; preds = %if.end15
  %21 = load i32, i32* %i, align 4, !dbg !5194
  %add26 = add i32 3, %21, !dbg !5195
  %shl27 = shl i32 0, %add26, !dbg !5196
  %22 = load i8, i8* %tmp1, align 1, !dbg !5197
  %conv28 = zext i8 %22 to i32, !dbg !5197
  %or29 = or i32 %conv28, %shl27, !dbg !5197
  %conv30 = trunc i32 %or29 to i8, !dbg !5197
  store i8 %conv30, i8* %tmp1, align 1, !dbg !5197
  br label %if.end31

if.end31:                                         ; preds = %if.else25, %if.then21
  %23 = load i8*, i8** %gpio.addr, align 8, !dbg !5198
  %24 = load i32, i32* %i, align 4, !dbg !5200
  %idxprom32 = sext i32 %24 to i64, !dbg !5198
  %arrayidx33 = getelementptr i8, i8* %23, i64 %idxprom32, !dbg !5198
  %25 = load i8, i8* %arrayidx33, align 1, !dbg !5198
  %conv34 = zext i8 %25 to i32, !dbg !5198
  %and35 = and i32 %conv34, 4, !dbg !5201
  %tobool36 = icmp ne i32 %and35, 0, !dbg !5201
  br i1 %tobool36, label %if.then37, label %if.else43, !dbg !5202

if.then37:                                        ; preds = %if.end31
  %26 = load i32, i32* %i, align 4, !dbg !5203
  %add38 = add i32 0, %26, !dbg !5204
  %shl39 = shl i32 1, %add38, !dbg !5205
  %27 = load i8, i8* %tmp1, align 1, !dbg !5206
  %conv40 = zext i8 %27 to i32, !dbg !5206
  %or41 = or i32 %conv40, %shl39, !dbg !5206
  %conv42 = trunc i32 %or41 to i8, !dbg !5206
  store i8 %conv42, i8* %tmp1, align 1, !dbg !5206
  br label %if.end49, !dbg !5207

if.else43:                                        ; preds = %if.end31
  %28 = load i32, i32* %i, align 4, !dbg !5208
  %add44 = add i32 0, %28, !dbg !5209
  %shl45 = shl i32 0, %add44, !dbg !5210
  %29 = load i8, i8* %tmp1, align 1, !dbg !5211
  %conv46 = zext i8 %29 to i32, !dbg !5211
  %or47 = or i32 %conv46, %shl45, !dbg !5211
  %conv48 = trunc i32 %or47 to i8, !dbg !5211
  store i8 %conv48, i8* %tmp1, align 1, !dbg !5211
  br label %if.end49

if.end49:                                         ; preds = %if.else43, %if.then37
  br label %for.inc, !dbg !5212

for.inc:                                          ; preds = %if.end49
  %30 = load i32, i32* %i, align 4, !dbg !5213
  %inc = add i32 %30, 1, !dbg !5213
  store i32 %inc, i32* %i, align 4, !dbg !5213
  br label %for.cond, !dbg !5214, !llvm.loop !5215

for.end:                                          ; preds = %for.cond
  %31 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5217
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %31, i32 0, i32 1, !dbg !5218
  %arrayidx50 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap, i64 0, i64 0, !dbg !5217
  %32 = load %struct.regmap*, %struct.regmap** %arrayidx50, align 8, !dbg !5217
  %33 = load i8, i8* %tmp0, align 1, !dbg !5219
  %conv51 = zext i8 %33 to i32, !dbg !5219
  %call52 = call i32 @regmap_update_bits(%struct.regmap* %32, i32 137, i32 252, i32 %conv51) #9, !dbg !5220
  store i32 %call52, i32* %ret, align 4, !dbg !5221
  %34 = load i32, i32* %ret, align 4, !dbg !5222
  %tobool53 = icmp ne i32 %34, 0, !dbg !5222
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !5224

if.then54:                                        ; preds = %for.end
  br label %error, !dbg !5225

if.end55:                                         ; preds = %for.end
  %35 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5226
  %regmap56 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %35, i32 0, i32 1, !dbg !5227
  %arrayidx57 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap56, i64 0, i64 0, !dbg !5226
  %36 = load %struct.regmap*, %struct.regmap** %arrayidx57, align 8, !dbg !5226
  %37 = load i8, i8* %tmp1, align 1, !dbg !5228
  %conv58 = zext i8 %37 to i32, !dbg !5228
  %call59 = call i32 @regmap_update_bits(%struct.regmap* %36, i32 142, i32 63, i32 %conv58) #9, !dbg !5229
  store i32 %call59, i32* %ret, align 4, !dbg !5230
  %38 = load i32, i32* %ret, align 4, !dbg !5231
  %tobool60 = icmp ne i32 %38, 0, !dbg !5231
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !5233

if.then61:                                        ; preds = %if.end55
  br label %error, !dbg !5234

if.end62:                                         ; preds = %if.end55
  %39 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5235
  %gpio63 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %39, i32 0, i32 11, !dbg !5236
  %arraydecay64 = getelementptr inbounds [3 x i8], [3 x i8]* %gpio63, i64 0, i64 0, !dbg !5237
  %40 = load i8*, i8** %gpio.addr, align 8, !dbg !5238
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arraydecay64, i8* align 1 %40, i64 3, i1 false), !dbg !5237
  %41 = load i32, i32* %ret, align 4, !dbg !5239
  store i32 %41, i32* %retval, align 4, !dbg !5240
  br label %return, !dbg !5240

error:                                            ; preds = %if.then61, %if.then54
  call void @llvm.dbg.label(metadata !5241), !dbg !5242
  %42 = load i32, i32* %ret, align 4, !dbg !5243
  store i32 %42, i32* %retval, align 4, !dbg !5244
  br label %return, !dbg !5244

return:                                           ; preds = %error, %if.end62, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !5245
  ret i32 %43, !dbg !5245
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regmap_update_bits(%struct.regmap* %map, i32 %reg, i32 %mask, i32 %val) #0 !dbg !5246 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5247, metadata !DIExpression()), !dbg !5248
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5249, metadata !DIExpression()), !dbg !5250
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5255
  %1 = load i32, i32* %reg.addr, align 4, !dbg !5256
  %2 = load i32, i32* %mask.addr, align 4, !dbg !5257
  %3 = load i32, i32* %val.addr, align 4, !dbg !5258
  %call = call i32 @regmap_update_bits_base(%struct.regmap* %0, i32 %1, i32 %2, i32 %3, i8* null, i1 zeroext false, i1 zeroext false) #9, !dbg !5259
  ret i32 %call, !dbg !5260
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @cxd2820r_attach(%struct.cxd2820r_config* %config, %struct.i2c_adapter* %adapter, i32* %gpio_chip_base) #0 !dbg !5261 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.cxd2820r_config*, align 8
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %gpio_chip_base.addr = alloca i32*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %board_info = alloca %struct.i2c_board_info, align 8
  %pdata = alloca %struct.cxd2820r_platform_data, align 8
  store %struct.cxd2820r_config* %config, %struct.cxd2820r_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_config** %config.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  store i32* %gpio_chip_base, i32** %gpio_chip_base.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %gpio_chip_base.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5280, metadata !DIExpression()), !dbg !5281
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info* %board_info, metadata !5282, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_platform_data* %pdata, metadata !5284, metadata !DIExpression()), !dbg !5298
  %0 = load %struct.cxd2820r_config*, %struct.cxd2820r_config** %config.addr, align 8, !dbg !5299
  %ts_mode = getelementptr inbounds %struct.cxd2820r_config, %struct.cxd2820r_config* %0, i32 0, i32 1, !dbg !5300
  %1 = load i8, i8* %ts_mode, align 1, !dbg !5300
  %ts_mode1 = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %pdata, i32 0, i32 0, !dbg !5301
  store i8 %1, i8* %ts_mode1, align 8, !dbg !5302
  %2 = load %struct.cxd2820r_config*, %struct.cxd2820r_config** %config.addr, align 8, !dbg !5303
  %ts_clock_inv = getelementptr inbounds %struct.cxd2820r_config, %struct.cxd2820r_config* %2, i32 0, i32 2, !dbg !5304
  %3 = load i8, i8* %ts_clock_inv, align 1, !dbg !5304
  %tobool = trunc i8 %3 to i1, !dbg !5304
  %ts_clk_inv = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %pdata, i32 0, i32 1, !dbg !5305
  %frombool = zext i1 %tobool to i8, !dbg !5306
  store i8 %frombool, i8* %ts_clk_inv, align 1, !dbg !5306
  %4 = load %struct.cxd2820r_config*, %struct.cxd2820r_config** %config.addr, align 8, !dbg !5307
  %if_agc_polarity = getelementptr inbounds %struct.cxd2820r_config, %struct.cxd2820r_config* %4, i32 0, i32 3, !dbg !5308
  %5 = load i8, i8* %if_agc_polarity, align 1, !dbg !5308
  %tobool2 = trunc i8 %5 to i1, !dbg !5308
  %if_agc_polarity3 = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %pdata, i32 0, i32 2, !dbg !5309
  %frombool4 = zext i1 %tobool2 to i8, !dbg !5310
  store i8 %frombool4, i8* %if_agc_polarity3, align 2, !dbg !5310
  %6 = load %struct.cxd2820r_config*, %struct.cxd2820r_config** %config.addr, align 8, !dbg !5311
  %spec_inv = getelementptr inbounds %struct.cxd2820r_config, %struct.cxd2820r_config* %6, i32 0, i32 4, !dbg !5312
  %7 = load i8, i8* %spec_inv, align 1, !dbg !5312
  %tobool5 = trunc i8 %7 to i1, !dbg !5312
  %spec_inv6 = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %pdata, i32 0, i32 3, !dbg !5313
  %frombool7 = zext i1 %tobool5 to i8, !dbg !5314
  store i8 %frombool7, i8* %spec_inv6, align 1, !dbg !5314
  %gpio_chip_base8 = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %pdata, i32 0, i32 4, !dbg !5315
  store i32** %gpio_chip_base.addr, i32*** %gpio_chip_base8, align 8, !dbg !5316
  %attach_in_use = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %pdata, i32 0, i32 6, !dbg !5317
  store i8 1, i8* %attach_in_use, align 8, !dbg !5318
  %8 = bitcast %struct.i2c_board_info* %board_info to i8*, !dbg !5319
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 80, i1 false), !dbg !5319
  %type = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info, i32 0, i32 0, !dbg !5320
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !5321
  %call = call i64 @strscpy(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 20) #9, !dbg !5322
  %9 = load %struct.cxd2820r_config*, %struct.cxd2820r_config** %config.addr, align 8, !dbg !5323
  %i2c_address = getelementptr inbounds %struct.cxd2820r_config, %struct.cxd2820r_config* %9, i32 0, i32 0, !dbg !5324
  %10 = load i8, i8* %i2c_address, align 1, !dbg !5324
  %conv = zext i8 %10 to i16, !dbg !5323
  %addr = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info, i32 0, i32 2, !dbg !5325
  store i16 %conv, i16* %addr, align 2, !dbg !5326
  %11 = bitcast %struct.cxd2820r_platform_data* %pdata to i8*, !dbg !5327
  %platform_data = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info, i32 0, i32 4, !dbg !5328
  store i8* %11, i8** %platform_data, align 8, !dbg !5329
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5330
  %call9 = call %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter* %12, %struct.i2c_board_info* %board_info) #9, !dbg !5331
  store %struct.i2c_client* %call9, %struct.i2c_client** %client, align 8, !dbg !5332
  %13 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5333
  %call10 = call zeroext i1 @i2c_client_has_driver(%struct.i2c_client* %13) #9, !dbg !5335
  br i1 %call10, label %if.end, label %if.then, !dbg !5336

if.then:                                          ; preds = %entry
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !5337
  br label %return, !dbg !5337

if.end:                                           ; preds = %entry
  %get_dvb_frontend = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %pdata, i32 0, i32 5, !dbg !5338
  %14 = load %struct.dvb_frontend* (%struct.i2c_client*)*, %struct.dvb_frontend* (%struct.i2c_client*)** %get_dvb_frontend, align 8, !dbg !5338
  %15 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5339
  %call11 = call %struct.dvb_frontend* %14(%struct.i2c_client* %15) #9, !dbg !5340
  store %struct.dvb_frontend* %call11, %struct.dvb_frontend** %retval, align 8, !dbg !5341
  br label %return, !dbg !5341

return:                                           ; preds = %if.end, %if.then
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !5342
  ret %struct.dvb_frontend* %16, !dbg !5342
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @i2c_client_has_driver(%struct.i2c_client* %client) #0 !dbg !5343 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5346, metadata !DIExpression()), !dbg !5347
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5348
  %1 = bitcast %struct.i2c_client* %0 to i8*, !dbg !5348
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #9, !dbg !5349
  br i1 %call, label %land.end, label %land.rhs, !dbg !5350

land.rhs:                                         ; preds = %entry
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5351
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 4, !dbg !5352
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !5353
  %3 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5353
  %tobool = icmp ne %struct.device_driver* %3, null, !dbg !5350
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !5354
  ret i1 %4, !dbg !5355
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_driver_init() #4 section ".init.text" !dbg !5356 {
entry:
  %call = call i32 @i2c_register_driver(%struct.module* null, %struct.i2c_driver* @cxd2820r_driver) #9, !dbg !5359
  ret i32 %call, !dbg !5359
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @cxd2820r_driver_exit() #4 section ".exit.text" !dbg !5360 {
entry:
  call void @i2c_del_driver(%struct.i2c_driver* @cxd2820r_driver) #9, !dbg !5361
  ret void, !dbg !5361
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_driver(%struct.i2c_driver*) #2

; Function Attrs: noredzone
declare dso_local i32 @regmap_update_bits_base(%struct.regmap*, i32, i32, i32, i8*, i1 zeroext, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !5362 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5368
  %tobool = icmp ne i8* %0, null, !dbg !5368
  %lnot = xor i1 %tobool, true, !dbg !5368
  %lnot1 = xor i1 %lnot, true, !dbg !5368
  %lnot2 = xor i1 %lnot1, true, !dbg !5368
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5368
  %conv = sext i32 %lnot.ext to i64, !dbg !5368
  %tobool3 = icmp ne i64 %conv, 0, !dbg !5368
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !5369

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !5370
  %2 = ptrtoint i8* %1 to i64, !dbg !5370
  %3 = inttoptr i64 %2 to i8*, !dbg !5370
  %4 = ptrtoint i8* %3 to i64, !dbg !5370
  %cmp = icmp uge i64 %4, -4095, !dbg !5370
  %lnot5 = xor i1 %cmp, true, !dbg !5370
  %lnot7 = xor i1 %lnot5, true, !dbg !5370
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5370
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !5370
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !5369
  br label %lor.end, !dbg !5369

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !5371
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_register_driver(%struct.module*, %struct.i2c_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_probe(%struct.i2c_client* %client, %struct.i2c_device_id* %id) #0 !dbg !4420 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %id.addr = alloca %struct.i2c_device_id*, align 8
  %pdata = alloca %struct.cxd2820r_platform_data*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %ret = alloca i32, align 4
  %gpio_chip_base = alloca i32*, align 8
  %utmp = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  store %struct.i2c_device_id* %id, %struct.i2c_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_device_id** %id.addr, metadata !5374, metadata !DIExpression()), !dbg !5375
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_platform_data** %pdata, metadata !5376, metadata !DIExpression()), !dbg !5378
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5379
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !5380
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 7, !dbg !5381
  %1 = load i8*, i8** %platform_data, align 8, !dbg !5381
  %2 = bitcast i8* %1 to %struct.cxd2820r_platform_data*, !dbg !5379
  store %struct.cxd2820r_platform_data* %2, %struct.cxd2820r_platform_data** %pdata, align 8, !dbg !5378
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !5382, metadata !DIExpression()), !dbg !5383
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5384, metadata !DIExpression()), !dbg !5385
  call void @llvm.dbg.declare(metadata i32** %gpio_chip_base, metadata !5386, metadata !DIExpression()), !dbg !5387
  call void @llvm.dbg.declare(metadata i32* %utmp, metadata !5388, metadata !DIExpression()), !dbg !5389
  %call = call i8* @kzalloc(i64 1936, i32 3264) #9, !dbg !5390
  %3 = bitcast i8* %call to %struct.cxd2820r_priv*, !dbg !5390
  store %struct.cxd2820r_priv* %3, %struct.cxd2820r_priv** %priv, align 8, !dbg !5391
  %4 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5392
  %tobool = icmp ne %struct.cxd2820r_priv* %4, null, !dbg !5392
  br i1 %tobool, label %if.end, label %if.then, !dbg !5394

if.then:                                          ; preds = %entry
  store i32 -12, i32* %ret, align 4, !dbg !5395
  br label %err, !dbg !5397

if.end:                                           ; preds = %entry
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5398
  %6 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5399
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %6, i32 0, i32 0, !dbg !5400
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !5399
  store %struct.i2c_client* %5, %struct.i2c_client** %arrayidx, align 8, !dbg !5401
  %7 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5402
  %8 = bitcast %struct.cxd2820r_priv* %7 to i8*, !dbg !5402
  %9 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5403
  %fe = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %9, i32 0, i32 3, !dbg !5404
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe, i32 0, i32 3, !dbg !5405
  store i8* %8, i8** %demodulator_priv, align 8, !dbg !5406
  %10 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5407
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 3, !dbg !5408
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !5408
  %12 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5409
  %i2c = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %12, i32 0, i32 2, !dbg !5410
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %i2c, align 8, !dbg !5411
  %13 = load %struct.cxd2820r_platform_data*, %struct.cxd2820r_platform_data** %pdata, align 8, !dbg !5412
  %ts_mode = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %13, i32 0, i32 0, !dbg !5413
  %14 = load i8, i8* %ts_mode, align 8, !dbg !5413
  %15 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5414
  %ts_mode2 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %15, i32 0, i32 4, !dbg !5415
  store i8 %14, i8* %ts_mode2, align 8, !dbg !5416
  %16 = load %struct.cxd2820r_platform_data*, %struct.cxd2820r_platform_data** %pdata, align 8, !dbg !5417
  %ts_clk_inv = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %16, i32 0, i32 1, !dbg !5418
  %17 = load i8, i8* %ts_clk_inv, align 1, !dbg !5418
  %tobool3 = trunc i8 %17 to i1, !dbg !5418
  %18 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5419
  %ts_clk_inv4 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %18, i32 0, i32 5, !dbg !5420
  %frombool = zext i1 %tobool3 to i8, !dbg !5421
  store i8 %frombool, i8* %ts_clk_inv4, align 1, !dbg !5421
  %19 = load %struct.cxd2820r_platform_data*, %struct.cxd2820r_platform_data** %pdata, align 8, !dbg !5422
  %if_agc_polarity = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %19, i32 0, i32 2, !dbg !5423
  %20 = load i8, i8* %if_agc_polarity, align 2, !dbg !5423
  %tobool5 = trunc i8 %20 to i1, !dbg !5423
  %21 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5424
  %if_agc_polarity6 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %21, i32 0, i32 6, !dbg !5425
  %frombool7 = zext i1 %tobool5 to i8, !dbg !5426
  store i8 %frombool7, i8* %if_agc_polarity6, align 2, !dbg !5426
  %22 = load %struct.cxd2820r_platform_data*, %struct.cxd2820r_platform_data** %pdata, align 8, !dbg !5427
  %spec_inv = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %22, i32 0, i32 3, !dbg !5428
  %23 = load i8, i8* %spec_inv, align 1, !dbg !5428
  %tobool8 = trunc i8 %23 to i1, !dbg !5428
  %24 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5429
  %spec_inv9 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %24, i32 0, i32 7, !dbg !5430
  %frombool10 = zext i1 %tobool8 to i8, !dbg !5431
  store i8 %frombool10, i8* %spec_inv9, align 1, !dbg !5431
  %25 = load %struct.cxd2820r_platform_data*, %struct.cxd2820r_platform_data** %pdata, align 8, !dbg !5432
  %gpio_chip_base11 = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %25, i32 0, i32 4, !dbg !5433
  %26 = load i32**, i32*** %gpio_chip_base11, align 8, !dbg !5433
  %27 = load i32*, i32** %26, align 8, !dbg !5434
  store i32* %27, i32** %gpio_chip_base, align 8, !dbg !5435
  %28 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5436
  %client12 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %28, i32 0, i32 0, !dbg !5436
  %arrayidx13 = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client12, i64 0, i64 0, !dbg !5436
  %29 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx13, align 8, !dbg !5436
  %call14 = call %struct.regmap* @__regmap_init_i2c(%struct.i2c_client* %29, %struct.regmap_config* @cxd2820r_probe.regmap_config0, %struct.lock_class_key* null, i8* null) #9, !dbg !5436
  %30 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5437
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %30, i32 0, i32 1, !dbg !5438
  %arrayidx15 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap, i64 0, i64 0, !dbg !5437
  store %struct.regmap* %call14, %struct.regmap** %arrayidx15, align 8, !dbg !5439
  %31 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5440
  %regmap16 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %31, i32 0, i32 1, !dbg !5442
  %arrayidx17 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap16, i64 0, i64 0, !dbg !5440
  %32 = load %struct.regmap*, %struct.regmap** %arrayidx17, align 8, !dbg !5440
  %33 = bitcast %struct.regmap* %32 to i8*, !dbg !5440
  %call18 = call zeroext i1 @IS_ERR(i8* %33) #9, !dbg !5443
  br i1 %call18, label %if.then19, label %if.end23, !dbg !5444

if.then19:                                        ; preds = %if.end
  %34 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5445
  %regmap20 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %34, i32 0, i32 1, !dbg !5447
  %arrayidx21 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap20, i64 0, i64 0, !dbg !5445
  %35 = load %struct.regmap*, %struct.regmap** %arrayidx21, align 8, !dbg !5445
  %36 = bitcast %struct.regmap* %35 to i8*, !dbg !5445
  %call22 = call i64 @PTR_ERR(i8* %36) #9, !dbg !5448
  %conv = trunc i64 %call22 to i32, !dbg !5448
  store i32 %conv, i32* %ret, align 4, !dbg !5449
  br label %err_kfree, !dbg !5450

if.end23:                                         ; preds = %if.end
  %37 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5451
  %regmap24 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %37, i32 0, i32 1, !dbg !5452
  %arrayidx25 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap24, i64 0, i64 0, !dbg !5451
  %38 = load %struct.regmap*, %struct.regmap** %arrayidx25, align 8, !dbg !5451
  %call26 = call i32 @regmap_read(%struct.regmap* %38, i32 253, i32* %utmp) #9, !dbg !5453
  store i32 %call26, i32* %ret, align 4, !dbg !5454
  %39 = load i32, i32* %ret, align 4, !dbg !5455
  %tobool27 = icmp ne i32 %39, 0, !dbg !5455
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5457

if.then28:                                        ; preds = %if.end23
  br label %err_regmap_0_regmap_exit, !dbg !5458

if.end29:                                         ; preds = %if.end23
  %40 = load i32, i32* %utmp, align 4, !dbg !5459
  %cmp = icmp ne i32 %40, 225, !dbg !5461
  br i1 %cmp, label %if.then31, label %if.end32, !dbg !5462

if.then31:                                        ; preds = %if.end29
  store i32 -19, i32* %ret, align 4, !dbg !5463
  br label %err_regmap_0_regmap_exit, !dbg !5465

if.end32:                                         ; preds = %if.end29
  %41 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5466
  %adapter33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 3, !dbg !5467
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter33, align 8, !dbg !5467
  %43 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5468
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1, !dbg !5469
  %44 = load i16, i16* %addr, align 2, !dbg !5469
  %conv34 = zext i16 %44 to i32, !dbg !5468
  %or = or i32 %conv34, 2, !dbg !5470
  %conv35 = trunc i32 %or to i16, !dbg !5468
  %call36 = call %struct.i2c_client* @i2c_new_dummy_device(%struct.i2c_adapter* %42, i16 zeroext %conv35) #9, !dbg !5471
  %45 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5472
  %client37 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %45, i32 0, i32 0, !dbg !5473
  %arrayidx38 = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client37, i64 0, i64 1, !dbg !5472
  store %struct.i2c_client* %call36, %struct.i2c_client** %arrayidx38, align 8, !dbg !5474
  %46 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5475
  %client39 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %46, i32 0, i32 0, !dbg !5477
  %arrayidx40 = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client39, i64 0, i64 1, !dbg !5475
  %47 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx40, align 8, !dbg !5475
  %48 = bitcast %struct.i2c_client* %47 to i8*, !dbg !5475
  %call41 = call zeroext i1 @IS_ERR(i8* %48) #9, !dbg !5478
  br i1 %call41, label %if.then42, label %if.end48, !dbg !5479

if.then42:                                        ; preds = %if.end32
  %49 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5480
  %client43 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %49, i32 0, i32 0, !dbg !5482
  %arrayidx44 = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client43, i64 0, i64 1, !dbg !5480
  %50 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx44, align 8, !dbg !5480
  %51 = bitcast %struct.i2c_client* %50 to i8*, !dbg !5480
  %call45 = call i64 @PTR_ERR(i8* %51) #9, !dbg !5483
  %conv46 = trunc i64 %call45 to i32, !dbg !5483
  store i32 %conv46, i32* %ret, align 4, !dbg !5484
  %52 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5485
  %dev47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 4, !dbg !5485
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !5485
  br label %err_regmap_0_regmap_exit, !dbg !5486

if.end48:                                         ; preds = %if.end32
  %53 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5487
  %client49 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %53, i32 0, i32 0, !dbg !5487
  %arrayidx50 = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client49, i64 0, i64 1, !dbg !5487
  %54 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx50, align 8, !dbg !5487
  %call51 = call %struct.regmap* @__regmap_init_i2c(%struct.i2c_client* %54, %struct.regmap_config* @cxd2820r_probe.regmap_config1, %struct.lock_class_key* null, i8* null) #9, !dbg !5487
  %55 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5488
  %regmap52 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %55, i32 0, i32 1, !dbg !5489
  %arrayidx53 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap52, i64 0, i64 1, !dbg !5488
  store %struct.regmap* %call51, %struct.regmap** %arrayidx53, align 8, !dbg !5490
  %56 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5491
  %regmap54 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %56, i32 0, i32 1, !dbg !5493
  %arrayidx55 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap54, i64 0, i64 1, !dbg !5491
  %57 = load %struct.regmap*, %struct.regmap** %arrayidx55, align 8, !dbg !5491
  %58 = bitcast %struct.regmap* %57 to i8*, !dbg !5491
  %call56 = call zeroext i1 @IS_ERR(i8* %58) #9, !dbg !5494
  br i1 %call56, label %if.then57, label %if.end62, !dbg !5495

if.then57:                                        ; preds = %if.end48
  %59 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5496
  %regmap58 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %59, i32 0, i32 1, !dbg !5498
  %arrayidx59 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap58, i64 0, i64 1, !dbg !5496
  %60 = load %struct.regmap*, %struct.regmap** %arrayidx59, align 8, !dbg !5496
  %61 = bitcast %struct.regmap* %60 to i8*, !dbg !5496
  %call60 = call i64 @PTR_ERR(i8* %61) #9, !dbg !5499
  %conv61 = trunc i64 %call60 to i32, !dbg !5499
  store i32 %conv61, i32* %ret, align 4, !dbg !5500
  br label %err_client_1_i2c_unregister_device, !dbg !5501

if.end62:                                         ; preds = %if.end48
  %62 = load i32*, i32** %gpio_chip_base, align 8, !dbg !5502
  %tobool63 = icmp ne i32* %62, null, !dbg !5502
  br i1 %tobool63, label %if.then64, label %if.end81, !dbg !5504

if.then64:                                        ; preds = %if.end62
  %63 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5505
  %gpio_chip = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %63, i32 0, i32 12, !dbg !5507
  %label = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %gpio_chip, i32 0, i32 0, !dbg !5508
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %label, align 8, !dbg !5509
  %64 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5510
  %dev65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 4, !dbg !5511
  %65 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5512
  %gpio_chip66 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %65, i32 0, i32 12, !dbg !5513
  %parent = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %gpio_chip66, i32 0, i32 2, !dbg !5514
  store %struct.device* %dev65, %struct.device** %parent, align 8, !dbg !5515
  %66 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5516
  %gpio_chip67 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %66, i32 0, i32 12, !dbg !5517
  %owner = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %gpio_chip67, i32 0, i32 3, !dbg !5518
  store %struct.module* null, %struct.module** %owner, align 8, !dbg !5519
  %67 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5520
  %gpio_chip68 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %67, i32 0, i32 12, !dbg !5521
  %direction_output = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %gpio_chip68, i32 0, i32 8, !dbg !5522
  store i32 (%struct.gpio_chip*, i32, i32)* @cxd2820r_gpio_direction_output, i32 (%struct.gpio_chip*, i32, i32)** %direction_output, align 8, !dbg !5523
  %68 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5524
  %gpio_chip69 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %68, i32 0, i32 12, !dbg !5525
  %set = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %gpio_chip69, i32 0, i32 11, !dbg !5526
  store void (%struct.gpio_chip*, i32, i32)* @cxd2820r_gpio_set, void (%struct.gpio_chip*, i32, i32)** %set, align 8, !dbg !5527
  %69 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5528
  %gpio_chip70 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %69, i32 0, i32 12, !dbg !5529
  %get = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %gpio_chip70, i32 0, i32 9, !dbg !5530
  store i32 (%struct.gpio_chip*, i32)* @cxd2820r_gpio_get, i32 (%struct.gpio_chip*, i32)** %get, align 8, !dbg !5531
  %70 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5532
  %gpio_chip71 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %70, i32 0, i32 12, !dbg !5533
  %base = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %gpio_chip71, i32 0, i32 18, !dbg !5534
  store i32 -1, i32* %base, align 8, !dbg !5535
  %71 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5536
  %gpio_chip72 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %71, i32 0, i32 12, !dbg !5537
  %ngpio = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %gpio_chip72, i32 0, i32 19, !dbg !5538
  store i16 3, i16* %ngpio, align 4, !dbg !5539
  %72 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5540
  %gpio_chip73 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %72, i32 0, i32 12, !dbg !5541
  %can_sleep = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %gpio_chip73, i32 0, i32 21, !dbg !5542
  store i8 1, i8* %can_sleep, align 8, !dbg !5543
  %73 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5544
  %gpio_chip74 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %73, i32 0, i32 12, !dbg !5544
  %74 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5544
  %75 = bitcast %struct.cxd2820r_priv* %74 to i8*, !dbg !5544
  %call75 = call i32 @gpiochip_add_data_with_key(%struct.gpio_chip* %gpio_chip74, i8* %75, %struct.lock_class_key* null, %struct.lock_class_key* null) #9, !dbg !5544
  store i32 %call75, i32* %ret, align 4, !dbg !5545
  %76 = load i32, i32* %ret, align 4, !dbg !5546
  %tobool76 = icmp ne i32 %76, 0, !dbg !5546
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !5548

if.then77:                                        ; preds = %if.then64
  br label %err_regmap_1_regmap_exit, !dbg !5549

if.end78:                                         ; preds = %if.then64
  %77 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5550
  %gpio_chip79 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %77, i32 0, i32 12, !dbg !5551
  %base80 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %gpio_chip79, i32 0, i32 18, !dbg !5552
  %78 = load i32, i32* %base80, align 8, !dbg !5552
  %79 = load i32*, i32** %gpio_chip_base, align 8, !dbg !5553
  store i32 %78, i32* %79, align 4, !dbg !5554
  br label %if.end81, !dbg !5555

if.end81:                                         ; preds = %if.end78, %if.end62
  %80 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5556
  %fe82 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %80, i32 0, i32 3, !dbg !5557
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe82, i32 0, i32 1, !dbg !5558
  %81 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !5559
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @cxd2820r_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !5559
  %82 = load %struct.cxd2820r_platform_data*, %struct.cxd2820r_platform_data** %pdata, align 8, !dbg !5560
  %attach_in_use = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %82, i32 0, i32 6, !dbg !5562
  %83 = load i8, i8* %attach_in_use, align 8, !dbg !5562
  %tobool83 = trunc i8 %83 to i1, !dbg !5562
  br i1 %tobool83, label %if.end87, label %if.then84, !dbg !5563

if.then84:                                        ; preds = %if.end81
  %84 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5564
  %fe85 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %84, i32 0, i32 3, !dbg !5565
  %ops86 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe85, i32 0, i32 1, !dbg !5566
  %release = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops86, i32 0, i32 3, !dbg !5567
  store void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)** %release, align 8, !dbg !5568
  br label %if.end87, !dbg !5564

if.end87:                                         ; preds = %if.then84, %if.end81
  %85 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5569
  %86 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5570
  %87 = bitcast %struct.cxd2820r_priv* %86 to i8*, !dbg !5570
  call void @i2c_set_clientdata(%struct.i2c_client* %85, i8* %87) #9, !dbg !5571
  %88 = load %struct.cxd2820r_platform_data*, %struct.cxd2820r_platform_data** %pdata, align 8, !dbg !5572
  %get_dvb_frontend = getelementptr inbounds %struct.cxd2820r_platform_data, %struct.cxd2820r_platform_data* %88, i32 0, i32 5, !dbg !5573
  store %struct.dvb_frontend* (%struct.i2c_client*)* @cxd2820r_get_dvb_frontend, %struct.dvb_frontend* (%struct.i2c_client*)** %get_dvb_frontend, align 8, !dbg !5574
  %89 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5575
  %dev88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 4, !dbg !5575
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !5575
  store i32 0, i32* %retval, align 4, !dbg !5576
  br label %return, !dbg !5576

err_regmap_1_regmap_exit:                         ; preds = %if.then77
  call void @llvm.dbg.label(metadata !5577), !dbg !5578
  %90 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5579
  %regmap89 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %90, i32 0, i32 1, !dbg !5580
  %arrayidx90 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap89, i64 0, i64 1, !dbg !5579
  %91 = load %struct.regmap*, %struct.regmap** %arrayidx90, align 8, !dbg !5579
  call void @regmap_exit(%struct.regmap* %91) #9, !dbg !5581
  br label %err_client_1_i2c_unregister_device, !dbg !5581

err_client_1_i2c_unregister_device:               ; preds = %err_regmap_1_regmap_exit, %if.then57
  call void @llvm.dbg.label(metadata !5582), !dbg !5583
  %92 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5584
  %client91 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %92, i32 0, i32 0, !dbg !5585
  %arrayidx92 = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client91, i64 0, i64 1, !dbg !5584
  %93 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx92, align 8, !dbg !5584
  call void @i2c_unregister_device(%struct.i2c_client* %93) #9, !dbg !5586
  br label %err_regmap_0_regmap_exit, !dbg !5586

err_regmap_0_regmap_exit:                         ; preds = %err_client_1_i2c_unregister_device, %if.then42, %if.then31, %if.then28
  call void @llvm.dbg.label(metadata !5587), !dbg !5588
  %94 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5589
  %regmap93 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %94, i32 0, i32 1, !dbg !5590
  %arrayidx94 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap93, i64 0, i64 0, !dbg !5589
  %95 = load %struct.regmap*, %struct.regmap** %arrayidx94, align 8, !dbg !5589
  call void @regmap_exit(%struct.regmap* %95) #9, !dbg !5591
  br label %err_kfree, !dbg !5591

err_kfree:                                        ; preds = %err_regmap_0_regmap_exit, %if.then19
  call void @llvm.dbg.label(metadata !5592), !dbg !5593
  %96 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5594
  %97 = bitcast %struct.cxd2820r_priv* %96 to i8*, !dbg !5594
  call void @kfree(i8* %97) #9, !dbg !5595
  br label %err, !dbg !5595

err:                                              ; preds = %err_kfree, %if.then
  call void @llvm.dbg.label(metadata !5596), !dbg !5597
  %98 = load i32, i32* %ret, align 4, !dbg !5598
  store i32 %98, i32* %retval, align 4, !dbg !5599
  br label %return, !dbg !5599

return:                                           ; preds = %err, %if.end87
  %99 = load i32, i32* %retval, align 4, !dbg !5600
  ret i32 %99, !dbg !5600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_remove(%struct.i2c_client* %client) #0 !dbg !5601 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5602, metadata !DIExpression()), !dbg !5603
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !5604, metadata !DIExpression()), !dbg !5605
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5606
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !5607
  %1 = bitcast i8* %call to %struct.cxd2820r_priv*, !dbg !5607
  store %struct.cxd2820r_priv* %1, %struct.cxd2820r_priv** %priv, align 8, !dbg !5605
  %2 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5608
  %gpio_chip = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %2, i32 0, i32 12, !dbg !5610
  %label = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %gpio_chip, i32 0, i32 0, !dbg !5611
  %3 = load i8*, i8** %label, align 8, !dbg !5611
  %tobool = icmp ne i8* %3, null, !dbg !5608
  br i1 %tobool, label %if.then, label %if.end, !dbg !5612

if.then:                                          ; preds = %entry
  %4 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5613
  %gpio_chip1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %4, i32 0, i32 12, !dbg !5614
  call void @gpiochip_remove(%struct.gpio_chip* %gpio_chip1) #9, !dbg !5615
  br label %if.end, !dbg !5615

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5616
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %5, i32 0, i32 1, !dbg !5617
  %arrayidx = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap, i64 0, i64 1, !dbg !5616
  %6 = load %struct.regmap*, %struct.regmap** %arrayidx, align 8, !dbg !5616
  call void @regmap_exit(%struct.regmap* %6) #9, !dbg !5618
  %7 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5619
  %client2 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %7, i32 0, i32 0, !dbg !5620
  %arrayidx3 = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client2, i64 0, i64 1, !dbg !5619
  %8 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx3, align 8, !dbg !5619
  call void @i2c_unregister_device(%struct.i2c_client* %8) #9, !dbg !5621
  %9 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5622
  %regmap4 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %9, i32 0, i32 1, !dbg !5623
  %arrayidx5 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap4, i64 0, i64 0, !dbg !5622
  %10 = load %struct.regmap*, %struct.regmap** %arrayidx5, align 8, !dbg !5622
  call void @regmap_exit(%struct.regmap* %10) #9, !dbg !5624
  %11 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5625
  %12 = bitcast %struct.cxd2820r_priv* %11 to i8*, !dbg !5625
  call void @kfree(i8* %12) #9, !dbg !5626
  ret i32 0, !dbg !5627
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5628 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5631, metadata !DIExpression()), !dbg !5635
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5641, metadata !DIExpression()), !dbg !5642
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5643, metadata !DIExpression()), !dbg !5644
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5645, metadata !DIExpression()), !dbg !5646
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5647, metadata !DIExpression()), !dbg !5651
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5653, metadata !DIExpression()), !dbg !5657
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5659, metadata !DIExpression()), !dbg !5663
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5668, metadata !DIExpression()), !dbg !5669
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5670, metadata !DIExpression()), !dbg !5671
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5672, metadata !DIExpression()), !dbg !5673
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5674, metadata !DIExpression()), !dbg !5675
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5676, metadata !DIExpression()), !dbg !5677
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5678, metadata !DIExpression()), !dbg !5679
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5680, metadata !DIExpression()), !dbg !5681
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5682, metadata !DIExpression()), !dbg !5683
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5684, metadata !DIExpression()), !dbg !5685
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5686, metadata !DIExpression()), !dbg !5687
  %0 = load i64, i64* %size.addr, align 8, !dbg !5688
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5689
  %or = or i32 %1, 256, !dbg !5690
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5691
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !5692
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5693

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5694
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5695
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5696

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5697
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5698
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5699
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5700
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5677
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5701
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5702
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5703
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5704
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5705
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5706
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5707
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5707
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5707
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5707
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5707
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5708
  br label %kmalloc.exit, !dbg !5708

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5709
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5710
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5710
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5712

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5713
  br label %kmalloc_index.exit.i, !dbg !5713

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5714
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5716
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5717

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5718
  br label %kmalloc_index.exit.i, !dbg !5718

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5719
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5721
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5722

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5723
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5724
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5725

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5726
  br label %kmalloc_index.exit.i, !dbg !5726

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5727
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5729
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5730

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5731
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5732
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5733

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5734
  br label %kmalloc_index.exit.i, !dbg !5734

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5735
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5737
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5738

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5739
  br label %kmalloc_index.exit.i, !dbg !5739

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5740
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5742
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5743

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5744
  br label %kmalloc_index.exit.i, !dbg !5744

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5745
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5747
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5748

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5749
  br label %kmalloc_index.exit.i, !dbg !5749

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5750
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5752
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5753

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5754
  br label %kmalloc_index.exit.i, !dbg !5754

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5755
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5757
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5758

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5759
  br label %kmalloc_index.exit.i, !dbg !5759

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5760
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5762
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5763

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5764
  br label %kmalloc_index.exit.i, !dbg !5764

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5765
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5767
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5768

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5769
  br label %kmalloc_index.exit.i, !dbg !5769

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5770
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5772
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5773

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5774
  br label %kmalloc_index.exit.i, !dbg !5774

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5775
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5777
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5778

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5779
  br label %kmalloc_index.exit.i, !dbg !5779

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5780
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5782
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5783

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5784
  br label %kmalloc_index.exit.i, !dbg !5784

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5785
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5787
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5788

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5789
  br label %kmalloc_index.exit.i, !dbg !5789

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5790
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5792
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5793

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5794
  br label %kmalloc_index.exit.i, !dbg !5794

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5795
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5797
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5798

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5799
  br label %kmalloc_index.exit.i, !dbg !5799

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5800
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5802
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5803

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5804
  br label %kmalloc_index.exit.i, !dbg !5804

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5805
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5807
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5808

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5809
  br label %kmalloc_index.exit.i, !dbg !5809

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5810
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5812
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5813

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5814
  br label %kmalloc_index.exit.i, !dbg !5814

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5815
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5817
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5818

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5819
  br label %kmalloc_index.exit.i, !dbg !5819

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5820
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5822
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5823

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5824
  br label %kmalloc_index.exit.i, !dbg !5824

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5825
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5827
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5828

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5829
  br label %kmalloc_index.exit.i, !dbg !5829

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5830
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5832
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5833

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5834
  br label %kmalloc_index.exit.i, !dbg !5834

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5835
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5837
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5838

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5839
  br label %kmalloc_index.exit.i, !dbg !5839

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5840
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5842
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5843

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5844
  br label %kmalloc_index.exit.i, !dbg !5844

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5845
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5847
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5848

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5849
  br label %kmalloc_index.exit.i, !dbg !5849

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5850
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5852
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5853

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5854
  br label %kmalloc_index.exit.i, !dbg !5854

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5855, !srcloc !5858
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #11, !dbg !5859, !srcloc !5862
  unreachable, !dbg !5863

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5864
  store i32 %45, i32* %index.i, align 4, !dbg !5865
  %46 = load i32, i32* %index.i, align 4, !dbg !5866
  %tobool.i = icmp ne i32 %46, 0, !dbg !5866
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5868

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5869
  br label %kmalloc.exit, !dbg !5869

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5870
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5871
  %and.i.i = and i32 %48, 17, !dbg !5871
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5871
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5871
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5871
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5871
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5873

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5874
  br label %kmalloc_type.exit.i, !dbg !5874

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5875
  %and2.i.i = and i32 %49, 1, !dbg !5876
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5875
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5875
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5875
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5877
  br label %kmalloc_type.exit.i, !dbg !5877

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5878
  %idxprom.i = zext i32 %51 to i64, !dbg !5879
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5879
  %52 = load i32, i32* %index.i, align 4, !dbg !5880
  %idxprom6.i = zext i32 %52 to i64, !dbg !5879
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5879
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5879
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5881
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5882
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5883
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5884
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5885
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5885
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5885
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5885
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5885
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5646
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5886
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5887
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5888
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5889
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5890
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5891
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5892
  store i8* %62, i8** %retval.i, align 8, !dbg !5893
  br label %kmalloc.exit, !dbg !5893

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5894
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5895
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5896
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5896
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5896
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5896
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5896
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5897
  br label %kmalloc.exit, !dbg !5897

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5898
  ret i8* %65, !dbg !5899
}

; Function Attrs: noredzone
declare dso_local %struct.regmap* @__regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*, %struct.lock_class_key*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5900 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5901, metadata !DIExpression()), !dbg !5902
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5903
  %1 = ptrtoint i8* %0 to i64, !dbg !5903
  %2 = inttoptr i64 %1 to i8*, !dbg !5903
  %3 = ptrtoint i8* %2 to i64, !dbg !5903
  %cmp = icmp uge i64 %3, -4095, !dbg !5903
  %lnot = xor i1 %cmp, true, !dbg !5903
  %lnot1 = xor i1 %lnot, true, !dbg !5903
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5903
  %conv = sext i32 %lnot.ext to i64, !dbg !5903
  %tobool = icmp ne i64 %conv, 0, !dbg !5903
  ret i1 %tobool, !dbg !5904
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5905 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5908, metadata !DIExpression()), !dbg !5909
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5910
  %1 = ptrtoint i8* %0 to i64, !dbg !5911
  ret i64 %1, !dbg !5912
}

; Function Attrs: noredzone
declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_new_dummy_device(%struct.i2c_adapter*, i16 zeroext) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_gpio_direction_output(%struct.gpio_chip* %chip, i32 %nr, i32 %val) #0 !dbg !5913 {
entry:
  %chip.addr = alloca %struct.gpio_chip*, align 8
  %nr.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %gpio = alloca [3 x i8], align 1
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !5914, metadata !DIExpression()), !dbg !5915
  store i32 %nr, i32* %nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr, metadata !5916, metadata !DIExpression()), !dbg !5917
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5918, metadata !DIExpression()), !dbg !5919
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !5920, metadata !DIExpression()), !dbg !5921
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5922
  %call = call i8* @gpiochip_get_data(%struct.gpio_chip* %0) #9, !dbg !5923
  %1 = bitcast i8* %call to %struct.cxd2820r_priv*, !dbg !5923
  store %struct.cxd2820r_priv* %1, %struct.cxd2820r_priv** %priv, align 8, !dbg !5921
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5924, metadata !DIExpression()), !dbg !5925
  %2 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5926
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %2, i32 0, i32 0, !dbg !5927
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !5926
  %3 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !5926
  store %struct.i2c_client* %3, %struct.i2c_client** %client, align 8, !dbg !5925
  call void @llvm.dbg.declare(metadata [3 x i8]* %gpio, metadata !5928, metadata !DIExpression()), !dbg !5929
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %gpio, i64 0, i64 0, !dbg !5930
  %4 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5931
  %gpio2 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %4, i32 0, i32 11, !dbg !5932
  %arraydecay3 = getelementptr inbounds [3 x i8], [3 x i8]* %gpio2, i64 0, i64 0, !dbg !5930
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arraydecay, i8* align 1 %arraydecay3, i64 3, i1 false), !dbg !5930
  %5 = load i32, i32* %val.addr, align 4, !dbg !5933
  %shl = shl i32 %5, 2, !dbg !5934
  %or = or i32 1, %shl, !dbg !5935
  %conv = trunc i32 %or to i8, !dbg !5936
  %6 = load i32, i32* %nr.addr, align 4, !dbg !5937
  %idxprom = zext i32 %6 to i64, !dbg !5938
  %arrayidx4 = getelementptr [3 x i8], [3 x i8]* %gpio, i64 0, i64 %idxprom, !dbg !5938
  store i8 %conv, i8* %arrayidx4, align 1, !dbg !5939
  %7 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5940
  %fe = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %7, i32 0, i32 3, !dbg !5941
  %arraydecay5 = getelementptr inbounds [3 x i8], [3 x i8]* %gpio, i64 0, i64 0, !dbg !5942
  %call6 = call i32 @cxd2820r_gpio(%struct.dvb_frontend* %fe, i8* %arraydecay5) #9, !dbg !5943
  ret i32 %call6, !dbg !5944
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cxd2820r_gpio_set(%struct.gpio_chip* %chip, i32 %nr, i32 %val) #0 !dbg !5945 {
entry:
  %chip.addr = alloca %struct.gpio_chip*, align 8
  %nr.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %gpio = alloca [3 x i8], align 1
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !5946, metadata !DIExpression()), !dbg !5947
  store i32 %nr, i32* %nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5950, metadata !DIExpression()), !dbg !5951
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !5952, metadata !DIExpression()), !dbg !5953
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5954
  %call = call i8* @gpiochip_get_data(%struct.gpio_chip* %0) #9, !dbg !5955
  %1 = bitcast i8* %call to %struct.cxd2820r_priv*, !dbg !5955
  store %struct.cxd2820r_priv* %1, %struct.cxd2820r_priv** %priv, align 8, !dbg !5953
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5956, metadata !DIExpression()), !dbg !5957
  %2 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5958
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %2, i32 0, i32 0, !dbg !5959
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !5958
  %3 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !5958
  store %struct.i2c_client* %3, %struct.i2c_client** %client, align 8, !dbg !5957
  call void @llvm.dbg.declare(metadata [3 x i8]* %gpio, metadata !5960, metadata !DIExpression()), !dbg !5961
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %gpio, i64 0, i64 0, !dbg !5962
  %4 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5963
  %gpio2 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %4, i32 0, i32 11, !dbg !5964
  %arraydecay3 = getelementptr inbounds [3 x i8], [3 x i8]* %gpio2, i64 0, i64 0, !dbg !5962
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arraydecay, i8* align 1 %arraydecay3, i64 3, i1 false), !dbg !5962
  %5 = load i32, i32* %val.addr, align 4, !dbg !5965
  %shl = shl i32 %5, 2, !dbg !5966
  %or = or i32 1, %shl, !dbg !5967
  %conv = trunc i32 %or to i8, !dbg !5968
  %6 = load i32, i32* %nr.addr, align 4, !dbg !5969
  %idxprom = zext i32 %6 to i64, !dbg !5970
  %arrayidx4 = getelementptr [3 x i8], [3 x i8]* %gpio, i64 0, i64 %idxprom, !dbg !5970
  store i8 %conv, i8* %arrayidx4, align 1, !dbg !5971
  %7 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5972
  %fe = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %7, i32 0, i32 3, !dbg !5973
  %arraydecay5 = getelementptr inbounds [3 x i8], [3 x i8]* %gpio, i64 0, i64 0, !dbg !5974
  %call6 = call i32 @cxd2820r_gpio(%struct.dvb_frontend* %fe, i8* %arraydecay5) #9, !dbg !5975
  ret void, !dbg !5976
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_gpio_get(%struct.gpio_chip* %chip, i32 %nr) #0 !dbg !5977 {
entry:
  %chip.addr = alloca %struct.gpio_chip*, align 8
  %nr.addr = alloca i32, align 4
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !5978, metadata !DIExpression()), !dbg !5979
  store i32 %nr, i32* %nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr.addr, metadata !5980, metadata !DIExpression()), !dbg !5981
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !5982, metadata !DIExpression()), !dbg !5983
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5984
  %call = call i8* @gpiochip_get_data(%struct.gpio_chip* %0) #9, !dbg !5985
  %1 = bitcast i8* %call to %struct.cxd2820r_priv*, !dbg !5985
  store %struct.cxd2820r_priv* %1, %struct.cxd2820r_priv** %priv, align 8, !dbg !5983
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5986, metadata !DIExpression()), !dbg !5987
  %2 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5988
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %2, i32 0, i32 0, !dbg !5989
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !5988
  %3 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !5988
  store %struct.i2c_client* %3, %struct.i2c_client** %client, align 8, !dbg !5987
  %4 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !5990
  %gpio = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %4, i32 0, i32 11, !dbg !5991
  %5 = load i32, i32* %nr.addr, align 4, !dbg !5992
  %idxprom = zext i32 %5 to i64, !dbg !5990
  %arrayidx2 = getelementptr [3 x i8], [3 x i8]* %gpio, i64 0, i64 %idxprom, !dbg !5990
  %6 = load i8, i8* %arrayidx2, align 1, !dbg !5990
  %conv = zext i8 %6 to i32, !dbg !5990
  %shr = ashr i32 %conv, 2, !dbg !5993
  %and = and i32 %shr, 1, !dbg !5994
  ret i32 %and, !dbg !5995
}

; Function Attrs: noredzone
declare dso_local i32 @gpiochip_add_data_with_key(%struct.gpio_chip*, i8*, %struct.lock_class_key*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_clientdata(%struct.i2c_client* %client, i8* %data) #0 !dbg !5996 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5999, metadata !DIExpression()), !dbg !6000
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6001, metadata !DIExpression()), !dbg !6002
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6003
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !6004
  %1 = load i8*, i8** %data.addr, align 8, !dbg !6005
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !6006
  ret void, !dbg !6007
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dvb_frontend* @cxd2820r_get_dvb_frontend(%struct.i2c_client* %client) #0 !dbg !6008 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6009, metadata !DIExpression()), !dbg !6010
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6011, metadata !DIExpression()), !dbg !6012
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6013
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !6014
  %1 = bitcast i8* %call to %struct.cxd2820r_priv*, !dbg !6014
  store %struct.cxd2820r_priv* %1, %struct.cxd2820r_priv** %priv, align 8, !dbg !6012
  %2 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6015
  %fe = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %2, i32 0, i32 3, !dbg !6016
  ret %struct.dvb_frontend* %fe, !dbg !6017
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #5

; Function Attrs: noredzone
declare dso_local void @regmap_exit(%struct.regmap*) #2

; Function Attrs: noredzone
declare dso_local void @i2c_unregister_device(%struct.i2c_client*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !6018 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6022, metadata !DIExpression()), !dbg !6027
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6029, metadata !DIExpression()), !dbg !6030
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6031, metadata !DIExpression()), !dbg !6032
  %0 = load i64, i64* %size.addr, align 8, !dbg !6033
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6035
  br i1 %1, label %if.then, label %if.end447, !dbg !6036

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6037
  %tobool = icmp ne i64 %2, 0, !dbg !6037
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6040

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6041
  br label %return, !dbg !6041

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6042
  %cmp = icmp ult i64 %3, 4096, !dbg !6044
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6045

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6046
  br label %return, !dbg !6046

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub = sub i64 %4, 1, !dbg !6047
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6047
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6047

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub4 = sub i64 %6, 1, !dbg !6047
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6047
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6047

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub6 = sub i64 %8, 1, !dbg !6047
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6047
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6047

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6047

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub9 = sub i64 %9, 1, !dbg !6047
  %and = and i64 %sub9, -9223372036854775808, !dbg !6047
  %tobool10 = icmp ne i64 %and, 0, !dbg !6047
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6047

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6047

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub13 = sub i64 %10, 1, !dbg !6047
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6047
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6047
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6047

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6047

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub18 = sub i64 %11, 1, !dbg !6047
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6047
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6047
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6047

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6047

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub23 = sub i64 %12, 1, !dbg !6047
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6047
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6047
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6047

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6047

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub28 = sub i64 %13, 1, !dbg !6047
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6047
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6047
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6047

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6047

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub33 = sub i64 %14, 1, !dbg !6047
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6047
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6047
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6047

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6047

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub38 = sub i64 %15, 1, !dbg !6047
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6047
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6047
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6047

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6047

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub43 = sub i64 %16, 1, !dbg !6047
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6047
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6047
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6047

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6047

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub48 = sub i64 %17, 1, !dbg !6047
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6047
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6047
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6047

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6047

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub53 = sub i64 %18, 1, !dbg !6047
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6047
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6047
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6047

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6047

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub58 = sub i64 %19, 1, !dbg !6047
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6047
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6047
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6047

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6047

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub63 = sub i64 %20, 1, !dbg !6047
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6047
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6047
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6047

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6047

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub68 = sub i64 %21, 1, !dbg !6047
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6047
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6047
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6047

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6047

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub73 = sub i64 %22, 1, !dbg !6047
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6047
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6047
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6047

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6047

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub78 = sub i64 %23, 1, !dbg !6047
  %and79 = and i64 %sub78, 562949953421312, !dbg !6047
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6047
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6047

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6047

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub83 = sub i64 %24, 1, !dbg !6047
  %and84 = and i64 %sub83, 281474976710656, !dbg !6047
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6047
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6047

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6047

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub88 = sub i64 %25, 1, !dbg !6047
  %and89 = and i64 %sub88, 140737488355328, !dbg !6047
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6047
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6047

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6047

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub93 = sub i64 %26, 1, !dbg !6047
  %and94 = and i64 %sub93, 70368744177664, !dbg !6047
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6047
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6047

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6047

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub98 = sub i64 %27, 1, !dbg !6047
  %and99 = and i64 %sub98, 35184372088832, !dbg !6047
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6047
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6047

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6047

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub103 = sub i64 %28, 1, !dbg !6047
  %and104 = and i64 %sub103, 17592186044416, !dbg !6047
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6047
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6047

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6047

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub108 = sub i64 %29, 1, !dbg !6047
  %and109 = and i64 %sub108, 8796093022208, !dbg !6047
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6047
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6047

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6047

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub113 = sub i64 %30, 1, !dbg !6047
  %and114 = and i64 %sub113, 4398046511104, !dbg !6047
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6047
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6047

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6047

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub118 = sub i64 %31, 1, !dbg !6047
  %and119 = and i64 %sub118, 2199023255552, !dbg !6047
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6047
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6047

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6047

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub123 = sub i64 %32, 1, !dbg !6047
  %and124 = and i64 %sub123, 1099511627776, !dbg !6047
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6047
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6047

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6047

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub128 = sub i64 %33, 1, !dbg !6047
  %and129 = and i64 %sub128, 549755813888, !dbg !6047
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6047
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6047

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6047

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub133 = sub i64 %34, 1, !dbg !6047
  %and134 = and i64 %sub133, 274877906944, !dbg !6047
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6047
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6047

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6047

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub138 = sub i64 %35, 1, !dbg !6047
  %and139 = and i64 %sub138, 137438953472, !dbg !6047
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6047
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6047

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6047

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub143 = sub i64 %36, 1, !dbg !6047
  %and144 = and i64 %sub143, 68719476736, !dbg !6047
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6047
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6047

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6047

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub148 = sub i64 %37, 1, !dbg !6047
  %and149 = and i64 %sub148, 34359738368, !dbg !6047
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6047
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6047

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6047

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub153 = sub i64 %38, 1, !dbg !6047
  %and154 = and i64 %sub153, 17179869184, !dbg !6047
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6047
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6047

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6047

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub158 = sub i64 %39, 1, !dbg !6047
  %and159 = and i64 %sub158, 8589934592, !dbg !6047
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6047
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6047

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6047

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub163 = sub i64 %40, 1, !dbg !6047
  %and164 = and i64 %sub163, 4294967296, !dbg !6047
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6047
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6047

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6047

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub168 = sub i64 %41, 1, !dbg !6047
  %and169 = and i64 %sub168, 2147483648, !dbg !6047
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6047
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6047

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6047

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub173 = sub i64 %42, 1, !dbg !6047
  %and174 = and i64 %sub173, 1073741824, !dbg !6047
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6047
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6047

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6047

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub178 = sub i64 %43, 1, !dbg !6047
  %and179 = and i64 %sub178, 536870912, !dbg !6047
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6047
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6047

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6047

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub183 = sub i64 %44, 1, !dbg !6047
  %and184 = and i64 %sub183, 268435456, !dbg !6047
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6047
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6047

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6047

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub188 = sub i64 %45, 1, !dbg !6047
  %and189 = and i64 %sub188, 134217728, !dbg !6047
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6047
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6047

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6047

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub193 = sub i64 %46, 1, !dbg !6047
  %and194 = and i64 %sub193, 67108864, !dbg !6047
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6047
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6047

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6047

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub198 = sub i64 %47, 1, !dbg !6047
  %and199 = and i64 %sub198, 33554432, !dbg !6047
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6047
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6047

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6047

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub203 = sub i64 %48, 1, !dbg !6047
  %and204 = and i64 %sub203, 16777216, !dbg !6047
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6047
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6047

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6047

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub208 = sub i64 %49, 1, !dbg !6047
  %and209 = and i64 %sub208, 8388608, !dbg !6047
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6047
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6047

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6047

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub213 = sub i64 %50, 1, !dbg !6047
  %and214 = and i64 %sub213, 4194304, !dbg !6047
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6047
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6047

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6047

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub218 = sub i64 %51, 1, !dbg !6047
  %and219 = and i64 %sub218, 2097152, !dbg !6047
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6047
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6047

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6047

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub223 = sub i64 %52, 1, !dbg !6047
  %and224 = and i64 %sub223, 1048576, !dbg !6047
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6047
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6047

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6047

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub228 = sub i64 %53, 1, !dbg !6047
  %and229 = and i64 %sub228, 524288, !dbg !6047
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6047
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6047

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6047

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub233 = sub i64 %54, 1, !dbg !6047
  %and234 = and i64 %sub233, 262144, !dbg !6047
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6047
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6047

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6047

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub238 = sub i64 %55, 1, !dbg !6047
  %and239 = and i64 %sub238, 131072, !dbg !6047
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6047
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6047

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6047

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub243 = sub i64 %56, 1, !dbg !6047
  %and244 = and i64 %sub243, 65536, !dbg !6047
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6047
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6047

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6047

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub248 = sub i64 %57, 1, !dbg !6047
  %and249 = and i64 %sub248, 32768, !dbg !6047
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6047
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6047

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6047

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub253 = sub i64 %58, 1, !dbg !6047
  %and254 = and i64 %sub253, 16384, !dbg !6047
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6047
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6047

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6047

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub258 = sub i64 %59, 1, !dbg !6047
  %and259 = and i64 %sub258, 8192, !dbg !6047
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6047
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6047

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6047

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub263 = sub i64 %60, 1, !dbg !6047
  %and264 = and i64 %sub263, 4096, !dbg !6047
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6047
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6047

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6047

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub268 = sub i64 %61, 1, !dbg !6047
  %and269 = and i64 %sub268, 2048, !dbg !6047
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6047
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6047

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6047

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub273 = sub i64 %62, 1, !dbg !6047
  %and274 = and i64 %sub273, 1024, !dbg !6047
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6047
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6047

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6047

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub278 = sub i64 %63, 1, !dbg !6047
  %and279 = and i64 %sub278, 512, !dbg !6047
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6047
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6047

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6047

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub283 = sub i64 %64, 1, !dbg !6047
  %and284 = and i64 %sub283, 256, !dbg !6047
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6047
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6047

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6047

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub288 = sub i64 %65, 1, !dbg !6047
  %and289 = and i64 %sub288, 128, !dbg !6047
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6047
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6047

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6047

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub293 = sub i64 %66, 1, !dbg !6047
  %and294 = and i64 %sub293, 64, !dbg !6047
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6047
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6047

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6047

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub298 = sub i64 %67, 1, !dbg !6047
  %and299 = and i64 %sub298, 32, !dbg !6047
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6047
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6047

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6047

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub303 = sub i64 %68, 1, !dbg !6047
  %and304 = and i64 %sub303, 16, !dbg !6047
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6047
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6047

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6047

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub308 = sub i64 %69, 1, !dbg !6047
  %and309 = and i64 %sub308, 8, !dbg !6047
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6047
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6047

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6047

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub313 = sub i64 %70, 1, !dbg !6047
  %and314 = and i64 %sub313, 4, !dbg !6047
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6047
  %71 = zext i1 %tobool315 to i64, !dbg !6047
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6047
  br label %cond.end, !dbg !6047

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6047
  br label %cond.end317, !dbg !6047

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6047
  br label %cond.end319, !dbg !6047

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6047
  br label %cond.end321, !dbg !6047

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6047
  br label %cond.end323, !dbg !6047

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6047
  br label %cond.end325, !dbg !6047

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6047
  br label %cond.end327, !dbg !6047

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6047
  br label %cond.end329, !dbg !6047

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6047
  br label %cond.end331, !dbg !6047

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6047
  br label %cond.end333, !dbg !6047

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6047
  br label %cond.end335, !dbg !6047

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6047
  br label %cond.end337, !dbg !6047

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6047
  br label %cond.end339, !dbg !6047

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6047
  br label %cond.end341, !dbg !6047

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6047
  br label %cond.end343, !dbg !6047

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6047
  br label %cond.end345, !dbg !6047

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6047
  br label %cond.end347, !dbg !6047

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6047
  br label %cond.end349, !dbg !6047

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6047
  br label %cond.end351, !dbg !6047

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6047
  br label %cond.end353, !dbg !6047

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6047
  br label %cond.end355, !dbg !6047

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6047
  br label %cond.end357, !dbg !6047

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6047
  br label %cond.end359, !dbg !6047

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6047
  br label %cond.end361, !dbg !6047

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6047
  br label %cond.end363, !dbg !6047

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6047
  br label %cond.end365, !dbg !6047

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6047
  br label %cond.end367, !dbg !6047

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6047
  br label %cond.end369, !dbg !6047

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6047
  br label %cond.end371, !dbg !6047

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6047
  br label %cond.end373, !dbg !6047

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6047
  br label %cond.end375, !dbg !6047

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6047
  br label %cond.end377, !dbg !6047

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6047
  br label %cond.end379, !dbg !6047

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6047
  br label %cond.end381, !dbg !6047

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6047
  br label %cond.end383, !dbg !6047

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6047
  br label %cond.end385, !dbg !6047

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6047
  br label %cond.end387, !dbg !6047

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6047
  br label %cond.end389, !dbg !6047

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6047
  br label %cond.end391, !dbg !6047

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6047
  br label %cond.end393, !dbg !6047

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6047
  br label %cond.end395, !dbg !6047

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6047
  br label %cond.end397, !dbg !6047

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6047
  br label %cond.end399, !dbg !6047

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6047
  br label %cond.end401, !dbg !6047

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6047
  br label %cond.end403, !dbg !6047

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6047
  br label %cond.end405, !dbg !6047

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6047
  br label %cond.end407, !dbg !6047

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6047
  br label %cond.end409, !dbg !6047

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6047
  br label %cond.end411, !dbg !6047

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6047
  br label %cond.end413, !dbg !6047

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6047
  br label %cond.end415, !dbg !6047

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6047
  br label %cond.end417, !dbg !6047

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6047
  br label %cond.end419, !dbg !6047

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6047
  br label %cond.end421, !dbg !6047

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6047
  br label %cond.end423, !dbg !6047

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6047
  br label %cond.end425, !dbg !6047

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6047
  br label %cond.end427, !dbg !6047

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6047
  br label %cond.end429, !dbg !6047

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6047
  br label %cond.end431, !dbg !6047

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6047
  br label %cond.end433, !dbg !6047

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6047
  br label %cond.end435, !dbg !6047

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6047
  br label %cond.end437, !dbg !6047

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6047
  br label %cond.end440, !dbg !6047

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6047

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6047
  br label %cond.end444, !dbg !6047

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6047
  %sub443 = sub i64 %72, 1, !dbg !6047
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !6047
  br label %cond.end444, !dbg !6047

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6047
  %sub446 = sub i32 %cond445, 12, !dbg !6048
  %add = add i32 %sub446, 1, !dbg !6049
  store i32 %add, i32* %retval, align 4, !dbg !6050
  br label %return, !dbg !6050

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6051
  %dec = add i64 %73, -1, !dbg !6051
  store i64 %dec, i64* %size.addr, align 8, !dbg !6051
  %74 = load i64, i64* %size.addr, align 8, !dbg !6052
  %shr = lshr i64 %74, 12, !dbg !6052
  store i64 %shr, i64* %size.addr, align 8, !dbg !6052
  %75 = load i64, i64* %size.addr, align 8, !dbg !6053
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6030
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6054
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6055
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !6054, !srcloc !6056
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6054
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6057
  %add.i = add i32 %79, 1, !dbg !6058
  store i32 %add.i, i32* %retval, align 4, !dbg !6059
  br label %return, !dbg !6059

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6060
  ret i32 %80, !dbg !6060
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !6061 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6022, metadata !DIExpression()), !dbg !6065
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6029, metadata !DIExpression()), !dbg !6067
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6068, metadata !DIExpression()), !dbg !6069
  %0 = load i64, i64* %n.addr, align 8, !dbg !6070
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6067
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6071
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6072
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !6071, !srcloc !6056
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6071
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6073
  %add.i = add i32 %4, 1, !dbg !6074
  %sub = sub i32 %add.i, 1, !dbg !6075
  ret i32 %sub, !dbg !6076
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6077 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6081, metadata !DIExpression()), !dbg !6082
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6083, metadata !DIExpression()), !dbg !6084
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6085, metadata !DIExpression()), !dbg !6086
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6087, metadata !DIExpression()), !dbg !6088
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6089
  ret i8* %0, !dbg !6090
}

; Function Attrs: noredzone
declare dso_local i8* @gpiochip_get_data(%struct.gpio_chip*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cxd2820r_release(%struct.dvb_frontend* %fe) #0 !dbg !6091 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6092, metadata !DIExpression()), !dbg !6093
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6094, metadata !DIExpression()), !dbg !6095
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6096
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6097
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6097
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !6096
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !6095
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6098, metadata !DIExpression()), !dbg !6099
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6100
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !6101
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !6100
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !6100
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !6099
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6102
  call void @i2c_unregister_device(%struct.i2c_client* %5) #9, !dbg !6103
  ret void, !dbg !6104
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_init(%struct.dvb_frontend* %fe) #0 !dbg !6105 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6106, metadata !DIExpression()), !dbg !6107
  ret i32 0, !dbg !6108
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_sleep(%struct.dvb_frontend* %fe) #0 !dbg !6109 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6110, metadata !DIExpression()), !dbg !6111
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6112, metadata !DIExpression()), !dbg !6113
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6114
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6115
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6115
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !6114
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !6113
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6116, metadata !DIExpression()), !dbg !6117
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6118
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !6119
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !6118
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !6118
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !6117
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6120, metadata !DIExpression()), !dbg !6121
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6122
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !6123
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6121
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6124, metadata !DIExpression()), !dbg !6125
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6126
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 15, !dbg !6127
  %7 = load i32, i32* %delivery_system, align 4, !dbg !6127
  switch i32 %7, label %sw.default [
    i32 3, label %sw.bb
    i32 16, label %sw.bb2
    i32 1, label %sw.bb4
  ], !dbg !6128

sw.bb:                                            ; preds = %entry
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6129
  %call = call i32 @cxd2820r_sleep_t(%struct.dvb_frontend* %8) #9, !dbg !6131
  store i32 %call, i32* %ret, align 4, !dbg !6132
  br label %sw.epilog, !dbg !6133

sw.bb2:                                           ; preds = %entry
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6134
  %call3 = call i32 @cxd2820r_sleep_t2(%struct.dvb_frontend* %9) #9, !dbg !6135
  store i32 %call3, i32* %ret, align 4, !dbg !6136
  br label %sw.epilog, !dbg !6137

sw.bb4:                                           ; preds = %entry
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6138
  %call5 = call i32 @cxd2820r_sleep_c(%struct.dvb_frontend* %10) #9, !dbg !6139
  store i32 %call5, i32* %ret, align 4, !dbg !6140
  br label %sw.epilog, !dbg !6141

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %ret, align 4, !dbg !6142
  br label %sw.epilog, !dbg !6143

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb
  %11 = load i32, i32* %ret, align 4, !dbg !6144
  ret i32 %11, !dbg !6145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_get_frontend_algo(%struct.dvb_frontend* %fe) #0 !dbg !6146 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6147, metadata !DIExpression()), !dbg !6148
  ret i32 4, !dbg !6149
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %s) #0 !dbg !6150 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %s.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6151, metadata !DIExpression()), !dbg !6152
  store %struct.dvb_frontend_tune_settings* %s, %struct.dvb_frontend_tune_settings** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %s.addr, metadata !6153, metadata !DIExpression()), !dbg !6154
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6155, metadata !DIExpression()), !dbg !6156
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6157
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6158
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6158
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !6157
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !6156
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6159, metadata !DIExpression()), !dbg !6160
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6161
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !6162
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !6161
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !6161
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !6160
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6163, metadata !DIExpression()), !dbg !6164
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6165
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !6166
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6164
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6167, metadata !DIExpression()), !dbg !6168
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6169
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 15, !dbg !6170
  %7 = load i32, i32* %delivery_system, align 4, !dbg !6170
  switch i32 %7, label %sw.default [
    i32 3, label %sw.bb
    i32 16, label %sw.bb2
    i32 1, label %sw.bb4
  ], !dbg !6171

sw.bb:                                            ; preds = %entry
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6172
  %9 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %s.addr, align 8, !dbg !6174
  %call = call i32 @cxd2820r_get_tune_settings_t(%struct.dvb_frontend* %8, %struct.dvb_frontend_tune_settings* %9) #9, !dbg !6175
  store i32 %call, i32* %ret, align 4, !dbg !6176
  br label %sw.epilog, !dbg !6177

sw.bb2:                                           ; preds = %entry
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6178
  %11 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %s.addr, align 8, !dbg !6179
  %call3 = call i32 @cxd2820r_get_tune_settings_t2(%struct.dvb_frontend* %10, %struct.dvb_frontend_tune_settings* %11) #9, !dbg !6180
  store i32 %call3, i32* %ret, align 4, !dbg !6181
  br label %sw.epilog, !dbg !6182

sw.bb4:                                           ; preds = %entry
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6183
  %13 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %s.addr, align 8, !dbg !6184
  %call5 = call i32 @cxd2820r_get_tune_settings_c(%struct.dvb_frontend* %12, %struct.dvb_frontend_tune_settings* %13) #9, !dbg !6185
  store i32 %call5, i32* %ret, align 4, !dbg !6186
  br label %sw.epilog, !dbg !6187

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %ret, align 4, !dbg !6188
  br label %sw.epilog, !dbg !6189

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb
  %14 = load i32, i32* %ret, align 4, !dbg !6190
  ret i32 %14, !dbg !6191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %p) #0 !dbg !6192 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6193, metadata !DIExpression()), !dbg !6194
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !6195, metadata !DIExpression()), !dbg !6196
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6197, metadata !DIExpression()), !dbg !6198
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6199
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6200
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6200
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !6199
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !6198
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6201, metadata !DIExpression()), !dbg !6202
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6203
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !6204
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !6203
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !6203
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !6202
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6205, metadata !DIExpression()), !dbg !6206
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6207
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !6208
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6206
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6209, metadata !DIExpression()), !dbg !6210
  %6 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6211
  %delivery_system = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %6, i32 0, i32 13, !dbg !6213
  %7 = load i32, i32* %delivery_system, align 8, !dbg !6213
  %cmp = icmp eq i32 %7, 0, !dbg !6214
  br i1 %cmp, label %if.then, label %if.end, !dbg !6215

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6216
  br label %return, !dbg !6216

if.end:                                           ; preds = %entry
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6217
  %delivery_system2 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 15, !dbg !6218
  %9 = load i32, i32* %delivery_system2, align 4, !dbg !6218
  switch i32 %9, label %sw.default [
    i32 3, label %sw.bb
    i32 16, label %sw.bb3
    i32 1, label %sw.bb5
  ], !dbg !6219

sw.bb:                                            ; preds = %if.end
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6220
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6222
  %call = call i32 @cxd2820r_get_frontend_t(%struct.dvb_frontend* %10, %struct.dtv_frontend_properties* %11) #9, !dbg !6223
  store i32 %call, i32* %ret, align 4, !dbg !6224
  br label %sw.epilog, !dbg !6225

sw.bb3:                                           ; preds = %if.end
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6226
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6227
  %call4 = call i32 @cxd2820r_get_frontend_t2(%struct.dvb_frontend* %12, %struct.dtv_frontend_properties* %13) #9, !dbg !6228
  store i32 %call4, i32* %ret, align 4, !dbg !6229
  br label %sw.epilog, !dbg !6230

sw.bb5:                                           ; preds = %if.end
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6231
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6232
  %call6 = call i32 @cxd2820r_get_frontend_c(%struct.dvb_frontend* %14, %struct.dtv_frontend_properties* %15) #9, !dbg !6233
  store i32 %call6, i32* %ret, align 4, !dbg !6234
  br label %sw.epilog, !dbg !6235

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !6236
  br label %sw.epilog, !dbg !6237

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i32, i32* %ret, align 4, !dbg !6238
  store i32 %16, i32* %retval, align 4, !dbg !6239
  br label %return, !dbg !6239

return:                                           ; preds = %sw.epilog, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !6240
  ret i32 %17, !dbg !6240
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !6241 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6242, metadata !DIExpression()), !dbg !6243
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !6244, metadata !DIExpression()), !dbg !6245
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6246, metadata !DIExpression()), !dbg !6247
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6248
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6249
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6249
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !6248
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !6247
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6250, metadata !DIExpression()), !dbg !6251
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6252
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !6253
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !6252
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !6252
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !6251
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6254, metadata !DIExpression()), !dbg !6255
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6256
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !6257
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6255
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6258, metadata !DIExpression()), !dbg !6259
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6260
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 15, !dbg !6261
  %7 = load i32, i32* %delivery_system, align 4, !dbg !6261
  switch i32 %7, label %sw.default [
    i32 3, label %sw.bb
    i32 16, label %sw.bb2
    i32 1, label %sw.bb4
  ], !dbg !6262

sw.bb:                                            ; preds = %entry
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6263
  %9 = load i32*, i32** %status.addr, align 8, !dbg !6265
  %call = call i32 @cxd2820r_read_status_t(%struct.dvb_frontend* %8, i32* %9) #9, !dbg !6266
  store i32 %call, i32* %ret, align 4, !dbg !6267
  br label %sw.epilog, !dbg !6268

sw.bb2:                                           ; preds = %entry
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6269
  %11 = load i32*, i32** %status.addr, align 8, !dbg !6270
  %call3 = call i32 @cxd2820r_read_status_t2(%struct.dvb_frontend* %10, i32* %11) #9, !dbg !6271
  store i32 %call3, i32* %ret, align 4, !dbg !6272
  br label %sw.epilog, !dbg !6273

sw.bb4:                                           ; preds = %entry
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6274
  %13 = load i32*, i32** %status.addr, align 8, !dbg !6275
  %call5 = call i32 @cxd2820r_read_status_c(%struct.dvb_frontend* %12, i32* %13) #9, !dbg !6276
  store i32 %call5, i32* %ret, align 4, !dbg !6277
  br label %sw.epilog, !dbg !6278

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %ret, align 4, !dbg !6279
  br label %sw.epilog, !dbg !6280

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb
  %14 = load i32, i32* %ret, align 4, !dbg !6281
  ret i32 %14, !dbg !6282
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !6283 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6284, metadata !DIExpression()), !dbg !6285
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !6286, metadata !DIExpression()), !dbg !6287
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6288, metadata !DIExpression()), !dbg !6289
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6290
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6291
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6291
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !6290
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !6289
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6292, metadata !DIExpression()), !dbg !6293
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6294
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !6295
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !6294
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !6294
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !6293
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6296, metadata !DIExpression()), !dbg !6297
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6298
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !6299
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6297
  %6 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6300
  %post_bit_error = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %6, i32 0, i32 9, !dbg !6301
  %7 = load i64, i64* %post_bit_error, align 8, !dbg !6301
  %8 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6302
  %post_bit_error_prev_dvbv3 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %8, i32 0, i32 8, !dbg !6303
  %9 = load i64, i64* %post_bit_error_prev_dvbv3, align 8, !dbg !6303
  %sub = sub i64 %7, %9, !dbg !6304
  %conv = trunc i64 %sub to i32, !dbg !6305
  %10 = load i32*, i32** %ber.addr, align 8, !dbg !6306
  store i32 %conv, i32* %10, align 4, !dbg !6307
  %11 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6308
  %post_bit_error2 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %11, i32 0, i32 9, !dbg !6309
  %12 = load i64, i64* %post_bit_error2, align 8, !dbg !6309
  %13 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6310
  %post_bit_error_prev_dvbv33 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %13, i32 0, i32 8, !dbg !6311
  store i64 %12, i64* %post_bit_error_prev_dvbv33, align 8, !dbg !6312
  ret i32 0, !dbg !6313
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !6314 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6315, metadata !DIExpression()), !dbg !6316
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !6317, metadata !DIExpression()), !dbg !6318
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6319, metadata !DIExpression()), !dbg !6320
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6321
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6322
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6322
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !6321
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !6320
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6323, metadata !DIExpression()), !dbg !6324
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6325
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !6326
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !6325
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !6325
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !6324
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6327, metadata !DIExpression()), !dbg !6328
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6329
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !6330
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6328
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6331
  %strength2 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 42, !dbg !6333
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength2, i32 0, i32 1, !dbg !6334
  %arrayidx3 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !6331
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx3, i32 0, i32 0, !dbg !6335
  %7 = load i8, i8* %scale, align 1, !dbg !6335
  %conv = zext i8 %7 to i32, !dbg !6331
  %cmp = icmp eq i32 %conv, 2, !dbg !6336
  br i1 %cmp, label %if.then, label %if.else, !dbg !6337

if.then:                                          ; preds = %entry
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6338
  %strength5 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 42, !dbg !6339
  %stat6 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %strength5, i32 0, i32 1, !dbg !6340
  %arrayidx7 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat6, i64 0, i64 0, !dbg !6338
  %9 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx7, i32 0, i32 1, !dbg !6341
  %uvalue = bitcast %union.anon.65* %9 to i64*, !dbg !6341
  %10 = load i64, i64* %uvalue, align 1, !dbg !6341
  %conv8 = trunc i64 %10 to i16, !dbg !6338
  %11 = load i16*, i16** %strength.addr, align 8, !dbg !6342
  store i16 %conv8, i16* %11, align 2, !dbg !6343
  br label %if.end, !dbg !6344

if.else:                                          ; preds = %entry
  %12 = load i16*, i16** %strength.addr, align 8, !dbg !6345
  store i16 0, i16* %12, align 2, !dbg !6346
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !6347
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !6348 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6349, metadata !DIExpression()), !dbg !6350
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !6351, metadata !DIExpression()), !dbg !6352
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6353, metadata !DIExpression()), !dbg !6354
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6355
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6356
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6356
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !6355
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !6354
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6357, metadata !DIExpression()), !dbg !6358
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6359
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !6360
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !6359
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !6359
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !6358
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6361, metadata !DIExpression()), !dbg !6362
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6363
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !6364
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6362
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6365
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 43, !dbg !6367
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr, i32 0, i32 1, !dbg !6368
  %arrayidx2 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !6365
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx2, i32 0, i32 0, !dbg !6369
  %7 = load i8, i8* %scale, align 1, !dbg !6369
  %conv = zext i8 %7 to i32, !dbg !6365
  %cmp = icmp eq i32 %conv, 1, !dbg !6370
  br i1 %cmp, label %if.then, label %if.else, !dbg !6371

if.then:                                          ; preds = %entry
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6372
  %cnr4 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 43, !dbg !6373
  %stat5 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr4, i32 0, i32 1, !dbg !6374
  %arrayidx6 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat5, i64 0, i64 0, !dbg !6372
  %9 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx6, i32 0, i32 1, !dbg !6375
  %svalue = bitcast %union.anon.65* %9 to i64*, !dbg !6375
  %10 = load i64, i64* %svalue, align 1, !dbg !6375
  %call = call i64 @div_s64(i64 %10, i32 100) #9, !dbg !6376
  %conv7 = trunc i64 %call to i16, !dbg !6376
  %11 = load i16*, i16** %snr.addr, align 8, !dbg !6377
  store i16 %conv7, i16* %11, align 2, !dbg !6378
  br label %if.end, !dbg !6379

if.else:                                          ; preds = %entry
  %12 = load i16*, i16** %snr.addr, align 8, !dbg !6380
  store i16 0, i16* %12, align 2, !dbg !6381
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !6382
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !6383 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6384, metadata !DIExpression()), !dbg !6385
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !6386, metadata !DIExpression()), !dbg !6387
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6388, metadata !DIExpression()), !dbg !6389
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6390
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6391
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6391
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !6390
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !6389
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6392, metadata !DIExpression()), !dbg !6393
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6394
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !6395
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !6394
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !6394
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !6393
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6396, metadata !DIExpression()), !dbg !6397
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6398
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !6399
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6397
  %6 = load i32*, i32** %ucblocks.addr, align 8, !dbg !6400
  store i32 0, i32* %6, align 4, !dbg !6401
  ret i32 0, !dbg !6402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !6403 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6404, metadata !DIExpression()), !dbg !6405
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !6406, metadata !DIExpression()), !dbg !6407
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6408, metadata !DIExpression()), !dbg !6409
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6410
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6411
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6411
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !6410
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !6409
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6412, metadata !DIExpression()), !dbg !6413
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6414
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !6415
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !6414
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !6414
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !6413
  br label %do.body, !dbg !6416

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6417

do.end:                                           ; preds = %do.body
  %5 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6419
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %5, i32 0, i32 1, !dbg !6420
  %arrayidx2 = getelementptr [2 x %struct.regmap*], [2 x %struct.regmap*]* %regmap, i64 0, i64 0, !dbg !6419
  %6 = load %struct.regmap*, %struct.regmap** %arrayidx2, align 8, !dbg !6419
  %7 = load i32, i32* %enable.addr, align 4, !dbg !6421
  %tobool = icmp ne i32 %7, 0, !dbg !6421
  %8 = zext i1 %tobool to i64, !dbg !6421
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !6421
  %call = call i32 @regmap_update_bits(%struct.regmap* %6, i32 219, i32 1, i32 %cond) #9, !dbg !6422
  ret i32 %call, !dbg !6423
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_search(%struct.dvb_frontend* %fe) #0 !dbg !6424 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6425, metadata !DIExpression()), !dbg !6426
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6427, metadata !DIExpression()), !dbg !6428
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6429
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6430
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6430
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !6429
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !6428
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6431, metadata !DIExpression()), !dbg !6432
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6433
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !6434
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !6433
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !6433
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !6432
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6435, metadata !DIExpression()), !dbg !6436
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6437
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !6438
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6436
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6439, metadata !DIExpression()), !dbg !6440
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6441, metadata !DIExpression()), !dbg !6442
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6443, metadata !DIExpression()), !dbg !6444
  store i32 0, i32* %status, align 4, !dbg !6444
  %6 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6445
  %last_tune_failed = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %6, i32 0, i32 14, !dbg !6447
  %7 = load i8, i8* %last_tune_failed, align 4, !dbg !6447
  %tobool = trunc i8 %7 to i1, !dbg !6447
  br i1 %tobool, label %if.then, label %if.end16, !dbg !6448

if.then:                                          ; preds = %entry
  %8 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6449
  %delivery_system = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %8, i32 0, i32 13, !dbg !6452
  %9 = load i32, i32* %delivery_system, align 8, !dbg !6452
  %cmp = icmp eq i32 %9, 3, !dbg !6453
  br i1 %cmp, label %if.then2, label %if.else, !dbg !6454

if.then2:                                         ; preds = %if.then
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6455
  %call = call i32 @cxd2820r_sleep_t(%struct.dvb_frontend* %10) #9, !dbg !6457
  store i32 %call, i32* %ret, align 4, !dbg !6458
  %11 = load i32, i32* %ret, align 4, !dbg !6459
  %tobool3 = icmp ne i32 %11, 0, !dbg !6459
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !6461

if.then4:                                         ; preds = %if.then2
  br label %error, !dbg !6462

if.end:                                           ; preds = %if.then2
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6463
  %delivery_system5 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 15, !dbg !6464
  store i32 16, i32* %delivery_system5, align 4, !dbg !6465
  br label %if.end15, !dbg !6466

if.else:                                          ; preds = %if.then
  %13 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6467
  %delivery_system6 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %13, i32 0, i32 13, !dbg !6469
  %14 = load i32, i32* %delivery_system6, align 8, !dbg !6469
  %cmp7 = icmp eq i32 %14, 16, !dbg !6470
  br i1 %cmp7, label %if.then8, label %if.end14, !dbg !6471

if.then8:                                         ; preds = %if.else
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6472
  %call9 = call i32 @cxd2820r_sleep_t2(%struct.dvb_frontend* %15) #9, !dbg !6474
  store i32 %call9, i32* %ret, align 4, !dbg !6475
  %16 = load i32, i32* %ret, align 4, !dbg !6476
  %tobool10 = icmp ne i32 %16, 0, !dbg !6476
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !6478

if.then11:                                        ; preds = %if.then8
  br label %error, !dbg !6479

if.end12:                                         ; preds = %if.then8
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6480
  %delivery_system13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 15, !dbg !6481
  store i32 3, i32* %delivery_system13, align 4, !dbg !6482
  br label %if.end14, !dbg !6483

if.end14:                                         ; preds = %if.end12, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  br label %if.end16, !dbg !6484

if.end16:                                         ; preds = %if.end15, %entry
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6485
  %call17 = call i32 @cxd2820r_set_frontend(%struct.dvb_frontend* %18) #9, !dbg !6486
  store i32 %call17, i32* %ret, align 4, !dbg !6487
  %19 = load i32, i32* %ret, align 4, !dbg !6488
  %tobool18 = icmp ne i32 %19, 0, !dbg !6488
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !6490

if.then19:                                        ; preds = %if.end16
  br label %error, !dbg !6491

if.end20:                                         ; preds = %if.end16
  %20 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6492
  %delivery_system21 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %20, i32 0, i32 13, !dbg !6493
  %21 = load i32, i32* %delivery_system21, align 8, !dbg !6493
  switch i32 %21, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb
    i32 16, label %sw.bb22
    i32 0, label %sw.bb23
  ], !dbg !6494

sw.bb:                                            ; preds = %if.end20, %if.end20
  store i32 20, i32* %i, align 4, !dbg !6495
  br label %sw.epilog, !dbg !6497

sw.bb22:                                          ; preds = %if.end20
  store i32 40, i32* %i, align 4, !dbg !6498
  br label %sw.epilog, !dbg !6499

sw.bb23:                                          ; preds = %if.end20
  br label %sw.default, !dbg !6499

sw.default:                                       ; preds = %if.end20, %sw.bb23
  store i32 0, i32* %i, align 4, !dbg !6500
  br label %sw.epilog, !dbg !6501

sw.epilog:                                        ; preds = %sw.default, %sw.bb22, %sw.bb
  br label %for.cond, !dbg !6502

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %22 = load i32, i32* %i, align 4, !dbg !6503
  %cmp24 = icmp sgt i32 %22, 0, !dbg !6506
  br i1 %cmp24, label %for.body, label %for.end, !dbg !6507

for.body:                                         ; preds = %for.cond
  call void @msleep(i32 50) #9, !dbg !6508
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6510
  %call25 = call i32 @cxd2820r_read_status(%struct.dvb_frontend* %23, i32* %status) #9, !dbg !6511
  store i32 %call25, i32* %ret, align 4, !dbg !6512
  %24 = load i32, i32* %ret, align 4, !dbg !6513
  %tobool26 = icmp ne i32 %24, 0, !dbg !6513
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !6515

if.then27:                                        ; preds = %for.body
  br label %error, !dbg !6516

if.end28:                                         ; preds = %for.body
  %25 = load i32, i32* %status, align 4, !dbg !6517
  %and = and i32 %25, 16, !dbg !6519
  %tobool29 = icmp ne i32 %and, 0, !dbg !6519
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !6520

if.then30:                                        ; preds = %if.end28
  br label %for.end, !dbg !6521

if.end31:                                         ; preds = %if.end28
  br label %for.inc, !dbg !6522

for.inc:                                          ; preds = %if.end31
  %26 = load i32, i32* %i, align 4, !dbg !6523
  %dec = add i32 %26, -1, !dbg !6523
  store i32 %dec, i32* %i, align 4, !dbg !6523
  br label %for.cond, !dbg !6524, !llvm.loop !6525

for.end:                                          ; preds = %if.then30, %for.cond
  %27 = load i32, i32* %status, align 4, !dbg !6527
  %and32 = and i32 %27, 16, !dbg !6529
  %tobool33 = icmp ne i32 %and32, 0, !dbg !6529
  br i1 %tobool33, label %if.then34, label %if.else36, !dbg !6530

if.then34:                                        ; preds = %for.end
  %28 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6531
  %last_tune_failed35 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %28, i32 0, i32 14, !dbg !6533
  store i8 0, i8* %last_tune_failed35, align 4, !dbg !6534
  store i32 1, i32* %retval, align 4, !dbg !6535
  br label %return, !dbg !6535

if.else36:                                        ; preds = %for.end
  %29 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6536
  %last_tune_failed37 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %29, i32 0, i32 14, !dbg !6538
  store i8 1, i8* %last_tune_failed37, align 4, !dbg !6539
  store i32 16, i32* %retval, align 4, !dbg !6540
  br label %return, !dbg !6540

error:                                            ; preds = %if.then27, %if.then19, %if.then11, %if.then4
  call void @llvm.dbg.label(metadata !6541), !dbg !6542
  store i32 -2147483648, i32* %retval, align 4, !dbg !6543
  br label %return, !dbg !6543

return:                                           ; preds = %error, %if.else36, %if.then34
  %30 = load i32, i32* %retval, align 4, !dbg !6544
  ret i32 %30, !dbg !6544
}

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_sleep_t(%struct.dvb_frontend*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_sleep_t2(%struct.dvb_frontend*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_sleep_c(%struct.dvb_frontend*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_get_tune_settings_t(%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_get_tune_settings_t2(%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_get_tune_settings_c(%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_get_frontend_t(%struct.dvb_frontend*, %struct.dtv_frontend_properties*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_get_frontend_t2(%struct.dvb_frontend*, %struct.dtv_frontend_properties*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_get_frontend_c(%struct.dvb_frontend*, %struct.dtv_frontend_properties*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_read_status_t(%struct.dvb_frontend*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_read_status_t2(%struct.dvb_frontend*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_read_status_c(%struct.dvb_frontend*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_s64(i64 %dividend, i32 %divisor) #0 !dbg !6545 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !6549, metadata !DIExpression()), !dbg !6550
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !6551, metadata !DIExpression()), !dbg !6552
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !6553, metadata !DIExpression()), !dbg !6554
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !6555
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !6556
  %call = call i64 @div_s64_rem(i64 %0, i32 %1, i32* %remainder) #9, !dbg !6557
  ret i64 %call, !dbg !6558
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_s64_rem(i64 %dividend, i32 %divisor, i32* %remainder) #0 !dbg !6559 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca i32*, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !6562, metadata !DIExpression()), !dbg !6563
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !6564, metadata !DIExpression()), !dbg !6565
  store i32* %remainder, i32** %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %remainder.addr, metadata !6566, metadata !DIExpression()), !dbg !6567
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !6568
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !6569
  %conv = sext i32 %1 to i64, !dbg !6569
  %rem = srem i64 %0, %conv, !dbg !6570
  %conv1 = trunc i64 %rem to i32, !dbg !6568
  %2 = load i32*, i32** %remainder.addr, align 8, !dbg !6571
  store i32 %conv1, i32* %2, align 4, !dbg !6572
  %3 = load i64, i64* %dividend.addr, align 8, !dbg !6573
  %4 = load i32, i32* %divisor.addr, align 4, !dbg !6574
  %conv2 = sext i32 %4 to i64, !dbg !6574
  %div = sdiv i64 %3, %conv2, !dbg !6575
  ret i64 %div, !dbg !6576
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cxd2820r_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !6577 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.cxd2820r_priv*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6578, metadata !DIExpression()), !dbg !6579
  call void @llvm.dbg.declare(metadata %struct.cxd2820r_priv** %priv, metadata !6580, metadata !DIExpression()), !dbg !6581
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6582
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6583
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6583
  %2 = bitcast i8* %1 to %struct.cxd2820r_priv*, !dbg !6582
  store %struct.cxd2820r_priv* %2, %struct.cxd2820r_priv** %priv, align 8, !dbg !6581
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6584, metadata !DIExpression()), !dbg !6585
  %3 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %priv, align 8, !dbg !6586
  %client1 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %3, i32 0, i32 0, !dbg !6587
  %arrayidx = getelementptr [2 x %struct.i2c_client*], [2 x %struct.i2c_client*]* %client1, i64 0, i64 0, !dbg !6586
  %4 = load %struct.i2c_client*, %struct.i2c_client** %arrayidx, align 8, !dbg !6586
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !6585
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6588, metadata !DIExpression()), !dbg !6589
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6590
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !6591
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6589
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6592, metadata !DIExpression()), !dbg !6593
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6594
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 15, !dbg !6595
  %7 = load i32, i32* %delivery_system, align 4, !dbg !6595
  switch i32 %7, label %sw.default [
    i32 3, label %sw.bb
    i32 16, label %sw.bb6
    i32 1, label %sw.bb15
  ], !dbg !6596

sw.bb:                                            ; preds = %entry
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6597
  %call = call i32 @cxd2820r_init_t(%struct.dvb_frontend* %8) #9, !dbg !6599
  store i32 %call, i32* %ret, align 4, !dbg !6600
  %9 = load i32, i32* %ret, align 4, !dbg !6601
  %cmp = icmp slt i32 %9, 0, !dbg !6603
  br i1 %cmp, label %if.then, label %if.end, !dbg !6604

if.then:                                          ; preds = %sw.bb
  br label %err, !dbg !6605

if.end:                                           ; preds = %sw.bb
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6606
  %call2 = call i32 @cxd2820r_set_frontend_t(%struct.dvb_frontend* %10) #9, !dbg !6607
  store i32 %call2, i32* %ret, align 4, !dbg !6608
  %11 = load i32, i32* %ret, align 4, !dbg !6609
  %cmp3 = icmp slt i32 %11, 0, !dbg !6611
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6612

if.then4:                                         ; preds = %if.end
  br label %err, !dbg !6613

if.end5:                                          ; preds = %if.end
  br label %sw.epilog, !dbg !6614

sw.bb6:                                           ; preds = %entry
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6615
  %call7 = call i32 @cxd2820r_init_t(%struct.dvb_frontend* %12) #9, !dbg !6616
  store i32 %call7, i32* %ret, align 4, !dbg !6617
  %13 = load i32, i32* %ret, align 4, !dbg !6618
  %cmp8 = icmp slt i32 %13, 0, !dbg !6620
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !6621

if.then9:                                         ; preds = %sw.bb6
  br label %err, !dbg !6622

if.end10:                                         ; preds = %sw.bb6
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6623
  %call11 = call i32 @cxd2820r_set_frontend_t2(%struct.dvb_frontend* %14) #9, !dbg !6624
  store i32 %call11, i32* %ret, align 4, !dbg !6625
  %15 = load i32, i32* %ret, align 4, !dbg !6626
  %cmp12 = icmp slt i32 %15, 0, !dbg !6628
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6629

if.then13:                                        ; preds = %if.end10
  br label %err, !dbg !6630

if.end14:                                         ; preds = %if.end10
  br label %sw.epilog, !dbg !6631

sw.bb15:                                          ; preds = %entry
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6632
  %call16 = call i32 @cxd2820r_init_c(%struct.dvb_frontend* %16) #9, !dbg !6633
  store i32 %call16, i32* %ret, align 4, !dbg !6634
  %17 = load i32, i32* %ret, align 4, !dbg !6635
  %cmp17 = icmp slt i32 %17, 0, !dbg !6637
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !6638

if.then18:                                        ; preds = %sw.bb15
  br label %err, !dbg !6639

if.end19:                                         ; preds = %sw.bb15
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6640
  %call20 = call i32 @cxd2820r_set_frontend_c(%struct.dvb_frontend* %18) #9, !dbg !6641
  store i32 %call20, i32* %ret, align 4, !dbg !6642
  %19 = load i32, i32* %ret, align 4, !dbg !6643
  %cmp21 = icmp slt i32 %19, 0, !dbg !6645
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6646

if.then22:                                        ; preds = %if.end19
  br label %err, !dbg !6647

if.end23:                                         ; preds = %if.end19
  br label %sw.epilog, !dbg !6648

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %ret, align 4, !dbg !6649
  br label %sw.epilog, !dbg !6650

sw.epilog:                                        ; preds = %sw.default, %if.end23, %if.end14, %if.end5
  br label %err, !dbg !6651

err:                                              ; preds = %sw.epilog, %if.then22, %if.then18, %if.then13, %if.then9, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !6652), !dbg !6653
  %20 = load i32, i32* %ret, align 4, !dbg !6654
  ret i32 %20, !dbg !6655
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_init_t(%struct.dvb_frontend*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_set_frontend_t(%struct.dvb_frontend*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_set_frontend_t2(%struct.dvb_frontend*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_init_c(%struct.dvb_frontend*) #2

; Function Attrs: noredzone
declare dso_local i32 @cxd2820r_set_frontend_c(%struct.dvb_frontend*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !6656 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6659, metadata !DIExpression()), !dbg !6660
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6661, metadata !DIExpression()), !dbg !6662
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6663
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6664
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6665
  store i8* %0, i8** %driver_data, align 8, !dbg !6666
  ret void, !dbg !6667
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_clientdata(%struct.i2c_client* %client) #0 !dbg !6668 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6673, metadata !DIExpression()), !dbg !6674
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6675
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !6676
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6677
  ret i8* %call, !dbg !6678
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !6679 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6682, metadata !DIExpression()), !dbg !6683
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6684
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6685
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6685
  ret i8* %1, !dbg !6686
}

; Function Attrs: noredzone
declare dso_local void @gpiochip_remove(%struct.gpio_chip*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
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
!llvm.module.flags = !{!4843, !4844, !4845, !4846}
!llvm.ident = !{!4847}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cxd2820r_driver_init224", scope: !2, file: !3, line: 744, type: !338, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !336, globals: !345, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/cxd2820r_core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !94, !102, !136, !146, !153, !169, !174, !178, !183, !198, !209, !222, !229, !234, !240, !261, !267, !271, !279, !291, !300, !305, !310, !317, !323, !330}
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
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !95, line: 1084, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!100 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!101 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_caps", file: !103, line: 72, baseType: !7, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/uapi/linux/dvb/frontend.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!105 = !DIEnumerator(name: "FE_IS_STUPID", value: 0, isUnsigned: true)
!106 = !DIEnumerator(name: "FE_CAN_INVERSION_AUTO", value: 1, isUnsigned: true)
!107 = !DIEnumerator(name: "FE_CAN_FEC_1_2", value: 2, isUnsigned: true)
!108 = !DIEnumerator(name: "FE_CAN_FEC_2_3", value: 4, isUnsigned: true)
!109 = !DIEnumerator(name: "FE_CAN_FEC_3_4", value: 8, isUnsigned: true)
!110 = !DIEnumerator(name: "FE_CAN_FEC_4_5", value: 16, isUnsigned: true)
!111 = !DIEnumerator(name: "FE_CAN_FEC_5_6", value: 32, isUnsigned: true)
!112 = !DIEnumerator(name: "FE_CAN_FEC_6_7", value: 64, isUnsigned: true)
!113 = !DIEnumerator(name: "FE_CAN_FEC_7_8", value: 128, isUnsigned: true)
!114 = !DIEnumerator(name: "FE_CAN_FEC_8_9", value: 256, isUnsigned: true)
!115 = !DIEnumerator(name: "FE_CAN_FEC_AUTO", value: 512, isUnsigned: true)
!116 = !DIEnumerator(name: "FE_CAN_QPSK", value: 1024, isUnsigned: true)
!117 = !DIEnumerator(name: "FE_CAN_QAM_16", value: 2048, isUnsigned: true)
!118 = !DIEnumerator(name: "FE_CAN_QAM_32", value: 4096, isUnsigned: true)
!119 = !DIEnumerator(name: "FE_CAN_QAM_64", value: 8192, isUnsigned: true)
!120 = !DIEnumerator(name: "FE_CAN_QAM_128", value: 16384, isUnsigned: true)
!121 = !DIEnumerator(name: "FE_CAN_QAM_256", value: 32768, isUnsigned: true)
!122 = !DIEnumerator(name: "FE_CAN_QAM_AUTO", value: 65536, isUnsigned: true)
!123 = !DIEnumerator(name: "FE_CAN_TRANSMISSION_MODE_AUTO", value: 131072, isUnsigned: true)
!124 = !DIEnumerator(name: "FE_CAN_BANDWIDTH_AUTO", value: 262144, isUnsigned: true)
!125 = !DIEnumerator(name: "FE_CAN_GUARD_INTERVAL_AUTO", value: 524288, isUnsigned: true)
!126 = !DIEnumerator(name: "FE_CAN_HIERARCHY_AUTO", value: 1048576, isUnsigned: true)
!127 = !DIEnumerator(name: "FE_CAN_8VSB", value: 2097152, isUnsigned: true)
!128 = !DIEnumerator(name: "FE_CAN_16VSB", value: 4194304, isUnsigned: true)
!129 = !DIEnumerator(name: "FE_HAS_EXTENDED_CAPS", value: 8388608, isUnsigned: true)
!130 = !DIEnumerator(name: "FE_CAN_MULTISTREAM", value: 67108864, isUnsigned: true)
!131 = !DIEnumerator(name: "FE_CAN_TURBO_FEC", value: 134217728, isUnsigned: true)
!132 = !DIEnumerator(name: "FE_CAN_2G_MODULATION", value: 268435456, isUnsigned: true)
!133 = !DIEnumerator(name: "FE_NEEDS_BENDING", value: 536870912, isUnsigned: true)
!134 = !DIEnumerator(name: "FE_CAN_RECOVER", value: 1073741824, isUnsigned: true)
!135 = !DIEnumerator(name: "FE_CAN_MUTE_TS", value: 2147483648, isUnsigned: true)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_status", file: !103, line: 252, baseType: !7, size: 32, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145}
!138 = !DIEnumerator(name: "FE_NONE", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "FE_HAS_SIGNAL", value: 1, isUnsigned: true)
!140 = !DIEnumerator(name: "FE_HAS_CARRIER", value: 2, isUnsigned: true)
!141 = !DIEnumerator(name: "FE_HAS_VITERBI", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "FE_HAS_SYNC", value: 8, isUnsigned: true)
!143 = !DIEnumerator(name: "FE_HAS_LOCK", value: 16, isUnsigned: true)
!144 = !DIEnumerator(name: "FE_TIMEDOUT", value: 32, isUnsigned: true)
!145 = !DIEnumerator(name: "FE_REINIT", value: 64, isUnsigned: true)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvbfe_algo", file: !147, line: 144, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/media/dvb_frontend.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "DVBFE_ALGO_HW", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "DVBFE_ALGO_SW", value: 2, isUnsigned: true)
!151 = !DIEnumerator(name: "DVBFE_ALGO_CUSTOM", value: 4, isUnsigned: true)
!152 = !DIEnumerator(name: "DVBFE_ALGO_RECOVERY", value: 2147483648, isUnsigned: true)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_modulation", file: !103, line: 338, baseType: !7, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!155 = !DIEnumerator(name: "QPSK", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "QAM_16", value: 1, isUnsigned: true)
!157 = !DIEnumerator(name: "QAM_32", value: 2, isUnsigned: true)
!158 = !DIEnumerator(name: "QAM_64", value: 3, isUnsigned: true)
!159 = !DIEnumerator(name: "QAM_128", value: 4, isUnsigned: true)
!160 = !DIEnumerator(name: "QAM_256", value: 5, isUnsigned: true)
!161 = !DIEnumerator(name: "QAM_AUTO", value: 6, isUnsigned: true)
!162 = !DIEnumerator(name: "VSB_8", value: 7, isUnsigned: true)
!163 = !DIEnumerator(name: "VSB_16", value: 8, isUnsigned: true)
!164 = !DIEnumerator(name: "PSK_8", value: 9, isUnsigned: true)
!165 = !DIEnumerator(name: "APSK_16", value: 10, isUnsigned: true)
!166 = !DIEnumerator(name: "APSK_32", value: 11, isUnsigned: true)
!167 = !DIEnumerator(name: "DQPSK", value: 12, isUnsigned: true)
!168 = !DIEnumerator(name: "QAM_4_NR", value: 13, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_voltage", file: !103, line: 208, baseType: !7, size: 32, elements: !170)
!170 = !{!171, !172, !173}
!171 = !DIEnumerator(name: "SEC_VOLTAGE_13", value: 0, isUnsigned: true)
!172 = !DIEnumerator(name: "SEC_VOLTAGE_18", value: 1, isUnsigned: true)
!173 = !DIEnumerator(name: "SEC_VOLTAGE_OFF", value: 2, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_tone_mode", file: !103, line: 220, baseType: !7, size: 32, elements: !175)
!175 = !{!176, !177}
!176 = !DIEnumerator(name: "SEC_TONE_ON", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "SEC_TONE_OFF", value: 1, isUnsigned: true)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_spectral_inversion", file: !103, line: 276, baseType: !7, size: 32, elements: !179)
!179 = !{!180, !181, !182}
!180 = !DIEnumerator(name: "INVERSION_OFF", value: 0, isUnsigned: true)
!181 = !DIEnumerator(name: "INVERSION_ON", value: 1, isUnsigned: true)
!182 = !DIEnumerator(name: "INVERSION_AUTO", value: 2, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_code_rate", file: !103, line: 302, baseType: !7, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!185 = !DIEnumerator(name: "FEC_NONE", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "FEC_1_2", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "FEC_2_3", value: 2, isUnsigned: true)
!188 = !DIEnumerator(name: "FEC_3_4", value: 3, isUnsigned: true)
!189 = !DIEnumerator(name: "FEC_4_5", value: 4, isUnsigned: true)
!190 = !DIEnumerator(name: "FEC_5_6", value: 5, isUnsigned: true)
!191 = !DIEnumerator(name: "FEC_6_7", value: 6, isUnsigned: true)
!192 = !DIEnumerator(name: "FEC_7_8", value: 7, isUnsigned: true)
!193 = !DIEnumerator(name: "FEC_8_9", value: 8, isUnsigned: true)
!194 = !DIEnumerator(name: "FEC_AUTO", value: 9, isUnsigned: true)
!195 = !DIEnumerator(name: "FEC_3_5", value: 10, isUnsigned: true)
!196 = !DIEnumerator(name: "FEC_9_10", value: 11, isUnsigned: true)
!197 = !DIEnumerator(name: "FEC_2_5", value: 12, isUnsigned: true)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_transmit_mode", file: !103, line: 381, baseType: !7, size: 32, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208}
!200 = !DIEnumerator(name: "TRANSMISSION_MODE_2K", value: 0, isUnsigned: true)
!201 = !DIEnumerator(name: "TRANSMISSION_MODE_8K", value: 1, isUnsigned: true)
!202 = !DIEnumerator(name: "TRANSMISSION_MODE_AUTO", value: 2, isUnsigned: true)
!203 = !DIEnumerator(name: "TRANSMISSION_MODE_4K", value: 3, isUnsigned: true)
!204 = !DIEnumerator(name: "TRANSMISSION_MODE_1K", value: 4, isUnsigned: true)
!205 = !DIEnumerator(name: "TRANSMISSION_MODE_16K", value: 5, isUnsigned: true)
!206 = !DIEnumerator(name: "TRANSMISSION_MODE_32K", value: 6, isUnsigned: true)
!207 = !DIEnumerator(name: "TRANSMISSION_MODE_C1", value: 7, isUnsigned: true)
!208 = !DIEnumerator(name: "TRANSMISSION_MODE_C3780", value: 8, isUnsigned: true)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_guard_interval", file: !103, line: 410, baseType: !7, size: 32, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!211 = !DIEnumerator(name: "GUARD_INTERVAL_1_32", value: 0, isUnsigned: true)
!212 = !DIEnumerator(name: "GUARD_INTERVAL_1_16", value: 1, isUnsigned: true)
!213 = !DIEnumerator(name: "GUARD_INTERVAL_1_8", value: 2, isUnsigned: true)
!214 = !DIEnumerator(name: "GUARD_INTERVAL_1_4", value: 3, isUnsigned: true)
!215 = !DIEnumerator(name: "GUARD_INTERVAL_AUTO", value: 4, isUnsigned: true)
!216 = !DIEnumerator(name: "GUARD_INTERVAL_1_128", value: 5, isUnsigned: true)
!217 = !DIEnumerator(name: "GUARD_INTERVAL_19_128", value: 6, isUnsigned: true)
!218 = !DIEnumerator(name: "GUARD_INTERVAL_19_256", value: 7, isUnsigned: true)
!219 = !DIEnumerator(name: "GUARD_INTERVAL_PN420", value: 8, isUnsigned: true)
!220 = !DIEnumerator(name: "GUARD_INTERVAL_PN595", value: 9, isUnsigned: true)
!221 = !DIEnumerator(name: "GUARD_INTERVAL_PN945", value: 10, isUnsigned: true)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_hierarchy", file: !103, line: 434, baseType: !7, size: 32, elements: !223)
!223 = !{!224, !225, !226, !227, !228}
!224 = !DIEnumerator(name: "HIERARCHY_NONE", value: 0, isUnsigned: true)
!225 = !DIEnumerator(name: "HIERARCHY_1", value: 1, isUnsigned: true)
!226 = !DIEnumerator(name: "HIERARCHY_2", value: 2, isUnsigned: true)
!227 = !DIEnumerator(name: "HIERARCHY_4", value: 3, isUnsigned: true)
!228 = !DIEnumerator(name: "HIERARCHY_AUTO", value: 4, isUnsigned: true)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_pilot", file: !103, line: 562, baseType: !7, size: 32, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIEnumerator(name: "PILOT_ON", value: 0, isUnsigned: true)
!232 = !DIEnumerator(name: "PILOT_OFF", value: 1, isUnsigned: true)
!233 = !DIEnumerator(name: "PILOT_AUTO", value: 2, isUnsigned: true)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_rolloff", file: !103, line: 579, baseType: !7, size: 32, elements: !235)
!235 = !{!236, !237, !238, !239}
!236 = !DIEnumerator(name: "ROLLOFF_35", value: 0, isUnsigned: true)
!237 = !DIEnumerator(name: "ROLLOFF_20", value: 1, isUnsigned: true)
!238 = !DIEnumerator(name: "ROLLOFF_25", value: 2, isUnsigned: true)
!239 = !DIEnumerator(name: "ROLLOFF_AUTO", value: 3, isUnsigned: true)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_delivery_system", file: !103, line: 628, baseType: !7, size: 32, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!242 = !DIEnumerator(name: "SYS_UNDEFINED", value: 0, isUnsigned: true)
!243 = !DIEnumerator(name: "SYS_DVBC_ANNEX_A", value: 1, isUnsigned: true)
!244 = !DIEnumerator(name: "SYS_DVBC_ANNEX_B", value: 2, isUnsigned: true)
!245 = !DIEnumerator(name: "SYS_DVBT", value: 3, isUnsigned: true)
!246 = !DIEnumerator(name: "SYS_DSS", value: 4, isUnsigned: true)
!247 = !DIEnumerator(name: "SYS_DVBS", value: 5, isUnsigned: true)
!248 = !DIEnumerator(name: "SYS_DVBS2", value: 6, isUnsigned: true)
!249 = !DIEnumerator(name: "SYS_DVBH", value: 7, isUnsigned: true)
!250 = !DIEnumerator(name: "SYS_ISDBT", value: 8, isUnsigned: true)
!251 = !DIEnumerator(name: "SYS_ISDBS", value: 9, isUnsigned: true)
!252 = !DIEnumerator(name: "SYS_ISDBC", value: 10, isUnsigned: true)
!253 = !DIEnumerator(name: "SYS_ATSC", value: 11, isUnsigned: true)
!254 = !DIEnumerator(name: "SYS_ATSCMH", value: 12, isUnsigned: true)
!255 = !DIEnumerator(name: "SYS_DTMB", value: 13, isUnsigned: true)
!256 = !DIEnumerator(name: "SYS_CMMB", value: 14, isUnsigned: true)
!257 = !DIEnumerator(name: "SYS_DAB", value: 15, isUnsigned: true)
!258 = !DIEnumerator(name: "SYS_DVBT2", value: 16, isUnsigned: true)
!259 = !DIEnumerator(name: "SYS_TURBO", value: 17, isUnsigned: true)
!260 = !DIEnumerator(name: "SYS_DVBC_ANNEX_C", value: 18, isUnsigned: true)
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_interleaving", file: !103, line: 451, baseType: !7, size: 32, elements: !262)
!262 = !{!263, !264, !265, !266}
!263 = !DIEnumerator(name: "INTERLEAVING_NONE", value: 0, isUnsigned: true)
!264 = !DIEnumerator(name: "INTERLEAVING_AUTO", value: 1, isUnsigned: true)
!265 = !DIEnumerator(name: "INTERLEAVING_240", value: 2, isUnsigned: true)
!266 = !DIEnumerator(name: "INTERLEAVING_720", value: 3, isUnsigned: true)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_mini_cmd", file: !103, line: 233, baseType: !7, size: 32, elements: !268)
!268 = !{!269, !270}
!269 = !DIEnumerator(name: "SEC_MINI_A", value: 0, isUnsigned: true)
!270 = !DIEnumerator(name: "SEC_MINI_B", value: 1, isUnsigned: true)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvbfe_search", file: !147, line: 173, baseType: !7, size: 32, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278}
!273 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_SUCCESS", value: 1, isUnsigned: true)
!274 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_ASLEEP", value: 2, isUnsigned: true)
!275 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_FAILED", value: 4, isUnsigned: true)
!276 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_INVALID", value: 8, isUnsigned: true)
!277 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_AGAIN", value: 16, isUnsigned: true)
!278 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_ERROR", value: 2147483648, isUnsigned: true)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvb_device_type", file: !280, line: 57, baseType: !7, size: 32, elements: !281)
!280 = !DIFile(filename: "./include/media/dvbdev.h", directory: "/home/lizy2001/genbc/linux")
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290}
!282 = !DIEnumerator(name: "DVB_DEVICE_SEC", value: 0, isUnsigned: true)
!283 = !DIEnumerator(name: "DVB_DEVICE_FRONTEND", value: 1, isUnsigned: true)
!284 = !DIEnumerator(name: "DVB_DEVICE_DEMUX", value: 2, isUnsigned: true)
!285 = !DIEnumerator(name: "DVB_DEVICE_DVR", value: 3, isUnsigned: true)
!286 = !DIEnumerator(name: "DVB_DEVICE_CA", value: 4, isUnsigned: true)
!287 = !DIEnumerator(name: "DVB_DEVICE_NET", value: 5, isUnsigned: true)
!288 = !DIEnumerator(name: "DVB_DEVICE_VIDEO", value: 6, isUnsigned: true)
!289 = !DIEnumerator(name: "DVB_DEVICE_AUDIO", value: 7, isUnsigned: true)
!290 = !DIEnumerator(name: "DVB_DEVICE_OSD", value: 8, isUnsigned: true)
!291 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !292, line: 19, baseType: !7, size: 32, elements: !293)
!292 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!293 = !{!294, !295, !296, !297, !298, !299}
!294 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!295 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!296 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!297 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!298 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!299 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !301, line: 10, baseType: !7, size: 32, elements: !302)
!301 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!302 = !{!303, !304}
!303 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!304 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!305 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "i2c_alert_protocol", file: !306, line: 215, baseType: !7, size: 32, elements: !307)
!306 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!307 = !{!308, !309}
!308 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_ALERT", value: 0, isUnsigned: true)
!309 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_HOST_NOTIFY", value: 1, isUnsigned: true)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regcache_type", file: !311, line: 40, baseType: !7, size: 32, elements: !312)
!311 = !DIFile(filename: "./include/linux/regmap.h", directory: "/home/lizy2001/genbc/linux")
!312 = !{!313, !314, !315, !316}
!313 = !DIEnumerator(name: "REGCACHE_NONE", value: 0, isUnsigned: true)
!314 = !DIEnumerator(name: "REGCACHE_RBTREE", value: 1, isUnsigned: true)
!315 = !DIEnumerator(name: "REGCACHE_COMPRESSED", value: 2, isUnsigned: true)
!316 = !DIEnumerator(name: "REGCACHE_FLAT", value: 3, isUnsigned: true)
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regmap_endian", file: !311, line: 184, baseType: !7, size: 32, elements: !318)
!318 = !{!319, !320, !321, !322}
!319 = !DIEnumerator(name: "REGMAP_ENDIAN_DEFAULT", value: 0, isUnsigned: true)
!320 = !DIEnumerator(name: "REGMAP_ENDIAN_BIG", value: 1, isUnsigned: true)
!321 = !DIEnumerator(name: "REGMAP_ENDIAN_LITTLE", value: 2, isUnsigned: true)
!322 = !DIEnumerator(name: "REGMAP_ENDIAN_NATIVE", value: 3, isUnsigned: true)
!323 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !324, line: 305, baseType: !7, size: 32, elements: !325)
!324 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!325 = !{!326, !327, !328, !329}
!326 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!327 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!328 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!329 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fecap_scale_params", file: !103, line: 752, baseType: !7, size: 32, elements: !331)
!331 = !{!332, !333, !334, !335}
!332 = !DIEnumerator(name: "FE_SCALE_NOT_AVAILABLE", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "FE_SCALE_DECIBEL", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "FE_SCALE_RELATIVE", value: 2, isUnsigned: true)
!335 = !DIEnumerator(name: "FE_SCALE_COUNTER", value: 3, isUnsigned: true)
!336 = !{!337, !338, !339, !342, !344}
!337 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !341, line: 76, flags: DIFlagFwdDecl)
!341 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !343, line: 148, baseType: !7)
!343 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!344 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!345 = !{!0, !346, !353, !360, !365, !370, !375, !4418, !4433, !4435, !4516, !4518, !4840}
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "__exitcall_cxd2820r_driver_exit", scope: !2, file: !3, line: 744, type: !348, isLocal: true, isDefinition: true)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !349, line: 117, baseType: !350)
!349 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{null}
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author225", scope: !2, file: !3, line: 746, type: !355, isLocal: true, isDefinition: true, align: 8)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 376, elements: !358)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!358 = !{!359}
!359 = !DISubrange(count: 47)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description226", scope: !2, file: !3, line: 747, type: !362, isLocal: true, isDefinition: true, align: 8)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 432, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 54)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file227", scope: !2, file: !3, line: 748, type: !367, isLocal: true, isDefinition: true, align: 8)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 408, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 51)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license228", scope: !2, file: !3, line: 748, type: !372, isLocal: true, isDefinition: true, align: 8)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 168, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 21)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "cxd2820r_driver", scope: !2, file: !3, line: 734, type: !377, isLocal: true, isDefinition: true)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_driver", file: !306, line: 255, size: 1920, elements: !378)
!378 = !{!379, !380, !4337, !4341, !4342, !4346, !4350, !4354, !4355, !4356, !4414, !4417}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !377, file: !306, line: 256, baseType: !7, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !377, file: !306, line: 259, baseType: !381, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!384, !385, !4331}
!384 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !306, line: 314, size: 6016, elements: !387)
!387 = !{!388, !390, !391, !395, !4327, !4328, !4329, !4330}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !306, line: 315, baseType: !389, size: 16)
!389 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !386, file: !306, line: 325, baseType: !389, size: 16, offset: 16)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !386, file: !306, line: 328, baseType: !392, size: 160, offset: 32)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 160, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 20)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !386, file: !306, line: 329, baseType: !396, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !306, line: 695, size: 7552, elements: !398)
!398 = !{!399, !400, !401, !447, !448, !462, !3516, !3517, !3518, !3519, !4274, !4275, !4276, !4280, !4281, !4282, !4283, !4315, !4326}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !397, file: !306, line: 696, baseType: !339, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !397, file: !306, line: 697, baseType: !7, size: 32, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !397, file: !306, line: 698, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !306, line: 519, size: 320, elements: !405)
!405 = !{!406, !423, !424, !440, !441}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !404, file: !306, line: 529, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!384, !396, !410, !384}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !412, line: 69, size: 128, elements: !413)
!412 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!413 = !{!414, !417, !418, !419}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !411, file: !412, line: 70, baseType: !415, size: 16)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !416, line: 24, baseType: !389)
!416 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !411, file: !412, line: 71, baseType: !415, size: 16, offset: 16)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !411, file: !412, line: 84, baseType: !415, size: 16, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !411, file: !412, line: 85, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !416, line: 21, baseType: !422)
!422 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !404, file: !306, line: 531, baseType: !407, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !404, file: !306, line: 533, baseType: !425, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!384, !396, !428, !389, !357, !430, !384, !431}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !429, line: 19, baseType: !415)
!429 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !429, line: 17, baseType: !421)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !412, line: 135, size: 272, elements: !433)
!433 = !{!434, !435, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !432, file: !412, line: 136, baseType: !421, size: 8)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !432, file: !412, line: 137, baseType: !415, size: 16)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !432, file: !412, line: 138, baseType: !437, size: 272)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 272, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 34)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !404, file: !306, line: 536, baseType: !425, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !404, file: !306, line: 541, baseType: !442, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!445, !396}
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !429, line: 21, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !416, line: 27, baseType: !7)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !397, file: !306, line: 699, baseType: !338, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !397, file: !306, line: 702, baseType: !449, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !306, line: 557, size: 192, elements: !452)
!452 = !{!453, !457, !461}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !451, file: !306, line: 558, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !396, !7}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !451, file: !306, line: 559, baseType: !458, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!384, !396, !7}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !451, file: !306, line: 560, baseType: !454, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !397, file: !306, line: 703, baseType: !463, size: 192, offset: 320)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !464, line: 30, size: 192, elements: !465)
!464 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!465 = !{!466, !476, !491}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !463, file: !464, line: 31, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !468, line: 29, baseType: !469)
!468 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !468, line: 20, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !469, file: !468, line: 21, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !473, line: 25, baseType: !474)
!473 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 25, elements: !475)
!475 = !{}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !463, file: !464, line: 32, baseType: !477, size: 128)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !478, line: 125, size: 128, elements: !479)
!478 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!479 = !{!480, !490}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !477, file: !478, line: 126, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !478, line: 31, size: 64, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !481, file: !478, line: 32, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !478, line: 24, size: 192, align: 64, elements: !486)
!486 = !{!487, !488, !489}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !485, file: !478, line: 25, baseType: !337, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !485, file: !478, line: 26, baseType: !484, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !485, file: !478, line: 27, baseType: !484, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !477, file: !478, line: 127, baseType: !484, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !463, file: !464, line: 33, baseType: !492, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !494, line: 640, size: 48640, elements: !495)
!494 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!495 = !{!496, !502, !504, !505, !515, !516, !517, !518, !519, !520, !521, !522, !526, !552, !563, !655, !656, !657, !668, !669, !671, !672, !2823, !2824, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2906, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2921, !2922, !2923, !2925, !2926, !2927, !2928, !2929, !2930, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2954, !2959, !2960, !2961, !2962, !2963, !2965, !2968, !2971, !2974, !2977, !2980, !3081, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3125, !3126, !3127, !3128, !3129, !3134, !3135, !3136, !3139, !3140, !3143, !3146, !3149, !3150, !3182, !3185, !3186, !3265, !3266, !3269, !3270, !3273, !3274, !3275, !3279, !3280, !3281, !3294, !3295, !3296, !3306, !3311, !3312, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !493, file: !494, line: 646, baseType: !497, size: 128)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !498, line: 56, size: 128, elements: !499)
!498 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !498, line: 57, baseType: !337, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !497, file: !498, line: 58, baseType: !445, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !493, file: !494, line: 649, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !344)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !493, file: !494, line: 657, baseType: !338, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !493, file: !494, line: 658, baseType: !506, size: 32, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !507, line: 113, baseType: !508)
!507 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !507, line: 111, size: 32, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !508, file: !507, line: 112, baseType: !511, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !343, line: 168, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 166, size: 32, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !512, file: !343, line: 167, baseType: !384, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !494, line: 660, baseType: !7, size: 32, offset: 288)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !493, file: !494, line: 661, baseType: !7, size: 32, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !493, file: !494, line: 684, baseType: !384, size: 32, offset: 352)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !493, file: !494, line: 686, baseType: !384, size: 32, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !493, file: !494, line: 687, baseType: !384, size: 32, offset: 416)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !493, file: !494, line: 688, baseType: !384, size: 32, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !493, file: !494, line: 689, baseType: !7, size: 32, offset: 480)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !493, file: !494, line: 691, baseType: !523, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !494, line: 691, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !493, file: !494, line: 692, baseType: !527, size: 832, offset: 576)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !494, line: 451, size: 832, elements: !528)
!528 = !{!529, !534, !535, !541, !542, !546, !547, !548, !549, !550}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !527, file: !494, line: 453, baseType: !530, size: 128)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !494, line: 325, size: 128, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !530, file: !494, line: 326, baseType: !337, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !530, file: !494, line: 327, baseType: !445, size: 32, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !527, file: !494, line: 454, baseType: !485, size: 192, align: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !527, file: !494, line: 455, baseType: !536, size: 128, offset: 320)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !343, line: 178, size: 128, elements: !537)
!537 = !{!538, !540}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !343, line: 179, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !536, file: !343, line: 179, baseType: !539, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !527, file: !494, line: 456, baseType: !7, size: 32, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !527, file: !494, line: 458, baseType: !543, size: 64, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !429, line: 23, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !416, line: 31, baseType: !545)
!545 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !527, file: !494, line: 459, baseType: !543, size: 64, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !527, file: !494, line: 460, baseType: !543, size: 64, offset: 640)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !527, file: !494, line: 461, baseType: !543, size: 64, offset: 704)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !527, file: !494, line: 463, baseType: !543, size: 64, offset: 768)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !527, file: !494, line: 465, baseType: !551, offset: 832)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !494, line: 415, elements: !475)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !493, file: !494, line: 693, baseType: !553, size: 384, offset: 1408)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !494, line: 489, size: 384, elements: !554)
!554 = !{!555, !556, !557, !558, !559, !560, !561}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !553, file: !494, line: 490, baseType: !536, size: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !553, file: !494, line: 491, baseType: !337, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !553, file: !494, line: 492, baseType: !337, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !553, file: !494, line: 493, baseType: !7, size: 32, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !553, file: !494, line: 494, baseType: !389, size: 16, offset: 288)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !553, file: !494, line: 495, baseType: !389, size: 16, offset: 304)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !553, file: !494, line: 497, baseType: !562, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !493, file: !494, line: 697, baseType: !564, size: 1792, offset: 1792)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !494, line: 507, size: 1792, elements: !565)
!565 = !{!566, !567, !568, !569, !570, !571, !572, !576, !577, !578, !579, !580, !581, !582, !652, !653}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !564, file: !494, line: 508, baseType: !485, size: 192, align: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !564, file: !494, line: 515, baseType: !543, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !564, file: !494, line: 516, baseType: !543, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !564, file: !494, line: 517, baseType: !543, size: 64, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !564, file: !494, line: 518, baseType: !543, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !564, file: !494, line: 519, baseType: !543, size: 64, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !564, file: !494, line: 526, baseType: !573, size: 64, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !429, line: 22, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !416, line: 30, baseType: !575)
!575 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !564, file: !494, line: 527, baseType: !543, size: 64, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !494, line: 528, baseType: !7, size: 32, offset: 640)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !564, file: !494, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !564, file: !494, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !564, file: !494, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !564, file: !494, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !564, file: !494, line: 563, baseType: !583, size: 512, offset: 704)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !584)
!584 = !{!585, !593, !594, !599, !648, !649, !650, !651}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !583, file: !6, line: 119, baseType: !586, size: 256)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !587, line: 9, size: 256, elements: !588)
!587 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !586, file: !587, line: 10, baseType: !485, size: 192, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !586, file: !587, line: 11, baseType: !591, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !592, line: 29, baseType: !573)
!592 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !583, file: !6, line: 120, baseType: !591, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !583, file: !6, line: 121, baseType: !595, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!5, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !583, file: !6, line: 122, baseType: !600, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !602)
!602 = !{!603, !623, !624, !628, !638, !639, !643, !647}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !601, file: !6, line: 160, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !605, file: !6, line: 215, baseType: !467)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !605, file: !6, line: 216, baseType: !7, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !605, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !605, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !605, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !605, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !605, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !605, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !605, file: !6, line: 233, baseType: !591, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !605, file: !6, line: 234, baseType: !598, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !605, file: !6, line: 235, baseType: !591, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !605, file: !6, line: 236, baseType: !598, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !605, file: !6, line: 237, baseType: !620, size: 4096, offset: 512)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 4096, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 8)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !601, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !601, file: !6, line: 162, baseType: !625, size: 32, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !343, line: 27, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !627, line: 96, baseType: !384)
!627 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!628 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !601, file: !6, line: 163, baseType: !629, size: 32, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !630, line: 276, baseType: !631)
!630 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !630, line: 276, size: 32, elements: !632)
!632 = !{!633}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !631, file: !630, line: 276, baseType: !634, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !630, line: 70, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !630, line: 65, size: 32, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !635, file: !630, line: 66, baseType: !7, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !601, file: !6, line: 164, baseType: !598, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !601, file: !6, line: 165, baseType: !640, size: 128, offset: 256)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !587, line: 14, size: 128, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !640, file: !587, line: 15, baseType: !477, size: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !601, file: !6, line: 166, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!591}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !601, file: !6, line: 167, baseType: !591, size: 64, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !583, file: !6, line: 123, baseType: !430, size: 8, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !583, file: !6, line: 124, baseType: !430, size: 8, offset: 456)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !583, file: !6, line: 125, baseType: !430, size: 8, offset: 464)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !583, file: !6, line: 126, baseType: !430, size: 8, offset: 472)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !564, file: !494, line: 572, baseType: !583, size: 512, offset: 1216)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !564, file: !494, line: 580, baseType: !654, size: 64, offset: 1728)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !493, file: !494, line: 721, baseType: !7, size: 32, offset: 3584)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !493, file: !494, line: 722, baseType: !384, size: 32, offset: 3616)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !493, file: !494, line: 723, baseType: !658, size: 64, offset: 3648)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !661, line: 17, baseType: !662)
!661 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !661, line: 17, size: 64, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !662, file: !661, line: 17, baseType: !665, size: 64)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 64, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 1)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !493, file: !494, line: 724, baseType: !660, size: 64, offset: 3712)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !493, file: !494, line: 749, baseType: !670, offset: 3776)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !494, line: 290, elements: !475)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !493, file: !494, line: 751, baseType: !536, size: 128, offset: 3776)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !493, file: !494, line: 757, baseType: !673, size: 64, offset: 3904)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !675, line: 388, size: 7296, elements: !676)
!675 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!676 = !{!677, !2819}
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !675, line: 389, baseType: !678, size: 7296)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !675, line: 389, size: 7296, elements: !679)
!679 = !{!680, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2732, !2738, !2741, !2780, !2781, !2803, !2804, !2807, !2808, !2809, !2812, !2813, !2814, !2817, !2818}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !678, file: !675, line: 390, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !675, line: 305, size: 1472, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !699, !700, !705, !706, !709, !713, !714, !2680, !2681, !2682}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !682, file: !675, line: 308, baseType: !337, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !682, file: !675, line: 309, baseType: !337, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !682, file: !675, line: 313, baseType: !681, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !682, file: !675, line: 313, baseType: !681, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !682, file: !675, line: 315, baseType: !485, size: 192, align: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !682, file: !675, line: 323, baseType: !337, size: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !682, file: !675, line: 327, baseType: !673, size: 64, offset: 512)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !682, file: !675, line: 333, baseType: !692, size: 64, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !693, line: 284, baseType: !694)
!693 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !693, line: 284, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !694, file: !693, line: 284, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !698, line: 19, baseType: !337)
!698 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !682, file: !675, line: 334, baseType: !337, size: 64, offset: 640)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !682, file: !675, line: 343, baseType: !701, size: 256, offset: 704)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !675, line: 340, size: 256, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !701, file: !675, line: 341, baseType: !485, size: 192, align: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !701, file: !675, line: 342, baseType: !337, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !682, file: !675, line: 351, baseType: !536, size: 128, offset: 960)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !682, file: !675, line: 353, baseType: !707, size: 64, offset: 1088)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !675, line: 353, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !682, file: !675, line: 356, baseType: !710, size: 64, offset: 1152)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !675, line: 356, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !682, file: !675, line: 359, baseType: !337, size: 64, offset: 1216)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !682, file: !675, line: 361, baseType: !715, size: 64, offset: 1280)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !717)
!717 = !{!718, !736, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2479, !2664, !2673, !2674, !2675, !2676, !2677, !2678, !2679}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !716, file: !31, line: 920, baseType: !719, size: 128)
!719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !31, line: 917, size: 128, elements: !720)
!720 = !{!721, !727}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !719, file: !31, line: 918, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !723, line: 58, size: 64, elements: !724)
!723 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !723, line: 59, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !719, file: !31, line: 919, baseType: !728, size: 128, align: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !343, line: 216, size: 128, align: 64, elements: !729)
!729 = !{!730, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !343, line: 217, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !728, file: !343, line: 218, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !731}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !716, file: !31, line: 921, baseType: !737, size: 128, offset: 128)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !738, line: 8, size: 128, elements: !739)
!738 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!739 = !{!740, !744}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !737, file: !738, line: 9, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !743, line: 18, flags: DIFlagFwdDecl)
!743 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !737, file: !738, line: 10, baseType: !745, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !743, line: 89, size: 1536, elements: !747)
!747 = !{!748, !749, !754, !762, !763, !778, !2409, !2411, !2423, !2424, !2425, !2426, !2427, !2432, !2433, !2434}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !746, file: !743, line: 91, baseType: !7, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !746, file: !743, line: 92, baseType: !750, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !630, line: 277, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !630, line: 277, size: 32, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !751, file: !630, line: 277, baseType: !634, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !746, file: !743, line: 93, baseType: !755, size: 128, offset: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !756, line: 38, size: 128, elements: !757)
!756 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!757 = !{!758, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !755, file: !756, line: 39, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !755, file: !756, line: 39, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !746, file: !743, line: 94, baseType: !745, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !746, file: !743, line: 95, baseType: !764, size: 128, offset: 256)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !743, line: 47, size: 128, elements: !765)
!765 = !{!766, !775}
!766 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !743, line: 48, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !743, line: 48, size: 64, elements: !768)
!768 = !{!769, !774}
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !743, line: 49, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !743, line: 49, size: 64, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !770, file: !743, line: 50, baseType: !445, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !770, file: !743, line: 50, baseType: !445, size: 32, offset: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !767, file: !743, line: 52, baseType: !543, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !764, file: !743, line: 54, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !746, file: !743, line: 96, baseType: !779, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !781)
!781 = !{!782, !784, !785, !793, !800, !801, !955, !1811, !1812, !1813, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !2089, !2097, !2098, !2099, !2405, !2406, !2407, !2408}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !780, file: !31, line: 611, baseType: !783, size: 16)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !343, line: 19, baseType: !389)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !780, file: !31, line: 612, baseType: !389, size: 16, offset: 16)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !780, file: !31, line: 613, baseType: !786, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !787, line: 23, baseType: !788)
!787 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !787, line: 21, size: 32, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !788, file: !787, line: 22, baseType: !791, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !343, line: 32, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !627, line: 49, baseType: !7)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !780, file: !31, line: 614, baseType: !794, size: 32, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !787, line: 28, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !787, line: 26, size: 32, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !795, file: !787, line: 27, baseType: !798, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !343, line: 33, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !627, line: 50, baseType: !7)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !780, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !780, file: !31, line: 622, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !805)
!805 = !{!806, !810, !824, !828, !834, !839, !845, !849, !853, !857, !861, !862, !868, !872, !896, !925, !935, !941, !946, !950, !951}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !804, file: !31, line: 1865, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!745, !779, !745, !7}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !804, file: !31, line: 1866, baseType: !811, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!814, !745, !779, !815}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !817, line: 10, size: 128, elements: !818)
!817 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!818 = !{!819, !823}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !816, file: !817, line: 11, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !338}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !816, file: !817, line: 12, baseType: !338, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !804, file: !31, line: 1867, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!384, !779, !384}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !804, file: !31, line: 1868, baseType: !829, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!832, !779, !384}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !804, file: !31, line: 1870, baseType: !835, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!384, !745, !838, !384}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !804, file: !31, line: 1872, baseType: !840, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!384, !779, !745, !783, !843}
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !343, line: 30, baseType: !844)
!844 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !804, file: !31, line: 1873, baseType: !846, size: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!384, !745, !779, !745}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !804, file: !31, line: 1874, baseType: !850, size: 64, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!384, !779, !745}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !804, file: !31, line: 1875, baseType: !854, size: 64, offset: 512)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!384, !779, !745, !814}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !804, file: !31, line: 1876, baseType: !858, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!384, !779, !745, !783}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !804, file: !31, line: 1877, baseType: !850, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !804, file: !31, line: 1878, baseType: !863, size: 64, offset: 704)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!384, !779, !745, !783, !866}
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !343, line: 16, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !343, line: 13, baseType: !445)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !804, file: !31, line: 1879, baseType: !869, size: 64, offset: 768)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!384, !779, !745, !779, !745, !7}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !804, file: !31, line: 1881, baseType: !873, size: 64, offset: 832)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!384, !745, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !886, !893, !894, !895}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !877, file: !31, line: 220, baseType: !7, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !877, file: !31, line: 221, baseType: !783, size: 16, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !877, file: !31, line: 222, baseType: !786, size: 32, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !877, file: !31, line: 223, baseType: !794, size: 32, offset: 96)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !877, file: !31, line: 224, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !343, line: 46, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !627, line: 88, baseType: !575)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !877, file: !31, line: 225, baseType: !887, size: 128, offset: 192)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !888, line: 13, size: 128, elements: !889)
!888 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!889 = !{!890, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !887, file: !888, line: 14, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !888, line: 8, baseType: !574)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !887, file: !888, line: 15, baseType: !344, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !877, file: !31, line: 226, baseType: !887, size: 128, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !877, file: !31, line: 227, baseType: !887, size: 128, offset: 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !877, file: !31, line: 234, baseType: !715, size: 64, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !804, file: !31, line: 1882, baseType: !897, size: 64, offset: 896)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!384, !900, !902, !445, !7}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !904, line: 22, size: 1152, elements: !905)
!904 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!905 = !{!906, !907, !908, !909, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !903, file: !904, line: 23, baseType: !445, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !903, file: !904, line: 24, baseType: !783, size: 16, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !903, file: !904, line: 25, baseType: !7, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !903, file: !904, line: 26, baseType: !910, size: 32, offset: 96)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !343, line: 104, baseType: !445)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !903, file: !904, line: 27, baseType: !543, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !903, file: !904, line: 28, baseType: !543, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !903, file: !904, line: 37, baseType: !543, size: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !903, file: !904, line: 38, baseType: !866, size: 32, offset: 320)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !903, file: !904, line: 39, baseType: !866, size: 32, offset: 352)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !903, file: !904, line: 40, baseType: !786, size: 32, offset: 384)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !903, file: !904, line: 41, baseType: !794, size: 32, offset: 416)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !903, file: !904, line: 42, baseType: !884, size: 64, offset: 448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !903, file: !904, line: 43, baseType: !887, size: 128, offset: 512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !903, file: !904, line: 44, baseType: !887, size: 128, offset: 640)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !903, file: !904, line: 45, baseType: !887, size: 128, offset: 768)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !903, file: !904, line: 46, baseType: !887, size: 128, offset: 896)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !903, file: !904, line: 47, baseType: !543, size: 64, offset: 1024)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !903, file: !904, line: 48, baseType: !543, size: 64, offset: 1088)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !804, file: !31, line: 1883, baseType: !926, size: 64, offset: 960)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!929, !745, !838, !932}
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !343, line: 60, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !627, line: 73, baseType: !931)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !627, line: 15, baseType: !344)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !343, line: 55, baseType: !933)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !627, line: 72, baseType: !934)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !627, line: 16, baseType: !337)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !804, file: !31, line: 1884, baseType: !936, size: 64, offset: 1024)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!384, !779, !939, !543, !543}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !804, file: !31, line: 1886, baseType: !942, size: 64, offset: 1088)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!384, !779, !945, !384}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !804, file: !31, line: 1887, baseType: !947, size: 64, offset: 1152)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!384, !779, !745, !715, !7, !783}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !804, file: !31, line: 1890, baseType: !858, size: 64, offset: 1216)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !804, file: !31, line: 1891, baseType: !952, size: 64, offset: 1280)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!384, !779, !832, !384}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !780, file: !31, line: 623, baseType: !956, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !958)
!958 = !{!959, !960, !961, !962, !963, !964, !1013, !1393, !1475, !1558, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1574, !1578, !1579, !1582, !1585, !1588, !1589, !1590, !1631, !1664, !1665, !1666, !1667, !1668, !1669, !1672, !1676, !1685, !1686, !1688, !1689, !1690, !1749, !1750, !1765, !1766, !1767, !1768, !1769, !1773, !1774, !1777, !1792, !1793, !1794, !1805, !1806, !1807, !1808, !1809, !1810}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !957, file: !31, line: 1417, baseType: !536, size: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !957, file: !31, line: 1418, baseType: !866, size: 32, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !957, file: !31, line: 1419, baseType: !422, size: 8, offset: 160)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !957, file: !31, line: 1420, baseType: !337, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !957, file: !31, line: 1421, baseType: !884, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !957, file: !31, line: 1422, baseType: !965, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !967)
!967 = !{!968, !969, !970, !977, !981, !985, !989, !990, !991, !1001, !1004, !1005, !1006, !1010, !1011, !1012}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !966, file: !31, line: 2229, baseType: !814, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !966, file: !31, line: 2230, baseType: !384, size: 32, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !966, file: !31, line: 2238, baseType: !971, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!384, !974}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !976, line: 28, flags: DIFlagFwdDecl)
!976 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!977 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !966, file: !31, line: 2239, baseType: !978, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !966, file: !31, line: 2240, baseType: !982, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!745, !965, !384, !814, !338}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !966, file: !31, line: 2242, baseType: !986, size: 64, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !956}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !966, file: !31, line: 2243, baseType: !339, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !966, file: !31, line: 2244, baseType: !965, size: 64, offset: 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !966, file: !31, line: 2245, baseType: !992, size: 64, offset: 512)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !343, line: 182, size: 64, elements: !993)
!993 = !{!994}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !992, file: !343, line: 183, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !343, line: 186, size: 128, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !996, file: !343, line: 187, baseType: !995, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !996, file: !343, line: 187, baseType: !1000, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !966, file: !31, line: 2247, baseType: !1002, offset: 576)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1003, line: 187, elements: !475)
!1003 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !966, file: !31, line: 2248, baseType: !1002, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !966, file: !31, line: 2249, baseType: !1002, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !966, file: !31, line: 2250, baseType: !1007, offset: 576)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 3)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !966, file: !31, line: 2252, baseType: !1002, offset: 576)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !966, file: !31, line: 2253, baseType: !1002, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !966, file: !31, line: 2254, baseType: !1002, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !957, file: !31, line: 1423, baseType: !1014, size: 64, offset: 384)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !1017)
!1017 = !{!1018, !1022, !1026, !1027, !1031, !1037, !1041, !1042, !1043, !1047, !1051, !1052, !1053, !1054, !1060, !1065, !1066, !1128, !1129, !1130, !1131, !1377, !1392}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1016, file: !31, line: 1936, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!779, !956}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1016, file: !31, line: 1937, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !779}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1016, file: !31, line: 1938, baseType: !1023, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1016, file: !31, line: 1940, baseType: !1028, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !779, !384}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1016, file: !31, line: 1941, baseType: !1032, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!384, !779, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1016, file: !31, line: 1942, baseType: !1038, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!384, !779}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1016, file: !31, line: 1943, baseType: !1023, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1016, file: !31, line: 1944, baseType: !986, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1016, file: !31, line: 1945, baseType: !1044, size: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!384, !956, !384}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1016, file: !31, line: 1946, baseType: !1048, size: 64, offset: 576)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!384, !956}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1016, file: !31, line: 1947, baseType: !1048, size: 64, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1016, file: !31, line: 1948, baseType: !1048, size: 64, offset: 704)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1016, file: !31, line: 1949, baseType: !1048, size: 64, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1016, file: !31, line: 1950, baseType: !1055, size: 64, offset: 832)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!384, !745, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1016, file: !31, line: 1951, baseType: !1061, size: 64, offset: 896)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!384, !956, !1064, !838}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1016, file: !31, line: 1952, baseType: !986, size: 64, offset: 960)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1016, file: !31, line: 1954, baseType: !1067, size: 64, offset: 1024)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!384, !1070, !745}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1072, line: 16, size: 896, elements: !1073)
!1072 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1101, !1123, !1124, !1127}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1071, file: !1072, line: 17, baseType: !838, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1071, file: !1072, line: 18, baseType: !932, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1071, file: !1072, line: 19, baseType: !932, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1071, file: !1072, line: 20, baseType: !932, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1071, file: !1072, line: 21, baseType: !932, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1071, file: !1072, line: 22, baseType: !884, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1071, file: !1072, line: 23, baseType: !884, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1071, file: !1072, line: 24, baseType: !1082, size: 192, offset: 448)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1083, line: 53, size: 192, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1084 = !{!1085, !1092, !1100}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1082, file: !1083, line: 54, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1087, line: 13, baseType: !1088)
!1087 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !343, line: 175, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 173, size: 64, elements: !1090)
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1089, file: !343, line: 174, baseType: !573, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1082, file: !1083, line: 55, baseType: !1093, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !468, line: 83, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !468, line: 71, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !468, line: 72, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !468, line: 72, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1097, file: !468, line: 73, baseType: !469)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1082, file: !1083, line: 59, baseType: !536, size: 128, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1071, file: !1072, line: 25, baseType: !1102, size: 64, offset: 640)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1072, line: 31, size: 256, elements: !1105)
!1105 = !{!1106, !1111, !1115, !1119}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1104, file: !1072, line: 32, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!338, !1070, !1110}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1104, file: !1072, line: 33, baseType: !1112, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !1070, !338}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1104, file: !1072, line: 34, baseType: !1116, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!338, !1070, !338, !1110}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1104, file: !1072, line: 35, baseType: !1120, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!384, !1070, !338}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1071, file: !1072, line: 26, baseType: !384, size: 32, offset: 704)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1071, file: !1072, line: 27, baseType: !1125, size: 64, offset: 768)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1071, file: !1072, line: 28, baseType: !338, size: 64, offset: 832)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1016, file: !31, line: 1955, baseType: !1067, size: 64, offset: 1088)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1016, file: !31, line: 1956, baseType: !1067, size: 64, offset: 1152)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1016, file: !31, line: 1957, baseType: !1067, size: 64, offset: 1216)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1016, file: !31, line: 1963, baseType: !1132, size: 64, offset: 1280)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!384, !956, !1135, !342}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !675, line: 68, size: 512, align: 128, elements: !1137)
!1137 = !{!1138, !1139, !1369, !1376}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1136, file: !675, line: 69, baseType: !337, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1136, file: !675, line: 77, baseType: !1140, size: 320, offset: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1136, file: !675, line: 77, size: 320, elements: !1141)
!1141 = !{!1142, !1301, !1306, !1334, !1342, !1348, !1361, !1368}
!1142 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !675, line: 78, baseType: !1143, size: 320)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1140, file: !675, line: 78, size: 320, elements: !1144)
!1144 = !{!1145, !1146, !1299, !1300}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1143, file: !675, line: 84, baseType: !536, size: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1143, file: !675, line: 86, baseType: !1147, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !1149)
!1149 = !{!1150, !1151, !1158, !1159, !1160, !1161, !1169, !1170, !1171, !1172, !1292, !1293, !1296, !1297, !1298}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1148, file: !31, line: 452, baseType: !779, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1148, file: !31, line: 453, baseType: !1152, size: 128, offset: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1153, line: 292, size: 128, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155, !1156, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1152, file: !1153, line: 293, baseType: !1093)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1152, file: !1153, line: 295, baseType: !342, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1152, file: !1153, line: 296, baseType: !338, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1148, file: !31, line: 454, baseType: !342, size: 32, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1148, file: !31, line: 455, baseType: !511, size: 32, offset: 224)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1148, file: !31, line: 460, baseType: !477, size: 128, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1148, file: !31, line: 461, baseType: !1162, size: 256, offset: 384)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1163, line: 35, size: 256, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1164 = !{!1165, !1166, !1167, !1168}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1162, file: !1163, line: 36, baseType: !1086, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1162, file: !1163, line: 42, baseType: !1086, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1162, file: !1163, line: 46, baseType: !467, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1162, file: !1163, line: 47, baseType: !536, size: 128, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1148, file: !31, line: 462, baseType: !337, size: 64, offset: 640)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1148, file: !31, line: 463, baseType: !337, size: 64, offset: 704)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1148, file: !31, line: 464, baseType: !337, size: 64, offset: 768)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1148, file: !31, line: 465, baseType: !1173, size: 64, offset: 832)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !1176)
!1176 = !{!1177, !1181, !1185, !1189, !1193, !1197, !1203, !1209, !1213, !1218, !1222, !1226, !1230, !1256, !1260, !1266, !1267, !1268, !1272, !1277, !1281, !1288}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1175, file: !31, line: 368, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!384, !1135, !1035}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1175, file: !31, line: 369, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!384, !715, !1135}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1175, file: !31, line: 372, baseType: !1186, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!384, !1147, !1035}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1175, file: !31, line: 375, baseType: !1190, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!384, !1135}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1175, file: !31, line: 381, baseType: !1194, size: 64, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!384, !715, !1147, !539, !7}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1175, file: !31, line: 383, baseType: !1198, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1175, file: !31, line: 385, baseType: !1204, size: 64, offset: 384)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!384, !715, !1147, !884, !7, !7, !1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1175, file: !31, line: 388, baseType: !1210, size: 64, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!384, !715, !1147, !884, !7, !7, !1135, !338}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1175, file: !31, line: 393, baseType: !1214, size: 64, offset: 512)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!1217, !1147, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !343, line: 125, baseType: !543)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1175, file: !31, line: 394, baseType: !1219, size: 64, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !1135, !7, !7}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1175, file: !31, line: 395, baseType: !1223, size: 64, offset: 640)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!384, !1135, !342}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1175, file: !31, line: 396, baseType: !1227, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !1135}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1175, file: !31, line: 397, baseType: !1231, size: 64, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!929, !1234, !1254}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1243, !1244, !1245, !1246, !1247}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1235, file: !31, line: 321, baseType: !715, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1235, file: !31, line: 326, baseType: !884, size: 64, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1235, file: !31, line: 327, baseType: !1240, size: 64, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !1234, !344, !344}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1235, file: !31, line: 328, baseType: !338, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1235, file: !31, line: 329, baseType: !384, size: 32, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1235, file: !31, line: 330, baseType: !428, size: 16, offset: 288)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1235, file: !31, line: 331, baseType: !428, size: 16, offset: 304)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !31, line: 332, baseType: !1248, size: 64, offset: 320)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !31, line: 332, size: 64, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1248, file: !31, line: 333, baseType: !7, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1248, file: !31, line: 334, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1175, file: !31, line: 402, baseType: !1257, size: 64, offset: 832)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!384, !1147, !1135, !1135, !11}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1175, file: !31, line: 404, baseType: !1261, size: 64, offset: 896)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!843, !1135, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1265, line: 305, baseType: !7)
!1265 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1175, file: !31, line: 405, baseType: !1227, size: 64, offset: 960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1175, file: !31, line: 406, baseType: !1190, size: 64, offset: 1024)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1175, file: !31, line: 407, baseType: !1269, size: 64, offset: 1088)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!384, !1135, !337, !337}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1175, file: !31, line: 409, baseType: !1273, size: 64, offset: 1152)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !1135, !1276, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1175, file: !31, line: 410, baseType: !1278, size: 64, offset: 1216)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!384, !1147, !1135}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1175, file: !31, line: 413, baseType: !1282, size: 64, offset: 1280)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!384, !1285, !715, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1175, file: !31, line: 415, baseType: !1289, size: 64, offset: 1344)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !715}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1148, file: !31, line: 466, baseType: !337, size: 64, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1148, file: !31, line: 467, baseType: !1294, size: 32, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1295, line: 8, baseType: !445)
!1295 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1148, file: !31, line: 468, baseType: !1093, offset: 992)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1148, file: !31, line: 469, baseType: !536, size: 128, offset: 1024)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1148, file: !31, line: 470, baseType: !338, size: 64, offset: 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1143, file: !675, line: 87, baseType: !337, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1143, file: !675, line: 94, baseType: !337, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !675, line: 96, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1140, file: !675, line: 96, size: 64, elements: !1303)
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1302, file: !675, line: 101, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !343, line: 143, baseType: !543)
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !675, line: 103, baseType: !1307, size: 320)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1140, file: !675, line: 103, size: 320, elements: !1308)
!1308 = !{!1309, !1319, !1322, !1323}
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !675, line: 104, baseType: !1310, size: 128)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1307, file: !675, line: 104, size: 128, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1310, file: !675, line: 105, baseType: !536, size: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, scope: !1310, file: !675, line: 106, baseType: !1314, size: 128)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1310, file: !675, line: 106, size: 128, elements: !1315)
!1315 = !{!1316, !1317, !1318}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1314, file: !675, line: 107, baseType: !1135, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1314, file: !675, line: 109, baseType: !384, size: 32, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1314, file: !675, line: 110, baseType: !384, size: 32, offset: 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1307, file: !675, line: 117, baseType: !1320, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !675, line: 117, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1307, file: !675, line: 119, baseType: !338, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !675, line: 120, baseType: !1324, size: 64, offset: 256)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1307, file: !675, line: 120, size: 64, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1324, file: !675, line: 121, baseType: !338, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1324, file: !675, line: 122, baseType: !337, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !675, line: 123, baseType: !1329, size: 32)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1324, file: !675, line: 123, size: 32, elements: !1330)
!1330 = !{!1331, !1332, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1329, file: !675, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1329, file: !675, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1329, file: !675, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !675, line: 130, baseType: !1335, size: 192)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1140, file: !675, line: 130, size: 192, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1335, file: !675, line: 131, baseType: !337, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1335, file: !675, line: 134, baseType: !422, size: 8, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1335, file: !675, line: 135, baseType: !422, size: 8, offset: 72)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1335, file: !675, line: 136, baseType: !511, size: 32, offset: 96)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1335, file: !675, line: 137, baseType: !7, size: 32, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !675, line: 139, baseType: !1343, size: 256)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1140, file: !675, line: 139, size: 256, elements: !1344)
!1344 = !{!1345, !1346, !1347}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1343, file: !675, line: 140, baseType: !337, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1343, file: !675, line: 141, baseType: !511, size: 32, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1343, file: !675, line: 143, baseType: !536, size: 128, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !675, line: 145, baseType: !1349, size: 256)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1140, file: !675, line: 145, size: 256, elements: !1350)
!1350 = !{!1351, !1352, !1354, !1355, !1360}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1349, file: !675, line: 146, baseType: !337, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1349, file: !675, line: 147, baseType: !1353, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !693, line: 509, baseType: !1135)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1349, file: !675, line: 148, baseType: !337, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, scope: !1349, file: !675, line: 149, baseType: !1356, size: 64, offset: 192)
!1356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1349, file: !675, line: 149, size: 64, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1356, file: !675, line: 150, baseType: !673, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1356, file: !675, line: 151, baseType: !511, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1349, file: !675, line: 156, baseType: !1093, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !675, line: 159, baseType: !1362, size: 128)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1140, file: !675, line: 159, size: 128, elements: !1363)
!1363 = !{!1364, !1367}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1362, file: !675, line: 161, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !675, line: 161, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1362, file: !675, line: 162, baseType: !338, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1140, file: !675, line: 176, baseType: !728, size: 128, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1136, file: !675, line: 179, baseType: !1370, size: 32, offset: 384)
!1370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1136, file: !675, line: 179, size: 32, elements: !1371)
!1371 = !{!1372, !1373, !1374, !1375}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1370, file: !675, line: 184, baseType: !511, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1370, file: !675, line: 192, baseType: !7, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1370, file: !675, line: 194, baseType: !7, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1370, file: !675, line: 195, baseType: !384, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1136, file: !675, line: 199, baseType: !511, size: 32, offset: 416)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1016, file: !31, line: 1964, baseType: !1378, size: 64, offset: 1344)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!344, !956, !1381}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1383, line: 12, size: 256, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1386, !1387, !1388, !1389}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1382, file: !1383, line: 13, baseType: !342, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1382, file: !1383, line: 16, baseType: !384, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1382, file: !1383, line: 23, baseType: !337, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1382, file: !1383, line: 30, baseType: !337, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1382, file: !1383, line: 33, baseType: !1390, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !675, line: 27, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1016, file: !31, line: 1966, baseType: !1378, size: 64, offset: 1408)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !957, file: !31, line: 1424, baseType: !1394, size: 64, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1396)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 322, size: 704, elements: !1397)
!1397 = !{!1398, !1444, !1448, !1452, !1453, !1454, !1455, !1456, !1461, !1466, !1470}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1396, file: !19, line: 323, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!384, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 294, size: 1600, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1429, !1430, !1431}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1403, file: !19, line: 295, baseType: !996, size: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1403, file: !19, line: 296, baseType: !536, size: 128, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1403, file: !19, line: 297, baseType: !536, size: 128, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1403, file: !19, line: 298, baseType: !536, size: 128, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1403, file: !19, line: 299, baseType: !1082, size: 192, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1403, file: !19, line: 300, baseType: !1093, offset: 704)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1403, file: !19, line: 301, baseType: !511, size: 32, offset: 704)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1403, file: !19, line: 302, baseType: !956, size: 64, offset: 768)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1403, file: !19, line: 303, baseType: !1414, size: 64, offset: 832)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1415)
!1415 = !{!1416, !1428}
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !19, line: 69, baseType: !1417, size: 32)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !19, line: 69, size: 32, elements: !1418)
!1418 = !{!1419, !1420, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1417, file: !19, line: 70, baseType: !786, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1417, file: !19, line: 71, baseType: !794, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1417, file: !19, line: 72, baseType: !1422, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1423, line: 24, baseType: !1424)
!1423 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1423, line: 22, size: 32, elements: !1425)
!1425 = !{!1426}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1424, file: !1423, line: 23, baseType: !1427, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1423, line: 20, baseType: !792)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1414, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1403, file: !19, line: 304, baseType: !884, size: 64, offset: 896)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1403, file: !19, line: 305, baseType: !337, size: 64, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1403, file: !19, line: 306, baseType: !1432, size: 576, offset: 1024)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1433)
!1433 = !{!1434, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1432, file: !19, line: 206, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !575)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1432, file: !19, line: 207, baseType: !1435, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1432, file: !19, line: 208, baseType: !1435, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1432, file: !19, line: 209, baseType: !1435, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1432, file: !19, line: 210, baseType: !1435, size: 64, offset: 256)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1432, file: !19, line: 211, baseType: !1435, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1432, file: !19, line: 212, baseType: !1435, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1432, file: !19, line: 213, baseType: !891, size: 64, offset: 448)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1432, file: !19, line: 214, baseType: !891, size: 64, offset: 512)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1396, file: !19, line: 324, baseType: !1445, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!1402, !956, !384}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1396, file: !19, line: 325, baseType: !1449, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !1402}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1396, file: !19, line: 326, baseType: !1399, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1396, file: !19, line: 327, baseType: !1399, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1396, file: !19, line: 328, baseType: !1399, size: 64, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1396, file: !19, line: 329, baseType: !1044, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1396, file: !19, line: 332, baseType: !1457, size: 64, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!1460, !779}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1396, file: !19, line: 333, baseType: !1462, size: 64, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!384, !779, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1396, file: !19, line: 335, baseType: !1467, size: 64, offset: 576)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!384, !779, !1460}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1396, file: !19, line: 337, baseType: !1471, size: 64, offset: 640)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!384, !956, !1474}
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !957, file: !31, line: 1425, baseType: !1476, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 428, size: 704, elements: !1479)
!1479 = !{!1480, !1484, !1485, !1489, !1490, !1491, !1506, !1529, !1533, !1534, !1557}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1478, file: !19, line: 429, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!384, !956, !384, !384, !900}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1478, file: !19, line: 430, baseType: !1044, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1478, file: !19, line: 431, baseType: !1486, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!384, !956, !7}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1478, file: !19, line: 432, baseType: !1486, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1478, file: !19, line: 433, baseType: !1044, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1478, file: !19, line: 434, baseType: !1492, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!384, !956, !384, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 415, size: 256, elements: !1497)
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1496, file: !19, line: 416, baseType: !384, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1496, file: !19, line: 417, baseType: !7, size: 32, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1496, file: !19, line: 418, baseType: !7, size: 32, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1496, file: !19, line: 420, baseType: !7, size: 32, offset: 96)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1496, file: !19, line: 421, baseType: !7, size: 32, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1496, file: !19, line: 422, baseType: !7, size: 32, offset: 160)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1496, file: !19, line: 423, baseType: !7, size: 32, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1496, file: !19, line: 424, baseType: !7, size: 32, offset: 224)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1478, file: !19, line: 435, baseType: !1507, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!384, !956, !1414, !1510}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 343, size: 960, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1511, file: !19, line: 344, baseType: !384, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1511, file: !19, line: 345, baseType: !543, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1511, file: !19, line: 346, baseType: !543, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1511, file: !19, line: 347, baseType: !543, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1511, file: !19, line: 348, baseType: !543, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1511, file: !19, line: 349, baseType: !543, size: 64, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1511, file: !19, line: 350, baseType: !543, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1511, file: !19, line: 351, baseType: !573, size: 64, offset: 448)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1511, file: !19, line: 353, baseType: !573, size: 64, offset: 512)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1511, file: !19, line: 354, baseType: !384, size: 32, offset: 576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1511, file: !19, line: 355, baseType: !384, size: 32, offset: 608)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1511, file: !19, line: 356, baseType: !543, size: 64, offset: 640)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1511, file: !19, line: 357, baseType: !543, size: 64, offset: 704)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1511, file: !19, line: 358, baseType: !543, size: 64, offset: 768)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1511, file: !19, line: 359, baseType: !573, size: 64, offset: 832)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1511, file: !19, line: 360, baseType: !384, size: 32, offset: 896)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1478, file: !19, line: 436, baseType: !1530, size: 64, offset: 448)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!384, !956, !1474, !1510}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1478, file: !19, line: 438, baseType: !1507, size: 64, offset: 512)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1478, file: !19, line: 439, baseType: !1535, size: 64, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!384, !956, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 409, size: 1408, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1539, file: !19, line: 410, baseType: !7, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1539, file: !19, line: 411, baseType: !1543, size: 1344, offset: 64)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1544, size: 1344, elements: !1008)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 395, size: 448, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1556}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1544, file: !19, line: 396, baseType: !7, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1544, file: !19, line: 397, baseType: !7, size: 32, offset: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1544, file: !19, line: 399, baseType: !7, size: 32, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1544, file: !19, line: 400, baseType: !7, size: 32, offset: 96)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1544, file: !19, line: 401, baseType: !7, size: 32, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1544, file: !19, line: 402, baseType: !7, size: 32, offset: 160)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1544, file: !19, line: 403, baseType: !7, size: 32, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1544, file: !19, line: 404, baseType: !545, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1544, file: !19, line: 405, baseType: !1555, size: 64, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !343, line: 126, baseType: !543)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1544, file: !19, line: 406, baseType: !1555, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1478, file: !19, line: 440, baseType: !1486, size: 64, offset: 640)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !957, file: !31, line: 1426, baseType: !1559, size: 64, offset: 576)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1561)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !957, file: !31, line: 1427, baseType: !337, size: 64, offset: 640)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !957, file: !31, line: 1428, baseType: !337, size: 64, offset: 704)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !957, file: !31, line: 1429, baseType: !337, size: 64, offset: 768)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !957, file: !31, line: 1430, baseType: !745, size: 64, offset: 832)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !957, file: !31, line: 1431, baseType: !1162, size: 256, offset: 896)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !957, file: !31, line: 1432, baseType: !384, size: 32, offset: 1152)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !957, file: !31, line: 1433, baseType: !511, size: 32, offset: 1184)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !957, file: !31, line: 1437, baseType: !1570, size: 64, offset: 1216)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !957, file: !31, line: 1449, baseType: !1575, size: 64, offset: 1280)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !756, line: 34, size: 64, elements: !1576)
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1575, file: !756, line: 35, baseType: !759, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !957, file: !31, line: 1450, baseType: !536, size: 128, offset: 1344)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !957, file: !31, line: 1451, baseType: !1580, size: 64, offset: 1472)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !957, file: !31, line: 1452, baseType: !1583, size: 64, offset: 1536)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !494, line: 40, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !957, file: !31, line: 1453, baseType: !1586, size: 64, offset: 1600)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !957, file: !31, line: 1454, baseType: !996, size: 128, offset: 1664)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !957, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !957, file: !31, line: 1456, baseType: !1591, size: 2432, offset: 1856)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 518, size: 2432, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1597, !1629}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1591, file: !19, line: 519, baseType: !7, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1591, file: !19, line: 520, baseType: !1162, size: 256, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1591, file: !19, line: 521, baseType: !1596, size: 192, offset: 320)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 192, elements: !1008)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1591, file: !19, line: 522, baseType: !1598, size: 1728, offset: 512)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1599, size: 1728, elements: !1008)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1600)
!1600 = !{!1601, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1599, file: !19, line: 223, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 443, size: 256, elements: !1604)
!1604 = !{!1605, !1606, !1619, !1620}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1603, file: !19, line: 444, baseType: !384, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1603, file: !19, line: 445, baseType: !1607, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 310, size: 512, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1609, file: !19, line: 311, baseType: !1044, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1609, file: !19, line: 312, baseType: !1044, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1609, file: !19, line: 313, baseType: !1044, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1609, file: !19, line: 314, baseType: !1044, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1609, file: !19, line: 315, baseType: !1399, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1609, file: !19, line: 316, baseType: !1399, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1609, file: !19, line: 317, baseType: !1399, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1609, file: !19, line: 318, baseType: !1471, size: 64, offset: 448)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1603, file: !19, line: 446, baseType: !339, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1603, file: !19, line: 447, baseType: !1602, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1599, file: !19, line: 224, baseType: !384, size: 32, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1599, file: !19, line: 226, baseType: !536, size: 128, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1599, file: !19, line: 227, baseType: !337, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1599, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1599, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1599, file: !19, line: 230, baseType: !1435, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1599, file: !19, line: 231, baseType: !1435, size: 64, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1599, file: !19, line: 232, baseType: !338, size: 64, offset: 512)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1591, file: !19, line: 523, baseType: !1630, size: 192, offset: 2240)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1607, size: 192, elements: !1008)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !957, file: !31, line: 1458, baseType: !1632, size: 2112, offset: 4288)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !1633)
!1633 = !{!1634, !1635, !1642}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1632, file: !31, line: 1411, baseType: !384, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1632, file: !31, line: 1412, baseType: !1636, size: 128, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1637, line: 40, baseType: !1638)
!1637 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1637, line: 36, size: 128, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1638, file: !1637, line: 37, baseType: !1093)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1638, file: !1637, line: 38, baseType: !536, size: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1632, file: !31, line: 1413, baseType: !1643, size: 1920, offset: 192)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1644, size: 1920, elements: !1008)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1645, line: 12, size: 640, elements: !1646)
!1645 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1646 = !{!1647, !1655, !1657, !1662, !1663}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1644, file: !1645, line: 13, baseType: !1648, size: 320)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1649, line: 17, size: 320, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1650 = !{!1651, !1652, !1653, !1654}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1648, file: !1649, line: 18, baseType: !384, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1648, file: !1649, line: 19, baseType: !384, size: 32, offset: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1648, file: !1649, line: 20, baseType: !1636, size: 128, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1648, file: !1649, line: 22, baseType: !728, size: 128, align: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1644, file: !1645, line: 14, baseType: !1656, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1644, file: !1645, line: 15, baseType: !1658, size: 64, offset: 384)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1659, line: 16, size: 64, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1658, file: !1659, line: 17, baseType: !492, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1644, file: !1645, line: 16, baseType: !1636, size: 128, offset: 448)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1644, file: !1645, line: 17, baseType: !511, size: 32, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !957, file: !31, line: 1465, baseType: !338, size: 64, offset: 6400)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !957, file: !31, line: 1468, baseType: !445, size: 32, offset: 6464)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !957, file: !31, line: 1470, baseType: !891, size: 64, offset: 6528)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !957, file: !31, line: 1471, baseType: !891, size: 64, offset: 6592)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !957, file: !31, line: 1473, baseType: !446, size: 32, offset: 6656)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !957, file: !31, line: 1474, baseType: !1670, size: 64, offset: 6720)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !957, file: !31, line: 1477, baseType: !1673, size: 256, offset: 6784)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 256, elements: !1674)
!1674 = !{!1675}
!1675 = !DISubrange(count: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !957, file: !31, line: 1478, baseType: !1677, size: 128, offset: 7040)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1678, line: 18, baseType: !1679)
!1678 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1678, line: 16, size: 128, elements: !1680)
!1680 = !{!1681}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1679, file: !1678, line: 17, baseType: !1682, size: 128)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 128, elements: !1683)
!1683 = !{!1684}
!1684 = !DISubrange(count: 16)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !957, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !957, file: !31, line: 1481, baseType: !1687, size: 32, offset: 7200)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !343, line: 150, baseType: !7)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !957, file: !31, line: 1487, baseType: !1082, size: 192, offset: 7232)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !957, file: !31, line: 1493, baseType: !814, size: 64, offset: 7424)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !957, file: !31, line: 1495, baseType: !1691, size: 64, offset: 7488)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !743, line: 135, size: 1024, align: 512, elements: !1694)
!1694 = !{!1695, !1699, !1700, !1707, !1713, !1717, !1721, !1725, !1726, !1730, !1734, !1739, !1743}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1693, file: !743, line: 136, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!384, !745, !7}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1693, file: !743, line: 137, baseType: !1696, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1693, file: !743, line: 138, baseType: !1701, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!384, !1704, !1706}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1693, file: !743, line: 139, baseType: !1708, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!384, !1704, !7, !814, !1711}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1693, file: !743, line: 141, baseType: !1714, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!384, !1704}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1693, file: !743, line: 142, baseType: !1718, size: 64, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!384, !745}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1693, file: !743, line: 143, baseType: !1722, size: 64, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !745}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1693, file: !743, line: 144, baseType: !1722, size: 64, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1693, file: !743, line: 145, baseType: !1727, size: 64, offset: 512)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !745, !779}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1693, file: !743, line: 146, baseType: !1731, size: 64, offset: 576)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!838, !745, !838, !384}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1693, file: !743, line: 147, baseType: !1735, size: 64, offset: 640)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!741, !1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1693, file: !743, line: 148, baseType: !1740, size: 64, offset: 704)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!384, !900, !843}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1693, file: !743, line: 149, baseType: !1744, size: 64, offset: 768)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!745, !745, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !957, file: !31, line: 1500, baseType: !384, size: 32, offset: 7552)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !957, file: !31, line: 1502, baseType: !1751, size: 448, offset: 7616)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1383, line: 60, size: 448, elements: !1752)
!1752 = !{!1753, !1758, !1759, !1760, !1761, !1762, !1763}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1751, file: !1383, line: 61, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!337, !1757, !1381}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1751, file: !1383, line: 63, baseType: !1754, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1751, file: !1383, line: 66, baseType: !344, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1751, file: !1383, line: 67, baseType: !384, size: 32, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1751, file: !1383, line: 68, baseType: !7, size: 32, offset: 224)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1751, file: !1383, line: 71, baseType: !536, size: 128, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1751, file: !1383, line: 77, baseType: !1764, size: 64, offset: 384)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !957, file: !31, line: 1505, baseType: !1086, size: 64, offset: 8064)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !957, file: !31, line: 1508, baseType: !1086, size: 64, offset: 8128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !957, file: !31, line: 1511, baseType: !384, size: 32, offset: 8192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !957, file: !31, line: 1514, baseType: !1294, size: 32, offset: 8224)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !957, file: !31, line: 1517, baseType: !1770, size: 64, offset: 8256)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1772, line: 18, flags: DIFlagFwdDecl)
!1772 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !957, file: !31, line: 1518, baseType: !992, size: 64, offset: 8320)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !957, file: !31, line: 1525, baseType: !1775, size: 64, offset: 8384)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !787, line: 18, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !957, file: !31, line: 1532, baseType: !1778, size: 64, offset: 8448)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1779, line: 52, size: 64, elements: !1780)
!1779 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1780 = !{!1781}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1778, file: !1779, line: 53, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1779, line: 40, size: 256, elements: !1784)
!1784 = !{!1785, !1786, !1791}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1783, file: !1779, line: 42, baseType: !1093)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1783, file: !1779, line: 44, baseType: !1787, size: 192)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1779, line: 28, size: 192, elements: !1788)
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1787, file: !1779, line: 29, baseType: !536, size: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1787, file: !1779, line: 31, baseType: !344, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1783, file: !1779, line: 49, baseType: !344, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !957, file: !31, line: 1533, baseType: !1778, size: 64, offset: 8512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !957, file: !31, line: 1534, baseType: !728, size: 128, align: 64, offset: 8576)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !957, file: !31, line: 1535, baseType: !1795, size: 256, offset: 8704)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1772, line: 102, size: 256, elements: !1796)
!1796 = !{!1797, !1798, !1799}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1795, file: !1772, line: 103, baseType: !1086, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1795, file: !1772, line: 104, baseType: !536, size: 128, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1795, file: !1772, line: 105, baseType: !1800, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1772, line: 21, baseType: !1801)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !1804}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !957, file: !31, line: 1537, baseType: !1082, size: 192, offset: 8960)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !957, file: !31, line: 1542, baseType: !384, size: 32, offset: 9152)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !957, file: !31, line: 1545, baseType: !1093, offset: 9184)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !957, file: !31, line: 1546, baseType: !536, size: 128, offset: 9216)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !957, file: !31, line: 1548, baseType: !1093, offset: 9344)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !957, file: !31, line: 1549, baseType: !536, size: 128, offset: 9344)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !780, file: !31, line: 624, baseType: !1147, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !780, file: !31, line: 631, baseType: !337, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !31, line: 639, baseType: !1814, size: 32, offset: 384)
!1814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !31, line: 639, size: 32, elements: !1815)
!1815 = !{!1816, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1814, file: !31, line: 640, baseType: !1817, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1814, file: !31, line: 641, baseType: !7, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !780, file: !31, line: 643, baseType: !866, size: 32, offset: 416)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !780, file: !31, line: 644, baseType: !884, size: 64, offset: 448)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !780, file: !31, line: 645, baseType: !887, size: 128, offset: 512)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !780, file: !31, line: 646, baseType: !887, size: 128, offset: 640)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !780, file: !31, line: 647, baseType: !887, size: 128, offset: 768)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !780, file: !31, line: 648, baseType: !1093, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !780, file: !31, line: 649, baseType: !389, size: 16, offset: 896)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !780, file: !31, line: 650, baseType: !430, size: 8, offset: 912)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !780, file: !31, line: 651, baseType: !430, size: 8, offset: 920)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !780, file: !31, line: 652, baseType: !1555, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !780, file: !31, line: 659, baseType: !337, size: 64, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !780, file: !31, line: 660, baseType: !1162, size: 256, offset: 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !780, file: !31, line: 662, baseType: !337, size: 64, offset: 1344)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !780, file: !31, line: 663, baseType: !337, size: 64, offset: 1408)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !780, file: !31, line: 665, baseType: !996, size: 128, offset: 1472)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !780, file: !31, line: 666, baseType: !536, size: 128, offset: 1600)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !780, file: !31, line: 675, baseType: !536, size: 128, offset: 1728)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !780, file: !31, line: 676, baseType: !536, size: 128, offset: 1856)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !780, file: !31, line: 677, baseType: !536, size: 128, offset: 1984)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !31, line: 678, baseType: !1839, size: 128, offset: 2112)
!1839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !31, line: 678, size: 128, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1839, file: !31, line: 679, baseType: !992, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1839, file: !31, line: 680, baseType: !728, size: 128, align: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !780, file: !31, line: 682, baseType: !1088, size: 64, offset: 2240)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !780, file: !31, line: 683, baseType: !1088, size: 64, offset: 2304)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !780, file: !31, line: 684, baseType: !511, size: 32, offset: 2368)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !780, file: !31, line: 685, baseType: !511, size: 32, offset: 2400)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !780, file: !31, line: 686, baseType: !511, size: 32, offset: 2432)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !780, file: !31, line: 688, baseType: !511, size: 32, offset: 2464)
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !31, line: 690, baseType: !1850, size: 64, offset: 2496)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !31, line: 690, size: 64, elements: !1851)
!1851 = !{!1852, !2088}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1850, file: !31, line: 691, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !1856)
!1856 = !{!1857, !1858, !1862, !1866, !1870, !1871, !1872, !1876, !1889, !1890, !1907, !1911, !1912, !1916, !1917, !1921, !1926, !1927, !1931, !1935, !2043, !2047, !2051, !2055, !2056, !2062, !2066, !2071, !2075, !2079, !2083, !2087}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1855, file: !31, line: 1823, baseType: !339, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1855, file: !31, line: 1824, baseType: !1859, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!884, !715, !884, !384}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1855, file: !31, line: 1825, baseType: !1863, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!929, !715, !838, !932, !1110}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1855, file: !31, line: 1826, baseType: !1867, size: 64, offset: 192)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!929, !715, !814, !932, !1110}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1855, file: !31, line: 1827, baseType: !1231, size: 64, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1855, file: !31, line: 1828, baseType: !1231, size: 64, offset: 320)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1855, file: !31, line: 1829, baseType: !1873, size: 64, offset: 384)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!384, !1234, !843}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1855, file: !31, line: 1830, baseType: !1877, size: 64, offset: 448)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!384, !715, !1880}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !1882)
!1882 = !{!1883, !1888}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1881, file: !31, line: 1777, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !1885)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!384, !1880, !814, !384, !884, !543, !7}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1881, file: !31, line: 1778, baseType: !884, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1855, file: !31, line: 1831, baseType: !1877, size: 64, offset: 512)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1855, file: !31, line: 1832, baseType: !1891, size: 64, offset: 576)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1894, !715, !1896}
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1895, line: 52, baseType: !7)
!1895 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1898, line: 43, size: 128, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !{!1900, !1906}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1897, file: !1898, line: 44, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1898, line: 37, baseType: !1902)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{null, !715, !1905, !1896}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1897, file: !1898, line: 45, baseType: !1894, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1855, file: !31, line: 1833, baseType: !1908, size: 64, offset: 640)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!344, !715, !7, !337}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1855, file: !31, line: 1834, baseType: !1908, size: 64, offset: 704)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1855, file: !31, line: 1835, baseType: !1913, size: 64, offset: 768)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!384, !715, !681}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1855, file: !31, line: 1836, baseType: !337, size: 64, offset: 832)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1855, file: !31, line: 1837, baseType: !1918, size: 64, offset: 896)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!384, !779, !715}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1855, file: !31, line: 1838, baseType: !1922, size: 64, offset: 960)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!384, !715, !1925}
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !338)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1855, file: !31, line: 1839, baseType: !1918, size: 64, offset: 1024)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1855, file: !31, line: 1840, baseType: !1928, size: 64, offset: 1088)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!384, !715, !884, !884, !384}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1855, file: !31, line: 1841, baseType: !1932, size: 64, offset: 1152)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!384, !384, !715, !384}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1855, file: !31, line: 1842, baseType: !1936, size: 64, offset: 1216)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!384, !715, !384, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1973, !1974, !1975, !1988, !2019}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1940, file: !31, line: 1063, baseType: !1939, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1940, file: !31, line: 1064, baseType: !536, size: 128, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1940, file: !31, line: 1065, baseType: !996, size: 128, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1940, file: !31, line: 1066, baseType: !536, size: 128, offset: 320)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1940, file: !31, line: 1069, baseType: !536, size: 128, offset: 448)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1940, file: !31, line: 1072, baseType: !1925, size: 64, offset: 576)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1940, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1940, file: !31, line: 1074, baseType: !422, size: 8, offset: 672)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1940, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1940, file: !31, line: 1076, baseType: !384, size: 32, offset: 736)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1940, file: !31, line: 1077, baseType: !1636, size: 128, offset: 768)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1940, file: !31, line: 1078, baseType: !715, size: 64, offset: 896)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1940, file: !31, line: 1079, baseType: !884, size: 64, offset: 960)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1940, file: !31, line: 1080, baseType: !884, size: 64, offset: 1024)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1940, file: !31, line: 1082, baseType: !1957, size: 64, offset: 1088)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !1959)
!1959 = !{!1960, !1968, !1969, !1970, !1971, !1972}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1958, file: !31, line: 1315, baseType: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1962, line: 20, baseType: !1963)
!1962 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1962, line: 11, elements: !1964)
!1964 = !{!1965}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1963, file: !1962, line: 12, baseType: !1966)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !473, line: 33, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 31, elements: !475)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1958, file: !31, line: 1316, baseType: !384, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1958, file: !31, line: 1317, baseType: !384, size: 32, offset: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1958, file: !31, line: 1318, baseType: !1957, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1958, file: !31, line: 1319, baseType: !715, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1958, file: !31, line: 1320, baseType: !728, size: 128, align: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1940, file: !31, line: 1084, baseType: !337, size: 64, offset: 1152)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1940, file: !31, line: 1085, baseType: !337, size: 64, offset: 1216)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1940, file: !31, line: 1087, baseType: !1976, size: 64, offset: 1280)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !1979)
!1979 = !{!1980, !1984}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1978, file: !31, line: 1012, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1939, !1939}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1978, file: !31, line: 1013, baseType: !1985, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !1939}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1940, file: !31, line: 1088, baseType: !1989, size: 64, offset: 1344)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1991)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !1992)
!1992 = !{!1993, !1997, !2001, !2002, !2006, !2010, !2014, !2018}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1991, file: !31, line: 1017, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!1925, !1925}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1991, file: !31, line: 1018, baseType: !1998, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !1925}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1991, file: !31, line: 1019, baseType: !1985, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1991, file: !31, line: 1020, baseType: !2003, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!384, !1939, !384}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1991, file: !31, line: 1021, baseType: !2007, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!843, !1939}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1991, file: !31, line: 1022, baseType: !2011, size: 64, offset: 320)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!384, !1939, !384, !539}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1991, file: !31, line: 1023, baseType: !2015, size: 64, offset: 384)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !1939, !1208}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1991, file: !31, line: 1024, baseType: !2007, size: 64, offset: 448)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1940, file: !31, line: 1097, baseType: !2020, size: 256, offset: 1408)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !31, line: 1089, size: 256, elements: !2021)
!2021 = !{!2022, !2031, !2037}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2020, file: !31, line: 1090, baseType: !2023, size: 256)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2024, line: 10, size: 256, elements: !2025)
!2024 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2025 = !{!2026, !2027, !2030}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2023, file: !2024, line: 11, baseType: !445, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2023, file: !2024, line: 12, baseType: !2028, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2024, line: 5, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2023, file: !2024, line: 13, baseType: !536, size: 128, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2020, file: !31, line: 1091, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2024, line: 17, size: 64, elements: !2033)
!2033 = !{!2034}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2032, file: !2024, line: 18, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2024, line: 16, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2020, file: !31, line: 1096, baseType: !2038, size: 192)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2020, file: !31, line: 1092, size: 192, elements: !2039)
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2038, file: !31, line: 1093, baseType: !536, size: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2038, file: !31, line: 1094, baseType: !384, size: 32, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2038, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1855, file: !31, line: 1843, baseType: !2044, size: 64, offset: 1280)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!929, !715, !1135, !384, !932, !1110, !384}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1855, file: !31, line: 1844, baseType: !2048, size: 64, offset: 1344)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!337, !715, !337, !337, !337, !337}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1855, file: !31, line: 1845, baseType: !2052, size: 64, offset: 1408)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!384, !384}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1855, file: !31, line: 1846, baseType: !1936, size: 64, offset: 1472)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1855, file: !31, line: 1847, baseType: !2057, size: 64, offset: 1536)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!929, !2060, !715, !1110, !932, !7}
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !494, line: 53, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1855, file: !31, line: 1848, baseType: !2063, size: 64, offset: 1600)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!929, !715, !1110, !2060, !932, !7}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1855, file: !31, line: 1849, baseType: !2067, size: 64, offset: 1664)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!384, !715, !344, !2070, !1208}
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1855, file: !31, line: 1850, baseType: !2072, size: 64, offset: 1728)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!344, !715, !384, !884, !884}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1855, file: !31, line: 1852, baseType: !2076, size: 64, offset: 1792)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !1070, !715}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1855, file: !31, line: 1856, baseType: !2080, size: 64, offset: 1856)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!929, !715, !884, !715, !884, !932, !7}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1855, file: !31, line: 1858, baseType: !2084, size: 64, offset: 1920)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!884, !715, !884, !715, !884, !884, !7}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1855, file: !31, line: 1861, baseType: !1928, size: 64, offset: 1984)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1850, file: !31, line: 692, baseType: !1023, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !780, file: !31, line: 694, baseType: !2090, size: 64, offset: 2560)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2092)
!2092 = !{!2093, !2094, !2095, !2096}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2091, file: !31, line: 1101, baseType: !1093)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2091, file: !31, line: 1102, baseType: !536, size: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2091, file: !31, line: 1103, baseType: !536, size: 128, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2091, file: !31, line: 1104, baseType: !536, size: 128, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !780, file: !31, line: 695, baseType: !1148, size: 1216, align: 64, offset: 2624)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !780, file: !31, line: 696, baseType: !536, size: 128, offset: 3840)
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !31, line: 697, baseType: !2100, size: 64, offset: 3968)
!2100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !31, line: 697, size: 64, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2403, !2404}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2100, file: !31, line: 698, baseType: !2060, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2100, file: !31, line: 699, baseType: !1580, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2100, file: !31, line: 700, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2107, line: 14, size: 832, elements: !2108)
!2107 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2108 = !{!2109, !2398, !2399, !2400, !2401, !2402}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2106, file: !2107, line: 15, baseType: !2110, size: 512)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2111, line: 64, size: 512, elements: !2112)
!2111 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2112 = !{!2113, !2114, !2115, !2117, !2159, !2261, !2388, !2393, !2394, !2395, !2396, !2397}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2110, file: !2111, line: 65, baseType: !814, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2110, file: !2111, line: 66, baseType: !536, size: 128, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2110, file: !2111, line: 67, baseType: !2116, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2110, file: !2111, line: 68, baseType: !2118, size: 64, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2111, line: 192, size: 704, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2124}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2119, file: !2111, line: 193, baseType: !536, size: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2119, file: !2111, line: 194, baseType: !1093, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2119, file: !2111, line: 195, baseType: !2110, size: 512, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2119, file: !2111, line: 196, baseType: !2125, size: 64, offset: 640)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2127)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2111, line: 156, size: 192, elements: !2128)
!2128 = !{!2129, !2134, !2139}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2127, file: !2111, line: 157, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2131)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!384, !2118, !2116}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2127, file: !2111, line: 158, baseType: !2135, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2136)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!814, !2118, !2116}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2127, file: !2111, line: 159, baseType: !2140, size: 64, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2141)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!384, !2118, !2116, !2144}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2111, line: 148, size: 20736, elements: !2146)
!2146 = !{!2147, !2149, !2153, !2154, !2158}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2145, file: !2111, line: 149, baseType: !2148, size: 192)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 192, elements: !1008)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2145, file: !2111, line: 150, baseType: !2150, size: 4096, offset: 192)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 4096, elements: !2151)
!2151 = !{!2152}
!2152 = !DISubrange(count: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2145, file: !2111, line: 151, baseType: !384, size: 32, offset: 4288)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2145, file: !2111, line: 152, baseType: !2155, size: 16384, offset: 4320)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 16384, elements: !2156)
!2156 = !{!2157}
!2157 = !DISubrange(count: 2048)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2145, file: !2111, line: 153, baseType: !384, size: 32, offset: 20704)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2110, file: !2111, line: 69, baseType: !2160, size: 64, offset: 320)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2111, line: 138, size: 448, elements: !2162)
!2162 = !{!2163, !2167, !2186, !2188, !2221, !2251, !2255}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2161, file: !2111, line: 139, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2116}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2161, file: !2111, line: 140, baseType: !2168, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2170)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2171, line: 230, size: 128, elements: !2172)
!2171 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2172 = !{!2173, !2182}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2170, file: !2171, line: 231, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!929, !2116, !2177, !838}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2171, line: 30, size: 128, elements: !2179)
!2179 = !{!2180, !2181}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2178, file: !2171, line: 31, baseType: !814, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2178, file: !2171, line: 32, baseType: !783, size: 16, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2170, file: !2171, line: 232, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!929, !2116, !2177, !814, !932}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2161, file: !2111, line: 141, baseType: !2187, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2161, file: !2111, line: 142, baseType: !2189, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2171, line: 84, size: 320, elements: !2193)
!2193 = !{!2194, !2195, !2199, !2218, !2219}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2192, file: !2171, line: 85, baseType: !814, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2192, file: !2171, line: 86, baseType: !2196, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!783, !2116, !2177, !384}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2192, file: !2171, line: 88, baseType: !2200, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!783, !2116, !2203, !384}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2171, line: 168, size: 448, elements: !2205)
!2205 = !{!2206, !2207, !2208, !2209, !2213, !2214}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2204, file: !2171, line: 169, baseType: !2178, size: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2204, file: !2171, line: 170, baseType: !932, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2204, file: !2171, line: 171, baseType: !338, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2204, file: !2171, line: 172, baseType: !2210, size: 64, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!929, !715, !2116, !2203, !838, !884, !932}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2204, file: !2171, line: 174, baseType: !2210, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2204, file: !2171, line: 176, baseType: !2215, size: 64, offset: 384)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!384, !715, !2116, !2203, !681}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2192, file: !2171, line: 90, baseType: !2187, size: 64, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2192, file: !2171, line: 91, baseType: !2220, size: 64, offset: 256)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2161, file: !2111, line: 143, baseType: !2222, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!2225, !2116}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2227)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !25, line: 39, size: 384, elements: !2228)
!2228 = !{!2229, !2230, !2234, !2238, !2246, !2250}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2227, file: !25, line: 40, baseType: !24, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2227, file: !25, line: 41, baseType: !2231, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!843}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2227, file: !25, line: 42, baseType: !2235, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!338}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2227, file: !25, line: 43, baseType: !2239, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!2242, !2244}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !25, line: 19, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2227, file: !25, line: 44, baseType: !2247, size: 64, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!2242}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2227, file: !25, line: 45, baseType: !820, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2161, file: !2111, line: 144, baseType: !2252, size: 64, offset: 320)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!2242, !2116}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2161, file: !2111, line: 145, baseType: !2256, size: 64, offset: 384)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !2116, !2259, !2260}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2110, file: !2111, line: 70, baseType: !2262, size: 64, offset: 384)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !976, line: 123, size: 1024, elements: !2264)
!2264 = !{!2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2381, !2382, !2383, !2384, !2385}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2263, file: !976, line: 124, baseType: !511, size: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2263, file: !976, line: 125, baseType: !511, size: 32, offset: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2263, file: !976, line: 135, baseType: !2262, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2263, file: !976, line: 136, baseType: !814, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2263, file: !976, line: 138, baseType: !485, size: 192, align: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2263, file: !976, line: 140, baseType: !2242, size: 64, offset: 384)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2263, file: !976, line: 141, baseType: !7, size: 32, offset: 448)
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2263, file: !976, line: 142, baseType: !2273, size: 256, offset: 512)
!2273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2263, file: !976, line: 142, size: 256, elements: !2274)
!2274 = !{!2275, !2321, !2325}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2273, file: !976, line: 143, baseType: !2276, size: 192)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !976, line: 91, size: 192, elements: !2277)
!2277 = !{!2278, !2279, !2280}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2276, file: !976, line: 92, baseType: !337, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2276, file: !976, line: 94, baseType: !481, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2276, file: !976, line: 100, baseType: !2281, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !976, line: 180, size: 704, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2293, !2294, !2295, !2319, !2320}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2282, file: !976, line: 182, baseType: !2262, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2282, file: !976, line: 183, baseType: !7, size: 32, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2282, file: !976, line: 186, baseType: !2287, size: 192, offset: 128)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2288, line: 19, size: 192, elements: !2289)
!2288 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2289 = !{!2290, !2291, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2287, file: !2288, line: 20, baseType: !1152, size: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2287, file: !2288, line: 21, baseType: !7, size: 32, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2287, file: !2288, line: 22, baseType: !7, size: 32, offset: 160)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2282, file: !976, line: 187, baseType: !445, size: 32, offset: 320)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2282, file: !976, line: 188, baseType: !445, size: 32, offset: 352)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2282, file: !976, line: 189, baseType: !2296, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !976, line: 168, size: 320, elements: !2298)
!2298 = !{!2299, !2303, !2307, !2311, !2315}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2297, file: !976, line: 169, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!384, !1070, !2281}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2297, file: !976, line: 171, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!384, !2262, !814, !783}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2297, file: !976, line: 173, baseType: !2308, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!384, !2262}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2297, file: !976, line: 174, baseType: !2312, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!384, !2262, !2262, !814}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2297, file: !976, line: 176, baseType: !2316, size: 64, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!384, !1070, !2262, !2281}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2282, file: !976, line: 192, baseType: !536, size: 128, offset: 448)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2282, file: !976, line: 194, baseType: !1636, size: 128, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2273, file: !976, line: 144, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !976, line: 103, size: 64, elements: !2323)
!2323 = !{!2324}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2322, file: !976, line: 104, baseType: !2262, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2273, file: !976, line: 145, baseType: !2326, size: 256)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !976, line: 107, size: 256, elements: !2327)
!2327 = !{!2328, !2376, !2379, !2380}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2326, file: !976, line: 108, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2331)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !976, line: 217, size: 768, elements: !2332)
!2332 = !{!2333, !2353, !2357, !2358, !2359, !2360, !2361, !2365, !2366, !2367, !2368, !2372}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2331, file: !976, line: 222, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!384, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !976, line: 197, size: 1088, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2338, file: !976, line: 199, baseType: !2262, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2338, file: !976, line: 200, baseType: !715, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2338, file: !976, line: 201, baseType: !1070, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2338, file: !976, line: 202, baseType: !338, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2338, file: !976, line: 205, baseType: !1082, size: 192, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2338, file: !976, line: 206, baseType: !1082, size: 192, offset: 448)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2338, file: !976, line: 207, baseType: !384, size: 32, offset: 640)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2338, file: !976, line: 208, baseType: !536, size: 128, offset: 704)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2338, file: !976, line: 209, baseType: !838, size: 64, offset: 832)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2338, file: !976, line: 211, baseType: !932, size: 64, offset: 896)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2338, file: !976, line: 212, baseType: !843, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2338, file: !976, line: 213, baseType: !843, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2338, file: !976, line: 214, baseType: !710, size: 64, offset: 1024)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2331, file: !976, line: 223, baseType: !2354, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !2337}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2331, file: !976, line: 236, baseType: !1120, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2331, file: !976, line: 238, baseType: !1107, size: 64, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2331, file: !976, line: 239, baseType: !1116, size: 64, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2331, file: !976, line: 240, baseType: !1112, size: 64, offset: 320)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2331, file: !976, line: 242, baseType: !2362, size: 64, offset: 384)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!929, !2337, !838, !932, !884}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2331, file: !976, line: 252, baseType: !932, size: 64, offset: 448)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2331, file: !976, line: 259, baseType: !843, size: 8, offset: 512)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2331, file: !976, line: 260, baseType: !2362, size: 64, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2331, file: !976, line: 263, baseType: !2369, size: 64, offset: 640)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!1894, !2337, !1896}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2331, file: !976, line: 266, baseType: !2373, size: 64, offset: 704)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!384, !2337, !681}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2326, file: !976, line: 109, baseType: !2377, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !976, line: 31, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2326, file: !976, line: 110, baseType: !884, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2326, file: !976, line: 111, baseType: !2262, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2263, file: !976, line: 148, baseType: !338, size: 64, offset: 768)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2263, file: !976, line: 154, baseType: !543, size: 64, offset: 832)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2263, file: !976, line: 156, baseType: !389, size: 16, offset: 896)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2263, file: !976, line: 157, baseType: !783, size: 16, offset: 912)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2263, file: !976, line: 158, baseType: !2386, size: 64, offset: 960)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !976, line: 32, flags: DIFlagFwdDecl)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2110, file: !2111, line: 71, baseType: !2389, size: 32, offset: 448)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2390, line: 19, size: 32, elements: !2391)
!2390 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2391 = !{!2392}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2389, file: !2390, line: 20, baseType: !506, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2110, file: !2111, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2110, file: !2111, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2110, file: !2111, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2110, file: !2111, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2110, file: !2111, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2106, file: !2107, line: 16, baseType: !339, size: 64, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2106, file: !2107, line: 17, baseType: !1853, size: 64, offset: 576)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2106, file: !2107, line: 18, baseType: !536, size: 128, offset: 640)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2106, file: !2107, line: 19, baseType: !866, size: 32, offset: 768)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2106, file: !2107, line: 20, baseType: !7, size: 32, offset: 800)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2100, file: !31, line: 701, baseType: !838, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2100, file: !31, line: 702, baseType: !7, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !780, file: !31, line: 705, baseType: !446, size: 32, offset: 4032)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !780, file: !31, line: 708, baseType: !446, size: 32, offset: 4064)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !780, file: !31, line: 709, baseType: !1670, size: 64, offset: 4096)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !780, file: !31, line: 720, baseType: !338, size: 64, offset: 4160)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !746, file: !743, line: 98, baseType: !2410, size: 256, offset: 448)
!2410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 256, elements: !1674)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !746, file: !743, line: 101, baseType: !2412, size: 32, offset: 704)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2413, line: 25, size: 32, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2414 = !{!2415}
!2415 = !DIDerivedType(tag: DW_TAG_member, scope: !2412, file: !2413, line: 26, baseType: !2416, size: 32)
!2416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2412, file: !2413, line: 26, size: 32, elements: !2417)
!2417 = !{!2418}
!2418 = !DIDerivedType(tag: DW_TAG_member, scope: !2416, file: !2413, line: 30, baseType: !2419, size: 32)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2416, file: !2413, line: 30, size: 32, elements: !2420)
!2420 = !{!2421, !2422}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2419, file: !2413, line: 31, baseType: !1093)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2419, file: !2413, line: 32, baseType: !384, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !746, file: !743, line: 102, baseType: !1691, size: 64, offset: 768)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !746, file: !743, line: 103, baseType: !956, size: 64, offset: 832)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !746, file: !743, line: 104, baseType: !337, size: 64, offset: 896)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !746, file: !743, line: 105, baseType: !338, size: 64, offset: 960)
!2427 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !743, line: 107, baseType: !2428, size: 128, offset: 1024)
!2428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !743, line: 107, size: 128, elements: !2429)
!2429 = !{!2430, !2431}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2428, file: !743, line: 108, baseType: !536, size: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2428, file: !743, line: 109, baseType: !1905, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !746, file: !743, line: 111, baseType: !536, size: 128, offset: 1152)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !746, file: !743, line: 112, baseType: !536, size: 128, offset: 1280)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !746, file: !743, line: 120, baseType: !2435, size: 128, offset: 1408)
!2435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !743, line: 116, size: 128, elements: !2436)
!2436 = !{!2437, !2438, !2439}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2435, file: !743, line: 117, baseType: !996, size: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2435, file: !743, line: 118, baseType: !755, size: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2435, file: !743, line: 119, baseType: !728, size: 128, align: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !716, file: !31, line: 922, baseType: !779, size: 64, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !716, file: !31, line: 923, baseType: !1853, size: 64, offset: 320)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !716, file: !31, line: 929, baseType: !1093, offset: 384)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !716, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !716, file: !31, line: 931, baseType: !1086, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !716, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !716, file: !31, line: 933, baseType: !1687, size: 32, offset: 544)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !716, file: !31, line: 934, baseType: !1082, size: 192, offset: 576)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !716, file: !31, line: 935, baseType: !884, size: 64, offset: 768)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !716, file: !31, line: 936, baseType: !2450, size: 192, offset: 832)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2451)
!2451 = !{!2452, !2453, !2475, !2476, !2477, !2478}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2450, file: !31, line: 886, baseType: !1961)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2450, file: !31, line: 887, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2464, !2465, !2466, !2467}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2455, file: !40, line: 61, baseType: !506, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2455, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2455, file: !40, line: 63, baseType: !1093, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2455, file: !40, line: 65, baseType: !2461, size: 256, offset: 64)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 256, elements: !2462)
!2462 = !{!2463}
!2463 = !DISubrange(count: 4)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2455, file: !40, line: 66, baseType: !992, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2455, file: !40, line: 68, baseType: !1636, size: 128, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2455, file: !40, line: 69, baseType: !728, size: 128, align: 64, offset: 512)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2455, file: !40, line: 70, baseType: !2468, size: 128, offset: 640)
!2468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2469, size: 128, elements: !666)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !2470)
!2470 = !{!2471, !2472}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2469, file: !40, line: 55, baseType: !384, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2469, file: !40, line: 56, baseType: !2473, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2450, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2450, file: !31, line: 889, baseType: !786, size: 32, offset: 96)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2450, file: !31, line: 889, baseType: !786, size: 32, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2450, file: !31, line: 890, baseType: !384, size: 32, offset: 160)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !716, file: !31, line: 937, baseType: !2480, size: 64, offset: 1024)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2482)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2483, line: 111, size: 1280, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2484 = !{!2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2504, !2505, !2506, !2507, !2508, !2509, !2619, !2620, !2621, !2622, !2648, !2649, !2659}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2482, file: !2483, line: 112, baseType: !511, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2482, file: !2483, line: 120, baseType: !786, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2482, file: !2483, line: 121, baseType: !794, size: 32, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2482, file: !2483, line: 122, baseType: !786, size: 32, offset: 96)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2482, file: !2483, line: 123, baseType: !794, size: 32, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2482, file: !2483, line: 124, baseType: !786, size: 32, offset: 160)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2482, file: !2483, line: 125, baseType: !794, size: 32, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2482, file: !2483, line: 126, baseType: !786, size: 32, offset: 224)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2482, file: !2483, line: 127, baseType: !794, size: 32, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2482, file: !2483, line: 128, baseType: !7, size: 32, offset: 288)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2482, file: !2483, line: 129, baseType: !2496, size: 64, offset: 320)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2497, line: 26, baseType: !2498)
!2497 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2497, line: 24, size: 64, elements: !2499)
!2499 = !{!2500}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2498, file: !2497, line: 25, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 64, elements: !2502)
!2502 = !{!2503}
!2503 = !DISubrange(count: 2)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2482, file: !2483, line: 130, baseType: !2496, size: 64, offset: 384)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2482, file: !2483, line: 131, baseType: !2496, size: 64, offset: 448)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2482, file: !2483, line: 132, baseType: !2496, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2482, file: !2483, line: 133, baseType: !2496, size: 64, offset: 576)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2482, file: !2483, line: 135, baseType: !422, size: 8, offset: 640)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2482, file: !2483, line: 137, baseType: !2510, size: 64, offset: 704)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2512, line: 189, size: 1664, elements: !2513)
!2512 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2513 = !{!2514, !2515, !2520, !2525, !2526, !2529, !2530, !2535, !2536, !2537, !2538, !2540, !2541, !2542, !2544, !2545, !2583, !2604}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2511, file: !2512, line: 190, baseType: !506, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2511, file: !2512, line: 191, baseType: !2516, size: 32, offset: 32)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2512, line: 28, baseType: !2517)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !343, line: 98, baseType: !2518)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !429, line: 20, baseType: !2519)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !416, line: 26, baseType: !384)
!2520 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !2512, line: 192, baseType: !2521, size: 192, offset: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2511, file: !2512, line: 192, size: 192, elements: !2522)
!2522 = !{!2523, !2524}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2521, file: !2512, line: 193, baseType: !536, size: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2521, file: !2512, line: 194, baseType: !485, size: 192, align: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2511, file: !2512, line: 199, baseType: !1162, size: 256, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2511, file: !2512, line: 200, baseType: !2527, size: 64, offset: 512)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2512, line: 200, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2511, file: !2512, line: 201, baseType: !338, size: 64, offset: 576)
!2530 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !2512, line: 202, baseType: !2531, size: 64, offset: 640)
!2531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2511, file: !2512, line: 202, size: 64, elements: !2532)
!2532 = !{!2533, !2534}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2531, file: !2512, line: 203, baseType: !891, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2531, file: !2512, line: 204, baseType: !891, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2511, file: !2512, line: 206, baseType: !891, size: 64, offset: 704)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2511, file: !2512, line: 207, baseType: !786, size: 32, offset: 768)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2511, file: !2512, line: 208, baseType: !794, size: 32, offset: 800)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2511, file: !2512, line: 209, baseType: !2539, size: 32, offset: 832)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2512, line: 31, baseType: !910)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2511, file: !2512, line: 210, baseType: !389, size: 16, offset: 864)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2511, file: !2512, line: 211, baseType: !389, size: 16, offset: 880)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2511, file: !2512, line: 215, baseType: !2543, size: 16, offset: 896)
!2543 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2511, file: !2512, line: 222, baseType: !337, size: 64, offset: 960)
!2545 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !2512, line: 239, baseType: !2546, size: 320, offset: 1024)
!2546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2511, file: !2512, line: 239, size: 320, elements: !2547)
!2547 = !{!2548, !2575}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2546, file: !2512, line: 240, baseType: !2549, size: 320)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2512, line: 108, size: 320, elements: !2550)
!2550 = !{!2551, !2552, !2564, !2567, !2574}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2549, file: !2512, line: 110, baseType: !337, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, scope: !2549, file: !2512, line: 111, baseType: !2553, size: 64, offset: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2549, file: !2512, line: 111, size: 64, elements: !2554)
!2554 = !{!2555, !2563}
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !2553, file: !2512, line: 112, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2553, file: !2512, line: 112, size: 64, elements: !2557)
!2557 = !{!2558, !2559}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2556, file: !2512, line: 114, baseType: !428, size: 16)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2556, file: !2512, line: 115, baseType: !2560, size: 48, offset: 16)
!2560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 48, elements: !2561)
!2561 = !{!2562}
!2562 = !DISubrange(count: 6)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2553, file: !2512, line: 121, baseType: !337, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2549, file: !2512, line: 123, baseType: !2565, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2512, line: 96, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2549, file: !2512, line: 124, baseType: !2568, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2512, line: 102, size: 192, elements: !2570)
!2570 = !{!2571, !2572, !2573}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2569, file: !2512, line: 103, baseType: !728, size: 128, align: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2569, file: !2512, line: 104, baseType: !506, size: 32, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2569, file: !2512, line: 105, baseType: !843, size: 8, offset: 160)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2549, file: !2512, line: 125, baseType: !814, size: 64, offset: 256)
!2575 = !DIDerivedType(tag: DW_TAG_member, scope: !2546, file: !2512, line: 241, baseType: !2576, size: 320)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2512, line: 241, size: 320, elements: !2577)
!2577 = !{!2578, !2579, !2580, !2581, !2582}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2576, file: !2512, line: 242, baseType: !337, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2576, file: !2512, line: 243, baseType: !337, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2576, file: !2512, line: 244, baseType: !2565, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2576, file: !2512, line: 245, baseType: !2568, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2576, file: !2512, line: 246, baseType: !838, size: 64, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !2512, line: 254, baseType: !2584, size: 256, offset: 1344)
!2584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2511, file: !2512, line: 254, size: 256, elements: !2585)
!2585 = !{!2586, !2592}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2584, file: !2512, line: 255, baseType: !2587, size: 256)
!2587 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2512, line: 128, size: 256, elements: !2588)
!2588 = !{!2589, !2590}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2587, file: !2512, line: 129, baseType: !338, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2587, file: !2512, line: 130, baseType: !2591, size: 256)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !2462)
!2592 = !DIDerivedType(tag: DW_TAG_member, scope: !2584, file: !2512, line: 256, baseType: !2593, size: 256)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2584, file: !2512, line: 256, size: 256, elements: !2594)
!2594 = !{!2595, !2596}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2593, file: !2512, line: 258, baseType: !536, size: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2593, file: !2512, line: 259, baseType: !2597, size: 128, offset: 128)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2598, line: 22, size: 128, elements: !2599)
!2598 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2599 = !{!2600, !2603}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2597, file: !2598, line: 23, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2598, line: 23, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2597, file: !2598, line: 24, baseType: !337, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2511, file: !2512, line: 274, baseType: !2605, size: 64, offset: 1600)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2512, line: 170, size: 192, elements: !2607)
!2607 = !{!2608, !2617, !2618}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2606, file: !2512, line: 171, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2512, line: 165, baseType: !2610)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!384, !2510, !2613, !2615, !2510}
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2566)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2587)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2606, file: !2512, line: 172, baseType: !2510, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2606, file: !2512, line: 173, baseType: !2565, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2482, file: !2483, line: 138, baseType: !2510, size: 64, offset: 768)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2482, file: !2483, line: 139, baseType: !2510, size: 64, offset: 832)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2482, file: !2483, line: 140, baseType: !2510, size: 64, offset: 896)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2482, file: !2483, line: 145, baseType: !2623, size: 64, offset: 960)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2625, line: 13, size: 896, elements: !2626)
!2625 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2624, file: !2625, line: 14, baseType: !506, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2624, file: !2625, line: 15, baseType: !511, size: 32, offset: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2624, file: !2625, line: 16, baseType: !511, size: 32, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2624, file: !2625, line: 21, baseType: !1086, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2624, file: !2625, line: 27, baseType: !337, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2624, file: !2625, line: 28, baseType: !337, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2624, file: !2625, line: 29, baseType: !1086, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2624, file: !2625, line: 32, baseType: !996, size: 128, offset: 384)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2624, file: !2625, line: 33, baseType: !786, size: 32, offset: 512)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2624, file: !2625, line: 37, baseType: !1086, size: 64, offset: 576)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2624, file: !2625, line: 44, baseType: !2638, size: 256, offset: 640)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2639, line: 15, size: 256, elements: !2640)
!2639 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2638, file: !2639, line: 16, baseType: !467)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2638, file: !2639, line: 18, baseType: !384, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2638, file: !2639, line: 19, baseType: !384, size: 32, offset: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2638, file: !2639, line: 20, baseType: !384, size: 32, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2638, file: !2639, line: 21, baseType: !384, size: 32, offset: 96)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2638, file: !2639, line: 22, baseType: !337, size: 64, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2638, file: !2639, line: 23, baseType: !337, size: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2482, file: !2483, line: 146, baseType: !1775, size: 64, offset: 1024)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2482, file: !2483, line: 147, baseType: !2650, size: 64, offset: 1088)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2483, line: 25, size: 64, elements: !2652)
!2652 = !{!2653, !2654, !2655}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2651, file: !2483, line: 26, baseType: !511, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2651, file: !2483, line: 27, baseType: !384, size: 32, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2651, file: !2483, line: 28, baseType: !2656, offset: 64)
!2656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, elements: !2657)
!2657 = !{!2658}
!2658 = !DISubrange(count: 0)
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !2482, file: !2483, line: 149, baseType: !2660, size: 128, offset: 1152)
!2660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2482, file: !2483, line: 149, size: 128, elements: !2661)
!2661 = !{!2662, !2663}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2660, file: !2483, line: 150, baseType: !384, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2660, file: !2483, line: 151, baseType: !728, size: 128, align: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !716, file: !31, line: 938, baseType: !2665, size: 256, offset: 1088)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2666)
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2672}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2665, file: !31, line: 897, baseType: !337, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2665, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2665, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2665, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2665, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2665, file: !31, line: 904, baseType: !884, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !716, file: !31, line: 940, baseType: !543, size: 64, offset: 1344)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !716, file: !31, line: 945, baseType: !338, size: 64, offset: 1408)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !716, file: !31, line: 949, baseType: !536, size: 128, offset: 1472)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !716, file: !31, line: 950, baseType: !536, size: 128, offset: 1600)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !716, file: !31, line: 952, baseType: !1147, size: 64, offset: 1728)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !716, file: !31, line: 953, baseType: !1294, size: 32, offset: 1792)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !716, file: !31, line: 954, baseType: !1294, size: 32, offset: 1824)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !682, file: !675, line: 362, baseType: !338, size: 64, offset: 1344)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !682, file: !675, line: 365, baseType: !1086, size: 64, offset: 1408)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !682, file: !675, line: 373, baseType: !2683, offset: 1472)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !675, line: 296, elements: !475)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !678, file: !675, line: 391, baseType: !481, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !678, file: !675, line: 392, baseType: !543, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !678, file: !675, line: 394, baseType: !2048, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !678, file: !675, line: 398, baseType: !337, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !678, file: !675, line: 399, baseType: !337, size: 64, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !678, file: !675, line: 405, baseType: !337, size: 64, offset: 384)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !678, file: !675, line: 406, baseType: !337, size: 64, offset: 448)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !678, file: !675, line: 407, baseType: !2692, size: 64, offset: 512)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !693, line: 286, baseType: !2694)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !693, line: 286, size: 64, elements: !2695)
!2695 = !{!2696}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2694, file: !693, line: 286, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !698, line: 18, baseType: !337)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !678, file: !675, line: 416, baseType: !511, size: 32, offset: 576)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !678, file: !675, line: 428, baseType: !511, size: 32, offset: 608)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !678, file: !675, line: 437, baseType: !511, size: 32, offset: 640)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !678, file: !675, line: 447, baseType: !511, size: 32, offset: 672)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !678, file: !675, line: 450, baseType: !1086, size: 64, offset: 704)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !678, file: !675, line: 452, baseType: !384, size: 32, offset: 768)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !678, file: !675, line: 454, baseType: !1093, offset: 800)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !678, file: !675, line: 457, baseType: !1162, size: 256, offset: 832)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !678, file: !675, line: 459, baseType: !536, size: 128, offset: 1088)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !678, file: !675, line: 466, baseType: !337, size: 64, offset: 1216)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !678, file: !675, line: 467, baseType: !337, size: 64, offset: 1280)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !678, file: !675, line: 469, baseType: !337, size: 64, offset: 1344)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !678, file: !675, line: 470, baseType: !337, size: 64, offset: 1408)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !678, file: !675, line: 471, baseType: !1088, size: 64, offset: 1472)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !678, file: !675, line: 472, baseType: !337, size: 64, offset: 1536)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !678, file: !675, line: 473, baseType: !337, size: 64, offset: 1600)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !678, file: !675, line: 474, baseType: !337, size: 64, offset: 1664)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !678, file: !675, line: 475, baseType: !337, size: 64, offset: 1728)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !678, file: !675, line: 477, baseType: !1093, offset: 1792)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !678, file: !675, line: 478, baseType: !337, size: 64, offset: 1792)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !678, file: !675, line: 478, baseType: !337, size: 64, offset: 1856)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !678, file: !675, line: 478, baseType: !337, size: 64, offset: 1920)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !678, file: !675, line: 478, baseType: !337, size: 64, offset: 1984)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !678, file: !675, line: 479, baseType: !337, size: 64, offset: 2048)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !678, file: !675, line: 479, baseType: !337, size: 64, offset: 2112)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !678, file: !675, line: 479, baseType: !337, size: 64, offset: 2176)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !678, file: !675, line: 480, baseType: !337, size: 64, offset: 2240)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !678, file: !675, line: 480, baseType: !337, size: 64, offset: 2304)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !678, file: !675, line: 480, baseType: !337, size: 64, offset: 2368)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !678, file: !675, line: 480, baseType: !337, size: 64, offset: 2432)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !678, file: !675, line: 482, baseType: !2729, size: 2816, offset: 2496)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 2816, elements: !2730)
!2730 = !{!2731}
!2731 = !DISubrange(count: 44)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !678, file: !675, line: 488, baseType: !2733, size: 256, offset: 5312)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2734, line: 60, size: 256, elements: !2735)
!2734 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2735 = !{!2736}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2733, file: !2734, line: 61, baseType: !2737, size: 256)
!2737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1086, size: 256, elements: !2462)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !678, file: !675, line: 490, baseType: !2739, size: 64, offset: 5568)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !675, line: 490, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !678, file: !675, line: 493, baseType: !2742, size: 896, offset: 5632)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2743, line: 53, baseType: !2744)
!2743 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2743, line: 13, size: 896, elements: !2745)
!2745 = !{!2746, !2747, !2748, !2749, !2752, !2753, !2754, !2755, !2775, !2776, !2777}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2744, file: !2743, line: 18, baseType: !543, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2744, file: !2743, line: 28, baseType: !1088, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2744, file: !2743, line: 31, baseType: !1162, size: 256, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2744, file: !2743, line: 32, baseType: !2750, size: 64, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2743, line: 32, flags: DIFlagFwdDecl)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2744, file: !2743, line: 37, baseType: !389, size: 16, offset: 448)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2744, file: !2743, line: 40, baseType: !1082, size: 192, offset: 512)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2744, file: !2743, line: 41, baseType: !338, size: 64, offset: 704)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2744, file: !2743, line: 42, baseType: !2756, size: 64, offset: 768)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2758)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2759, line: 13, size: 896, elements: !2760)
!2759 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2758, file: !2759, line: 14, baseType: !338, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2758, file: !2759, line: 15, baseType: !337, size: 64, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2758, file: !2759, line: 17, baseType: !337, size: 64, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2758, file: !2759, line: 17, baseType: !337, size: 64, offset: 192)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2758, file: !2759, line: 19, baseType: !344, size: 64, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2758, file: !2759, line: 21, baseType: !344, size: 64, offset: 320)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2758, file: !2759, line: 22, baseType: !344, size: 64, offset: 384)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2758, file: !2759, line: 23, baseType: !344, size: 64, offset: 448)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2758, file: !2759, line: 24, baseType: !344, size: 64, offset: 512)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2758, file: !2759, line: 25, baseType: !344, size: 64, offset: 576)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2758, file: !2759, line: 26, baseType: !344, size: 64, offset: 640)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2758, file: !2759, line: 27, baseType: !344, size: 64, offset: 704)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2758, file: !2759, line: 28, baseType: !344, size: 64, offset: 768)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2758, file: !2759, line: 29, baseType: !344, size: 64, offset: 832)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2744, file: !2743, line: 44, baseType: !511, size: 32, offset: 832)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2744, file: !2743, line: 50, baseType: !428, size: 16, offset: 864)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2744, file: !2743, line: 51, baseType: !2778, size: 16, offset: 880)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !429, line: 18, baseType: !2779)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !416, line: 23, baseType: !2543)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !678, file: !675, line: 495, baseType: !337, size: 64, offset: 6528)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !678, file: !675, line: 497, baseType: !2782, size: 64, offset: 6592)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !675, line: 381, size: 384, elements: !2784)
!2784 = !{!2785, !2786, !2792}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2783, file: !675, line: 382, baseType: !511, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2783, file: !675, line: 383, baseType: !2787, size: 128, offset: 64)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !675, line: 376, size: 128, elements: !2788)
!2788 = !{!2789, !2790}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2787, file: !675, line: 377, baseType: !492, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2787, file: !675, line: 378, baseType: !2791, size: 64, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2783, file: !675, line: 384, baseType: !2793, size: 192, offset: 192)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2794, line: 26, size: 192, elements: !2795)
!2794 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2795 = !{!2796, !2797}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2793, file: !2794, line: 27, baseType: !7, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2793, file: !2794, line: 28, baseType: !2798, size: 128, offset: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2799, line: 43, size: 128, elements: !2800)
!2799 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2800 = !{!2801, !2802}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2798, file: !2799, line: 44, baseType: !467)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2798, file: !2799, line: 45, baseType: !536, size: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !678, file: !675, line: 500, baseType: !1093, offset: 6656)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !678, file: !675, line: 501, baseType: !2805, size: 64, offset: 6656)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !675, line: 387, flags: DIFlagFwdDecl)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !678, file: !675, line: 516, baseType: !1775, size: 64, offset: 6720)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !678, file: !675, line: 519, baseType: !715, size: 64, offset: 6784)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !678, file: !675, line: 521, baseType: !2810, size: 64, offset: 6848)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !675, line: 521, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !678, file: !675, line: 545, baseType: !511, size: 32, offset: 6912)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !678, file: !675, line: 548, baseType: !843, size: 8, offset: 6944)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !678, file: !675, line: 550, baseType: !2815, offset: 6952)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2816, line: 142, elements: !475)
!2816 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !678, file: !675, line: 554, baseType: !1795, size: 256, offset: 6976)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !678, file: !675, line: 557, baseType: !445, size: 32, offset: 7232)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !674, file: !675, line: 565, baseType: !2820, offset: 7296)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, elements: !2821)
!2821 = !{!2822}
!2822 = !DISubrange(count: -1)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !493, file: !494, line: 758, baseType: !673, size: 64, offset: 3968)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !493, file: !494, line: 761, baseType: !2825, size: 320, offset: 4032)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2734, line: 34, size: 320, elements: !2826)
!2826 = !{!2827, !2828}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2825, file: !2734, line: 35, baseType: !543, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2825, file: !2734, line: 36, baseType: !2829, size: 256, offset: 64)
!2829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 256, elements: !2462)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !493, file: !494, line: 766, baseType: !384, size: 32, offset: 4352)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !493, file: !494, line: 767, baseType: !384, size: 32, offset: 4384)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !493, file: !494, line: 768, baseType: !384, size: 32, offset: 4416)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !493, file: !494, line: 770, baseType: !384, size: 32, offset: 4448)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !493, file: !494, line: 772, baseType: !337, size: 64, offset: 4480)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !493, file: !494, line: 775, baseType: !7, size: 32, offset: 4544)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !493, file: !494, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !493, file: !494, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !493, file: !494, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !493, file: !494, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !493, file: !494, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !493, file: !494, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !493, file: !494, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !493, file: !494, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !493, file: !494, line: 831, baseType: !337, size: 64, offset: 4672)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !493, file: !494, line: 833, baseType: !2846, size: 384, offset: 4736)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !48, line: 25, size: 384, elements: !2847)
!2847 = !{!2848, !2853}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2846, file: !48, line: 26, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!344, !2852}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, scope: !2846, file: !48, line: 27, baseType: !2854, size: 320, offset: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2846, file: !48, line: 27, size: 320, elements: !2855)
!2855 = !{!2856, !2866, !2891}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2854, file: !48, line: 36, baseType: !2857, size: 320)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2854, file: !48, line: 29, size: 320, elements: !2858)
!2858 = !{!2859, !2861, !2862, !2863, !2864, !2865}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2857, file: !48, line: 30, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2857, file: !48, line: 31, baseType: !445, size: 32, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2857, file: !48, line: 32, baseType: !445, size: 32, offset: 96)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2857, file: !48, line: 33, baseType: !445, size: 32, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2857, file: !48, line: 34, baseType: !543, size: 64, offset: 192)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2857, file: !48, line: 35, baseType: !2860, size: 64, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2854, file: !48, line: 46, baseType: !2867, size: 192)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2854, file: !48, line: 38, size: 192, elements: !2868)
!2868 = !{!2869, !2870, !2871, !2890}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2867, file: !48, line: 39, baseType: !625, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2867, file: !48, line: 40, baseType: !47, size: 32, offset: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, scope: !2867, file: !48, line: 41, baseType: !2872, size: 64, offset: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2867, file: !48, line: 41, size: 64, elements: !2873)
!2873 = !{!2874, !2882}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2872, file: !48, line: 42, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2877, line: 7, size: 128, elements: !2878)
!2877 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2878 = !{!2879, !2881}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2876, file: !2877, line: 8, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !627, line: 93, baseType: !575)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2876, file: !2877, line: 9, baseType: !575, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2872, file: !48, line: 43, baseType: !2883, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2885, line: 7, size: 64, elements: !2886)
!2885 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2886 = !{!2887, !2889}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2884, file: !2885, line: 8, baseType: !2888, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2885, line: 5, baseType: !2518)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2884, file: !2885, line: 9, baseType: !2518, size: 32, offset: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2867, file: !48, line: 45, baseType: !543, size: 64, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2854, file: !48, line: 54, baseType: !2892, size: 256)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2854, file: !48, line: 48, size: 256, elements: !2893)
!2893 = !{!2894, !2902, !2903, !2904, !2905}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2892, file: !48, line: 49, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2897, line: 36, size: 64, elements: !2898)
!2897 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2898 = !{!2899, !2900, !2901}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2896, file: !2897, line: 37, baseType: !384, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2896, file: !2897, line: 38, baseType: !2543, size: 16, offset: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2896, file: !2897, line: 39, baseType: !2543, size: 16, offset: 48)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2892, file: !48, line: 50, baseType: !384, size: 32, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2892, file: !48, line: 51, baseType: !384, size: 32, offset: 96)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2892, file: !48, line: 52, baseType: !337, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2892, file: !48, line: 53, baseType: !337, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !493, file: !494, line: 835, baseType: !2907, size: 32, offset: 5120)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !343, line: 22, baseType: !2908)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !627, line: 28, baseType: !384)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !493, file: !494, line: 836, baseType: !2907, size: 32, offset: 5152)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !493, file: !494, line: 840, baseType: !337, size: 64, offset: 5184)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !493, file: !494, line: 849, baseType: !492, size: 64, offset: 5248)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !493, file: !494, line: 852, baseType: !492, size: 64, offset: 5312)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !493, file: !494, line: 857, baseType: !536, size: 128, offset: 5376)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !493, file: !494, line: 858, baseType: !536, size: 128, offset: 5504)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !493, file: !494, line: 859, baseType: !492, size: 64, offset: 5632)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !493, file: !494, line: 867, baseType: !536, size: 128, offset: 5696)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !493, file: !494, line: 868, baseType: !536, size: 128, offset: 5824)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !493, file: !494, line: 871, baseType: !2454, size: 64, offset: 5952)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !493, file: !494, line: 872, baseType: !2920, size: 512, offset: 6016)
!2920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, size: 512, elements: !2462)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !493, file: !494, line: 873, baseType: !536, size: 128, offset: 6528)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !493, file: !494, line: 874, baseType: !536, size: 128, offset: 6656)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !493, file: !494, line: 876, baseType: !2924, size: 64, offset: 6784)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !493, file: !494, line: 879, baseType: !1064, size: 64, offset: 6848)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !493, file: !494, line: 882, baseType: !1064, size: 64, offset: 6912)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !493, file: !494, line: 884, baseType: !543, size: 64, offset: 6976)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !493, file: !494, line: 885, baseType: !543, size: 64, offset: 7040)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !493, file: !494, line: 890, baseType: !543, size: 64, offset: 7104)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !493, file: !494, line: 891, baseType: !2931, size: 128, offset: 7168)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !494, line: 242, size: 128, elements: !2932)
!2932 = !{!2933, !2934, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2931, file: !494, line: 244, baseType: !543, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2931, file: !494, line: 245, baseType: !543, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2931, file: !494, line: 246, baseType: !467, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !493, file: !494, line: 900, baseType: !337, size: 64, offset: 7296)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !493, file: !494, line: 901, baseType: !337, size: 64, offset: 7360)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !493, file: !494, line: 904, baseType: !543, size: 64, offset: 7424)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !493, file: !494, line: 907, baseType: !543, size: 64, offset: 7488)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !493, file: !494, line: 910, baseType: !337, size: 64, offset: 7552)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !493, file: !494, line: 911, baseType: !337, size: 64, offset: 7616)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !493, file: !494, line: 914, baseType: !2943, size: 640, offset: 7680)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2944, line: 123, size: 640, elements: !2945)
!2944 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2945 = !{!2946, !2952, !2953}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2943, file: !2944, line: 124, baseType: !2947, size: 576)
!2947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2948, size: 576, elements: !1008)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2944, line: 108, size: 192, elements: !2949)
!2949 = !{!2950, !2951}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2948, file: !2944, line: 109, baseType: !543, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2948, file: !2944, line: 110, baseType: !640, size: 128, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2943, file: !2944, line: 125, baseType: !7, size: 32, offset: 576)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2943, file: !2944, line: 126, baseType: !7, size: 32, offset: 608)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !493, file: !494, line: 917, baseType: !2955, size: 192, offset: 8320)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2944, line: 134, size: 192, elements: !2956)
!2956 = !{!2957, !2958}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2955, file: !2944, line: 135, baseType: !728, size: 128, align: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2955, file: !2944, line: 136, baseType: !7, size: 32, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !493, file: !494, line: 923, baseType: !2480, size: 64, offset: 8512)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !493, file: !494, line: 926, baseType: !2480, size: 64, offset: 8576)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !493, file: !494, line: 929, baseType: !2480, size: 64, offset: 8640)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !493, file: !494, line: 933, baseType: !2510, size: 64, offset: 8704)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !493, file: !494, line: 943, baseType: !2964, size: 128, offset: 8768)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 128, elements: !1683)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !493, file: !494, line: 945, baseType: !2966, size: 64, offset: 8896)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !494, line: 49, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !493, file: !494, line: 956, baseType: !2969, size: 64, offset: 8960)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !494, line: 45, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !493, file: !494, line: 959, baseType: !2972, size: 64, offset: 9024)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !494, line: 959, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !493, file: !494, line: 962, baseType: !2975, size: 64, offset: 9088)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !494, line: 66, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !493, file: !494, line: 966, baseType: !2978, size: 64, offset: 9152)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !494, line: 50, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !493, file: !494, line: 969, baseType: !2981, size: 64, offset: 9216)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2983, line: 82, size: 7296, elements: !2984)
!2983 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2984 = !{!2985, !2986, !2987, !2988, !2989, !2990, !2991, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3020, !3029, !3030, !3032, !3033, !3034, !3037, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3067, !3068, !3075, !3076, !3077, !3078, !3079, !3080}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2982, file: !2983, line: 83, baseType: !506, size: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2982, file: !2983, line: 84, baseType: !511, size: 32, offset: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2982, file: !2983, line: 85, baseType: !384, size: 32, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2982, file: !2983, line: 86, baseType: !536, size: 128, offset: 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2982, file: !2983, line: 88, baseType: !1636, size: 128, offset: 256)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2982, file: !2983, line: 91, baseType: !492, size: 64, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2982, file: !2983, line: 94, baseType: !2992, size: 192, offset: 448)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2993, line: 30, size: 192, elements: !2994)
!2993 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2994 = !{!2995, !2996}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2992, file: !2993, line: 31, baseType: !536, size: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2992, file: !2993, line: 32, baseType: !2997, size: 64, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2998, line: 25, baseType: !2999)
!2998 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2998, line: 23, size: 64, elements: !3000)
!3000 = !{!3001}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2999, file: !2998, line: 24, baseType: !665, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2982, file: !2983, line: 97, baseType: !992, size: 64, offset: 640)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2982, file: !2983, line: 100, baseType: !384, size: 32, offset: 704)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2982, file: !2983, line: 106, baseType: !384, size: 32, offset: 736)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2982, file: !2983, line: 107, baseType: !492, size: 64, offset: 768)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2982, file: !2983, line: 110, baseType: !384, size: 32, offset: 832)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2982, file: !2983, line: 111, baseType: !7, size: 32, offset: 864)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2982, file: !2983, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2982, file: !2983, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2982, file: !2983, line: 128, baseType: !384, size: 32, offset: 928)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2982, file: !2983, line: 129, baseType: !536, size: 128, offset: 960)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2982, file: !2983, line: 132, baseType: !583, size: 512, offset: 1088)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2982, file: !2983, line: 133, baseType: !591, size: 64, offset: 1600)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2982, file: !2983, line: 140, baseType: !3015, size: 256, offset: 1664)
!3015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3016, size: 256, elements: !2502)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2983, line: 38, size: 128, elements: !3017)
!3017 = !{!3018, !3019}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3016, file: !2983, line: 39, baseType: !543, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3016, file: !2983, line: 40, baseType: !543, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2982, file: !2983, line: 146, baseType: !3021, size: 192, offset: 1920)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2983, line: 66, size: 192, elements: !3022)
!3022 = !{!3023}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3021, file: !2983, line: 67, baseType: !3024, size: 192)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2983, line: 47, size: 192, elements: !3025)
!3025 = !{!3026, !3027, !3028}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3024, file: !2983, line: 48, baseType: !1088, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3024, file: !2983, line: 49, baseType: !1088, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3024, file: !2983, line: 50, baseType: !1088, size: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2982, file: !2983, line: 150, baseType: !2943, size: 640, offset: 2112)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2982, file: !2983, line: 153, baseType: !3031, size: 256, offset: 2752)
!3031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2454, size: 256, elements: !2462)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2982, file: !2983, line: 159, baseType: !2454, size: 64, offset: 3008)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2982, file: !2983, line: 162, baseType: !384, size: 32, offset: 3072)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2982, file: !2983, line: 164, baseType: !3035, size: 64, offset: 3136)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2983, line: 164, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2982, file: !2983, line: 175, baseType: !3038, size: 32, offset: 3200)
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !630, line: 805, baseType: !3039)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !630, line: 798, size: 32, elements: !3040)
!3040 = !{!3041, !3042}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3039, file: !630, line: 803, baseType: !750, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3039, file: !630, line: 804, baseType: !1093, offset: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2982, file: !2983, line: 176, baseType: !543, size: 64, offset: 3264)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2982, file: !2983, line: 176, baseType: !543, size: 64, offset: 3328)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2982, file: !2983, line: 176, baseType: !543, size: 64, offset: 3392)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2982, file: !2983, line: 176, baseType: !543, size: 64, offset: 3456)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2982, file: !2983, line: 177, baseType: !543, size: 64, offset: 3520)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2982, file: !2983, line: 178, baseType: !543, size: 64, offset: 3584)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2982, file: !2983, line: 179, baseType: !2931, size: 128, offset: 3648)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2982, file: !2983, line: 180, baseType: !337, size: 64, offset: 3776)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2982, file: !2983, line: 180, baseType: !337, size: 64, offset: 3840)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2982, file: !2983, line: 180, baseType: !337, size: 64, offset: 3904)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2982, file: !2983, line: 180, baseType: !337, size: 64, offset: 3968)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2982, file: !2983, line: 181, baseType: !337, size: 64, offset: 4032)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2982, file: !2983, line: 181, baseType: !337, size: 64, offset: 4096)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2982, file: !2983, line: 181, baseType: !337, size: 64, offset: 4160)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2982, file: !2983, line: 181, baseType: !337, size: 64, offset: 4224)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2982, file: !2983, line: 182, baseType: !337, size: 64, offset: 4288)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2982, file: !2983, line: 182, baseType: !337, size: 64, offset: 4352)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2982, file: !2983, line: 182, baseType: !337, size: 64, offset: 4416)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2982, file: !2983, line: 182, baseType: !337, size: 64, offset: 4480)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2982, file: !2983, line: 183, baseType: !337, size: 64, offset: 4544)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2982, file: !2983, line: 183, baseType: !337, size: 64, offset: 4608)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2982, file: !2983, line: 184, baseType: !3065, offset: 4672)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3066, line: 12, elements: !475)
!3066 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2982, file: !2983, line: 192, baseType: !545, size: 64, offset: 4672)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2982, file: !2983, line: 203, baseType: !3069, size: 2048, offset: 4736)
!3069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3070, size: 2048, elements: !1683)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3071, line: 43, size: 128, elements: !3072)
!3071 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3072 = !{!3073, !3074}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3070, file: !3071, line: 44, baseType: !934, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3070, file: !3071, line: 45, baseType: !934, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2982, file: !2983, line: 220, baseType: !843, size: 8, offset: 6784)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2982, file: !2983, line: 221, baseType: !2543, size: 16, offset: 6800)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2982, file: !2983, line: 222, baseType: !2543, size: 16, offset: 6816)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2982, file: !2983, line: 224, baseType: !673, size: 64, offset: 6848)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2982, file: !2983, line: 227, baseType: !1082, size: 192, offset: 6912)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2982, file: !2983, line: 233, baseType: !1082, size: 192, offset: 7104)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !493, file: !494, line: 970, baseType: !3082, size: 64, offset: 9280)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2983, line: 20, size: 16576, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3083, file: !2983, line: 21, baseType: !1093)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3083, file: !2983, line: 22, baseType: !506, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3083, file: !2983, line: 23, baseType: !1636, size: 128, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3083, file: !2983, line: 24, baseType: !3089, size: 16384, offset: 192)
!3089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3090, size: 16384, elements: !2151)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2993, line: 49, size: 256, elements: !3091)
!3091 = !{!3092}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3090, file: !2993, line: 50, baseType: !3093, size: 256)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2993, line: 35, size: 256, elements: !3094)
!3094 = !{!3095, !3102, !3103, !3107}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3093, file: !2993, line: 37, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3097, line: 19, baseType: !3098)
!3097 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3097, line: 18, baseType: !3100)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !384}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3093, file: !2993, line: 38, baseType: !337, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3093, file: !2993, line: 44, baseType: !3104, size: 64, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3097, line: 22, baseType: !3105)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3097, line: 21, baseType: !351)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3093, file: !2993, line: 46, baseType: !2997, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !493, file: !494, line: 971, baseType: !2997, size: 64, offset: 9344)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !493, file: !494, line: 972, baseType: !2997, size: 64, offset: 9408)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !493, file: !494, line: 974, baseType: !2997, size: 64, offset: 9472)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !493, file: !494, line: 975, baseType: !2992, size: 192, offset: 9536)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !493, file: !494, line: 976, baseType: !337, size: 64, offset: 9728)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !493, file: !494, line: 977, baseType: !932, size: 64, offset: 9792)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !493, file: !494, line: 978, baseType: !7, size: 32, offset: 9856)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !493, file: !494, line: 980, baseType: !731, size: 64, offset: 9920)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !493, file: !494, line: 989, baseType: !3117, size: 128, offset: 9984)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3118, line: 35, size: 128, elements: !3119)
!3118 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3119 = !{!3120, !3121, !3122}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3117, file: !3118, line: 36, baseType: !384, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3117, file: !3118, line: 37, baseType: !511, size: 32, offset: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3117, file: !3118, line: 38, baseType: !3123, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3118, line: 23, flags: DIFlagFwdDecl)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !493, file: !494, line: 992, baseType: !543, size: 64, offset: 10112)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !493, file: !494, line: 993, baseType: !543, size: 64, offset: 10176)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !493, file: !494, line: 996, baseType: !1093, offset: 10240)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !493, file: !494, line: 999, baseType: !467, offset: 10240)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !493, file: !494, line: 1001, baseType: !3130, size: 64, offset: 10240)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !494, line: 636, size: 64, elements: !3131)
!3131 = !{!3132}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3130, file: !494, line: 637, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !493, file: !494, line: 1005, baseType: !477, size: 128, offset: 10304)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !493, file: !494, line: 1007, baseType: !492, size: 64, offset: 10432)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !493, file: !494, line: 1009, baseType: !3137, size: 64, offset: 10496)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !494, line: 1009, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !493, file: !494, line: 1043, baseType: !338, size: 64, offset: 10560)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !493, file: !494, line: 1046, baseType: !3141, size: 64, offset: 10624)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !494, line: 41, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !493, file: !494, line: 1050, baseType: !3144, size: 64, offset: 10688)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !494, line: 42, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !493, file: !494, line: 1054, baseType: !3147, size: 64, offset: 10752)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !494, line: 55, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !493, file: !494, line: 1056, baseType: !1583, size: 64, offset: 10816)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !493, file: !494, line: 1058, baseType: !3151, size: 64, offset: 10880)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3153, line: 99, size: 704, elements: !3154)
!3153 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3160, !3161, !3180, !3181}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3152, file: !3153, line: 100, baseType: !1086, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3152, file: !3153, line: 101, baseType: !511, size: 32, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3152, file: !3153, line: 102, baseType: !511, size: 32, offset: 96)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3152, file: !3153, line: 105, baseType: !1093, offset: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3152, file: !3153, line: 107, baseType: !389, size: 16, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3152, file: !3153, line: 109, baseType: !1152, size: 128, offset: 192)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3152, file: !3153, line: 110, baseType: !3162, size: 64, offset: 320)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3153, line: 73, size: 448, elements: !3164)
!3164 = !{!3165, !3168, !3169, !3174, !3179}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3163, file: !3153, line: 74, baseType: !3166, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3153, line: 74, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3163, file: !3153, line: 75, baseType: !3151, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, scope: !3163, file: !3153, line: 83, baseType: !3170, size: 128, offset: 128)
!3170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3163, file: !3153, line: 83, size: 128, elements: !3171)
!3171 = !{!3172, !3173}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3170, file: !3153, line: 84, baseType: !536, size: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3170, file: !3153, line: 85, baseType: !1320, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, scope: !3163, file: !3153, line: 87, baseType: !3175, size: 128, offset: 256)
!3175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3163, file: !3153, line: 87, size: 128, elements: !3176)
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3175, file: !3153, line: 88, baseType: !996, size: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3175, file: !3153, line: 89, baseType: !728, size: 128, align: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3163, file: !3153, line: 92, baseType: !7, size: 32, offset: 384)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3152, file: !3153, line: 111, baseType: !992, size: 64, offset: 384)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3152, file: !3153, line: 113, baseType: !1795, size: 256, offset: 448)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !493, file: !494, line: 1061, baseType: !3183, size: 64, offset: 10944)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !494, line: 43, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !493, file: !494, line: 1064, baseType: !337, size: 64, offset: 11008)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !493, file: !494, line: 1065, baseType: !3187, size: 64, offset: 11072)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2993, line: 14, baseType: !3189)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2993, line: 12, size: 384, elements: !3190)
!3190 = !{!3191}
!3191 = !DIDerivedType(tag: DW_TAG_member, scope: !3189, file: !2993, line: 13, baseType: !3192, size: 384)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3189, file: !2993, line: 13, size: 384, elements: !3193)
!3193 = !{!3194, !3195, !3196, !3197}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3192, file: !2993, line: 13, baseType: !384, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3192, file: !2993, line: 13, baseType: !384, size: 32, offset: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3192, file: !2993, line: 13, baseType: !384, size: 32, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3192, file: !2993, line: 13, baseType: !3198, size: 256, offset: 128)
!3198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3199, line: 32, size: 256, elements: !3200)
!3199 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3200 = !{!3201, !3206, !3219, !3225, !3234, !3254, !3259}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3198, file: !3199, line: 37, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3199, line: 34, size: 64, elements: !3203)
!3203 = !{!3204, !3205}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3202, file: !3199, line: 35, baseType: !2908, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3202, file: !3199, line: 36, baseType: !792, size: 32, offset: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3198, file: !3199, line: 45, baseType: !3207, size: 192)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3199, line: 40, size: 192, elements: !3208)
!3208 = !{!3209, !3211, !3212, !3218}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3207, file: !3199, line: 41, baseType: !3210, size: 32)
!3210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !627, line: 95, baseType: !384)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3207, file: !3199, line: 42, baseType: !384, size: 32, offset: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3207, file: !3199, line: 43, baseType: !3213, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3199, line: 11, baseType: !3214)
!3214 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3199, line: 8, size: 64, elements: !3215)
!3215 = !{!3216, !3217}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3214, file: !3199, line: 9, baseType: !384, size: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3214, file: !3199, line: 10, baseType: !338, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3207, file: !3199, line: 44, baseType: !384, size: 32, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3198, file: !3199, line: 52, baseType: !3220, size: 128)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3199, line: 48, size: 128, elements: !3221)
!3221 = !{!3222, !3223, !3224}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3220, file: !3199, line: 49, baseType: !2908, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3220, file: !3199, line: 50, baseType: !792, size: 32, offset: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3220, file: !3199, line: 51, baseType: !3213, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3198, file: !3199, line: 61, baseType: !3226, size: 256)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3199, line: 55, size: 256, elements: !3227)
!3227 = !{!3228, !3229, !3230, !3231, !3233}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3226, file: !3199, line: 56, baseType: !2908, size: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3226, file: !3199, line: 57, baseType: !792, size: 32, offset: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3226, file: !3199, line: 58, baseType: !384, size: 32, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3226, file: !3199, line: 59, baseType: !3232, size: 64, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !627, line: 94, baseType: !931)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3226, file: !3199, line: 60, baseType: !3232, size: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3198, file: !3199, line: 95, baseType: !3235, size: 256)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3199, line: 64, size: 256, elements: !3236)
!3236 = !{!3237, !3238}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3235, file: !3199, line: 65, baseType: !338, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !3235, file: !3199, line: 77, baseType: !3239, size: 192, offset: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3235, file: !3199, line: 77, size: 192, elements: !3240)
!3240 = !{!3241, !3242, !3249}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3239, file: !3199, line: 82, baseType: !2543, size: 16)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3239, file: !3199, line: 88, baseType: !3243, size: 192)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3239, file: !3199, line: 84, size: 192, elements: !3244)
!3244 = !{!3245, !3247, !3248}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3243, file: !3199, line: 85, baseType: !3246, size: 64)
!3246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 64, elements: !621)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3243, file: !3199, line: 86, baseType: !338, size: 64, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3243, file: !3199, line: 87, baseType: !338, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3239, file: !3199, line: 93, baseType: !3250, size: 96)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3239, file: !3199, line: 90, size: 96, elements: !3251)
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3250, file: !3199, line: 91, baseType: !3246, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3250, file: !3199, line: 92, baseType: !446, size: 32, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3198, file: !3199, line: 101, baseType: !3255, size: 128)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3199, line: 98, size: 128, elements: !3256)
!3256 = !{!3257, !3258}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3255, file: !3199, line: 99, baseType: !344, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3255, file: !3199, line: 100, baseType: !384, size: 32, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3198, file: !3199, line: 108, baseType: !3260, size: 128)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3199, line: 104, size: 128, elements: !3261)
!3261 = !{!3262, !3263, !3264}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3260, file: !3199, line: 105, baseType: !338, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3260, file: !3199, line: 106, baseType: !384, size: 32, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3260, file: !3199, line: 107, baseType: !7, size: 32, offset: 96)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !493, file: !494, line: 1067, baseType: !3065, offset: 11136)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !493, file: !494, line: 1099, baseType: !3267, size: 64, offset: 11136)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !494, line: 56, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !493, file: !494, line: 1103, baseType: !536, size: 128, offset: 11200)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !493, file: !494, line: 1104, baseType: !3271, size: 64, offset: 11328)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !494, line: 46, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !493, file: !494, line: 1105, baseType: !1082, size: 192, offset: 11392)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !493, file: !494, line: 1106, baseType: !7, size: 32, offset: 11584)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !493, file: !494, line: 1109, baseType: !3276, size: 128, offset: 11648)
!3276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3277, size: 128, elements: !2502)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !494, line: 51, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !493, file: !494, line: 1110, baseType: !1082, size: 192, offset: 11776)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !493, file: !494, line: 1111, baseType: !536, size: 128, offset: 11968)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !493, file: !494, line: 1173, baseType: !3282, size: 64, offset: 12096)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3284, line: 62, size: 256, align: 256, elements: !3285)
!3284 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3285 = !{!3286, !3287, !3288, !3293}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3283, file: !3284, line: 75, baseType: !446, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3283, file: !3284, line: 90, baseType: !446, size: 32, offset: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3283, file: !3284, line: 124, baseType: !3289, size: 64, offset: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3283, file: !3284, line: 109, size: 64, elements: !3290)
!3290 = !{!3291, !3292}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3289, file: !3284, line: 110, baseType: !544, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3289, file: !3284, line: 112, baseType: !544, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3283, file: !3284, line: 144, baseType: !446, size: 32, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !493, file: !494, line: 1174, baseType: !445, size: 32, offset: 12160)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !493, file: !494, line: 1179, baseType: !337, size: 64, offset: 12224)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !493, file: !494, line: 1182, baseType: !3297, size: 128, offset: 12288)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2734, line: 76, size: 128, elements: !3298)
!3298 = !{!3299, !3304, !3305}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3297, file: !2734, line: 85, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3301, line: 7, size: 64, elements: !3302)
!3301 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3302 = !{!3303}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3300, file: !3301, line: 12, baseType: !662, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3297, file: !2734, line: 88, baseType: !843, size: 8, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3297, file: !2734, line: 95, baseType: !843, size: 8, offset: 72)
!3306 = !DIDerivedType(tag: DW_TAG_member, scope: !493, file: !494, line: 1184, baseType: !3307, size: 128, offset: 12416)
!3307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !493, file: !494, line: 1184, size: 128, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3307, file: !494, line: 1185, baseType: !506, size: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3307, file: !494, line: 1186, baseType: !728, size: 128, align: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !493, file: !494, line: 1190, baseType: !2060, size: 64, offset: 12544)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !493, file: !494, line: 1192, baseType: !3313, size: 128, offset: 12608)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2734, line: 64, size: 128, elements: !3314)
!3314 = !{!3315, !3316, !3317}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3313, file: !2734, line: 65, baseType: !1135, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3313, file: !2734, line: 67, baseType: !446, size: 32, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3313, file: !2734, line: 68, baseType: !446, size: 32, offset: 96)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !493, file: !494, line: 1206, baseType: !384, size: 32, offset: 12736)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !493, file: !494, line: 1207, baseType: !384, size: 32, offset: 12768)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !493, file: !494, line: 1209, baseType: !337, size: 64, offset: 12800)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !493, file: !494, line: 1219, baseType: !543, size: 64, offset: 12864)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !493, file: !494, line: 1220, baseType: !543, size: 64, offset: 12928)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !493, file: !494, line: 1317, baseType: !384, size: 32, offset: 12992)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !493, file: !494, line: 1319, baseType: !492, size: 64, offset: 13056)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !493, file: !494, line: 1322, baseType: !3326, size: 64, offset: 13120)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3328, line: 56, size: 512, elements: !3329)
!3328 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3329 = !{!3330, !3331, !3332, !3333, !3334, !3335, !3336, !3338}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3327, file: !3328, line: 57, baseType: !3326, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3327, file: !3328, line: 58, baseType: !338, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3327, file: !3328, line: 59, baseType: !337, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3327, file: !3328, line: 60, baseType: !337, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3327, file: !3328, line: 61, baseType: !1207, size: 64, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3327, file: !3328, line: 62, baseType: !7, size: 32, offset: 320)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3327, file: !3328, line: 63, baseType: !3337, size: 64, offset: 384)
!3337 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !343, line: 153, baseType: !543)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3327, file: !3328, line: 64, baseType: !2242, size: 64, offset: 448)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !493, file: !494, line: 1326, baseType: !506, size: 32, offset: 13184)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !493, file: !494, line: 1342, baseType: !338, size: 64, offset: 13248)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !493, file: !494, line: 1343, baseType: !544, size: 64, offset: 13312)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !493, file: !494, line: 1344, baseType: !543, size: 64, offset: 13376)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !493, file: !494, line: 1345, baseType: !544, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !493, file: !494, line: 1346, baseType: !544, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !493, file: !494, line: 1347, baseType: !544, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !493, file: !494, line: 1348, baseType: !728, size: 128, align: 64, offset: 13504)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !493, file: !494, line: 1358, baseType: !3348, size: 34816, offset: 13824)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3349, line: 485, size: 34816, elements: !3350)
!3349 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3350 = !{!3351, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3380, !3381, !3382, !3383, !3384, !3385, !3388, !3389, !3390}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3348, file: !3349, line: 487, baseType: !3352, size: 192)
!3352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3353, size: 192, elements: !1008)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3354, line: 16, size: 64, elements: !3355)
!3354 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3353, file: !3354, line: 17, baseType: !428, size: 16)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3353, file: !3354, line: 18, baseType: !428, size: 16, offset: 16)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3353, file: !3354, line: 19, baseType: !428, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3353, file: !3354, line: 19, baseType: !428, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3353, file: !3354, line: 19, baseType: !428, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3353, file: !3354, line: 19, baseType: !428, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3353, file: !3354, line: 19, baseType: !428, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3353, file: !3354, line: 20, baseType: !428, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3353, file: !3354, line: 20, baseType: !428, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3353, file: !3354, line: 20, baseType: !428, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3353, file: !3354, line: 20, baseType: !428, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3353, file: !3354, line: 20, baseType: !428, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3353, file: !3354, line: 20, baseType: !428, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3348, file: !3349, line: 491, baseType: !337, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3348, file: !3349, line: 495, baseType: !389, size: 16, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3348, file: !3349, line: 496, baseType: !389, size: 16, offset: 272)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3348, file: !3349, line: 497, baseType: !389, size: 16, offset: 288)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3348, file: !3349, line: 498, baseType: !389, size: 16, offset: 304)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3348, file: !3349, line: 502, baseType: !337, size: 64, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3348, file: !3349, line: 503, baseType: !337, size: 64, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3348, file: !3349, line: 514, baseType: !3377, size: 256, offset: 448)
!3377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3378, size: 256, elements: !2462)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3349, line: 483, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3348, file: !3349, line: 516, baseType: !337, size: 64, offset: 704)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3348, file: !3349, line: 518, baseType: !337, size: 64, offset: 768)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3348, file: !3349, line: 520, baseType: !337, size: 64, offset: 832)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3348, file: !3349, line: 521, baseType: !337, size: 64, offset: 896)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3348, file: !3349, line: 522, baseType: !337, size: 64, offset: 960)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3348, file: !3349, line: 528, baseType: !3386, size: 64, offset: 1024)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3349, line: 10, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3348, file: !3349, line: 535, baseType: !337, size: 64, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3348, file: !3349, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3348, file: !3349, line: 540, baseType: !3391, size: 33280, offset: 1536)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3392, line: 317, size: 33280, elements: !3393)
!3392 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3393 = !{!3394, !3395, !3396}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3391, file: !3392, line: 330, baseType: !7, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3391, file: !3392, line: 337, baseType: !337, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3391, file: !3392, line: 348, baseType: !3397, size: 32768, offset: 512)
!3397 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3392, line: 304, size: 32768, elements: !3398)
!3398 = !{!3399, !3412, !3449, !3499, !3512}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3397, file: !3392, line: 305, baseType: !3400, size: 896)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3392, line: 12, size: 896, elements: !3401)
!3401 = !{!3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3411}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3400, file: !3392, line: 13, baseType: !445, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3400, file: !3392, line: 14, baseType: !445, size: 32, offset: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3400, file: !3392, line: 15, baseType: !445, size: 32, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3400, file: !3392, line: 16, baseType: !445, size: 32, offset: 96)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3400, file: !3392, line: 17, baseType: !445, size: 32, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3400, file: !3392, line: 18, baseType: !445, size: 32, offset: 160)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3400, file: !3392, line: 19, baseType: !445, size: 32, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3400, file: !3392, line: 22, baseType: !3410, size: 640, offset: 224)
!3410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 640, elements: !393)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3400, file: !3392, line: 25, baseType: !445, size: 32, offset: 864)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3397, file: !3392, line: 306, baseType: !3413, size: 4096, align: 128)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3392, line: 34, size: 4096, align: 128, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3434, !3435, !3436, !3438, !3440, !3444}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3413, file: !3392, line: 35, baseType: !428, size: 16)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3413, file: !3392, line: 36, baseType: !428, size: 16, offset: 16)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3413, file: !3392, line: 37, baseType: !428, size: 16, offset: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3413, file: !3392, line: 38, baseType: !428, size: 16, offset: 48)
!3419 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !3392, line: 39, baseType: !3420, size: 128, offset: 64)
!3420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3413, file: !3392, line: 39, size: 128, elements: !3421)
!3421 = !{!3422, !3427}
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !3392, line: 40, baseType: !3423, size: 128)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3420, file: !3392, line: 40, size: 128, elements: !3424)
!3424 = !{!3425, !3426}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3423, file: !3392, line: 41, baseType: !543, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3423, file: !3392, line: 42, baseType: !543, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !3392, line: 44, baseType: !3428, size: 128)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3420, file: !3392, line: 44, size: 128, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3428, file: !3392, line: 45, baseType: !445, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3428, file: !3392, line: 46, baseType: !445, size: 32, offset: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3428, file: !3392, line: 47, baseType: !445, size: 32, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3428, file: !3392, line: 48, baseType: !445, size: 32, offset: 96)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3413, file: !3392, line: 51, baseType: !445, size: 32, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3413, file: !3392, line: 52, baseType: !445, size: 32, offset: 224)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3413, file: !3392, line: 55, baseType: !3437, size: 1024, offset: 256)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 1024, elements: !1674)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3413, file: !3392, line: 58, baseType: !3439, size: 2048, offset: 1280)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 2048, elements: !2151)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3413, file: !3392, line: 60, baseType: !3441, size: 384, offset: 3328)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 384, elements: !3442)
!3442 = !{!3443}
!3443 = !DISubrange(count: 12)
!3444 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !3392, line: 62, baseType: !3445, size: 384, offset: 3712)
!3445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3413, file: !3392, line: 62, size: 384, elements: !3446)
!3446 = !{!3447, !3448}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3445, file: !3392, line: 63, baseType: !3441, size: 384)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3445, file: !3392, line: 64, baseType: !3441, size: 384)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3397, file: !3392, line: 307, baseType: !3450, size: 1088)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3392, line: 79, size: 1088, elements: !3451)
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3498}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3450, file: !3392, line: 80, baseType: !445, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3450, file: !3392, line: 81, baseType: !445, size: 32, offset: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3450, file: !3392, line: 82, baseType: !445, size: 32, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3450, file: !3392, line: 83, baseType: !445, size: 32, offset: 96)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3450, file: !3392, line: 84, baseType: !445, size: 32, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3450, file: !3392, line: 85, baseType: !445, size: 32, offset: 160)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3450, file: !3392, line: 86, baseType: !445, size: 32, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3450, file: !3392, line: 88, baseType: !3410, size: 640, offset: 224)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3450, file: !3392, line: 89, baseType: !430, size: 8, offset: 864)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3450, file: !3392, line: 90, baseType: !430, size: 8, offset: 872)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3450, file: !3392, line: 91, baseType: !430, size: 8, offset: 880)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3450, file: !3392, line: 92, baseType: !430, size: 8, offset: 888)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3450, file: !3392, line: 93, baseType: !430, size: 8, offset: 896)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3450, file: !3392, line: 94, baseType: !430, size: 8, offset: 904)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3450, file: !3392, line: 95, baseType: !3467, size: 64, offset: 960)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3469, line: 11, size: 128, elements: !3470)
!3469 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3470 = !{!3471, !3472}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3468, file: !3469, line: 12, baseType: !344, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3468, file: !3469, line: 13, baseType: !3473, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3475, line: 56, size: 1344, elements: !3476)
!3475 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3474, file: !3475, line: 61, baseType: !337, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3474, file: !3475, line: 62, baseType: !337, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3474, file: !3475, line: 63, baseType: !337, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3474, file: !3475, line: 64, baseType: !337, size: 64, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3474, file: !3475, line: 65, baseType: !337, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3474, file: !3475, line: 66, baseType: !337, size: 64, offset: 320)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3474, file: !3475, line: 68, baseType: !337, size: 64, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3474, file: !3475, line: 69, baseType: !337, size: 64, offset: 448)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3474, file: !3475, line: 70, baseType: !337, size: 64, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3474, file: !3475, line: 71, baseType: !337, size: 64, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3474, file: !3475, line: 72, baseType: !337, size: 64, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3474, file: !3475, line: 73, baseType: !337, size: 64, offset: 704)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3474, file: !3475, line: 74, baseType: !337, size: 64, offset: 768)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3474, file: !3475, line: 75, baseType: !337, size: 64, offset: 832)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3474, file: !3475, line: 76, baseType: !337, size: 64, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3474, file: !3475, line: 81, baseType: !337, size: 64, offset: 960)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3474, file: !3475, line: 83, baseType: !337, size: 64, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3474, file: !3475, line: 84, baseType: !337, size: 64, offset: 1088)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3474, file: !3475, line: 85, baseType: !337, size: 64, offset: 1152)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3474, file: !3475, line: 86, baseType: !337, size: 64, offset: 1216)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3474, file: !3475, line: 87, baseType: !337, size: 64, offset: 1280)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3450, file: !3392, line: 96, baseType: !445, size: 32, offset: 1024)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3397, file: !3392, line: 308, baseType: !3500, size: 4608, align: 512)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3392, line: 289, size: 4608, align: 512, elements: !3501)
!3501 = !{!3502, !3503, !3510}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3500, file: !3392, line: 290, baseType: !3413, size: 4096, align: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3500, file: !3392, line: 291, baseType: !3504, size: 512, offset: 4096)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3392, line: 268, size: 512, elements: !3505)
!3505 = !{!3506, !3507, !3508}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3504, file: !3392, line: 269, baseType: !543, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3504, file: !3392, line: 270, baseType: !543, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3504, file: !3392, line: 271, baseType: !3509, size: 384, offset: 128)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 384, elements: !2561)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3500, file: !3392, line: 292, baseType: !3511, offset: 4608)
!3511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, elements: !2657)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3397, file: !3392, line: 309, baseType: !3513, size: 32768)
!3513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 32768, elements: !3514)
!3514 = !{!3515}
!3515 = !DISubrange(count: 4096)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !397, file: !306, line: 704, baseType: !463, size: 192, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !397, file: !306, line: 706, baseType: !384, size: 32, offset: 704)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !397, file: !306, line: 707, baseType: !384, size: 32, offset: 736)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !397, file: !306, line: 708, baseType: !3520, size: 5568, offset: 768)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !3521)
!3521 = !{!3522, !3523, !3525, !3528, !3529, !3580, !3671, !3672, !3673, !3674, !3675, !3684, !3789, !3802, !4201, !4202, !4206, !4208, !4209, !4210, !4214, !4220, !4221, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4262, !4263, !4264, !4267, !4270, !4271, !4272, !4273}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3520, file: !60, line: 462, baseType: !2110, size: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3520, file: !60, line: 463, baseType: !3524, size: 64, offset: 512)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3520, file: !60, line: 465, baseType: !3526, size: 64, offset: 576)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3520, file: !60, line: 467, baseType: !814, size: 64, offset: 640)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3520, file: !60, line: 468, baseType: !3530, size: 64, offset: 704)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3532)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3540, !3545, !3549}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3532, file: !60, line: 88, baseType: !814, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3532, file: !60, line: 89, baseType: !2189, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3532, file: !60, line: 90, baseType: !3537, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!384, !3524, !2144}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3532, file: !60, line: 91, baseType: !3541, size: 64, offset: 192)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!838, !3524, !3544, !2259, !2260}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3532, file: !60, line: 93, baseType: !3546, size: 64, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{null, !3524}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3532, file: !60, line: 95, baseType: !3550, size: 64, offset: 320)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3552)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3553)
!3553 = !{!3554, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3552, file: !67, line: 279, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!384, !3524}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3552, file: !67, line: 280, baseType: !3546, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3552, file: !67, line: 281, baseType: !3555, size: 64, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3552, file: !67, line: 282, baseType: !3555, size: 64, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3552, file: !67, line: 283, baseType: !3555, size: 64, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3552, file: !67, line: 284, baseType: !3555, size: 64, offset: 320)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3552, file: !67, line: 285, baseType: !3555, size: 64, offset: 384)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3552, file: !67, line: 286, baseType: !3555, size: 64, offset: 448)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3552, file: !67, line: 287, baseType: !3555, size: 64, offset: 512)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3552, file: !67, line: 288, baseType: !3555, size: 64, offset: 576)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3552, file: !67, line: 289, baseType: !3555, size: 64, offset: 640)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3552, file: !67, line: 290, baseType: !3555, size: 64, offset: 704)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3552, file: !67, line: 291, baseType: !3555, size: 64, offset: 768)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3552, file: !67, line: 292, baseType: !3555, size: 64, offset: 832)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3552, file: !67, line: 293, baseType: !3555, size: 64, offset: 896)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3552, file: !67, line: 294, baseType: !3555, size: 64, offset: 960)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3552, file: !67, line: 295, baseType: !3555, size: 64, offset: 1024)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3552, file: !67, line: 296, baseType: !3555, size: 64, offset: 1088)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3552, file: !67, line: 297, baseType: !3555, size: 64, offset: 1152)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3552, file: !67, line: 298, baseType: !3555, size: 64, offset: 1216)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3552, file: !67, line: 299, baseType: !3555, size: 64, offset: 1280)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3552, file: !67, line: 300, baseType: !3555, size: 64, offset: 1344)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3552, file: !67, line: 301, baseType: !3555, size: 64, offset: 1408)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3520, file: !60, line: 470, baseType: !3581, size: 64, offset: 768)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3583, line: 82, size: 1408, elements: !3584)
!3583 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3584 = !{!3585, !3586, !3587, !3588, !3589, !3590, !3591, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3666, !3669, !3670}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3582, file: !3583, line: 83, baseType: !814, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3582, file: !3583, line: 84, baseType: !814, size: 64, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3582, file: !3583, line: 85, baseType: !3524, size: 64, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3582, file: !3583, line: 86, baseType: !2189, size: 64, offset: 192)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3582, file: !3583, line: 87, baseType: !2189, size: 64, offset: 256)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3582, file: !3583, line: 88, baseType: !2189, size: 64, offset: 320)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3582, file: !3583, line: 90, baseType: !3592, size: 64, offset: 384)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!384, !3524, !3595}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3597)
!3597 = !{!3598, !3599, !3600, !3601, !3602, !3603, !3604, !3617, !3630, !3631, !3632, !3633, !3634, !3642, !3643, !3644, !3645, !3646, !3647}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3596, file: !54, line: 96, baseType: !814, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3596, file: !54, line: 97, baseType: !3581, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3596, file: !54, line: 99, baseType: !339, size: 64, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3596, file: !54, line: 100, baseType: !814, size: 64, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3596, file: !54, line: 102, baseType: !843, size: 8, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3596, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3596, file: !54, line: 105, baseType: !3605, size: 64, offset: 320)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3607)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3608, line: 262, size: 1600, elements: !3609)
!3608 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3609 = !{!3610, !3611, !3612, !3616}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3607, file: !3608, line: 263, baseType: !1673, size: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3607, file: !3608, line: 264, baseType: !1673, size: 256, offset: 256)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3607, file: !3608, line: 265, baseType: !3613, size: 1024, offset: 512)
!3613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 1024, elements: !3614)
!3614 = !{!3615}
!3615 = !DISubrange(count: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3607, file: !3608, line: 266, baseType: !2242, size: 64, offset: 1536)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3596, file: !54, line: 106, baseType: !3618, size: 64, offset: 384)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3620)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3608, line: 210, size: 256, elements: !3621)
!3621 = !{!3622, !3626, !3628, !3629}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3620, file: !3608, line: 211, baseType: !3623, size: 72)
!3623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 72, elements: !3624)
!3624 = !{!3625}
!3625 = !DISubrange(count: 9)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3620, file: !3608, line: 212, baseType: !3627, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3608, line: 14, baseType: !337)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3620, file: !3608, line: 213, baseType: !446, size: 32, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3620, file: !3608, line: 214, baseType: !446, size: 32, offset: 224)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3596, file: !54, line: 108, baseType: !3555, size: 64, offset: 448)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3596, file: !54, line: 109, baseType: !3546, size: 64, offset: 512)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3596, file: !54, line: 110, baseType: !3555, size: 64, offset: 576)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3596, file: !54, line: 111, baseType: !3546, size: 64, offset: 640)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3596, file: !54, line: 112, baseType: !3635, size: 64, offset: 704)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!384, !3524, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3640)
!3640 = !{!3641}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3639, file: !67, line: 51, baseType: !384, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3596, file: !54, line: 113, baseType: !3555, size: 64, offset: 768)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3596, file: !54, line: 114, baseType: !2189, size: 64, offset: 832)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3596, file: !54, line: 115, baseType: !2189, size: 64, offset: 896)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3596, file: !54, line: 117, baseType: !3550, size: 64, offset: 960)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3596, file: !54, line: 118, baseType: !3546, size: 64, offset: 1024)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3596, file: !54, line: 120, baseType: !3648, size: 64, offset: 1088)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3582, file: !3583, line: 91, baseType: !3537, size: 64, offset: 448)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3582, file: !3583, line: 92, baseType: !3555, size: 64, offset: 512)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3582, file: !3583, line: 93, baseType: !3546, size: 64, offset: 576)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3582, file: !3583, line: 94, baseType: !3555, size: 64, offset: 640)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3582, file: !3583, line: 95, baseType: !3546, size: 64, offset: 704)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3582, file: !3583, line: 97, baseType: !3555, size: 64, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3582, file: !3583, line: 98, baseType: !3555, size: 64, offset: 832)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3582, file: !3583, line: 100, baseType: !3635, size: 64, offset: 896)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3582, file: !3583, line: 101, baseType: !3555, size: 64, offset: 960)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3582, file: !3583, line: 103, baseType: !3555, size: 64, offset: 1024)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3582, file: !3583, line: 105, baseType: !3555, size: 64, offset: 1088)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3582, file: !3583, line: 107, baseType: !3550, size: 64, offset: 1152)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3582, file: !3583, line: 109, baseType: !3663, size: 64, offset: 1216)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3665)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3583, line: 109, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3582, file: !3583, line: 111, baseType: !3667, size: 64, offset: 1280)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3583, line: 111, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3582, file: !3583, line: 112, baseType: !1002, offset: 1344)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3582, file: !3583, line: 114, baseType: !843, size: 8, offset: 1344)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3520, file: !60, line: 471, baseType: !3595, size: 64, offset: 832)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3520, file: !60, line: 473, baseType: !338, size: 64, offset: 896)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3520, file: !60, line: 475, baseType: !338, size: 64, offset: 960)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3520, file: !60, line: 480, baseType: !1082, size: 192, offset: 1024)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3520, file: !60, line: 484, baseType: !3676, size: 576, offset: 1216)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3677)
!3677 = !{!3678, !3679, !3680, !3681, !3682, !3683}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3676, file: !60, line: 362, baseType: !536, size: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3676, file: !60, line: 363, baseType: !536, size: 128, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3676, file: !60, line: 364, baseType: !536, size: 128, offset: 256)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3676, file: !60, line: 365, baseType: !536, size: 128, offset: 384)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3676, file: !60, line: 366, baseType: !843, size: 8, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3676, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3520, file: !60, line: 485, baseType: !3685, size: 2304, offset: 1792)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3782, !3786}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3685, file: !67, line: 566, baseType: !3638, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3685, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3685, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3685, file: !67, line: 569, baseType: !843, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3685, file: !67, line: 570, baseType: !843, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3685, file: !67, line: 571, baseType: !843, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3685, file: !67, line: 572, baseType: !843, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3685, file: !67, line: 573, baseType: !843, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3685, file: !67, line: 574, baseType: !843, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3685, file: !67, line: 575, baseType: !843, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3685, file: !67, line: 576, baseType: !843, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3685, file: !67, line: 577, baseType: !445, size: 32, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3685, file: !67, line: 578, baseType: !1093, offset: 96)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3685, file: !67, line: 580, baseType: !536, size: 128, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3685, file: !67, line: 581, baseType: !2793, size: 192, offset: 256)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3685, file: !67, line: 582, baseType: !3703, size: 64, offset: 448)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3705, line: 43, size: 1472, elements: !3706)
!3705 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3714, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3704, file: !3705, line: 44, baseType: !814, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3704, file: !3705, line: 45, baseType: !384, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3704, file: !3705, line: 46, baseType: !536, size: 128, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3704, file: !3705, line: 47, baseType: !1093, offset: 256)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3704, file: !3705, line: 48, baseType: !3712, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3704, file: !3705, line: 49, baseType: !3715, size: 320, offset: 320)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3716, line: 11, size: 320, elements: !3717)
!3716 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3717 = !{!3718, !3719, !3720, !3725}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3715, file: !3716, line: 16, baseType: !996, size: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3715, file: !3716, line: 17, baseType: !337, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3715, file: !3716, line: 18, baseType: !3721, size: 64, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3724}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3715, file: !3716, line: 19, baseType: !445, size: 32, offset: 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3704, file: !3705, line: 50, baseType: !337, size: 64, offset: 640)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3704, file: !3705, line: 51, baseType: !591, size: 64, offset: 704)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3704, file: !3705, line: 52, baseType: !591, size: 64, offset: 768)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3704, file: !3705, line: 53, baseType: !591, size: 64, offset: 832)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3704, file: !3705, line: 54, baseType: !591, size: 64, offset: 896)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3704, file: !3705, line: 55, baseType: !591, size: 64, offset: 960)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3704, file: !3705, line: 56, baseType: !337, size: 64, offset: 1024)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3704, file: !3705, line: 57, baseType: !337, size: 64, offset: 1088)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3704, file: !3705, line: 58, baseType: !337, size: 64, offset: 1152)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3704, file: !3705, line: 59, baseType: !337, size: 64, offset: 1216)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3704, file: !3705, line: 60, baseType: !337, size: 64, offset: 1280)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3704, file: !3705, line: 61, baseType: !3524, size: 64, offset: 1344)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3704, file: !3705, line: 62, baseType: !843, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3704, file: !3705, line: 63, baseType: !843, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3685, file: !67, line: 583, baseType: !843, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3685, file: !67, line: 584, baseType: !843, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3685, file: !67, line: 585, baseType: !843, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3685, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3685, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3685, file: !67, line: 592, baseType: !583, size: 512, offset: 576)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3685, file: !67, line: 593, baseType: !543, size: 64, offset: 1088)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3685, file: !67, line: 594, baseType: !1795, size: 256, offset: 1152)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3685, file: !67, line: 595, baseType: !1636, size: 128, offset: 1408)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3685, file: !67, line: 596, baseType: !3712, size: 64, offset: 1536)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3685, file: !67, line: 597, baseType: !511, size: 32, offset: 1600)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3685, file: !67, line: 598, baseType: !511, size: 32, offset: 1632)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3685, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3685, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3685, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3685, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3685, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3685, file: !67, line: 604, baseType: !843, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3685, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3685, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3685, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3685, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3685, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3685, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3685, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3685, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3685, file: !67, line: 613, baseType: !384, size: 32, offset: 1792)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3685, file: !67, line: 614, baseType: !384, size: 32, offset: 1824)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3685, file: !67, line: 615, baseType: !543, size: 64, offset: 1856)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3685, file: !67, line: 616, baseType: !543, size: 64, offset: 1920)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3685, file: !67, line: 617, baseType: !543, size: 64, offset: 1984)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3685, file: !67, line: 618, baseType: !543, size: 64, offset: 2048)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3685, file: !67, line: 620, baseType: !3773, size: 64, offset: 2112)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3775)
!3775 = !{!3776, !3777, !3778, !3779}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3774, file: !67, line: 537, baseType: !1093)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3774, file: !67, line: 538, baseType: !7, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3774, file: !67, line: 540, baseType: !536, size: 128, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3774, file: !67, line: 543, baseType: !3780, size: 64, offset: 192)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3685, file: !67, line: 621, baseType: !3783, size: 64, offset: 2176)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{null, !3524, !2518}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3685, file: !67, line: 622, baseType: !3787, size: 64, offset: 2240)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3520, file: !60, line: 486, baseType: !3790, size: 64, offset: 4096)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3792)
!3792 = !{!3793, !3794, !3795, !3799, !3800, !3801}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3791, file: !67, line: 643, baseType: !3552, size: 1472)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3791, file: !67, line: 644, baseType: !3555, size: 64, offset: 1472)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3791, file: !67, line: 645, baseType: !3796, size: 64, offset: 1536)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !3524, !843}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3791, file: !67, line: 646, baseType: !3555, size: 64, offset: 1600)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3791, file: !67, line: 647, baseType: !3546, size: 64, offset: 1664)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3791, file: !67, line: 648, baseType: !3546, size: 64, offset: 1728)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3520, file: !60, line: 493, baseType: !3803, size: 64, offset: 4160)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 162, size: 1088, elements: !3805)
!3805 = !{!3806, !3807, !3808, !4080, !4081, !4082, !4083, !4084, !4085, !4193, !4194, !4195, !4196, !4197, !4198, !4199}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3804, file: !81, line: 163, baseType: !536, size: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3804, file: !81, line: 164, baseType: !814, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3804, file: !81, line: 165, baseType: !3809, size: 64, offset: 192)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3811)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !81, line: 105, size: 640, elements: !3812)
!3812 = !{!3813, !3931, !3942, !3947, !3951, !3958, !3962, !3966, !4072, !4076}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3811, file: !81, line: 106, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!384, !3803, !3817, !80}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3819, line: 51, size: 1344, elements: !3820)
!3819 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3820 = !{!3821, !3822, !3824, !3825, !3915, !3924, !3925, !3926, !3927, !3928, !3929, !3930}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3818, file: !3819, line: 52, baseType: !814, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3818, file: !3819, line: 53, baseType: !3823, size: 32, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3819, line: 28, baseType: !445)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3818, file: !3819, line: 54, baseType: !814, size: 64, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3818, file: !3819, line: 55, baseType: !3826, size: 192, offset: 192)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3827, line: 17, size: 192, elements: !3828)
!3827 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3828 = !{!3829, !3831, !3914}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3826, file: !3827, line: 18, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3826, file: !3827, line: 19, baseType: !3832, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3834)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3827, line: 110, size: 1152, elements: !3835)
!3835 = !{!3836, !3840, !3844, !3850, !3856, !3860, !3864, !3869, !3873, !3874, !3878, !3882, !3886, !3897, !3898, !3899, !3900, !3910}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3834, file: !3827, line: 111, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!3830, !3830}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3834, file: !3827, line: 112, baseType: !3841, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !3830}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3834, file: !3827, line: 113, baseType: !3845, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!843, !3848}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3826)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3834, file: !3827, line: 114, baseType: !3851, size: 64, offset: 192)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!2242, !3848, !3854}
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3520)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3834, file: !3827, line: 116, baseType: !3857, size: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!843, !3848, !814}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3834, file: !3827, line: 118, baseType: !3861, size: 64, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!384, !3848, !814, !7, !338, !932}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3834, file: !3827, line: 123, baseType: !3865, size: 64, offset: 384)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!384, !3848, !814, !3868, !932}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3834, file: !3827, line: 126, baseType: !3870, size: 64, offset: 448)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!814, !3848}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3834, file: !3827, line: 127, baseType: !3870, size: 64, offset: 512)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3834, file: !3827, line: 128, baseType: !3875, size: 64, offset: 576)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!3830, !3848}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3834, file: !3827, line: 130, baseType: !3879, size: 64, offset: 640)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!3830, !3848, !3830}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3834, file: !3827, line: 133, baseType: !3883, size: 64, offset: 704)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!3830, !3848, !814}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3834, file: !3827, line: 135, baseType: !3887, size: 64, offset: 768)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!384, !3848, !814, !814, !7, !7, !3890}
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3827, line: 43, size: 640, elements: !3892)
!3892 = !{!3893, !3894, !3895}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3891, file: !3827, line: 44, baseType: !3830, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3891, file: !3827, line: 45, baseType: !7, size: 32, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3891, file: !3827, line: 46, baseType: !3896, size: 512, offset: 128)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 512, elements: !621)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3834, file: !3827, line: 140, baseType: !3879, size: 64, offset: 832)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3834, file: !3827, line: 143, baseType: !3875, size: 64, offset: 896)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3834, file: !3827, line: 145, baseType: !3837, size: 64, offset: 960)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3834, file: !3827, line: 146, baseType: !3901, size: 64, offset: 1024)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!384, !3848, !3904}
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3827, line: 29, size: 128, elements: !3906)
!3906 = !{!3907, !3908, !3909}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3905, file: !3827, line: 30, baseType: !7, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3905, file: !3827, line: 31, baseType: !7, size: 32, offset: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3905, file: !3827, line: 32, baseType: !3848, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3834, file: !3827, line: 148, baseType: !3911, size: 64, offset: 1088)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!384, !3848, !3524}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3826, file: !3827, line: 20, baseType: !3524, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3818, file: !3819, line: 57, baseType: !3916, size: 64, offset: 384)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3819, line: 31, size: 704, elements: !3918)
!3918 = !{!3919, !3920, !3921, !3922, !3923}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3917, file: !3819, line: 32, baseType: !838, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3917, file: !3819, line: 33, baseType: !384, size: 32, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3917, file: !3819, line: 34, baseType: !338, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3917, file: !3819, line: 35, baseType: !3916, size: 64, offset: 192)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3917, file: !3819, line: 43, baseType: !2204, size: 448, offset: 256)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3818, file: !3819, line: 58, baseType: !3916, size: 64, offset: 448)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3818, file: !3819, line: 59, baseType: !3817, size: 64, offset: 512)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3818, file: !3819, line: 60, baseType: !3817, size: 64, offset: 576)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3818, file: !3819, line: 61, baseType: !3817, size: 64, offset: 640)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3818, file: !3819, line: 63, baseType: !2110, size: 512, offset: 704)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3818, file: !3819, line: 65, baseType: !337, size: 64, offset: 1216)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3818, file: !3819, line: 66, baseType: !338, size: 64, offset: 1280)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3811, file: !81, line: 108, baseType: !3932, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!384, !3803, !3935, !80}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !81, line: 63, size: 640, elements: !3937)
!3937 = !{!3938, !3939, !3940}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3936, file: !81, line: 64, baseType: !3830, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3936, file: !81, line: 65, baseType: !384, size: 32, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3936, file: !81, line: 66, baseType: !3941, size: 512, offset: 96)
!3941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 512, elements: !1683)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3811, file: !81, line: 110, baseType: !3943, size: 64, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!384, !3803, !7, !3946}
!3946 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !343, line: 164, baseType: !337)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3811, file: !81, line: 111, baseType: !3948, size: 64, offset: 192)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !3803, !7}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3811, file: !81, line: 112, baseType: !3952, size: 64, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!384, !3803, !3817, !3955, !7, !3957, !1656}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3811, file: !81, line: 117, baseType: !3959, size: 64, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!384, !3803, !7, !7, !338}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3811, file: !81, line: 119, baseType: !3963, size: 64, offset: 384)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !3803, !7, !7}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3811, file: !81, line: 121, baseType: !3967, size: 64, offset: 448)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!384, !3803, !3970, !843}
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !95, line: 175, size: 448, elements: !3972)
!3972 = !{!3973, !3974, !3975, !3976, !3988, !4069, !4070, !4071}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3971, file: !95, line: 176, baseType: !445, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3971, file: !95, line: 177, baseType: !7, size: 32, offset: 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3971, file: !95, line: 178, baseType: !337, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3971, file: !95, line: 179, baseType: !3977, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !95, line: 145, size: 256, elements: !3979)
!3979 = !{!3980, !3981, !3982, !3985}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3978, file: !95, line: 146, baseType: !7, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3978, file: !95, line: 150, baseType: !338, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3978, file: !95, line: 151, baseType: !3983, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !95, line: 127, flags: DIFlagFwdDecl)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3978, file: !95, line: 152, baseType: !3986, size: 64, offset: 192)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !661, line: 756, baseType: !3987)
!3987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 64, elements: !666)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3971, file: !95, line: 180, baseType: !3989, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !95, line: 503, size: 2304, elements: !3991)
!3991 = !{!3992, !3993, !3994, !3998, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4015, !4019, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4036, !4037, !4038, !4044, !4045, !4050, !4054, !4058, !4062, !4066, !4067, !4068}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3990, file: !95, line: 504, baseType: !3524, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3990, file: !95, line: 505, baseType: !814, size: 64, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3990, file: !95, line: 506, baseType: !3995, size: 64, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!7, !3970}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3990, file: !95, line: 507, baseType: !3999, size: 64, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{null, !3970}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3990, file: !95, line: 508, baseType: !3999, size: 64, offset: 256)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3990, file: !95, line: 509, baseType: !3999, size: 64, offset: 320)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3990, file: !95, line: 511, baseType: !3999, size: 64, offset: 384)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3990, file: !95, line: 512, baseType: !3999, size: 64, offset: 448)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3990, file: !95, line: 513, baseType: !3999, size: 64, offset: 512)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3990, file: !95, line: 514, baseType: !3999, size: 64, offset: 576)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3990, file: !95, line: 515, baseType: !3999, size: 64, offset: 640)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3990, file: !95, line: 517, baseType: !4010, size: 64, offset: 704)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!384, !3970, !4013, !843}
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3990, file: !95, line: 518, baseType: !4016, size: 64, offset: 768)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!384, !3970}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3990, file: !95, line: 519, baseType: !4020, size: 64, offset: 832)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!384, !3970, !7}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3990, file: !95, line: 520, baseType: !4020, size: 64, offset: 896)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3990, file: !95, line: 522, baseType: !3999, size: 64, offset: 960)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3990, file: !95, line: 523, baseType: !3999, size: 64, offset: 1024)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3990, file: !95, line: 525, baseType: !3999, size: 64, offset: 1088)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3990, file: !95, line: 526, baseType: !3999, size: 64, offset: 1152)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3990, file: !95, line: 528, baseType: !3999, size: 64, offset: 1216)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3990, file: !95, line: 529, baseType: !3999, size: 64, offset: 1280)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3990, file: !95, line: 530, baseType: !3999, size: 64, offset: 1344)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3990, file: !95, line: 532, baseType: !3999, size: 64, offset: 1408)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3990, file: !95, line: 534, baseType: !4033, size: 64, offset: 1472)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{null, !3970, !1070}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3990, file: !95, line: 535, baseType: !4016, size: 64, offset: 1536)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3990, file: !95, line: 536, baseType: !3999, size: 64, offset: 1600)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3990, file: !95, line: 538, baseType: !4039, size: 64, offset: 1664)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{null, !3970, !4042}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !95, line: 29, flags: DIFlagFwdDecl)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3990, file: !95, line: 539, baseType: !4039, size: 64, offset: 1728)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3990, file: !95, line: 541, baseType: !4046, size: 64, offset: 1792)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!384, !3970, !4049, !1276}
!4049 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !95, line: 31, flags: DIFlagFwdDecl)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3990, file: !95, line: 542, baseType: !4051, size: 64, offset: 1856)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!384, !3970, !4049, !843}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3990, file: !95, line: 544, baseType: !4055, size: 64, offset: 1920)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!384, !3970, !338}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3990, file: !95, line: 546, baseType: !4059, size: 64, offset: 1984)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{null, !3970, !7}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3990, file: !95, line: 547, baseType: !4063, size: 64, offset: 2048)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{null, !3970, !4013}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3990, file: !95, line: 549, baseType: !4016, size: 64, offset: 2112)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3990, file: !95, line: 550, baseType: !3999, size: 64, offset: 2176)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3990, file: !95, line: 552, baseType: !337, size: 64, offset: 2240)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3971, file: !95, line: 181, baseType: !3803, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3971, file: !95, line: 183, baseType: !3970, size: 64, offset: 320)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3971, file: !95, line: 185, baseType: !338, size: 64, offset: 384)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3811, file: !81, line: 122, baseType: !4073, size: 64, offset: 512)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{null, !3803, !3970}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3811, file: !81, line: 123, baseType: !4077, size: 64, offset: 576)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!384, !3803, !3935, !3957, !1656}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3804, file: !81, line: 166, baseType: !338, size: 64, offset: 256)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3804, file: !81, line: 167, baseType: !7, size: 32, offset: 320)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3804, file: !81, line: 168, baseType: !7, size: 32, offset: 352)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3804, file: !81, line: 171, baseType: !3830, size: 64, offset: 384)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3804, file: !81, line: 172, baseType: !80, size: 32, offset: 448)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3804, file: !81, line: 173, baseType: !4086, size: 64, offset: 512)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !95, line: 1101, size: 192, elements: !4088)
!4088 = !{!4089, !4090, !4091, !4092, !4093, !4094}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !4087, file: !95, line: 1102, baseType: !7, size: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !4087, file: !95, line: 1103, baseType: !7, size: 32, offset: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !4087, file: !95, line: 1104, baseType: !7, size: 32, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !4087, file: !95, line: 1105, baseType: !7, size: 32, offset: 96)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !4087, file: !95, line: 1106, baseType: !94, size: 32, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4087, file: !95, line: 1107, baseType: !4095, offset: 192)
!4095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4096, elements: !2821)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !95, line: 1051, size: 960, elements: !4098)
!4098 = !{!4099, !4100, !4101, !4105, !4109, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4097, file: !95, line: 1052, baseType: !467)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !4097, file: !95, line: 1053, baseType: !338, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !4097, file: !95, line: 1054, baseType: !4102, size: 64, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!445, !338}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !4097, file: !95, line: 1055, baseType: !4106, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{null, !445, !338}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4097, file: !95, line: 1056, baseType: !4110, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{null, !4096}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4097, file: !95, line: 1057, baseType: !4110, size: 64, offset: 256)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !4097, file: !95, line: 1058, baseType: !7, size: 32, offset: 320)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !4097, file: !95, line: 1059, baseType: !7, size: 32, offset: 352)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4097, file: !95, line: 1060, baseType: !445, size: 32, offset: 384)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !4097, file: !95, line: 1061, baseType: !445, size: 32, offset: 416)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !4097, file: !95, line: 1062, baseType: !445, size: 32, offset: 448)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !4097, file: !95, line: 1063, baseType: !445, size: 32, offset: 480)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !4097, file: !95, line: 1064, baseType: !445, size: 32, offset: 512)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !4097, file: !95, line: 1065, baseType: !7, size: 32, offset: 544)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4097, file: !95, line: 1066, baseType: !338, size: 64, offset: 576)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !4097, file: !95, line: 1067, baseType: !337, size: 64, offset: 640)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4097, file: !95, line: 1068, baseType: !337, size: 64, offset: 704)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4097, file: !95, line: 1069, baseType: !3803, size: 64, offset: 768)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4097, file: !95, line: 1070, baseType: !536, size: 128, offset: 832)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !4097, file: !95, line: 1071, baseType: !4128, offset: 960)
!4128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4129, elements: !2821)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !95, line: 1009, size: 2944, elements: !4130)
!4130 = !{!4131, !4132, !4142, !4190, !4191, !4192}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4129, file: !95, line: 1010, baseType: !3990, size: 2304)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4129, file: !95, line: 1011, baseType: !4133, size: 448, offset: 2304)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !95, line: 986, size: 448, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4138, !4139, !4140, !4141}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4133, file: !95, line: 987, baseType: !337, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4133, file: !95, line: 988, baseType: !337, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4133, file: !95, line: 989, baseType: !337, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !4133, file: !95, line: 990, baseType: !337, size: 64, offset: 192)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !4133, file: !95, line: 991, baseType: !337, size: 64, offset: 256)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4133, file: !95, line: 992, baseType: !337, size: 64, offset: 320)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4133, file: !95, line: 993, baseType: !337, size: 64, offset: 384)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4129, file: !95, line: 1012, baseType: !4143, size: 64, offset: 2752)
!4143 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !4144, line: 12, baseType: !4145)
!4144 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{null, !4148}
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !4150, line: 55, size: 2880, elements: !4151)
!4150 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!4151 = !{!4152, !4153, !4154, !4155, !4156, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4184, !4185, !4186, !4187, !4188, !4189}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !4149, file: !4150, line: 56, baseType: !3978, size: 256)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4149, file: !4150, line: 57, baseType: !3971, size: 448, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !4149, file: !4150, line: 58, baseType: !1656, size: 64, offset: 704)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !4149, file: !4150, line: 59, baseType: !4143, size: 64, offset: 768)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4149, file: !4150, line: 60, baseType: !4157, size: 64, offset: 832)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !4150, line: 60, flags: DIFlagFwdDecl)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !4149, file: !4150, line: 61, baseType: !7, size: 32, offset: 896)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !4149, file: !4150, line: 62, baseType: !7, size: 32, offset: 928)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4149, file: !4150, line: 63, baseType: !7, size: 32, offset: 960)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !4149, file: !4150, line: 64, baseType: !7, size: 32, offset: 992)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !4149, file: !4150, line: 65, baseType: !7, size: 32, offset: 1024)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4149, file: !4150, line: 66, baseType: !7, size: 32, offset: 1056)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !4149, file: !4150, line: 67, baseType: !337, size: 64, offset: 1088)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !4149, file: !4150, line: 68, baseType: !7, size: 32, offset: 1152)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !4149, file: !4150, line: 69, baseType: !511, size: 32, offset: 1184)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !4149, file: !4150, line: 70, baseType: !384, size: 32, offset: 1216)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4149, file: !4150, line: 71, baseType: !467, offset: 1248)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !4149, file: !4150, line: 72, baseType: !4171, size: 64, offset: 1280)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !4149, file: !4150, line: 73, baseType: !4013, size: 64, offset: 1344)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !4149, file: !4150, line: 81, baseType: !337, size: 64, offset: 1408)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !4149, file: !4150, line: 82, baseType: !511, size: 32, offset: 1472)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !4149, file: !4150, line: 83, baseType: !1636, size: 128, offset: 1536)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !4149, file: !4150, line: 85, baseType: !7, size: 32, offset: 1664)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !4149, file: !4150, line: 86, baseType: !7, size: 32, offset: 1696)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !4149, file: !4150, line: 87, baseType: !7, size: 32, offset: 1728)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !4149, file: !4150, line: 88, baseType: !7, size: 32, offset: 1760)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4149, file: !4150, line: 91, baseType: !4181, size: 64, offset: 1792)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4183, line: 84, flags: DIFlagFwdDecl)
!4183 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4149, file: !4150, line: 98, baseType: !728, size: 128, align: 64, offset: 1856)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4149, file: !4150, line: 99, baseType: !2110, size: 512, offset: 1984)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !4149, file: !4150, line: 101, baseType: !1082, size: 192, offset: 2496)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !4149, file: !4150, line: 102, baseType: !384, size: 32, offset: 2688)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4149, file: !4150, line: 103, baseType: !339, size: 64, offset: 2752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4149, file: !4150, line: 104, baseType: !814, size: 64, offset: 2816)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4129, file: !95, line: 1013, baseType: !445, size: 32, offset: 2816)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !4129, file: !95, line: 1014, baseType: !445, size: 32, offset: 2848)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4129, file: !95, line: 1015, baseType: !2860, size: 64, offset: 2880)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3804, file: !81, line: 175, baseType: !3803, size: 64, offset: 576)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3804, file: !81, line: 182, baseType: !3946, size: 64, offset: 640)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3804, file: !81, line: 183, baseType: !7, size: 32, offset: 704)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3804, file: !81, line: 184, baseType: !7, size: 32, offset: 736)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3804, file: !81, line: 185, baseType: !1152, size: 128, offset: 768)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3804, file: !81, line: 186, baseType: !1082, size: 192, offset: 896)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3804, file: !81, line: 187, baseType: !4200, offset: 1088)
!4200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2821)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3520, file: !60, line: 499, baseType: !536, size: 128, offset: 4224)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3520, file: !60, line: 502, baseType: !4203, size: 64, offset: 4352)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4205)
!4205 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3520, file: !60, line: 504, baseType: !4207, size: 64, offset: 4416)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3520, file: !60, line: 505, baseType: !543, size: 64, offset: 4480)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3520, file: !60, line: 510, baseType: !543, size: 64, offset: 4544)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3520, file: !60, line: 511, baseType: !4211, size: 64, offset: 4608)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4213)
!4213 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3520, file: !60, line: 513, baseType: !4215, size: 64, offset: 4672)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !4217)
!4217 = !{!4218, !4219}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4216, file: !60, line: 293, baseType: !7, size: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4216, file: !60, line: 294, baseType: !337, size: 64, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3520, file: !60, line: 515, baseType: !536, size: 128, offset: 4736)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3520, file: !60, line: 526, baseType: !4222, offset: 4864)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4223, line: 5, elements: !475)
!4223 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3520, file: !60, line: 528, baseType: !3817, size: 64, offset: 4864)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3520, file: !60, line: 529, baseType: !3830, size: 64, offset: 4928)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3520, file: !60, line: 534, baseType: !866, size: 32, offset: 4992)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3520, file: !60, line: 535, baseType: !445, size: 32, offset: 5024)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3520, file: !60, line: 537, baseType: !1093, offset: 5056)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3520, file: !60, line: 538, baseType: !536, size: 128, offset: 5056)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3520, file: !60, line: 540, baseType: !4231, size: 64, offset: 5184)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4233, line: 54, size: 960, elements: !4234)
!4233 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4240, !4241, !4245, !4249, !4250, !4251, !4252, !4256, !4260, !4261}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4232, file: !4233, line: 55, baseType: !814, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4232, file: !4233, line: 56, baseType: !339, size: 64, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4232, file: !4233, line: 58, baseType: !2189, size: 64, offset: 128)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4232, file: !4233, line: 59, baseType: !2189, size: 64, offset: 192)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4232, file: !4233, line: 60, baseType: !2116, size: 64, offset: 256)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4232, file: !4233, line: 62, baseType: !3537, size: 64, offset: 320)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4232, file: !4233, line: 63, baseType: !4242, size: 64, offset: 384)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!838, !3524, !3544}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4232, file: !4233, line: 65, baseType: !4246, size: 64, offset: 448)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{null, !4231}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4232, file: !4233, line: 66, baseType: !3546, size: 64, offset: 512)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4232, file: !4233, line: 68, baseType: !3555, size: 64, offset: 576)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4232, file: !4233, line: 70, baseType: !2225, size: 64, offset: 640)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4232, file: !4233, line: 71, baseType: !4253, size: 64, offset: 704)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!2242, !3524}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4232, file: !4233, line: 73, baseType: !4257, size: 64, offset: 768)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !3524, !2259, !2260}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4232, file: !4233, line: 75, baseType: !3550, size: 64, offset: 832)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4232, file: !4233, line: 77, baseType: !3667, size: 64, offset: 896)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3520, file: !60, line: 541, baseType: !2189, size: 64, offset: 5248)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3520, file: !60, line: 543, baseType: !3546, size: 64, offset: 5312)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3520, file: !60, line: 544, baseType: !4265, size: 64, offset: 5376)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3520, file: !60, line: 545, baseType: !4268, size: 64, offset: 5440)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3520, file: !60, line: 547, baseType: !843, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3520, file: !60, line: 548, baseType: !843, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3520, file: !60, line: 549, baseType: !843, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3520, file: !60, line: 550, baseType: !843, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !397, file: !306, line: 709, baseType: !337, size: 64, offset: 6336)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !397, file: !306, line: 713, baseType: !384, size: 32, offset: 6400)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !397, file: !306, line: 714, baseType: !4277, size: 384, offset: 6432)
!4277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 384, elements: !4278)
!4278 = !{!4279}
!4279 = !DISubrange(count: 48)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !397, file: !306, line: 715, baseType: !2793, size: 192, offset: 6848)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !397, file: !306, line: 717, baseType: !1082, size: 192, offset: 7040)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !397, file: !306, line: 718, baseType: !536, size: 128, offset: 7232)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !397, file: !306, line: 720, baseType: !4284, size: 64, offset: 7360)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !306, line: 618, size: 832, elements: !4286)
!4286 = !{!4287, !4291, !4292, !4296, !4297, !4298, !4299, !4303, !4304, !4307, !4308, !4311, !4314}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4285, file: !306, line: 619, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!384, !396}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4285, file: !306, line: 621, baseType: !4288, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4285, file: !306, line: 622, baseType: !4293, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{null, !396, !384}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4285, file: !306, line: 623, baseType: !4288, size: 64, offset: 192)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4285, file: !306, line: 624, baseType: !4293, size: 64, offset: 256)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4285, file: !306, line: 625, baseType: !4288, size: 64, offset: 320)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4285, file: !306, line: 627, baseType: !4300, size: 64, offset: 384)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{null, !396}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4285, file: !306, line: 628, baseType: !4300, size: 64, offset: 448)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4285, file: !306, line: 631, baseType: !4305, size: 64, offset: 512)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !306, line: 631, flags: DIFlagFwdDecl)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4285, file: !306, line: 632, baseType: !4305, size: 64, offset: 576)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4285, file: !306, line: 633, baseType: !4309, size: 64, offset: 640)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !306, line: 633, flags: DIFlagFwdDecl)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4285, file: !306, line: 634, baseType: !4312, size: 64, offset: 704)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !306, line: 634, flags: DIFlagFwdDecl)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4285, file: !306, line: 635, baseType: !4312, size: 64, offset: 768)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !397, file: !306, line: 721, baseType: !4316, size: 64, offset: 7424)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4318)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !306, line: 664, size: 192, elements: !4319)
!4319 = !{!4320, !4321, !4322, !4323, !4324, !4325}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4318, file: !306, line: 665, baseType: !543, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4318, file: !306, line: 666, baseType: !384, size: 32, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4318, file: !306, line: 667, baseType: !428, size: 16, offset: 96)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4318, file: !306, line: 668, baseType: !428, size: 16, offset: 112)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4318, file: !306, line: 669, baseType: !428, size: 16, offset: 128)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4318, file: !306, line: 670, baseType: !428, size: 16, offset: 144)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !397, file: !306, line: 723, baseType: !3803, size: 64, offset: 7488)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !386, file: !306, line: 330, baseType: !3520, size: 5568, offset: 256)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !386, file: !306, line: 331, baseType: !384, size: 32, offset: 5824)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !386, file: !306, line: 332, baseType: !384, size: 32, offset: 5856)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !386, file: !306, line: 333, baseType: !536, size: 128, offset: 5888)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4333)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_device_id", file: !3608, line: 457, size: 256, elements: !4334)
!4334 = !{!4335, !4336}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4333, file: !3608, line: 458, baseType: !392, size: 160)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4333, file: !3608, line: 459, baseType: !3627, size: 64, offset: 192)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !377, file: !306, line: 260, baseType: !4338, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!384, !385}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "probe_new", scope: !377, file: !306, line: 265, baseType: !4338, size: 64, offset: 192)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !377, file: !306, line: 268, baseType: !4343, size: 64, offset: 256)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{null, !385}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "alert", scope: !377, file: !306, line: 277, baseType: !4347, size: 64, offset: 320)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{null, !385, !305, !7}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !377, file: !306, line: 283, baseType: !4351, size: 64, offset: 384)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!384, !385, !7, !338}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !377, file: !306, line: 285, baseType: !3596, size: 1152, offset: 448)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !377, file: !306, line: 286, baseType: !4331, size: 64, offset: 1600)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !377, file: !306, line: 289, baseType: !4357, size: 64, offset: 1664)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!384, !385, !4360}
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !306, line: 410, size: 640, elements: !4362)
!4362 = !{!4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4396, !4412, !4413}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4361, file: !306, line: 411, baseType: !392, size: 160)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4361, file: !306, line: 412, baseType: !389, size: 16, offset: 160)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4361, file: !306, line: 413, baseType: !389, size: 16, offset: 176)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4361, file: !306, line: 414, baseType: !814, size: 64, offset: 192)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4361, file: !306, line: 415, baseType: !338, size: 64, offset: 256)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4361, file: !306, line: 416, baseType: !3817, size: 64, offset: 320)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4361, file: !306, line: 417, baseType: !3830, size: 64, offset: 384)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4361, file: !306, line: 418, baseType: !4371, size: 64, offset: 448)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4373)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !292, line: 263, size: 256, elements: !4374)
!4374 = !{!4375, !4376, !4377, !4378, !4379}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4373, file: !292, line: 264, baseType: !814, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4373, file: !292, line: 265, baseType: !932, size: 64, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !4373, file: !292, line: 266, baseType: !843, size: 8, offset: 128)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4373, file: !292, line: 267, baseType: !291, size: 32, offset: 160)
!4379 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !292, line: 268, baseType: !4380, size: 64, offset: 192)
!4380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4373, file: !292, line: 268, size: 64, elements: !4381)
!4381 = !{!4382, !4383}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4380, file: !292, line: 269, baseType: !2242, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4380, file: !292, line: 276, baseType: !4384, size: 64)
!4384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4380, file: !292, line: 270, size: 64, elements: !4385)
!4385 = !{!4386, !4388, !4390, !4392, !4394}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !4384, file: !292, line: 271, baseType: !4387, size: 64)
!4387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 64, elements: !621)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !4384, file: !292, line: 272, baseType: !4389, size: 64)
!4389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 64, elements: !2462)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !4384, file: !292, line: 273, baseType: !4391, size: 64)
!4391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 64, elements: !2502)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !4384, file: !292, line: 274, baseType: !4393, size: 64)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 64, elements: !666)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4384, file: !292, line: 275, baseType: !4395, size: 64)
!4395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 64, elements: !666)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4361, file: !306, line: 419, baseType: !4397, size: 64, offset: 512)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4399)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4400, line: 20, size: 512, elements: !4401)
!4400 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4401 = !{!4402, !4404, !4405, !4406, !4407, !4408, !4410, !4411}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4399, file: !4400, line: 21, baseType: !4403, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !343, line: 158, baseType: !3337)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4399, file: !4400, line: 22, baseType: !4403, size: 64, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4399, file: !4400, line: 23, baseType: !814, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4399, file: !4400, line: 24, baseType: !337, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4399, file: !4400, line: 25, baseType: !337, size: 64, offset: 256)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4399, file: !4400, line: 26, baseType: !4409, size: 64, offset: 320)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4399, file: !4400, line: 26, baseType: !4409, size: 64, offset: 384)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4399, file: !4400, line: 26, baseType: !4409, size: 64, offset: 448)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4361, file: !306, line: 420, baseType: !7, size: 32, offset: 576)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4361, file: !306, line: 421, baseType: !384, size: 32, offset: 608)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "address_list", scope: !377, file: !306, line: 290, baseType: !4415, size: 64, offset: 1728)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !377, file: !306, line: 291, baseType: !536, size: 128, offset: 1792)
!4418 = !DIGlobalVariableExpression(var: !4419, expr: !DIExpression())
!4419 = distinct !DIGlobalVariable(name: "regmap_range_cfg0", scope: !4420, file: !3, line: 557, type: !4421, isLocal: true, isDefinition: true)
!4420 = distinct !DISubprogram(name: "cxd2820r_probe", scope: !3, file: !3, line: 550, type: !382, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!4421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4422, size: 320, elements: !666)
!4422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4423)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range_cfg", file: !311, line: 426, size: 320, elements: !4424)
!4424 = !{!4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4423, file: !311, line: 427, baseType: !814, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !4423, file: !311, line: 430, baseType: !7, size: 32, offset: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !4423, file: !311, line: 431, baseType: !7, size: 32, offset: 96)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "selector_reg", scope: !4423, file: !311, line: 434, baseType: !7, size: 32, offset: 128)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "selector_mask", scope: !4423, file: !311, line: 435, baseType: !7, size: 32, offset: 160)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "selector_shift", scope: !4423, file: !311, line: 436, baseType: !384, size: 32, offset: 192)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "window_start", scope: !4423, file: !311, line: 439, baseType: !7, size: 32, offset: 224)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "window_len", scope: !4423, file: !311, line: 440, baseType: !7, size: 32, offset: 256)
!4433 = !DIGlobalVariableExpression(var: !4434, expr: !DIExpression())
!4434 = distinct !DIGlobalVariable(name: "regmap_range_cfg1", scope: !4420, file: !3, line: 568, type: !4421, isLocal: true, isDefinition: true)
!4435 = !DIGlobalVariableExpression(var: !4436, expr: !DIExpression())
!4436 = distinct !DIGlobalVariable(name: "regmap_config0", scope: !4420, file: !3, line: 579, type: !4437, isLocal: true, isDefinition: true)
!4437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4438)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_config", file: !311, line: 347, size: 2176, elements: !4439)
!4439 = !{!4440, !4441, !4442, !4443, !4444, !4445, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4457, !4459, !4460, !4464, !4468, !4469, !4470, !4485, !4486, !4487, !4488, !4489, !4490, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4511, !4512, !4513, !4514, !4515}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4438, file: !311, line: 348, baseType: !814, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "reg_bits", scope: !4438, file: !311, line: 350, baseType: !384, size: 32, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride", scope: !4438, file: !311, line: 351, baseType: !384, size: 32, offset: 96)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bits", scope: !4438, file: !311, line: 352, baseType: !384, size: 32, offset: 128)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "val_bits", scope: !4438, file: !311, line: 353, baseType: !384, size: 32, offset: 160)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_reg", scope: !4438, file: !311, line: 355, baseType: !4446, size: 64, offset: 192)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!843, !3524, !7}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "readable_reg", scope: !4438, file: !311, line: 356, baseType: !4446, size: 64, offset: 256)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_reg", scope: !4438, file: !311, line: 357, baseType: !4446, size: 64, offset: 320)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "precious_reg", scope: !4438, file: !311, line: 358, baseType: !4446, size: 64, offset: 384)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_noinc_reg", scope: !4438, file: !311, line: 359, baseType: !4446, size: 64, offset: 448)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "readable_noinc_reg", scope: !4438, file: !311, line: 360, baseType: !4446, size: 64, offset: 512)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "disable_locking", scope: !4438, file: !311, line: 362, baseType: !843, size: 8, offset: 576)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4438, file: !311, line: 363, baseType: !4456, size: 64, offset: 640)
!4456 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_lock", file: !311, line: 226, baseType: !820)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "unlock", scope: !4438, file: !311, line: 364, baseType: !4458, size: 64, offset: 704)
!4458 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_unlock", file: !311, line: 227, baseType: !820)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "lock_arg", scope: !4438, file: !311, line: 365, baseType: !338, size: 64, offset: 768)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !4438, file: !311, line: 367, baseType: !4461, size: 64, offset: 832)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!384, !338, !7, !1656}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !4438, file: !311, line: 368, baseType: !4465, size: 64, offset: 896)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!384, !338, !7, !7}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "fast_io", scope: !4438, file: !311, line: 370, baseType: !843, size: 8, offset: 960)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "max_register", scope: !4438, file: !311, line: 372, baseType: !7, size: 32, offset: 992)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "wr_table", scope: !4438, file: !311, line: 373, baseType: !4471, size: 64, offset: 1024)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4473)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_access_table", file: !311, line: 219, size: 256, elements: !4474)
!4474 = !{!4475, !4482, !4483, !4484}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "yes_ranges", scope: !4473, file: !311, line: 220, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4478)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range", file: !311, line: 199, size: 64, elements: !4479)
!4479 = !{!4480, !4481}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !4478, file: !311, line: 200, baseType: !7, size: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !4478, file: !311, line: 201, baseType: !7, size: 32, offset: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "n_yes_ranges", scope: !4473, file: !311, line: 221, baseType: !7, size: 32, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "no_ranges", scope: !4473, file: !311, line: 222, baseType: !4476, size: 64, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "n_no_ranges", scope: !4473, file: !311, line: 223, baseType: !7, size: 32, offset: 192)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "rd_table", scope: !4438, file: !311, line: 374, baseType: !4471, size: 64, offset: 1088)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_table", scope: !4438, file: !311, line: 375, baseType: !4471, size: 64, offset: 1152)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "precious_table", scope: !4438, file: !311, line: 376, baseType: !4471, size: 64, offset: 1216)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "wr_noinc_table", scope: !4438, file: !311, line: 377, baseType: !4471, size: 64, offset: 1280)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "rd_noinc_table", scope: !4438, file: !311, line: 378, baseType: !4471, size: 64, offset: 1344)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults", scope: !4438, file: !311, line: 379, baseType: !4491, size: 64, offset: 1408)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4493)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_default", file: !311, line: 56, size: 64, elements: !4494)
!4494 = !{!4495, !4496}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4493, file: !311, line: 57, baseType: !7, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !4493, file: !311, line: 58, baseType: !7, size: 32, offset: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults", scope: !4438, file: !311, line: 380, baseType: !7, size: 32, offset: 1472)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "cache_type", scope: !4438, file: !311, line: 381, baseType: !310, size: 32, offset: 1504)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults_raw", scope: !4438, file: !311, line: 382, baseType: !2242, size: 64, offset: 1536)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults_raw", scope: !4438, file: !311, line: 383, baseType: !7, size: 32, offset: 1600)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !4438, file: !311, line: 385, baseType: !337, size: 64, offset: 1664)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag_mask", scope: !4438, file: !311, line: 386, baseType: !337, size: 64, offset: 1728)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "zero_flag_mask", scope: !4438, file: !311, line: 387, baseType: !843, size: 8, offset: 1792)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_read", scope: !4438, file: !311, line: 389, baseType: !843, size: 8, offset: 1800)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_write", scope: !4438, file: !311, line: 390, baseType: !843, size: 8, offset: 1808)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "can_multi_write", scope: !4438, file: !311, line: 391, baseType: !843, size: 8, offset: 1816)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "reg_format_endian", scope: !4438, file: !311, line: 393, baseType: !317, size: 32, offset: 1824)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "val_format_endian", scope: !4438, file: !311, line: 394, baseType: !317, size: 32, offset: 1856)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4438, file: !311, line: 396, baseType: !4510, size: 64, offset: 1920)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "num_ranges", scope: !4438, file: !311, line: 397, baseType: !7, size: 32, offset: 1984)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "use_hwlock", scope: !4438, file: !311, line: 399, baseType: !843, size: 8, offset: 2016)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_id", scope: !4438, file: !311, line: 400, baseType: !7, size: 32, offset: 2048)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_mode", scope: !4438, file: !311, line: 401, baseType: !7, size: 32, offset: 2080)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !4438, file: !311, line: 403, baseType: !843, size: 8, offset: 2112)
!4516 = !DIGlobalVariableExpression(var: !4517, expr: !DIExpression())
!4517 = distinct !DIGlobalVariable(name: "regmap_config1", scope: !4420, file: !3, line: 587, type: !4437, isLocal: true, isDefinition: true)
!4518 = !DIGlobalVariableExpression(var: !4519, expr: !DIExpression())
!4519 = distinct !DIGlobalVariable(name: "cxd2820r_ops", scope: !2, file: !3, line: 463, type: !4520, isLocal: true, isDefinition: true)
!4520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4521)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !147, line: 435, size: 6016, elements: !4522)
!4522 = !{!4523, !4535, !4536, !4663, !4664, !4665, !4669, !4670, !4676, !4681, !4685, !4686, !4696, !4701, !4705, !4709, !4714, !4715, !4716, !4717, !4727, !4738, !4742, !4746, !4750, !4754, !4758, !4762, !4763, !4764, !4768, !4822}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4521, file: !147, line: 436, baseType: !4524, size: 1280)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !147, line: 338, size: 1280, elements: !4525)
!4525 = !{!4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4524, file: !147, line: 339, baseType: !3613, size: 1024)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4524, file: !147, line: 340, baseType: !445, size: 32, offset: 1024)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4524, file: !147, line: 341, baseType: !445, size: 32, offset: 1056)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4524, file: !147, line: 342, baseType: !445, size: 32, offset: 1088)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4524, file: !147, line: 343, baseType: !445, size: 32, offset: 1120)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4524, file: !147, line: 344, baseType: !445, size: 32, offset: 1152)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4524, file: !147, line: 345, baseType: !445, size: 32, offset: 1184)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4524, file: !147, line: 346, baseType: !445, size: 32, offset: 1216)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4524, file: !147, line: 347, baseType: !102, size: 32, offset: 1248)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4521, file: !147, line: 438, baseType: !4387, size: 64, offset: 1280)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4521, file: !147, line: 440, baseType: !4537, size: 64, offset: 1344)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{null, !4540}
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !147, line: 686, size: 10240, elements: !4542)
!4542 = !{!4543, !4544, !4545, !4579, !4580, !4581, !4582, !4583, !4584, !4657, !4661, !4662}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4541, file: !147, line: 687, baseType: !2389, size: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4541, file: !147, line: 688, baseType: !4521, size: 6016, offset: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4541, file: !147, line: 689, baseType: !4546, size: 64, offset: 6080)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !280, line: 101, size: 960, elements: !4548)
!4548 = !{!4549, !4550, !4551, !4552, !4553, !4555, !4556, !4557, !4558, !4559, !4578}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4547, file: !280, line: 102, baseType: !384, size: 32)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4547, file: !280, line: 103, baseType: !536, size: 128, offset: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4547, file: !280, line: 104, baseType: !536, size: 128, offset: 192)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4547, file: !280, line: 105, baseType: !814, size: 64, offset: 320)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4547, file: !280, line: 106, baseType: !4554, size: 48, offset: 384)
!4554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 48, elements: !2561)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4547, file: !280, line: 107, baseType: !338, size: 64, offset: 448)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4547, file: !280, line: 109, baseType: !3524, size: 64, offset: 512)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4547, file: !280, line: 111, baseType: !339, size: 64, offset: 576)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4547, file: !280, line: 113, baseType: !384, size: 32, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4547, file: !280, line: 114, baseType: !4560, size: 64, offset: 704)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !280, line: 157, size: 704, elements: !4562)
!4562 = !{!4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4577}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4561, file: !280, line: 158, baseType: !536, size: 128)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4561, file: !280, line: 159, baseType: !1853, size: 64, offset: 128)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4561, file: !280, line: 160, baseType: !4546, size: 64, offset: 192)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4561, file: !280, line: 161, baseType: !279, size: 32, offset: 256)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4561, file: !280, line: 162, baseType: !384, size: 32, offset: 288)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4561, file: !280, line: 163, baseType: !445, size: 32, offset: 320)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4561, file: !280, line: 167, baseType: !384, size: 32, offset: 352)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4561, file: !280, line: 168, baseType: !384, size: 32, offset: 384)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4561, file: !280, line: 169, baseType: !384, size: 32, offset: 416)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4561, file: !280, line: 171, baseType: !1636, size: 128, offset: 448)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4561, file: !280, line: 173, baseType: !4574, size: 64, offset: 576)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!384, !715, !7, !338}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4561, file: !280, line: 187, baseType: !338, size: 64, offset: 640)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4547, file: !280, line: 115, baseType: !1082, size: 192, offset: 768)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4541, file: !147, line: 690, baseType: !338, size: 64, offset: 6144)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4541, file: !147, line: 691, baseType: !338, size: 64, offset: 6208)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4541, file: !147, line: 692, baseType: !338, size: 64, offset: 6272)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4541, file: !147, line: 693, baseType: !338, size: 64, offset: 6336)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4541, file: !147, line: 694, baseType: !338, size: 64, offset: 6400)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4541, file: !147, line: 695, baseType: !4585, size: 3648, offset: 6464)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !147, line: 586, size: 3648, elements: !4586)
!4586 = !{!4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4650, !4651, !4652, !4653, !4654, !4655, !4656}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4585, file: !147, line: 587, baseType: !445, size: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4585, file: !147, line: 588, baseType: !153, size: 32, offset: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4585, file: !147, line: 590, baseType: !169, size: 32, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4585, file: !147, line: 591, baseType: !174, size: 32, offset: 96)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4585, file: !147, line: 592, baseType: !178, size: 32, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4585, file: !147, line: 593, baseType: !183, size: 32, offset: 160)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4585, file: !147, line: 594, baseType: !198, size: 32, offset: 192)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4585, file: !147, line: 595, baseType: !445, size: 32, offset: 224)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4585, file: !147, line: 596, baseType: !209, size: 32, offset: 256)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4585, file: !147, line: 597, baseType: !222, size: 32, offset: 288)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4585, file: !147, line: 598, baseType: !445, size: 32, offset: 320)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4585, file: !147, line: 599, baseType: !183, size: 32, offset: 352)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4585, file: !147, line: 600, baseType: !183, size: 32, offset: 384)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4585, file: !147, line: 602, baseType: !229, size: 32, offset: 416)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4585, file: !147, line: 603, baseType: !234, size: 32, offset: 448)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4585, file: !147, line: 605, baseType: !240, size: 32, offset: 480)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4585, file: !147, line: 607, baseType: !261, size: 32, offset: 512)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4585, file: !147, line: 610, baseType: !430, size: 8, offset: 544)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4585, file: !147, line: 611, baseType: !430, size: 8, offset: 552)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4585, file: !147, line: 612, baseType: !430, size: 8, offset: 560)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4585, file: !147, line: 613, baseType: !445, size: 32, offset: 576)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4585, file: !147, line: 614, baseType: !445, size: 32, offset: 608)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4585, file: !147, line: 615, baseType: !430, size: 8, offset: 640)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4585, file: !147, line: 621, baseType: !4611, size: 384, offset: 672)
!4611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4612, size: 384, elements: !1008)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4585, file: !147, line: 616, size: 128, elements: !4613)
!4613 = !{!4614, !4615, !4616, !4617}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4612, file: !147, line: 617, baseType: !430, size: 8)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4612, file: !147, line: 618, baseType: !183, size: 32, offset: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4612, file: !147, line: 619, baseType: !153, size: 32, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4612, file: !147, line: 620, baseType: !430, size: 8, offset: 96)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4585, file: !147, line: 624, baseType: !445, size: 32, offset: 1056)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4585, file: !147, line: 627, baseType: !445, size: 32, offset: 1088)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4585, file: !147, line: 630, baseType: !430, size: 8, offset: 1120)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4585, file: !147, line: 631, baseType: !430, size: 8, offset: 1128)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4585, file: !147, line: 632, baseType: !430, size: 8, offset: 1136)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4585, file: !147, line: 633, baseType: !430, size: 8, offset: 1144)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4585, file: !147, line: 634, baseType: !430, size: 8, offset: 1152)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4585, file: !147, line: 635, baseType: !430, size: 8, offset: 1160)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4585, file: !147, line: 637, baseType: !430, size: 8, offset: 1168)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4585, file: !147, line: 638, baseType: !430, size: 8, offset: 1176)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4585, file: !147, line: 639, baseType: !430, size: 8, offset: 1184)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4585, file: !147, line: 640, baseType: !430, size: 8, offset: 1192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4585, file: !147, line: 641, baseType: !430, size: 8, offset: 1200)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4585, file: !147, line: 642, baseType: !430, size: 8, offset: 1208)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4585, file: !147, line: 643, baseType: !430, size: 8, offset: 1216)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4585, file: !147, line: 644, baseType: !430, size: 8, offset: 1224)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4585, file: !147, line: 645, baseType: !430, size: 8, offset: 1232)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4585, file: !147, line: 647, baseType: !445, size: 32, offset: 1248)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4585, file: !147, line: 650, baseType: !4637, size: 296, offset: 1280)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !103, line: 825, size: 296, elements: !4638)
!4638 = !{!4639, !4640}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4637, file: !103, line: 826, baseType: !421, size: 8)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4637, file: !103, line: 827, baseType: !4641, size: 288, offset: 8)
!4641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4642, size: 288, elements: !2462)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !103, line: 803, size: 72, elements: !4643)
!4643 = !{!4644, !4645}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4642, file: !103, line: 804, baseType: !421, size: 8)
!4645 = !DIDerivedType(tag: DW_TAG_member, scope: !4642, file: !103, line: 805, baseType: !4646, size: 64, offset: 8)
!4646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4642, file: !103, line: 805, size: 64, elements: !4647)
!4647 = !{!4648, !4649}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4646, file: !103, line: 806, baseType: !544, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4646, file: !103, line: 807, baseType: !574, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4585, file: !147, line: 651, baseType: !4637, size: 296, offset: 1576)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4585, file: !147, line: 652, baseType: !4637, size: 296, offset: 1872)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4585, file: !147, line: 653, baseType: !4637, size: 296, offset: 2168)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4585, file: !147, line: 654, baseType: !4637, size: 296, offset: 2464)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4585, file: !147, line: 655, baseType: !4637, size: 296, offset: 2760)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4585, file: !147, line: 656, baseType: !4637, size: 296, offset: 3056)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4585, file: !147, line: 657, baseType: !4637, size: 296, offset: 3352)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4541, file: !147, line: 698, baseType: !4658, size: 64, offset: 10112)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!384, !338, !384, !384, !384}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4541, file: !147, line: 699, baseType: !384, size: 32, offset: 10176)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4541, file: !147, line: 700, baseType: !7, size: 32, offset: 10208)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4521, file: !147, line: 441, baseType: !4537, size: 64, offset: 1408)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4521, file: !147, line: 442, baseType: !4537, size: 64, offset: 1472)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4521, file: !147, line: 444, baseType: !4666, size: 64, offset: 1536)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!384, !4540}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4521, file: !147, line: 445, baseType: !4666, size: 64, offset: 1600)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4521, file: !147, line: 447, baseType: !4671, size: 64, offset: 1664)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!384, !4540, !4674, !384}
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4521, file: !147, line: 450, baseType: !4677, size: 64, offset: 1728)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!384, !4540, !843, !7, !1656, !4680}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4521, file: !147, line: 457, baseType: !4682, size: 64, offset: 1792)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!146, !4540}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4521, file: !147, line: 460, baseType: !4666, size: 64, offset: 1856)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4521, file: !147, line: 461, baseType: !4687, size: 64, offset: 1920)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!384, !4540, !4690}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !147, line: 69, size: 96, elements: !4692)
!4692 = !{!4693, !4694, !4695}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4691, file: !147, line: 70, baseType: !384, size: 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4691, file: !147, line: 71, baseType: !384, size: 32, offset: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4691, file: !147, line: 72, baseType: !384, size: 32, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4521, file: !147, line: 463, baseType: !4697, size: 64, offset: 1984)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!384, !4540, !4700}
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4521, file: !147, line: 466, baseType: !4702, size: 64, offset: 2048)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!384, !4540, !4680}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4521, file: !147, line: 467, baseType: !4706, size: 64, offset: 2112)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!384, !4540, !2860}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4521, file: !147, line: 468, baseType: !4710, size: 64, offset: 2176)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!384, !4540, !4713}
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4521, file: !147, line: 469, baseType: !4710, size: 64, offset: 2240)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4521, file: !147, line: 470, baseType: !4706, size: 64, offset: 2304)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4521, file: !147, line: 472, baseType: !4666, size: 64, offset: 2368)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4521, file: !147, line: 473, baseType: !4718, size: 64, offset: 2432)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!384, !4540, !4721}
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !103, line: 173, size: 56, elements: !4723)
!4723 = !{!4724, !4726}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4722, file: !103, line: 174, baseType: !4725, size: 48)
!4725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 48, elements: !2561)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4722, file: !103, line: 175, baseType: !421, size: 8, offset: 48)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4521, file: !147, line: 474, baseType: !4728, size: 64, offset: 2496)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!384, !4540, !4731}
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !103, line: 195, size: 96, elements: !4733)
!4733 = !{!4734, !4736, !4737}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4732, file: !103, line: 196, baseType: !4735, size: 32)
!4735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 32, elements: !2462)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4732, file: !103, line: 197, baseType: !421, size: 8, offset: 32)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4732, file: !103, line: 198, baseType: !384, size: 32, offset: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4521, file: !147, line: 475, baseType: !4739, size: 64, offset: 2560)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!384, !4540, !267}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4521, file: !147, line: 477, baseType: !4743, size: 64, offset: 2624)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!384, !4540, !174}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4521, file: !147, line: 478, baseType: !4747, size: 64, offset: 2688)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!384, !4540, !169}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4521, file: !147, line: 480, baseType: !4751, size: 64, offset: 2752)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!384, !4540, !344}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4521, file: !147, line: 481, baseType: !4755, size: 64, offset: 2816)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!384, !4540, !337}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4521, file: !147, line: 482, baseType: !4759, size: 64, offset: 2880)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!384, !4540, !384}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4521, file: !147, line: 483, baseType: !4759, size: 64, offset: 2944)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4521, file: !147, line: 484, baseType: !4666, size: 64, offset: 3008)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4521, file: !147, line: 490, baseType: !4765, size: 64, offset: 3072)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!271, !4540}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4521, file: !147, line: 492, baseType: !4769, size: 2304, offset: 3136)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !147, line: 226, size: 2304, elements: !4770)
!4770 = !{!4771, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4798, !4802, !4803, !4804, !4805, !4806, !4807, !4812, !4817, !4821}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4769, file: !147, line: 228, baseType: !4772, size: 1216)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !147, line: 88, size: 1216, elements: !4773)
!4773 = !{!4774, !4775, !4776, !4777, !4778, !4779, !4780}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4772, file: !147, line: 89, baseType: !3613, size: 1024)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4772, file: !147, line: 91, baseType: !445, size: 32, offset: 1024)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4772, file: !147, line: 92, baseType: !445, size: 32, offset: 1056)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4772, file: !147, line: 93, baseType: !445, size: 32, offset: 1088)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4772, file: !147, line: 95, baseType: !445, size: 32, offset: 1120)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4772, file: !147, line: 96, baseType: !445, size: 32, offset: 1152)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4772, file: !147, line: 97, baseType: !445, size: 32, offset: 1184)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4769, file: !147, line: 230, baseType: !4537, size: 64, offset: 1216)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4769, file: !147, line: 231, baseType: !4666, size: 64, offset: 1280)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4769, file: !147, line: 232, baseType: !4666, size: 64, offset: 1344)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4769, file: !147, line: 233, baseType: !4666, size: 64, offset: 1408)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4769, file: !147, line: 234, baseType: !4666, size: 64, offset: 1472)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4769, file: !147, line: 237, baseType: !4666, size: 64, offset: 1536)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4769, file: !147, line: 238, baseType: !4788, size: 64, offset: 1600)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!384, !4540, !4791}
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !147, line: 114, size: 192, elements: !4793)
!4793 = !{!4794, !4795, !4796, !4797}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4792, file: !147, line: 115, baseType: !7, size: 32)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4792, file: !147, line: 116, baseType: !7, size: 32, offset: 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4792, file: !147, line: 117, baseType: !7, size: 32, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4792, file: !147, line: 118, baseType: !543, size: 64, offset: 128)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4769, file: !147, line: 240, baseType: !4799, size: 64, offset: 1664)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!384, !4540, !338}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4769, file: !147, line: 242, baseType: !4706, size: 64, offset: 1728)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4769, file: !147, line: 243, baseType: !4706, size: 64, offset: 1792)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4769, file: !147, line: 244, baseType: !4706, size: 64, offset: 1856)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4769, file: !147, line: 248, baseType: !4706, size: 64, offset: 1920)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4769, file: !147, line: 249, baseType: !4710, size: 64, offset: 1984)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4769, file: !147, line: 250, baseType: !4808, size: 64, offset: 2048)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!384, !4540, !4811}
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4769, file: !147, line: 258, baseType: !4813, size: 64, offset: 2112)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!384, !4540, !4816, !384}
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4769, file: !147, line: 267, baseType: !4818, size: 64, offset: 2176)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!384, !4540, !445}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4769, file: !147, line: 268, baseType: !4818, size: 64, offset: 2240)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4521, file: !147, line: 493, baseType: !4823, size: 576, offset: 5440)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !147, line: 302, size: 576, elements: !4824)
!4824 = !{!4825, !4829, !4833, !4834, !4835, !4836, !4837, !4838, !4839}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4823, file: !147, line: 304, baseType: !4826, size: 64)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !147, line: 276, size: 64, elements: !4827)
!4827 = !{!4828}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4826, file: !147, line: 277, baseType: !838, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4823, file: !147, line: 306, baseType: !4830, size: 64, offset: 64)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{null, !4540, !4791}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4823, file: !147, line: 308, baseType: !4710, size: 64, offset: 128)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4823, file: !147, line: 309, baseType: !4808, size: 64, offset: 192)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4823, file: !147, line: 310, baseType: !4537, size: 64, offset: 256)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4823, file: !147, line: 311, baseType: !4537, size: 64, offset: 320)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4823, file: !147, line: 312, baseType: !4537, size: 64, offset: 384)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4823, file: !147, line: 313, baseType: !4759, size: 64, offset: 448)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4823, file: !147, line: 316, baseType: !4799, size: 64, offset: 512)
!4840 = !DIGlobalVariableExpression(var: !4841, expr: !DIExpression())
!4841 = distinct !DIGlobalVariable(name: "cxd2820r_id_table", scope: !2, file: !3, line: 728, type: !4842, isLocal: true, isDefinition: true)
!4842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4332, size: 512, elements: !2502)
!4843 = !{i32 7, !"Dwarf Version", i32 4}
!4844 = !{i32 2, !"Debug Info Version", i32 3}
!4845 = !{i32 1, !"wchar_size", i32 2}
!4846 = !{i32 1, !"Code Model", i32 2}
!4847 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4848 = distinct !DISubprogram(name: "cxd2820r_wr_reg_val_mask_tab", scope: !3, file: !3, line: 12, type: !4849, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !475)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!384, !4851, !5012, !384}
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cxd2820r_priv", file: !4853, line: 28, size: 15488, elements: !4854)
!4853 = !DIFile(filename: "drivers/media/dvb-frontends/cxd2820r_priv.h", directory: "/home/lizy2001/genbc/linux")
!4854 = !{!4855, !4857, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4872, !5010, !5011}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !4852, file: !4853, line: 29, baseType: !4856, size: 128)
!4856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 128, elements: !2502)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "regmap", scope: !4852, file: !4853, line: 30, baseType: !4858, size: 128, offset: 128)
!4858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4859, size: 128, elements: !2502)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !311, line: 33, flags: DIFlagFwdDecl)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4852, file: !4853, line: 31, baseType: !396, size: 64, offset: 256)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "fe", scope: !4852, file: !4853, line: 32, baseType: !4541, size: 10240, offset: 320)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "ts_mode", scope: !4852, file: !4853, line: 33, baseType: !430, size: 8, offset: 10560)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "ts_clk_inv", scope: !4852, file: !4853, line: 34, baseType: !843, size: 8, offset: 10568)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "if_agc_polarity", scope: !4852, file: !4853, line: 35, baseType: !843, size: 8, offset: 10576)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "spec_inv", scope: !4852, file: !4853, line: 36, baseType: !843, size: 8, offset: 10584)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error_prev_dvbv3", scope: !4852, file: !4853, line: 38, baseType: !543, size: 64, offset: 10624)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4852, file: !4853, line: 39, baseType: !543, size: 64, offset: 10688)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "ber_running", scope: !4852, file: !4853, line: 41, baseType: !843, size: 8, offset: 10752)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !4852, file: !4853, line: 44, baseType: !4871, size: 24, offset: 10760)
!4871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 24, elements: !1008)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_chip", scope: !4852, file: !4853, line: 46, baseType: !4873, size: 4608, offset: 10816)
!4873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_chip", file: !4874, line: 358, size: 4608, elements: !4875)
!4874 = !DIFile(filename: "./include/linux/gpio/driver.h", directory: "/home/lizy2001/genbc/linux")
!4875 = !{!4876, !4877, !4880, !4881, !4882, !4887, !4891, !4892, !4893, !4897, !4898, !4902, !4906, !4910, !4914, !4915, !4919, !4923, !4927, !4928, !4929, !4932, !4933, !4937, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4995, !4996, !4997, !4998}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !4873, file: !4874, line: 359, baseType: !814, size: 64)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "gpiodev", scope: !4873, file: !4874, line: 360, baseType: !4878, size: 64, offset: 64)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_device", file: !4874, line: 18, flags: DIFlagFwdDecl)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4873, file: !4874, line: 361, baseType: !3524, size: 64, offset: 128)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4873, file: !4874, line: 362, baseType: !339, size: 64, offset: 192)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4873, file: !4874, line: 364, baseType: !4883, size: 64, offset: 256)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!384, !4886, !7}
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4873, file: !4874, line: 366, baseType: !4888, size: 64, offset: 320)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{null, !4886, !7}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "get_direction", scope: !4873, file: !4874, line: 368, baseType: !4883, size: 64, offset: 384)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "direction_input", scope: !4873, file: !4874, line: 370, baseType: !4883, size: 64, offset: 448)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "direction_output", scope: !4873, file: !4874, line: 372, baseType: !4894, size: 64, offset: 512)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!384, !4886, !7, !384}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4873, file: !4874, line: 374, baseType: !4883, size: 64, offset: 576)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "get_multiple", scope: !4873, file: !4874, line: 376, baseType: !4899, size: 64, offset: 640)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!384, !4886, !3957, !3957}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4873, file: !4874, line: 379, baseType: !4903, size: 64, offset: 704)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{null, !4886, !7, !384}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "set_multiple", scope: !4873, file: !4874, line: 381, baseType: !4907, size: 64, offset: 768)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{null, !4886, !3957, !3957}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4873, file: !4874, line: 384, baseType: !4911, size: 64, offset: 832)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!384, !4886, !7, !337}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "to_irq", scope: !4873, file: !4874, line: 387, baseType: !4883, size: 64, offset: 896)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_show", scope: !4873, file: !4874, line: 390, baseType: !4916, size: 64, offset: 960)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{null, !1070, !4886}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "init_valid_mask", scope: !4873, file: !4874, line: 393, baseType: !4920, size: 64, offset: 1024)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!384, !4886, !3957, !7}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "add_pin_ranges", scope: !4873, file: !4874, line: 397, baseType: !4924, size: 64, offset: 1088)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!384, !4886}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4873, file: !4874, line: 399, baseType: !384, size: 32, offset: 1152)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "ngpio", scope: !4873, file: !4874, line: 400, baseType: !428, size: 16, offset: 1184)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !4873, file: !4874, line: 401, baseType: !4930, size: 64, offset: 1216)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !4873, file: !4874, line: 402, baseType: !843, size: 8, offset: 1280)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "read_reg", scope: !4873, file: !4874, line: 405, baseType: !4934, size: 64, offset: 1344)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!337, !338}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "write_reg", scope: !4873, file: !4874, line: 406, baseType: !4938, size: 64, offset: 1408)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{null, !338, !337}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "be_bits", scope: !4873, file: !4874, line: 407, baseType: !843, size: 8, offset: 1472)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "reg_dat", scope: !4873, file: !4874, line: 408, baseType: !338, size: 64, offset: 1536)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "reg_set", scope: !4873, file: !4874, line: 409, baseType: !338, size: 64, offset: 1600)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "reg_clr", scope: !4873, file: !4874, line: 410, baseType: !338, size: 64, offset: 1664)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "reg_dir_out", scope: !4873, file: !4874, line: 411, baseType: !338, size: 64, offset: 1728)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "reg_dir_in", scope: !4873, file: !4874, line: 412, baseType: !338, size: 64, offset: 1792)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_dir_unreadable", scope: !4873, file: !4874, line: 413, baseType: !843, size: 8, offset: 1856)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_bits", scope: !4873, file: !4874, line: 414, baseType: !384, size: 32, offset: 1888)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_lock", scope: !4873, file: !4874, line: 415, baseType: !1093, offset: 1920)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_data", scope: !4873, file: !4874, line: 416, baseType: !337, size: 64, offset: 1920)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_dir", scope: !4873, file: !4874, line: 417, baseType: !337, size: 64, offset: 1984)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4873, file: !4874, line: 432, baseType: !4953, size: 2304, offset: 2048)
!4953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_irq_chip", file: !4874, line: 31, size: 2304, elements: !4954)
!4954 = !{!4955, !4956, !4957, !4958, !4959, !4960, !4964, !4968, !4972, !4973, !4974, !4975, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4989, !4990, !4991, !4992, !4993, !4994}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4953, file: !4874, line: 37, baseType: !3989, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4953, file: !4874, line: 45, baseType: !3803, size: 64, offset: 64)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "domain_ops", scope: !4953, file: !4874, line: 52, baseType: !3809, size: 64, offset: 128)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4953, file: !4874, line: 61, baseType: !3830, size: 64, offset: 192)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "parent_domain", scope: !4953, file: !4874, line: 71, baseType: !3803, size: 64, offset: 256)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "child_to_parent_hwirq", scope: !4953, file: !4874, line: 90, baseType: !4961, size: 64, offset: 320)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!384, !4886, !7, !7, !1656, !1656}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "populate_parent_alloc_arg", scope: !4953, file: !4874, line: 105, baseType: !4965, size: 64, offset: 384)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!338, !4886, !7, !7}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "child_offset_to_irq", scope: !4953, file: !4874, line: 117, baseType: !4969, size: 64, offset: 448)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!7, !4886, !7}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "child_irq_domain_ops", scope: !4953, file: !4874, line: 128, baseType: !3811, size: 640, offset: 512)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4953, file: !4874, line: 137, baseType: !4143, size: 64, offset: 1152)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !4953, file: !4874, line: 145, baseType: !7, size: 32, offset: 1216)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !4953, file: !4874, line: 152, baseType: !4976, size: 64, offset: 1280)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !4953, file: !4874, line: 159, baseType: !4976, size: 64, offset: 1344)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "parent_handler", scope: !4953, file: !4874, line: 167, baseType: !4143, size: 64, offset: 1408)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "parent_handler_data", scope: !4953, file: !4874, line: 175, baseType: !338, size: 64, offset: 1472)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !4953, file: !4874, line: 182, baseType: !7, size: 32, offset: 1536)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "parents", scope: !4953, file: !4874, line: 190, baseType: !1656, size: 64, offset: 1600)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4953, file: !4874, line: 197, baseType: !1656, size: 64, offset: 1664)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4953, file: !4874, line: 204, baseType: !843, size: 8, offset: 1728)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "init_hw", scope: !4953, file: !4874, line: 212, baseType: !4924, size: 64, offset: 1792)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "init_valid_mask", scope: !4953, file: !4874, line: 223, baseType: !4986, size: 64, offset: 1856)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{null, !4886, !3957, !7}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "valid_mask", scope: !4953, file: !4874, line: 233, baseType: !3957, size: 64, offset: 1920)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4953, file: !4874, line: 241, baseType: !7, size: 32, offset: 1984)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !4953, file: !4874, line: 248, baseType: !3999, size: 64, offset: 2048)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !4953, file: !4874, line: 255, baseType: !3999, size: 64, offset: 2112)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !4953, file: !4874, line: 261, baseType: !3999, size: 64, offset: 2176)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !4953, file: !4874, line: 268, baseType: !3999, size: 64, offset: 2240)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "valid_mask", scope: !4873, file: !4874, line: 441, baseType: !3957, size: 64, offset: 4352)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4873, file: !4874, line: 454, baseType: !3817, size: 64, offset: 4416)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "of_gpio_n_cells", scope: !4873, file: !4874, line: 461, baseType: !7, size: 32, offset: 4480)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !4873, file: !4874, line: 469, baseType: !4999, size: 64, offset: 4544)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!384, !4886, !5002, !2860}
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5004)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !3819, line: 74, size: 640, elements: !5005)
!5005 = !{!5006, !5007, !5008}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !5004, file: !3819, line: 75, baseType: !3817, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !5004, file: !3819, line: 76, baseType: !384, size: 32, offset: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5004, file: !3819, line: 77, baseType: !5009, size: 512, offset: 96)
!5009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !910, size: 512, elements: !1683)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4852, file: !4853, line: 49, baseType: !240, size: 32, offset: 15424)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "last_tune_failed", scope: !4852, file: !4853, line: 50, baseType: !843, size: 8, offset: 15456)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5014)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_val_mask", file: !4853, line: 20, size: 64, elements: !5015)
!5015 = !{!5016, !5017, !5018}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5014, file: !4853, line: 21, baseType: !445, size: 32)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5014, file: !4853, line: 22, baseType: !430, size: 8, offset: 32)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5014, file: !4853, line: 23, baseType: !430, size: 8, offset: 40)
!5019 = !DILocalVariable(name: "priv", arg: 1, scope: !4848, file: !3, line: 12, type: !4851)
!5020 = !DILocation(line: 12, column: 56, scope: !4848)
!5021 = !DILocalVariable(name: "tab", arg: 2, scope: !4848, file: !3, line: 13, type: !5012)
!5022 = !DILocation(line: 13, column: 33, scope: !4848)
!5023 = !DILocalVariable(name: "tab_len", arg: 3, scope: !4848, file: !3, line: 13, type: !384)
!5024 = !DILocation(line: 13, column: 42, scope: !4848)
!5025 = !DILocalVariable(name: "client", scope: !4848, file: !3, line: 15, type: !385)
!5026 = !DILocation(line: 15, column: 21, scope: !4848)
!5027 = !DILocation(line: 15, column: 30, scope: !4848)
!5028 = !DILocation(line: 15, column: 36, scope: !4848)
!5029 = !DILocalVariable(name: "ret", scope: !4848, file: !3, line: 16, type: !384)
!5030 = !DILocation(line: 16, column: 6, scope: !4848)
!5031 = !DILocalVariable(name: "i", scope: !4848, file: !3, line: 17, type: !7)
!5032 = !DILocation(line: 17, column: 15, scope: !4848)
!5033 = !DILocalVariable(name: "reg", scope: !4848, file: !3, line: 17, type: !7)
!5034 = !DILocation(line: 17, column: 18, scope: !4848)
!5035 = !DILocalVariable(name: "mask", scope: !4848, file: !3, line: 17, type: !7)
!5036 = !DILocation(line: 17, column: 23, scope: !4848)
!5037 = !DILocalVariable(name: "val", scope: !4848, file: !3, line: 17, type: !7)
!5038 = !DILocation(line: 17, column: 29, scope: !4848)
!5039 = !DILocalVariable(name: "regmap", scope: !4848, file: !3, line: 18, type: !4859)
!5040 = !DILocation(line: 18, column: 17, scope: !4848)
!5041 = !DILocation(line: 22, column: 9, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 22, column: 2)
!5043 = !DILocation(line: 22, column: 7, scope: !5042)
!5044 = !DILocation(line: 22, column: 14, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 22, column: 2)
!5046 = !DILocation(line: 22, column: 18, scope: !5045)
!5047 = !DILocation(line: 22, column: 16, scope: !5045)
!5048 = !DILocation(line: 22, column: 2, scope: !5042)
!5049 = !DILocation(line: 23, column: 8, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 23, column: 7)
!5051 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 22, column: 32)
!5052 = !DILocation(line: 23, column: 12, scope: !5050)
!5053 = !DILocation(line: 23, column: 15, scope: !5050)
!5054 = !DILocation(line: 23, column: 19, scope: !5050)
!5055 = !DILocation(line: 23, column: 26, scope: !5050)
!5056 = !DILocation(line: 23, column: 7, scope: !5051)
!5057 = !DILocation(line: 24, column: 13, scope: !5050)
!5058 = !DILocation(line: 24, column: 19, scope: !5050)
!5059 = !DILocation(line: 24, column: 11, scope: !5050)
!5060 = !DILocation(line: 24, column: 4, scope: !5050)
!5061 = !DILocation(line: 26, column: 13, scope: !5050)
!5062 = !DILocation(line: 26, column: 19, scope: !5050)
!5063 = !DILocation(line: 26, column: 11, scope: !5050)
!5064 = !DILocation(line: 28, column: 10, scope: !5051)
!5065 = !DILocation(line: 28, column: 14, scope: !5051)
!5066 = !DILocation(line: 28, column: 17, scope: !5051)
!5067 = !DILocation(line: 28, column: 21, scope: !5051)
!5068 = !DILocation(line: 28, column: 27, scope: !5051)
!5069 = !DILocation(line: 28, column: 7, scope: !5051)
!5070 = !DILocation(line: 29, column: 9, scope: !5051)
!5071 = !DILocation(line: 29, column: 13, scope: !5051)
!5072 = !DILocation(line: 29, column: 16, scope: !5051)
!5073 = !DILocation(line: 29, column: 7, scope: !5051)
!5074 = !DILocation(line: 30, column: 10, scope: !5051)
!5075 = !DILocation(line: 30, column: 14, scope: !5051)
!5076 = !DILocation(line: 30, column: 17, scope: !5051)
!5077 = !DILocation(line: 30, column: 8, scope: !5051)
!5078 = !DILocation(line: 32, column: 7, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 32, column: 7)
!5080 = !DILocation(line: 32, column: 12, scope: !5079)
!5081 = !DILocation(line: 32, column: 7, scope: !5051)
!5082 = !DILocation(line: 33, column: 23, scope: !5079)
!5083 = !DILocation(line: 33, column: 31, scope: !5079)
!5084 = !DILocation(line: 33, column: 36, scope: !5079)
!5085 = !DILocation(line: 33, column: 10, scope: !5079)
!5086 = !DILocation(line: 33, column: 8, scope: !5079)
!5087 = !DILocation(line: 33, column: 4, scope: !5079)
!5088 = !DILocation(line: 35, column: 28, scope: !5079)
!5089 = !DILocation(line: 35, column: 36, scope: !5079)
!5090 = !DILocation(line: 35, column: 41, scope: !5079)
!5091 = !DILocation(line: 35, column: 47, scope: !5079)
!5092 = !DILocation(line: 35, column: 10, scope: !5079)
!5093 = !DILocation(line: 35, column: 8, scope: !5079)
!5094 = !DILocation(line: 36, column: 7, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 36, column: 7)
!5096 = !DILocation(line: 36, column: 7, scope: !5051)
!5097 = !DILocation(line: 37, column: 4, scope: !5095)
!5098 = !DILocation(line: 38, column: 2, scope: !5051)
!5099 = !DILocation(line: 22, column: 28, scope: !5045)
!5100 = !DILocation(line: 22, column: 2, scope: !5045)
!5101 = distinct !{!5101, !5048, !5102}
!5102 = !DILocation(line: 38, column: 2, scope: !5042)
!5103 = !DILocation(line: 40, column: 2, scope: !4848)
!5104 = !DILabel(scope: !4848, name: "error", file: !3, line: 41)
!5105 = !DILocation(line: 41, column: 1, scope: !4848)
!5106 = !DILocation(line: 43, column: 9, scope: !4848)
!5107 = !DILocation(line: 43, column: 2, scope: !4848)
!5108 = !DILocation(line: 44, column: 1, scope: !4848)
!5109 = distinct !DISubprogram(name: "regmap_write_bits", scope: !311, file: !311, line: 1097, type: !5110, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!384, !4859, !7, !7, !7}
!5112 = !DILocalVariable(name: "map", arg: 1, scope: !5109, file: !311, line: 1097, type: !4859)
!5113 = !DILocation(line: 1097, column: 52, scope: !5109)
!5114 = !DILocalVariable(name: "reg", arg: 2, scope: !5109, file: !311, line: 1097, type: !7)
!5115 = !DILocation(line: 1097, column: 70, scope: !5109)
!5116 = !DILocalVariable(name: "mask", arg: 3, scope: !5109, file: !311, line: 1098, type: !7)
!5117 = !DILocation(line: 1098, column: 22, scope: !5109)
!5118 = !DILocalVariable(name: "val", arg: 4, scope: !5109, file: !311, line: 1098, type: !7)
!5119 = !DILocation(line: 1098, column: 41, scope: !5109)
!5120 = !DILocation(line: 1100, column: 33, scope: !5109)
!5121 = !DILocation(line: 1100, column: 38, scope: !5109)
!5122 = !DILocation(line: 1100, column: 43, scope: !5109)
!5123 = !DILocation(line: 1100, column: 49, scope: !5109)
!5124 = !DILocation(line: 1100, column: 9, scope: !5109)
!5125 = !DILocation(line: 1100, column: 2, scope: !5109)
!5126 = distinct !DISubprogram(name: "cxd2820r_gpio", scope: !3, file: !3, line: 46, type: !5127, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!384, !4540, !4816}
!5129 = !DILocalVariable(name: "fe", arg: 1, scope: !5126, file: !3, line: 46, type: !4540)
!5130 = !DILocation(line: 46, column: 40, scope: !5126)
!5131 = !DILocalVariable(name: "gpio", arg: 2, scope: !5126, file: !3, line: 46, type: !4816)
!5132 = !DILocation(line: 46, column: 48, scope: !5126)
!5133 = !DILocalVariable(name: "priv", scope: !5126, file: !3, line: 48, type: !4851)
!5134 = !DILocation(line: 48, column: 24, scope: !5126)
!5135 = !DILocation(line: 48, column: 31, scope: !5126)
!5136 = !DILocation(line: 48, column: 35, scope: !5126)
!5137 = !DILocalVariable(name: "client", scope: !5126, file: !3, line: 49, type: !385)
!5138 = !DILocation(line: 49, column: 21, scope: !5126)
!5139 = !DILocation(line: 49, column: 30, scope: !5126)
!5140 = !DILocation(line: 49, column: 36, scope: !5126)
!5141 = !DILocalVariable(name: "c", scope: !5126, file: !3, line: 50, type: !4700)
!5142 = !DILocation(line: 50, column: 34, scope: !5126)
!5143 = !DILocation(line: 50, column: 39, scope: !5126)
!5144 = !DILocation(line: 50, column: 43, scope: !5126)
!5145 = !DILocalVariable(name: "ret", scope: !5126, file: !3, line: 51, type: !384)
!5146 = !DILocation(line: 51, column: 6, scope: !5126)
!5147 = !DILocalVariable(name: "i", scope: !5126, file: !3, line: 51, type: !384)
!5148 = !DILocation(line: 51, column: 11, scope: !5126)
!5149 = !DILocalVariable(name: "tmp0", scope: !5126, file: !3, line: 52, type: !430)
!5150 = !DILocation(line: 52, column: 5, scope: !5126)
!5151 = !DILocalVariable(name: "tmp1", scope: !5126, file: !3, line: 52, type: !430)
!5152 = !DILocation(line: 52, column: 11, scope: !5126)
!5153 = !DILocation(line: 57, column: 14, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 57, column: 6)
!5155 = !DILocation(line: 57, column: 20, scope: !5154)
!5156 = !DILocation(line: 57, column: 26, scope: !5154)
!5157 = !DILocation(line: 57, column: 7, scope: !5154)
!5158 = !DILocation(line: 57, column: 6, scope: !5126)
!5159 = !DILocation(line: 58, column: 3, scope: !5154)
!5160 = !DILocation(line: 60, column: 7, scope: !5126)
!5161 = !DILocation(line: 61, column: 7, scope: !5126)
!5162 = !DILocation(line: 62, column: 9, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 62, column: 2)
!5164 = !DILocation(line: 62, column: 7, scope: !5163)
!5165 = !DILocation(line: 62, column: 14, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 62, column: 2)
!5167 = !DILocation(line: 62, column: 16, scope: !5166)
!5168 = !DILocation(line: 62, column: 2, scope: !5163)
!5169 = !DILocation(line: 64, column: 7, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 64, column: 7)
!5171 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 62, column: 43)
!5172 = !DILocation(line: 64, column: 12, scope: !5170)
!5173 = !DILocation(line: 64, column: 15, scope: !5170)
!5174 = !DILocation(line: 64, column: 7, scope: !5171)
!5175 = !DILocation(line: 65, column: 29, scope: !5170)
!5176 = !DILocation(line: 65, column: 27, scope: !5170)
!5177 = !DILocation(line: 65, column: 21, scope: !5170)
!5178 = !DILocation(line: 65, column: 9, scope: !5170)
!5179 = !DILocation(line: 65, column: 4, scope: !5170)
!5180 = !DILocation(line: 67, column: 29, scope: !5170)
!5181 = !DILocation(line: 67, column: 27, scope: !5170)
!5182 = !DILocation(line: 67, column: 21, scope: !5170)
!5183 = !DILocation(line: 67, column: 9, scope: !5170)
!5184 = !DILocation(line: 70, column: 7, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 70, column: 7)
!5186 = !DILocation(line: 70, column: 12, scope: !5185)
!5187 = !DILocation(line: 70, column: 15, scope: !5185)
!5188 = !DILocation(line: 70, column: 7, scope: !5171)
!5189 = !DILocation(line: 71, column: 23, scope: !5185)
!5190 = !DILocation(line: 71, column: 21, scope: !5185)
!5191 = !DILocation(line: 71, column: 15, scope: !5185)
!5192 = !DILocation(line: 71, column: 9, scope: !5185)
!5193 = !DILocation(line: 71, column: 4, scope: !5185)
!5194 = !DILocation(line: 73, column: 23, scope: !5185)
!5195 = !DILocation(line: 73, column: 21, scope: !5185)
!5196 = !DILocation(line: 73, column: 15, scope: !5185)
!5197 = !DILocation(line: 73, column: 9, scope: !5185)
!5198 = !DILocation(line: 76, column: 7, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 76, column: 7)
!5200 = !DILocation(line: 76, column: 12, scope: !5199)
!5201 = !DILocation(line: 76, column: 15, scope: !5199)
!5202 = !DILocation(line: 76, column: 7, scope: !5171)
!5203 = !DILocation(line: 77, column: 23, scope: !5199)
!5204 = !DILocation(line: 77, column: 21, scope: !5199)
!5205 = !DILocation(line: 77, column: 15, scope: !5199)
!5206 = !DILocation(line: 77, column: 9, scope: !5199)
!5207 = !DILocation(line: 77, column: 4, scope: !5199)
!5208 = !DILocation(line: 79, column: 23, scope: !5199)
!5209 = !DILocation(line: 79, column: 21, scope: !5199)
!5210 = !DILocation(line: 79, column: 15, scope: !5199)
!5211 = !DILocation(line: 79, column: 9, scope: !5199)
!5212 = !DILocation(line: 82, column: 2, scope: !5171)
!5213 = !DILocation(line: 62, column: 39, scope: !5166)
!5214 = !DILocation(line: 62, column: 2, scope: !5166)
!5215 = distinct !{!5215, !5168, !5216}
!5216 = !DILocation(line: 82, column: 2, scope: !5163)
!5217 = !DILocation(line: 87, column: 27, scope: !5126)
!5218 = !DILocation(line: 87, column: 33, scope: !5126)
!5219 = !DILocation(line: 87, column: 58, scope: !5126)
!5220 = !DILocation(line: 87, column: 8, scope: !5126)
!5221 = !DILocation(line: 87, column: 6, scope: !5126)
!5222 = !DILocation(line: 88, column: 6, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 88, column: 6)
!5224 = !DILocation(line: 88, column: 6, scope: !5126)
!5225 = !DILocation(line: 89, column: 3, scope: !5223)
!5226 = !DILocation(line: 92, column: 27, scope: !5126)
!5227 = !DILocation(line: 92, column: 33, scope: !5126)
!5228 = !DILocation(line: 92, column: 58, scope: !5126)
!5229 = !DILocation(line: 92, column: 8, scope: !5126)
!5230 = !DILocation(line: 92, column: 6, scope: !5126)
!5231 = !DILocation(line: 93, column: 6, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 93, column: 6)
!5233 = !DILocation(line: 93, column: 6, scope: !5126)
!5234 = !DILocation(line: 94, column: 3, scope: !5232)
!5235 = !DILocation(line: 96, column: 9, scope: !5126)
!5236 = !DILocation(line: 96, column: 15, scope: !5126)
!5237 = !DILocation(line: 96, column: 2, scope: !5126)
!5238 = !DILocation(line: 96, column: 21, scope: !5126)
!5239 = !DILocation(line: 98, column: 9, scope: !5126)
!5240 = !DILocation(line: 98, column: 2, scope: !5126)
!5241 = !DILabel(scope: !5126, name: "error", file: !3, line: 99)
!5242 = !DILocation(line: 99, column: 1, scope: !5126)
!5243 = !DILocation(line: 101, column: 9, scope: !5126)
!5244 = !DILocation(line: 101, column: 2, scope: !5126)
!5245 = !DILocation(line: 102, column: 1, scope: !5126)
!5246 = distinct !DISubprogram(name: "regmap_update_bits", scope: !311, file: !311, line: 1068, type: !5110, scopeLine: 1070, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5247 = !DILocalVariable(name: "map", arg: 1, scope: !5246, file: !311, line: 1068, type: !4859)
!5248 = !DILocation(line: 1068, column: 53, scope: !5246)
!5249 = !DILocalVariable(name: "reg", arg: 2, scope: !5246, file: !311, line: 1068, type: !7)
!5250 = !DILocation(line: 1068, column: 71, scope: !5246)
!5251 = !DILocalVariable(name: "mask", arg: 3, scope: !5246, file: !311, line: 1069, type: !7)
!5252 = !DILocation(line: 1069, column: 23, scope: !5246)
!5253 = !DILocalVariable(name: "val", arg: 4, scope: !5246, file: !311, line: 1069, type: !7)
!5254 = !DILocation(line: 1069, column: 42, scope: !5246)
!5255 = !DILocation(line: 1071, column: 33, scope: !5246)
!5256 = !DILocation(line: 1071, column: 38, scope: !5246)
!5257 = !DILocation(line: 1071, column: 43, scope: !5246)
!5258 = !DILocation(line: 1071, column: 49, scope: !5246)
!5259 = !DILocation(line: 1071, column: 9, scope: !5246)
!5260 = !DILocation(line: 1071, column: 2, scope: !5246)
!5261 = distinct !DISubprogram(name: "cxd2820r_attach", scope: !3, file: !3, line: 514, type: !5262, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!4540, !5264, !396, !1064}
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5266)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cxd2820r_config", file: !5267, line: 62, size: 40, elements: !5268)
!5267 = !DIFile(filename: "drivers/media/dvb-frontends/cxd2820r.h", directory: "/home/lizy2001/genbc/linux")
!5268 = !{!5269, !5270, !5271, !5272, !5273}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_address", scope: !5266, file: !5267, line: 69, baseType: !430, size: 8)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "ts_mode", scope: !5266, file: !5267, line: 75, baseType: !430, size: 8, offset: 8)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "ts_clock_inv", scope: !5266, file: !5267, line: 81, baseType: !843, size: 8, offset: 16)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "if_agc_polarity", scope: !5266, file: !5267, line: 87, baseType: !843, size: 8, offset: 24)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "spec_inv", scope: !5266, file: !5267, line: 93, baseType: !843, size: 8, offset: 32)
!5274 = !DILocalVariable(name: "config", arg: 1, scope: !5261, file: !3, line: 514, type: !5264)
!5275 = !DILocation(line: 514, column: 68, scope: !5261)
!5276 = !DILocalVariable(name: "adapter", arg: 2, scope: !5261, file: !3, line: 515, type: !396)
!5277 = !DILocation(line: 515, column: 30, scope: !5261)
!5278 = !DILocalVariable(name: "gpio_chip_base", arg: 3, scope: !5261, file: !3, line: 516, type: !1064)
!5279 = !DILocation(line: 516, column: 15, scope: !5261)
!5280 = !DILocalVariable(name: "client", scope: !5261, file: !3, line: 518, type: !385)
!5281 = !DILocation(line: 518, column: 21, scope: !5261)
!5282 = !DILocalVariable(name: "board_info", scope: !5261, file: !3, line: 519, type: !4361)
!5283 = !DILocation(line: 519, column: 24, scope: !5261)
!5284 = !DILocalVariable(name: "pdata", scope: !5261, file: !3, line: 520, type: !5285)
!5285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cxd2820r_platform_data", file: !5267, line: 39, size: 256, elements: !5286)
!5286 = !{!5287, !5288, !5289, !5290, !5291, !5293, !5297}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "ts_mode", scope: !5285, file: !5267, line: 40, baseType: !430, size: 8)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "ts_clk_inv", scope: !5285, file: !5267, line: 41, baseType: !843, size: 8, offset: 8)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "if_agc_polarity", scope: !5285, file: !5267, line: 42, baseType: !843, size: 8, offset: 16)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "spec_inv", scope: !5285, file: !5267, line: 43, baseType: !843, size: 8, offset: 24)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_chip_base", scope: !5285, file: !5267, line: 44, baseType: !5292, size: 64, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "get_dvb_frontend", scope: !5285, file: !5267, line: 46, baseType: !5294, size: 64, offset: 128)
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5295, size: 64)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!4540, !385}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "attach_in_use", scope: !5285, file: !5267, line: 48, baseType: !843, size: 8, offset: 192)
!5298 = !DILocation(line: 520, column: 32, scope: !5261)
!5299 = !DILocation(line: 522, column: 18, scope: !5261)
!5300 = !DILocation(line: 522, column: 26, scope: !5261)
!5301 = !DILocation(line: 522, column: 8, scope: !5261)
!5302 = !DILocation(line: 522, column: 16, scope: !5261)
!5303 = !DILocation(line: 523, column: 21, scope: !5261)
!5304 = !DILocation(line: 523, column: 29, scope: !5261)
!5305 = !DILocation(line: 523, column: 8, scope: !5261)
!5306 = !DILocation(line: 523, column: 19, scope: !5261)
!5307 = !DILocation(line: 524, column: 26, scope: !5261)
!5308 = !DILocation(line: 524, column: 34, scope: !5261)
!5309 = !DILocation(line: 524, column: 8, scope: !5261)
!5310 = !DILocation(line: 524, column: 24, scope: !5261)
!5311 = !DILocation(line: 525, column: 19, scope: !5261)
!5312 = !DILocation(line: 525, column: 27, scope: !5261)
!5313 = !DILocation(line: 525, column: 8, scope: !5261)
!5314 = !DILocation(line: 525, column: 17, scope: !5261)
!5315 = !DILocation(line: 526, column: 8, scope: !5261)
!5316 = !DILocation(line: 526, column: 23, scope: !5261)
!5317 = !DILocation(line: 527, column: 8, scope: !5261)
!5318 = !DILocation(line: 527, column: 22, scope: !5261)
!5319 = !DILocation(line: 529, column: 2, scope: !5261)
!5320 = !DILocation(line: 530, column: 21, scope: !5261)
!5321 = !DILocation(line: 530, column: 10, scope: !5261)
!5322 = !DILocation(line: 530, column: 2, scope: !5261)
!5323 = !DILocation(line: 531, column: 20, scope: !5261)
!5324 = !DILocation(line: 531, column: 28, scope: !5261)
!5325 = !DILocation(line: 531, column: 13, scope: !5261)
!5326 = !DILocation(line: 531, column: 18, scope: !5261)
!5327 = !DILocation(line: 532, column: 29, scope: !5261)
!5328 = !DILocation(line: 532, column: 13, scope: !5261)
!5329 = !DILocation(line: 532, column: 27, scope: !5261)
!5330 = !DILocation(line: 533, column: 33, scope: !5261)
!5331 = !DILocation(line: 533, column: 11, scope: !5261)
!5332 = !DILocation(line: 533, column: 9, scope: !5261)
!5333 = !DILocation(line: 534, column: 29, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 534, column: 6)
!5335 = !DILocation(line: 534, column: 7, scope: !5334)
!5336 = !DILocation(line: 534, column: 6, scope: !5261)
!5337 = !DILocation(line: 535, column: 3, scope: !5334)
!5338 = !DILocation(line: 537, column: 15, scope: !5261)
!5339 = !DILocation(line: 537, column: 32, scope: !5261)
!5340 = !DILocation(line: 537, column: 9, scope: !5261)
!5341 = !DILocation(line: 537, column: 2, scope: !5261)
!5342 = !DILocation(line: 538, column: 1, scope: !5261)
!5343 = distinct !DISubprogram(name: "i2c_client_has_driver", scope: !306, file: !306, line: 857, type: !5344, scopeLine: 858, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!843, !385}
!5346 = !DILocalVariable(name: "client", arg: 1, scope: !5343, file: !306, line: 857, type: !385)
!5347 = !DILocation(line: 857, column: 61, scope: !5343)
!5348 = !DILocation(line: 859, column: 25, scope: !5343)
!5349 = !DILocation(line: 859, column: 10, scope: !5343)
!5350 = !DILocation(line: 859, column: 33, scope: !5343)
!5351 = !DILocation(line: 859, column: 36, scope: !5343)
!5352 = !DILocation(line: 859, column: 44, scope: !5343)
!5353 = !DILocation(line: 859, column: 48, scope: !5343)
!5354 = !DILocation(line: 0, scope: !5343)
!5355 = !DILocation(line: 859, column: 2, scope: !5343)
!5356 = distinct !DISubprogram(name: "cxd2820r_driver_init", scope: !3, file: !3, line: 744, type: !5357, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5357 = !DISubroutineType(types: !5358)
!5358 = !{!384}
!5359 = !DILocation(line: 744, column: 1, scope: !5356)
!5360 = distinct !DISubprogram(name: "cxd2820r_driver_exit", scope: !3, file: !3, line: 744, type: !351, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5361 = !DILocation(line: 744, column: 1, scope: !5360)
!5362 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !5363, file: !5363, line: 39, type: !5364, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5363 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5364 = !DISubroutineType(types: !5365)
!5365 = !{!843, !2242}
!5366 = !DILocalVariable(name: "ptr", arg: 1, scope: !5362, file: !5363, line: 39, type: !2242)
!5367 = !DILocation(line: 39, column: 68, scope: !5362)
!5368 = !DILocation(line: 41, column: 9, scope: !5362)
!5369 = !DILocation(line: 41, column: 24, scope: !5362)
!5370 = !DILocation(line: 41, column: 27, scope: !5362)
!5371 = !DILocation(line: 41, column: 2, scope: !5362)
!5372 = !DILocalVariable(name: "client", arg: 1, scope: !4420, file: !3, line: 550, type: !385)
!5373 = !DILocation(line: 550, column: 46, scope: !4420)
!5374 = !DILocalVariable(name: "id", arg: 2, scope: !4420, file: !3, line: 551, type: !4331)
!5375 = !DILocation(line: 551, column: 34, scope: !4420)
!5376 = !DILocalVariable(name: "pdata", scope: !4420, file: !3, line: 553, type: !5377)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5378 = !DILocation(line: 553, column: 33, scope: !4420)
!5379 = !DILocation(line: 553, column: 41, scope: !4420)
!5380 = !DILocation(line: 553, column: 49, scope: !4420)
!5381 = !DILocation(line: 553, column: 53, scope: !4420)
!5382 = !DILocalVariable(name: "priv", scope: !4420, file: !3, line: 554, type: !4851)
!5383 = !DILocation(line: 554, column: 24, scope: !4420)
!5384 = !DILocalVariable(name: "ret", scope: !4420, file: !3, line: 555, type: !384)
!5385 = !DILocation(line: 555, column: 6, scope: !4420)
!5386 = !DILocalVariable(name: "gpio_chip_base", scope: !4420, file: !3, line: 555, type: !1064)
!5387 = !DILocation(line: 555, column: 12, scope: !4420)
!5388 = !DILocalVariable(name: "utmp", scope: !4420, file: !3, line: 556, type: !7)
!5389 = !DILocation(line: 556, column: 15, scope: !4420)
!5390 = !DILocation(line: 598, column: 9, scope: !4420)
!5391 = !DILocation(line: 598, column: 7, scope: !4420)
!5392 = !DILocation(line: 599, column: 7, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 599, column: 6)
!5394 = !DILocation(line: 599, column: 6, scope: !4420)
!5395 = !DILocation(line: 600, column: 7, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 599, column: 13)
!5397 = !DILocation(line: 601, column: 3, scope: !5396)
!5398 = !DILocation(line: 604, column: 20, scope: !4420)
!5399 = !DILocation(line: 604, column: 2, scope: !4420)
!5400 = !DILocation(line: 604, column: 8, scope: !4420)
!5401 = !DILocation(line: 604, column: 18, scope: !4420)
!5402 = !DILocation(line: 605, column: 30, scope: !4420)
!5403 = !DILocation(line: 605, column: 2, scope: !4420)
!5404 = !DILocation(line: 605, column: 8, scope: !4420)
!5405 = !DILocation(line: 605, column: 11, scope: !4420)
!5406 = !DILocation(line: 605, column: 28, scope: !4420)
!5407 = !DILocation(line: 606, column: 14, scope: !4420)
!5408 = !DILocation(line: 606, column: 22, scope: !4420)
!5409 = !DILocation(line: 606, column: 2, scope: !4420)
!5410 = !DILocation(line: 606, column: 8, scope: !4420)
!5411 = !DILocation(line: 606, column: 12, scope: !4420)
!5412 = !DILocation(line: 607, column: 18, scope: !4420)
!5413 = !DILocation(line: 607, column: 25, scope: !4420)
!5414 = !DILocation(line: 607, column: 2, scope: !4420)
!5415 = !DILocation(line: 607, column: 8, scope: !4420)
!5416 = !DILocation(line: 607, column: 16, scope: !4420)
!5417 = !DILocation(line: 608, column: 21, scope: !4420)
!5418 = !DILocation(line: 608, column: 28, scope: !4420)
!5419 = !DILocation(line: 608, column: 2, scope: !4420)
!5420 = !DILocation(line: 608, column: 8, scope: !4420)
!5421 = !DILocation(line: 608, column: 19, scope: !4420)
!5422 = !DILocation(line: 609, column: 26, scope: !4420)
!5423 = !DILocation(line: 609, column: 33, scope: !4420)
!5424 = !DILocation(line: 609, column: 2, scope: !4420)
!5425 = !DILocation(line: 609, column: 8, scope: !4420)
!5426 = !DILocation(line: 609, column: 24, scope: !4420)
!5427 = !DILocation(line: 610, column: 19, scope: !4420)
!5428 = !DILocation(line: 610, column: 26, scope: !4420)
!5429 = !DILocation(line: 610, column: 2, scope: !4420)
!5430 = !DILocation(line: 610, column: 8, scope: !4420)
!5431 = !DILocation(line: 610, column: 17, scope: !4420)
!5432 = !DILocation(line: 611, column: 20, scope: !4420)
!5433 = !DILocation(line: 611, column: 27, scope: !4420)
!5434 = !DILocation(line: 611, column: 19, scope: !4420)
!5435 = !DILocation(line: 611, column: 17, scope: !4420)
!5436 = !DILocation(line: 612, column: 20, scope: !4420)
!5437 = !DILocation(line: 612, column: 2, scope: !4420)
!5438 = !DILocation(line: 612, column: 8, scope: !4420)
!5439 = !DILocation(line: 612, column: 18, scope: !4420)
!5440 = !DILocation(line: 613, column: 13, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 613, column: 6)
!5442 = !DILocation(line: 613, column: 19, scope: !5441)
!5443 = !DILocation(line: 613, column: 6, scope: !5441)
!5444 = !DILocation(line: 613, column: 6, scope: !4420)
!5445 = !DILocation(line: 614, column: 17, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 613, column: 31)
!5447 = !DILocation(line: 614, column: 23, scope: !5446)
!5448 = !DILocation(line: 614, column: 9, scope: !5446)
!5449 = !DILocation(line: 614, column: 7, scope: !5446)
!5450 = !DILocation(line: 615, column: 3, scope: !5446)
!5451 = !DILocation(line: 619, column: 20, scope: !4420)
!5452 = !DILocation(line: 619, column: 26, scope: !4420)
!5453 = !DILocation(line: 619, column: 8, scope: !4420)
!5454 = !DILocation(line: 619, column: 6, scope: !4420)
!5455 = !DILocation(line: 620, column: 6, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 620, column: 6)
!5457 = !DILocation(line: 620, column: 6, scope: !4420)
!5458 = !DILocation(line: 621, column: 3, scope: !5456)
!5459 = !DILocation(line: 625, column: 6, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 625, column: 6)
!5461 = !DILocation(line: 625, column: 11, scope: !5460)
!5462 = !DILocation(line: 625, column: 6, scope: !4420)
!5463 = !DILocation(line: 626, column: 7, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 625, column: 20)
!5465 = !DILocation(line: 627, column: 3, scope: !5464)
!5466 = !DILocation(line: 635, column: 41, scope: !4420)
!5467 = !DILocation(line: 635, column: 49, scope: !4420)
!5468 = !DILocation(line: 635, column: 58, scope: !4420)
!5469 = !DILocation(line: 635, column: 66, scope: !4420)
!5470 = !DILocation(line: 635, column: 71, scope: !4420)
!5471 = !DILocation(line: 635, column: 20, scope: !4420)
!5472 = !DILocation(line: 635, column: 2, scope: !4420)
!5473 = !DILocation(line: 635, column: 8, scope: !4420)
!5474 = !DILocation(line: 635, column: 18, scope: !4420)
!5475 = !DILocation(line: 636, column: 13, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 636, column: 6)
!5477 = !DILocation(line: 636, column: 19, scope: !5476)
!5478 = !DILocation(line: 636, column: 6, scope: !5476)
!5479 = !DILocation(line: 636, column: 6, scope: !4420)
!5480 = !DILocation(line: 637, column: 17, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 636, column: 31)
!5482 = !DILocation(line: 637, column: 23, scope: !5481)
!5483 = !DILocation(line: 637, column: 9, scope: !5481)
!5484 = !DILocation(line: 637, column: 7, scope: !5481)
!5485 = !DILocation(line: 638, column: 3, scope: !5481)
!5486 = !DILocation(line: 639, column: 3, scope: !5481)
!5487 = !DILocation(line: 642, column: 20, scope: !4420)
!5488 = !DILocation(line: 642, column: 2, scope: !4420)
!5489 = !DILocation(line: 642, column: 8, scope: !4420)
!5490 = !DILocation(line: 642, column: 18, scope: !4420)
!5491 = !DILocation(line: 643, column: 13, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 643, column: 6)
!5493 = !DILocation(line: 643, column: 19, scope: !5492)
!5494 = !DILocation(line: 643, column: 6, scope: !5492)
!5495 = !DILocation(line: 643, column: 6, scope: !4420)
!5496 = !DILocation(line: 644, column: 17, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 643, column: 31)
!5498 = !DILocation(line: 644, column: 23, scope: !5497)
!5499 = !DILocation(line: 644, column: 9, scope: !5497)
!5500 = !DILocation(line: 644, column: 7, scope: !5497)
!5501 = !DILocation(line: 645, column: 3, scope: !5497)
!5502 = !DILocation(line: 648, column: 6, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 648, column: 6)
!5504 = !DILocation(line: 648, column: 6, scope: !4420)
!5505 = !DILocation(line: 651, column: 3, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 648, column: 22)
!5507 = !DILocation(line: 651, column: 9, scope: !5506)
!5508 = !DILocation(line: 651, column: 19, scope: !5506)
!5509 = !DILocation(line: 651, column: 25, scope: !5506)
!5510 = !DILocation(line: 652, column: 29, scope: !5506)
!5511 = !DILocation(line: 652, column: 37, scope: !5506)
!5512 = !DILocation(line: 652, column: 3, scope: !5506)
!5513 = !DILocation(line: 652, column: 9, scope: !5506)
!5514 = !DILocation(line: 652, column: 19, scope: !5506)
!5515 = !DILocation(line: 652, column: 26, scope: !5506)
!5516 = !DILocation(line: 653, column: 3, scope: !5506)
!5517 = !DILocation(line: 653, column: 9, scope: !5506)
!5518 = !DILocation(line: 653, column: 19, scope: !5506)
!5519 = !DILocation(line: 653, column: 25, scope: !5506)
!5520 = !DILocation(line: 654, column: 3, scope: !5506)
!5521 = !DILocation(line: 654, column: 9, scope: !5506)
!5522 = !DILocation(line: 654, column: 19, scope: !5506)
!5523 = !DILocation(line: 654, column: 36, scope: !5506)
!5524 = !DILocation(line: 655, column: 3, scope: !5506)
!5525 = !DILocation(line: 655, column: 9, scope: !5506)
!5526 = !DILocation(line: 655, column: 19, scope: !5506)
!5527 = !DILocation(line: 655, column: 23, scope: !5506)
!5528 = !DILocation(line: 656, column: 3, scope: !5506)
!5529 = !DILocation(line: 656, column: 9, scope: !5506)
!5530 = !DILocation(line: 656, column: 19, scope: !5506)
!5531 = !DILocation(line: 656, column: 23, scope: !5506)
!5532 = !DILocation(line: 657, column: 3, scope: !5506)
!5533 = !DILocation(line: 657, column: 9, scope: !5506)
!5534 = !DILocation(line: 657, column: 19, scope: !5506)
!5535 = !DILocation(line: 657, column: 24, scope: !5506)
!5536 = !DILocation(line: 658, column: 3, scope: !5506)
!5537 = !DILocation(line: 658, column: 9, scope: !5506)
!5538 = !DILocation(line: 658, column: 19, scope: !5506)
!5539 = !DILocation(line: 658, column: 25, scope: !5506)
!5540 = !DILocation(line: 659, column: 3, scope: !5506)
!5541 = !DILocation(line: 659, column: 9, scope: !5506)
!5542 = !DILocation(line: 659, column: 19, scope: !5506)
!5543 = !DILocation(line: 659, column: 29, scope: !5506)
!5544 = !DILocation(line: 660, column: 9, scope: !5506)
!5545 = !DILocation(line: 660, column: 7, scope: !5506)
!5546 = !DILocation(line: 661, column: 7, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 661, column: 7)
!5548 = !DILocation(line: 661, column: 7, scope: !5506)
!5549 = !DILocation(line: 662, column: 4, scope: !5547)
!5550 = !DILocation(line: 667, column: 21, scope: !5506)
!5551 = !DILocation(line: 667, column: 27, scope: !5506)
!5552 = !DILocation(line: 667, column: 37, scope: !5506)
!5553 = !DILocation(line: 667, column: 4, scope: !5506)
!5554 = !DILocation(line: 667, column: 19, scope: !5506)
!5555 = !DILocation(line: 681, column: 2, scope: !5506)
!5556 = !DILocation(line: 684, column: 10, scope: !4420)
!5557 = !DILocation(line: 684, column: 16, scope: !4420)
!5558 = !DILocation(line: 684, column: 19, scope: !4420)
!5559 = !DILocation(line: 684, column: 2, scope: !4420)
!5560 = !DILocation(line: 685, column: 7, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 685, column: 6)
!5562 = !DILocation(line: 685, column: 14, scope: !5561)
!5563 = !DILocation(line: 685, column: 6, scope: !4420)
!5564 = !DILocation(line: 686, column: 3, scope: !5561)
!5565 = !DILocation(line: 686, column: 9, scope: !5561)
!5566 = !DILocation(line: 686, column: 12, scope: !5561)
!5567 = !DILocation(line: 686, column: 16, scope: !5561)
!5568 = !DILocation(line: 686, column: 24, scope: !5561)
!5569 = !DILocation(line: 687, column: 21, scope: !4420)
!5570 = !DILocation(line: 687, column: 29, scope: !4420)
!5571 = !DILocation(line: 687, column: 2, scope: !4420)
!5572 = !DILocation(line: 690, column: 2, scope: !4420)
!5573 = !DILocation(line: 690, column: 9, scope: !4420)
!5574 = !DILocation(line: 690, column: 26, scope: !4420)
!5575 = !DILocation(line: 692, column: 2, scope: !4420)
!5576 = !DILocation(line: 694, column: 2, scope: !4420)
!5577 = !DILabel(scope: !4420, name: "err_regmap_1_regmap_exit", file: !3, line: 695)
!5578 = !DILocation(line: 695, column: 1, scope: !4420)
!5579 = !DILocation(line: 696, column: 14, scope: !4420)
!5580 = !DILocation(line: 696, column: 20, scope: !4420)
!5581 = !DILocation(line: 696, column: 2, scope: !4420)
!5582 = !DILabel(scope: !4420, name: "err_client_1_i2c_unregister_device", file: !3, line: 697)
!5583 = !DILocation(line: 697, column: 1, scope: !4420)
!5584 = !DILocation(line: 698, column: 24, scope: !4420)
!5585 = !DILocation(line: 698, column: 30, scope: !4420)
!5586 = !DILocation(line: 698, column: 2, scope: !4420)
!5587 = !DILabel(scope: !4420, name: "err_regmap_0_regmap_exit", file: !3, line: 699)
!5588 = !DILocation(line: 699, column: 1, scope: !4420)
!5589 = !DILocation(line: 700, column: 14, scope: !4420)
!5590 = !DILocation(line: 700, column: 20, scope: !4420)
!5591 = !DILocation(line: 700, column: 2, scope: !4420)
!5592 = !DILabel(scope: !4420, name: "err_kfree", file: !3, line: 701)
!5593 = !DILocation(line: 701, column: 1, scope: !4420)
!5594 = !DILocation(line: 702, column: 8, scope: !4420)
!5595 = !DILocation(line: 702, column: 2, scope: !4420)
!5596 = !DILabel(scope: !4420, name: "err", file: !3, line: 703)
!5597 = !DILocation(line: 703, column: 1, scope: !4420)
!5598 = !DILocation(line: 705, column: 9, scope: !4420)
!5599 = !DILocation(line: 705, column: 2, scope: !4420)
!5600 = !DILocation(line: 706, column: 1, scope: !4420)
!5601 = distinct !DISubprogram(name: "cxd2820r_remove", scope: !3, file: !3, line: 708, type: !4339, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5602 = !DILocalVariable(name: "client", arg: 1, scope: !5601, file: !3, line: 708, type: !385)
!5603 = !DILocation(line: 708, column: 47, scope: !5601)
!5604 = !DILocalVariable(name: "priv", scope: !5601, file: !3, line: 710, type: !4851)
!5605 = !DILocation(line: 710, column: 24, scope: !5601)
!5606 = !DILocation(line: 710, column: 50, scope: !5601)
!5607 = !DILocation(line: 710, column: 31, scope: !5601)
!5608 = !DILocation(line: 715, column: 6, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 715, column: 6)
!5610 = !DILocation(line: 715, column: 12, scope: !5609)
!5611 = !DILocation(line: 715, column: 22, scope: !5609)
!5612 = !DILocation(line: 715, column: 6, scope: !5601)
!5613 = !DILocation(line: 716, column: 20, scope: !5609)
!5614 = !DILocation(line: 716, column: 26, scope: !5609)
!5615 = !DILocation(line: 716, column: 3, scope: !5609)
!5616 = !DILocation(line: 718, column: 14, scope: !5601)
!5617 = !DILocation(line: 718, column: 20, scope: !5601)
!5618 = !DILocation(line: 718, column: 2, scope: !5601)
!5619 = !DILocation(line: 719, column: 24, scope: !5601)
!5620 = !DILocation(line: 719, column: 30, scope: !5601)
!5621 = !DILocation(line: 719, column: 2, scope: !5601)
!5622 = !DILocation(line: 721, column: 14, scope: !5601)
!5623 = !DILocation(line: 721, column: 20, scope: !5601)
!5624 = !DILocation(line: 721, column: 2, scope: !5601)
!5625 = !DILocation(line: 723, column: 8, scope: !5601)
!5626 = !DILocation(line: 723, column: 2, scope: !5601)
!5627 = !DILocation(line: 725, column: 2, scope: !5601)
!5628 = distinct !DISubprogram(name: "kzalloc", scope: !324, file: !324, line: 662, type: !5629, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!338, !932, !342}
!5631 = !DILocalVariable(name: "s", arg: 1, scope: !5632, file: !324, line: 445, type: !1320)
!5632 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !324, file: !324, line: 445, type: !5633, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5633 = !DISubroutineType(types: !5634)
!5634 = !{!338, !1320, !342, !932}
!5635 = !DILocation(line: 445, column: 72, scope: !5632, inlinedAt: !5636)
!5636 = distinct !DILocation(line: 552, column: 10, scope: !5637, inlinedAt: !5640)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !324, line: 540, column: 34)
!5638 = distinct !DILexicalBlock(scope: !5639, file: !324, line: 540, column: 6)
!5639 = distinct !DISubprogram(name: "kmalloc", scope: !324, file: !324, line: 538, type: !5629, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5640 = distinct !DILocation(line: 664, column: 9, scope: !5628)
!5641 = !DILocalVariable(name: "flags", arg: 2, scope: !5632, file: !324, line: 446, type: !342)
!5642 = !DILocation(line: 446, column: 9, scope: !5632, inlinedAt: !5636)
!5643 = !DILocalVariable(name: "size", arg: 3, scope: !5632, file: !324, line: 446, type: !932)
!5644 = !DILocation(line: 446, column: 23, scope: !5632, inlinedAt: !5636)
!5645 = !DILocalVariable(name: "ret", scope: !5632, file: !324, line: 448, type: !338)
!5646 = !DILocation(line: 448, column: 8, scope: !5632, inlinedAt: !5636)
!5647 = !DILocalVariable(name: "flags", arg: 1, scope: !5648, file: !324, line: 318, type: !342)
!5648 = distinct !DISubprogram(name: "kmalloc_type", scope: !324, file: !324, line: 318, type: !5649, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5649 = !DISubroutineType(types: !5650)
!5650 = !{!323, !342}
!5651 = !DILocation(line: 318, column: 67, scope: !5648, inlinedAt: !5652)
!5652 = distinct !DILocation(line: 553, column: 20, scope: !5637, inlinedAt: !5640)
!5653 = !DILocalVariable(name: "size", arg: 1, scope: !5654, file: !324, line: 346, type: !932)
!5654 = distinct !DISubprogram(name: "kmalloc_index", scope: !324, file: !324, line: 346, type: !5655, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{!7, !932}
!5657 = !DILocation(line: 346, column: 58, scope: !5654, inlinedAt: !5658)
!5658 = distinct !DILocation(line: 547, column: 11, scope: !5637, inlinedAt: !5640)
!5659 = !DILocalVariable(name: "size", arg: 1, scope: !5660, file: !324, line: 472, type: !932)
!5660 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !324, file: !324, line: 472, type: !5661, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!338, !932, !342, !7}
!5663 = !DILocation(line: 472, column: 28, scope: !5660, inlinedAt: !5664)
!5664 = distinct !DILocation(line: 481, column: 9, scope: !5665, inlinedAt: !5666)
!5665 = distinct !DISubprogram(name: "kmalloc_large", scope: !324, file: !324, line: 478, type: !5629, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5666 = distinct !DILocation(line: 545, column: 11, scope: !5667, inlinedAt: !5640)
!5667 = distinct !DILexicalBlock(scope: !5637, file: !324, line: 544, column: 7)
!5668 = !DILocalVariable(name: "flags", arg: 2, scope: !5660, file: !324, line: 472, type: !342)
!5669 = !DILocation(line: 472, column: 40, scope: !5660, inlinedAt: !5664)
!5670 = !DILocalVariable(name: "order", arg: 3, scope: !5660, file: !324, line: 472, type: !7)
!5671 = !DILocation(line: 472, column: 60, scope: !5660, inlinedAt: !5664)
!5672 = !DILocalVariable(name: "size", arg: 1, scope: !5665, file: !324, line: 478, type: !932)
!5673 = !DILocation(line: 478, column: 51, scope: !5665, inlinedAt: !5666)
!5674 = !DILocalVariable(name: "flags", arg: 2, scope: !5665, file: !324, line: 478, type: !342)
!5675 = !DILocation(line: 478, column: 63, scope: !5665, inlinedAt: !5666)
!5676 = !DILocalVariable(name: "order", scope: !5665, file: !324, line: 480, type: !7)
!5677 = !DILocation(line: 480, column: 15, scope: !5665, inlinedAt: !5666)
!5678 = !DILocalVariable(name: "size", arg: 1, scope: !5639, file: !324, line: 538, type: !932)
!5679 = !DILocation(line: 538, column: 45, scope: !5639, inlinedAt: !5640)
!5680 = !DILocalVariable(name: "flags", arg: 2, scope: !5639, file: !324, line: 538, type: !342)
!5681 = !DILocation(line: 538, column: 57, scope: !5639, inlinedAt: !5640)
!5682 = !DILocalVariable(name: "index", scope: !5637, file: !324, line: 542, type: !7)
!5683 = !DILocation(line: 542, column: 16, scope: !5637, inlinedAt: !5640)
!5684 = !DILocalVariable(name: "size", arg: 1, scope: !5628, file: !324, line: 662, type: !932)
!5685 = !DILocation(line: 662, column: 36, scope: !5628)
!5686 = !DILocalVariable(name: "flags", arg: 2, scope: !5628, file: !324, line: 662, type: !342)
!5687 = !DILocation(line: 662, column: 48, scope: !5628)
!5688 = !DILocation(line: 664, column: 17, scope: !5628)
!5689 = !DILocation(line: 664, column: 23, scope: !5628)
!5690 = !DILocation(line: 664, column: 29, scope: !5628)
!5691 = !DILocation(line: 540, column: 27, scope: !5638, inlinedAt: !5640)
!5692 = !DILocation(line: 540, column: 6, scope: !5638, inlinedAt: !5640)
!5693 = !DILocation(line: 540, column: 6, scope: !5639, inlinedAt: !5640)
!5694 = !DILocation(line: 544, column: 7, scope: !5667, inlinedAt: !5640)
!5695 = !DILocation(line: 544, column: 12, scope: !5667, inlinedAt: !5640)
!5696 = !DILocation(line: 544, column: 7, scope: !5637, inlinedAt: !5640)
!5697 = !DILocation(line: 545, column: 25, scope: !5667, inlinedAt: !5640)
!5698 = !DILocation(line: 545, column: 31, scope: !5667, inlinedAt: !5640)
!5699 = !DILocation(line: 480, column: 33, scope: !5665, inlinedAt: !5666)
!5700 = !DILocation(line: 480, column: 23, scope: !5665, inlinedAt: !5666)
!5701 = !DILocation(line: 481, column: 29, scope: !5665, inlinedAt: !5666)
!5702 = !DILocation(line: 481, column: 35, scope: !5665, inlinedAt: !5666)
!5703 = !DILocation(line: 481, column: 42, scope: !5665, inlinedAt: !5666)
!5704 = !DILocation(line: 474, column: 23, scope: !5660, inlinedAt: !5664)
!5705 = !DILocation(line: 474, column: 29, scope: !5660, inlinedAt: !5664)
!5706 = !DILocation(line: 474, column: 36, scope: !5660, inlinedAt: !5664)
!5707 = !DILocation(line: 474, column: 9, scope: !5660, inlinedAt: !5664)
!5708 = !DILocation(line: 545, column: 4, scope: !5667, inlinedAt: !5640)
!5709 = !DILocation(line: 547, column: 25, scope: !5637, inlinedAt: !5640)
!5710 = !DILocation(line: 348, column: 7, scope: !5711, inlinedAt: !5658)
!5711 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 348, column: 6)
!5712 = !DILocation(line: 348, column: 6, scope: !5654, inlinedAt: !5658)
!5713 = !DILocation(line: 349, column: 3, scope: !5711, inlinedAt: !5658)
!5714 = !DILocation(line: 351, column: 6, scope: !5715, inlinedAt: !5658)
!5715 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 351, column: 6)
!5716 = !DILocation(line: 351, column: 11, scope: !5715, inlinedAt: !5658)
!5717 = !DILocation(line: 351, column: 6, scope: !5654, inlinedAt: !5658)
!5718 = !DILocation(line: 352, column: 3, scope: !5715, inlinedAt: !5658)
!5719 = !DILocation(line: 354, column: 32, scope: !5720, inlinedAt: !5658)
!5720 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 354, column: 6)
!5721 = !DILocation(line: 354, column: 37, scope: !5720, inlinedAt: !5658)
!5722 = !DILocation(line: 354, column: 42, scope: !5720, inlinedAt: !5658)
!5723 = !DILocation(line: 354, column: 45, scope: !5720, inlinedAt: !5658)
!5724 = !DILocation(line: 354, column: 50, scope: !5720, inlinedAt: !5658)
!5725 = !DILocation(line: 354, column: 6, scope: !5654, inlinedAt: !5658)
!5726 = !DILocation(line: 355, column: 3, scope: !5720, inlinedAt: !5658)
!5727 = !DILocation(line: 356, column: 32, scope: !5728, inlinedAt: !5658)
!5728 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 356, column: 6)
!5729 = !DILocation(line: 356, column: 37, scope: !5728, inlinedAt: !5658)
!5730 = !DILocation(line: 356, column: 43, scope: !5728, inlinedAt: !5658)
!5731 = !DILocation(line: 356, column: 46, scope: !5728, inlinedAt: !5658)
!5732 = !DILocation(line: 356, column: 51, scope: !5728, inlinedAt: !5658)
!5733 = !DILocation(line: 356, column: 6, scope: !5654, inlinedAt: !5658)
!5734 = !DILocation(line: 357, column: 3, scope: !5728, inlinedAt: !5658)
!5735 = !DILocation(line: 358, column: 6, scope: !5736, inlinedAt: !5658)
!5736 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 358, column: 6)
!5737 = !DILocation(line: 358, column: 11, scope: !5736, inlinedAt: !5658)
!5738 = !DILocation(line: 358, column: 6, scope: !5654, inlinedAt: !5658)
!5739 = !DILocation(line: 358, column: 26, scope: !5736, inlinedAt: !5658)
!5740 = !DILocation(line: 359, column: 6, scope: !5741, inlinedAt: !5658)
!5741 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 359, column: 6)
!5742 = !DILocation(line: 359, column: 11, scope: !5741, inlinedAt: !5658)
!5743 = !DILocation(line: 359, column: 6, scope: !5654, inlinedAt: !5658)
!5744 = !DILocation(line: 359, column: 26, scope: !5741, inlinedAt: !5658)
!5745 = !DILocation(line: 360, column: 6, scope: !5746, inlinedAt: !5658)
!5746 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 360, column: 6)
!5747 = !DILocation(line: 360, column: 11, scope: !5746, inlinedAt: !5658)
!5748 = !DILocation(line: 360, column: 6, scope: !5654, inlinedAt: !5658)
!5749 = !DILocation(line: 360, column: 26, scope: !5746, inlinedAt: !5658)
!5750 = !DILocation(line: 361, column: 6, scope: !5751, inlinedAt: !5658)
!5751 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 361, column: 6)
!5752 = !DILocation(line: 361, column: 11, scope: !5751, inlinedAt: !5658)
!5753 = !DILocation(line: 361, column: 6, scope: !5654, inlinedAt: !5658)
!5754 = !DILocation(line: 361, column: 26, scope: !5751, inlinedAt: !5658)
!5755 = !DILocation(line: 362, column: 6, scope: !5756, inlinedAt: !5658)
!5756 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 362, column: 6)
!5757 = !DILocation(line: 362, column: 11, scope: !5756, inlinedAt: !5658)
!5758 = !DILocation(line: 362, column: 6, scope: !5654, inlinedAt: !5658)
!5759 = !DILocation(line: 362, column: 26, scope: !5756, inlinedAt: !5658)
!5760 = !DILocation(line: 363, column: 6, scope: !5761, inlinedAt: !5658)
!5761 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 363, column: 6)
!5762 = !DILocation(line: 363, column: 11, scope: !5761, inlinedAt: !5658)
!5763 = !DILocation(line: 363, column: 6, scope: !5654, inlinedAt: !5658)
!5764 = !DILocation(line: 363, column: 26, scope: !5761, inlinedAt: !5658)
!5765 = !DILocation(line: 364, column: 6, scope: !5766, inlinedAt: !5658)
!5766 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 364, column: 6)
!5767 = !DILocation(line: 364, column: 11, scope: !5766, inlinedAt: !5658)
!5768 = !DILocation(line: 364, column: 6, scope: !5654, inlinedAt: !5658)
!5769 = !DILocation(line: 364, column: 26, scope: !5766, inlinedAt: !5658)
!5770 = !DILocation(line: 365, column: 6, scope: !5771, inlinedAt: !5658)
!5771 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 365, column: 6)
!5772 = !DILocation(line: 365, column: 11, scope: !5771, inlinedAt: !5658)
!5773 = !DILocation(line: 365, column: 6, scope: !5654, inlinedAt: !5658)
!5774 = !DILocation(line: 365, column: 26, scope: !5771, inlinedAt: !5658)
!5775 = !DILocation(line: 366, column: 6, scope: !5776, inlinedAt: !5658)
!5776 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 366, column: 6)
!5777 = !DILocation(line: 366, column: 11, scope: !5776, inlinedAt: !5658)
!5778 = !DILocation(line: 366, column: 6, scope: !5654, inlinedAt: !5658)
!5779 = !DILocation(line: 366, column: 26, scope: !5776, inlinedAt: !5658)
!5780 = !DILocation(line: 367, column: 6, scope: !5781, inlinedAt: !5658)
!5781 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 367, column: 6)
!5782 = !DILocation(line: 367, column: 11, scope: !5781, inlinedAt: !5658)
!5783 = !DILocation(line: 367, column: 6, scope: !5654, inlinedAt: !5658)
!5784 = !DILocation(line: 367, column: 26, scope: !5781, inlinedAt: !5658)
!5785 = !DILocation(line: 368, column: 6, scope: !5786, inlinedAt: !5658)
!5786 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 368, column: 6)
!5787 = !DILocation(line: 368, column: 11, scope: !5786, inlinedAt: !5658)
!5788 = !DILocation(line: 368, column: 6, scope: !5654, inlinedAt: !5658)
!5789 = !DILocation(line: 368, column: 26, scope: !5786, inlinedAt: !5658)
!5790 = !DILocation(line: 369, column: 6, scope: !5791, inlinedAt: !5658)
!5791 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 369, column: 6)
!5792 = !DILocation(line: 369, column: 11, scope: !5791, inlinedAt: !5658)
!5793 = !DILocation(line: 369, column: 6, scope: !5654, inlinedAt: !5658)
!5794 = !DILocation(line: 369, column: 26, scope: !5791, inlinedAt: !5658)
!5795 = !DILocation(line: 370, column: 6, scope: !5796, inlinedAt: !5658)
!5796 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 370, column: 6)
!5797 = !DILocation(line: 370, column: 11, scope: !5796, inlinedAt: !5658)
!5798 = !DILocation(line: 370, column: 6, scope: !5654, inlinedAt: !5658)
!5799 = !DILocation(line: 370, column: 26, scope: !5796, inlinedAt: !5658)
!5800 = !DILocation(line: 371, column: 6, scope: !5801, inlinedAt: !5658)
!5801 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 371, column: 6)
!5802 = !DILocation(line: 371, column: 11, scope: !5801, inlinedAt: !5658)
!5803 = !DILocation(line: 371, column: 6, scope: !5654, inlinedAt: !5658)
!5804 = !DILocation(line: 371, column: 26, scope: !5801, inlinedAt: !5658)
!5805 = !DILocation(line: 372, column: 6, scope: !5806, inlinedAt: !5658)
!5806 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 372, column: 6)
!5807 = !DILocation(line: 372, column: 11, scope: !5806, inlinedAt: !5658)
!5808 = !DILocation(line: 372, column: 6, scope: !5654, inlinedAt: !5658)
!5809 = !DILocation(line: 372, column: 26, scope: !5806, inlinedAt: !5658)
!5810 = !DILocation(line: 373, column: 6, scope: !5811, inlinedAt: !5658)
!5811 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 373, column: 6)
!5812 = !DILocation(line: 373, column: 11, scope: !5811, inlinedAt: !5658)
!5813 = !DILocation(line: 373, column: 6, scope: !5654, inlinedAt: !5658)
!5814 = !DILocation(line: 373, column: 26, scope: !5811, inlinedAt: !5658)
!5815 = !DILocation(line: 374, column: 6, scope: !5816, inlinedAt: !5658)
!5816 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 374, column: 6)
!5817 = !DILocation(line: 374, column: 11, scope: !5816, inlinedAt: !5658)
!5818 = !DILocation(line: 374, column: 6, scope: !5654, inlinedAt: !5658)
!5819 = !DILocation(line: 374, column: 26, scope: !5816, inlinedAt: !5658)
!5820 = !DILocation(line: 375, column: 6, scope: !5821, inlinedAt: !5658)
!5821 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 375, column: 6)
!5822 = !DILocation(line: 375, column: 11, scope: !5821, inlinedAt: !5658)
!5823 = !DILocation(line: 375, column: 6, scope: !5654, inlinedAt: !5658)
!5824 = !DILocation(line: 375, column: 27, scope: !5821, inlinedAt: !5658)
!5825 = !DILocation(line: 376, column: 6, scope: !5826, inlinedAt: !5658)
!5826 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 376, column: 6)
!5827 = !DILocation(line: 376, column: 11, scope: !5826, inlinedAt: !5658)
!5828 = !DILocation(line: 376, column: 6, scope: !5654, inlinedAt: !5658)
!5829 = !DILocation(line: 376, column: 32, scope: !5826, inlinedAt: !5658)
!5830 = !DILocation(line: 377, column: 6, scope: !5831, inlinedAt: !5658)
!5831 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 377, column: 6)
!5832 = !DILocation(line: 377, column: 11, scope: !5831, inlinedAt: !5658)
!5833 = !DILocation(line: 377, column: 6, scope: !5654, inlinedAt: !5658)
!5834 = !DILocation(line: 377, column: 32, scope: !5831, inlinedAt: !5658)
!5835 = !DILocation(line: 378, column: 6, scope: !5836, inlinedAt: !5658)
!5836 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 378, column: 6)
!5837 = !DILocation(line: 378, column: 11, scope: !5836, inlinedAt: !5658)
!5838 = !DILocation(line: 378, column: 6, scope: !5654, inlinedAt: !5658)
!5839 = !DILocation(line: 378, column: 32, scope: !5836, inlinedAt: !5658)
!5840 = !DILocation(line: 379, column: 6, scope: !5841, inlinedAt: !5658)
!5841 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 379, column: 6)
!5842 = !DILocation(line: 379, column: 11, scope: !5841, inlinedAt: !5658)
!5843 = !DILocation(line: 379, column: 6, scope: !5654, inlinedAt: !5658)
!5844 = !DILocation(line: 379, column: 33, scope: !5841, inlinedAt: !5658)
!5845 = !DILocation(line: 380, column: 6, scope: !5846, inlinedAt: !5658)
!5846 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 380, column: 6)
!5847 = !DILocation(line: 380, column: 11, scope: !5846, inlinedAt: !5658)
!5848 = !DILocation(line: 380, column: 6, scope: !5654, inlinedAt: !5658)
!5849 = !DILocation(line: 380, column: 33, scope: !5846, inlinedAt: !5658)
!5850 = !DILocation(line: 381, column: 6, scope: !5851, inlinedAt: !5658)
!5851 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 381, column: 6)
!5852 = !DILocation(line: 381, column: 11, scope: !5851, inlinedAt: !5658)
!5853 = !DILocation(line: 381, column: 6, scope: !5654, inlinedAt: !5658)
!5854 = !DILocation(line: 381, column: 33, scope: !5851, inlinedAt: !5658)
!5855 = !DILocation(line: 382, column: 2, scope: !5856, inlinedAt: !5658)
!5856 = distinct !DILexicalBlock(scope: !5857, file: !324, line: 382, column: 2)
!5857 = distinct !DILexicalBlock(scope: !5654, file: !324, line: 382, column: 2)
!5858 = !{i32 -2143652556, i32 -2143652527, i32 -2143652481, i32 -2143652423, i32 -2143652369, i32 -2143652315, i32 -2143652260, i32 -2143652229}
!5859 = !DILocation(line: 382, column: 2, scope: !5860, inlinedAt: !5658)
!5860 = distinct !DILexicalBlock(scope: !5861, file: !324, line: 382, column: 2)
!5861 = distinct !DILexicalBlock(scope: !5857, file: !324, line: 382, column: 2)
!5862 = !{i32 -2143651786, i32 -2143651779, i32 -2143651725, i32 -2143651694, i32 -2143651664}
!5863 = !DILocation(line: 382, column: 2, scope: !5861, inlinedAt: !5658)
!5864 = !DILocation(line: 386, column: 1, scope: !5654, inlinedAt: !5658)
!5865 = !DILocation(line: 547, column: 9, scope: !5637, inlinedAt: !5640)
!5866 = !DILocation(line: 549, column: 8, scope: !5867, inlinedAt: !5640)
!5867 = distinct !DILexicalBlock(scope: !5637, file: !324, line: 549, column: 7)
!5868 = !DILocation(line: 549, column: 7, scope: !5637, inlinedAt: !5640)
!5869 = !DILocation(line: 550, column: 4, scope: !5867, inlinedAt: !5640)
!5870 = !DILocation(line: 553, column: 33, scope: !5637, inlinedAt: !5640)
!5871 = !DILocation(line: 325, column: 6, scope: !5872, inlinedAt: !5652)
!5872 = distinct !DILexicalBlock(scope: !5648, file: !324, line: 325, column: 6)
!5873 = !DILocation(line: 325, column: 6, scope: !5648, inlinedAt: !5652)
!5874 = !DILocation(line: 326, column: 3, scope: !5872, inlinedAt: !5652)
!5875 = !DILocation(line: 332, column: 9, scope: !5648, inlinedAt: !5652)
!5876 = !DILocation(line: 332, column: 15, scope: !5648, inlinedAt: !5652)
!5877 = !DILocation(line: 332, column: 2, scope: !5648, inlinedAt: !5652)
!5878 = !DILocation(line: 336, column: 1, scope: !5648, inlinedAt: !5652)
!5879 = !DILocation(line: 553, column: 5, scope: !5637, inlinedAt: !5640)
!5880 = !DILocation(line: 553, column: 41, scope: !5637, inlinedAt: !5640)
!5881 = !DILocation(line: 554, column: 5, scope: !5637, inlinedAt: !5640)
!5882 = !DILocation(line: 554, column: 12, scope: !5637, inlinedAt: !5640)
!5883 = !DILocation(line: 448, column: 31, scope: !5632, inlinedAt: !5636)
!5884 = !DILocation(line: 448, column: 34, scope: !5632, inlinedAt: !5636)
!5885 = !DILocation(line: 448, column: 14, scope: !5632, inlinedAt: !5636)
!5886 = !DILocation(line: 450, column: 22, scope: !5632, inlinedAt: !5636)
!5887 = !DILocation(line: 450, column: 25, scope: !5632, inlinedAt: !5636)
!5888 = !DILocation(line: 450, column: 30, scope: !5632, inlinedAt: !5636)
!5889 = !DILocation(line: 450, column: 36, scope: !5632, inlinedAt: !5636)
!5890 = !DILocation(line: 450, column: 8, scope: !5632, inlinedAt: !5636)
!5891 = !DILocation(line: 450, column: 6, scope: !5632, inlinedAt: !5636)
!5892 = !DILocation(line: 451, column: 9, scope: !5632, inlinedAt: !5636)
!5893 = !DILocation(line: 552, column: 3, scope: !5637, inlinedAt: !5640)
!5894 = !DILocation(line: 557, column: 19, scope: !5639, inlinedAt: !5640)
!5895 = !DILocation(line: 557, column: 25, scope: !5639, inlinedAt: !5640)
!5896 = !DILocation(line: 557, column: 9, scope: !5639, inlinedAt: !5640)
!5897 = !DILocation(line: 557, column: 2, scope: !5639, inlinedAt: !5640)
!5898 = !DILocation(line: 558, column: 1, scope: !5639, inlinedAt: !5640)
!5899 = !DILocation(line: 664, column: 2, scope: !5628)
!5900 = distinct !DISubprogram(name: "IS_ERR", scope: !5363, file: !5363, line: 34, type: !5364, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5901 = !DILocalVariable(name: "ptr", arg: 1, scope: !5900, file: !5363, line: 34, type: !2242)
!5902 = !DILocation(line: 34, column: 60, scope: !5900)
!5903 = !DILocation(line: 36, column: 9, scope: !5900)
!5904 = !DILocation(line: 36, column: 2, scope: !5900)
!5905 = distinct !DISubprogram(name: "PTR_ERR", scope: !5363, file: !5363, line: 29, type: !5906, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5906 = !DISubroutineType(types: !5907)
!5907 = !{!344, !2242}
!5908 = !DILocalVariable(name: "ptr", arg: 1, scope: !5905, file: !5363, line: 29, type: !2242)
!5909 = !DILocation(line: 29, column: 61, scope: !5905)
!5910 = !DILocation(line: 31, column: 16, scope: !5905)
!5911 = !DILocation(line: 31, column: 9, scope: !5905)
!5912 = !DILocation(line: 31, column: 2, scope: !5905)
!5913 = distinct !DISubprogram(name: "cxd2820r_gpio_direction_output", scope: !3, file: !3, line: 421, type: !4895, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5914 = !DILocalVariable(name: "chip", arg: 1, scope: !5913, file: !3, line: 421, type: !4886)
!5915 = !DILocation(line: 421, column: 61, scope: !5913)
!5916 = !DILocalVariable(name: "nr", arg: 2, scope: !5913, file: !3, line: 421, type: !7)
!5917 = !DILocation(line: 421, column: 76, scope: !5913)
!5918 = !DILocalVariable(name: "val", arg: 3, scope: !5913, file: !3, line: 422, type: !384)
!5919 = !DILocation(line: 422, column: 7, scope: !5913)
!5920 = !DILocalVariable(name: "priv", scope: !5913, file: !3, line: 424, type: !4851)
!5921 = !DILocation(line: 424, column: 24, scope: !5913)
!5922 = !DILocation(line: 424, column: 49, scope: !5913)
!5923 = !DILocation(line: 424, column: 31, scope: !5913)
!5924 = !DILocalVariable(name: "client", scope: !5913, file: !3, line: 425, type: !385)
!5925 = !DILocation(line: 425, column: 21, scope: !5913)
!5926 = !DILocation(line: 425, column: 30, scope: !5913)
!5927 = !DILocation(line: 425, column: 36, scope: !5913)
!5928 = !DILocalVariable(name: "gpio", scope: !5913, file: !3, line: 426, type: !4871)
!5929 = !DILocation(line: 426, column: 5, scope: !5913)
!5930 = !DILocation(line: 430, column: 2, scope: !5913)
!5931 = !DILocation(line: 430, column: 15, scope: !5913)
!5932 = !DILocation(line: 430, column: 21, scope: !5913)
!5933 = !DILocation(line: 431, column: 50, scope: !5913)
!5934 = !DILocation(line: 431, column: 54, scope: !5913)
!5935 = !DILocation(line: 431, column: 47, scope: !5913)
!5936 = !DILocation(line: 431, column: 13, scope: !5913)
!5937 = !DILocation(line: 431, column: 7, scope: !5913)
!5938 = !DILocation(line: 431, column: 2, scope: !5913)
!5939 = !DILocation(line: 431, column: 11, scope: !5913)
!5940 = !DILocation(line: 433, column: 24, scope: !5913)
!5941 = !DILocation(line: 433, column: 30, scope: !5913)
!5942 = !DILocation(line: 433, column: 34, scope: !5913)
!5943 = !DILocation(line: 433, column: 9, scope: !5913)
!5944 = !DILocation(line: 433, column: 2, scope: !5913)
!5945 = distinct !DISubprogram(name: "cxd2820r_gpio_set", scope: !3, file: !3, line: 436, type: !4904, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5946 = !DILocalVariable(name: "chip", arg: 1, scope: !5945, file: !3, line: 436, type: !4886)
!5947 = !DILocation(line: 436, column: 49, scope: !5945)
!5948 = !DILocalVariable(name: "nr", arg: 2, scope: !5945, file: !3, line: 436, type: !7)
!5949 = !DILocation(line: 436, column: 64, scope: !5945)
!5950 = !DILocalVariable(name: "val", arg: 3, scope: !5945, file: !3, line: 436, type: !384)
!5951 = !DILocation(line: 436, column: 72, scope: !5945)
!5952 = !DILocalVariable(name: "priv", scope: !5945, file: !3, line: 438, type: !4851)
!5953 = !DILocation(line: 438, column: 24, scope: !5945)
!5954 = !DILocation(line: 438, column: 49, scope: !5945)
!5955 = !DILocation(line: 438, column: 31, scope: !5945)
!5956 = !DILocalVariable(name: "client", scope: !5945, file: !3, line: 439, type: !385)
!5957 = !DILocation(line: 439, column: 21, scope: !5945)
!5958 = !DILocation(line: 439, column: 30, scope: !5945)
!5959 = !DILocation(line: 439, column: 36, scope: !5945)
!5960 = !DILocalVariable(name: "gpio", scope: !5945, file: !3, line: 440, type: !4871)
!5961 = !DILocation(line: 440, column: 5, scope: !5945)
!5962 = !DILocation(line: 444, column: 2, scope: !5945)
!5963 = !DILocation(line: 444, column: 15, scope: !5945)
!5964 = !DILocation(line: 444, column: 21, scope: !5945)
!5965 = !DILocation(line: 445, column: 50, scope: !5945)
!5966 = !DILocation(line: 445, column: 54, scope: !5945)
!5967 = !DILocation(line: 445, column: 47, scope: !5945)
!5968 = !DILocation(line: 445, column: 13, scope: !5945)
!5969 = !DILocation(line: 445, column: 7, scope: !5945)
!5970 = !DILocation(line: 445, column: 2, scope: !5945)
!5971 = !DILocation(line: 445, column: 11, scope: !5945)
!5972 = !DILocation(line: 447, column: 24, scope: !5945)
!5973 = !DILocation(line: 447, column: 30, scope: !5945)
!5974 = !DILocation(line: 447, column: 34, scope: !5945)
!5975 = !DILocation(line: 447, column: 9, scope: !5945)
!5976 = !DILocation(line: 449, column: 2, scope: !5945)
!5977 = distinct !DISubprogram(name: "cxd2820r_gpio_get", scope: !3, file: !3, line: 452, type: !4884, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5978 = !DILocalVariable(name: "chip", arg: 1, scope: !5977, file: !3, line: 452, type: !4886)
!5979 = !DILocation(line: 452, column: 48, scope: !5977)
!5980 = !DILocalVariable(name: "nr", arg: 2, scope: !5977, file: !3, line: 452, type: !7)
!5981 = !DILocation(line: 452, column: 63, scope: !5977)
!5982 = !DILocalVariable(name: "priv", scope: !5977, file: !3, line: 454, type: !4851)
!5983 = !DILocation(line: 454, column: 24, scope: !5977)
!5984 = !DILocation(line: 454, column: 49, scope: !5977)
!5985 = !DILocation(line: 454, column: 31, scope: !5977)
!5986 = !DILocalVariable(name: "client", scope: !5977, file: !3, line: 455, type: !385)
!5987 = !DILocation(line: 455, column: 21, scope: !5977)
!5988 = !DILocation(line: 455, column: 30, scope: !5977)
!5989 = !DILocation(line: 455, column: 36, scope: !5977)
!5990 = !DILocation(line: 459, column: 10, scope: !5977)
!5991 = !DILocation(line: 459, column: 16, scope: !5977)
!5992 = !DILocation(line: 459, column: 21, scope: !5977)
!5993 = !DILocation(line: 459, column: 25, scope: !5977)
!5994 = !DILocation(line: 459, column: 31, scope: !5977)
!5995 = !DILocation(line: 459, column: 2, scope: !5977)
!5996 = distinct !DISubprogram(name: "i2c_set_clientdata", scope: !306, file: !306, line: 356, type: !5997, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!5997 = !DISubroutineType(types: !5998)
!5998 = !{null, !385, !338}
!5999 = !DILocalVariable(name: "client", arg: 1, scope: !5996, file: !306, line: 356, type: !385)
!6000 = !DILocation(line: 356, column: 58, scope: !5996)
!6001 = !DILocalVariable(name: "data", arg: 2, scope: !5996, file: !306, line: 356, type: !338)
!6002 = !DILocation(line: 356, column: 72, scope: !5996)
!6003 = !DILocation(line: 358, column: 19, scope: !5996)
!6004 = !DILocation(line: 358, column: 27, scope: !5996)
!6005 = !DILocation(line: 358, column: 32, scope: !5996)
!6006 = !DILocation(line: 358, column: 2, scope: !5996)
!6007 = !DILocation(line: 359, column: 1, scope: !5996)
!6008 = distinct !DISubprogram(name: "cxd2820r_get_dvb_frontend", scope: !3, file: !3, line: 541, type: !5295, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6009 = !DILocalVariable(name: "client", arg: 1, scope: !6008, file: !3, line: 541, type: !385)
!6010 = !DILocation(line: 541, column: 74, scope: !6008)
!6011 = !DILocalVariable(name: "priv", scope: !6008, file: !3, line: 543, type: !4851)
!6012 = !DILocation(line: 543, column: 24, scope: !6008)
!6013 = !DILocation(line: 543, column: 50, scope: !6008)
!6014 = !DILocation(line: 543, column: 31, scope: !6008)
!6015 = !DILocation(line: 547, column: 10, scope: !6008)
!6016 = !DILocation(line: 547, column: 16, scope: !6008)
!6017 = !DILocation(line: 547, column: 2, scope: !6008)
!6018 = distinct !DISubprogram(name: "get_order", scope: !6019, file: !6019, line: 29, type: !6020, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6019 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6020 = !DISubroutineType(types: !6021)
!6021 = !{!384, !337}
!6022 = !DILocalVariable(name: "x", arg: 1, scope: !6023, file: !6024, line: 366, type: !544)
!6023 = distinct !DISubprogram(name: "fls64", scope: !6024, file: !6024, line: 366, type: !6025, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6024 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6025 = !DISubroutineType(types: !6026)
!6026 = !{!384, !544}
!6027 = !DILocation(line: 366, column: 40, scope: !6023, inlinedAt: !6028)
!6028 = distinct !DILocation(line: 46, column: 9, scope: !6018)
!6029 = !DILocalVariable(name: "bitpos", scope: !6023, file: !6024, line: 368, type: !384)
!6030 = !DILocation(line: 368, column: 6, scope: !6023, inlinedAt: !6028)
!6031 = !DILocalVariable(name: "size", arg: 1, scope: !6018, file: !6019, line: 29, type: !337)
!6032 = !DILocation(line: 29, column: 63, scope: !6018)
!6033 = !DILocation(line: 31, column: 27, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6018, file: !6019, line: 31, column: 6)
!6035 = !DILocation(line: 31, column: 6, scope: !6034)
!6036 = !DILocation(line: 31, column: 6, scope: !6018)
!6037 = !DILocation(line: 32, column: 8, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6039, file: !6019, line: 32, column: 7)
!6039 = distinct !DILexicalBlock(scope: !6034, file: !6019, line: 31, column: 34)
!6040 = !DILocation(line: 32, column: 7, scope: !6039)
!6041 = !DILocation(line: 33, column: 4, scope: !6038)
!6042 = !DILocation(line: 35, column: 7, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6039, file: !6019, line: 35, column: 7)
!6044 = !DILocation(line: 35, column: 12, scope: !6043)
!6045 = !DILocation(line: 35, column: 7, scope: !6039)
!6046 = !DILocation(line: 36, column: 4, scope: !6043)
!6047 = !DILocation(line: 38, column: 10, scope: !6039)
!6048 = !DILocation(line: 38, column: 28, scope: !6039)
!6049 = !DILocation(line: 38, column: 41, scope: !6039)
!6050 = !DILocation(line: 38, column: 3, scope: !6039)
!6051 = !DILocation(line: 41, column: 6, scope: !6018)
!6052 = !DILocation(line: 42, column: 7, scope: !6018)
!6053 = !DILocation(line: 46, column: 15, scope: !6018)
!6054 = !DILocation(line: 374, column: 2, scope: !6023, inlinedAt: !6028)
!6055 = !DILocation(line: 376, column: 14, scope: !6023, inlinedAt: !6028)
!6056 = !{i32 375177}
!6057 = !DILocation(line: 377, column: 9, scope: !6023, inlinedAt: !6028)
!6058 = !DILocation(line: 377, column: 16, scope: !6023, inlinedAt: !6028)
!6059 = !DILocation(line: 46, column: 2, scope: !6018)
!6060 = !DILocation(line: 48, column: 1, scope: !6018)
!6061 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6062, file: !6062, line: 30, type: !6063, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6062 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!384, !543}
!6065 = !DILocation(line: 366, column: 40, scope: !6023, inlinedAt: !6066)
!6066 = distinct !DILocation(line: 32, column: 9, scope: !6061)
!6067 = !DILocation(line: 368, column: 6, scope: !6023, inlinedAt: !6066)
!6068 = !DILocalVariable(name: "n", arg: 1, scope: !6061, file: !6062, line: 30, type: !543)
!6069 = !DILocation(line: 30, column: 21, scope: !6061)
!6070 = !DILocation(line: 32, column: 15, scope: !6061)
!6071 = !DILocation(line: 374, column: 2, scope: !6023, inlinedAt: !6066)
!6072 = !DILocation(line: 376, column: 14, scope: !6023, inlinedAt: !6066)
!6073 = !DILocation(line: 377, column: 9, scope: !6023, inlinedAt: !6066)
!6074 = !DILocation(line: 377, column: 16, scope: !6023, inlinedAt: !6066)
!6075 = !DILocation(line: 32, column: 18, scope: !6061)
!6076 = !DILocation(line: 32, column: 2, scope: !6061)
!6077 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6078, file: !6078, line: 137, type: !6079, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6078 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6079 = !DISubroutineType(types: !6080)
!6080 = !{!338, !1320, !2242, !932, !342}
!6081 = !DILocalVariable(name: "s", arg: 1, scope: !6077, file: !6078, line: 137, type: !1320)
!6082 = !DILocation(line: 137, column: 54, scope: !6077)
!6083 = !DILocalVariable(name: "object", arg: 2, scope: !6077, file: !6078, line: 137, type: !2242)
!6084 = !DILocation(line: 137, column: 69, scope: !6077)
!6085 = !DILocalVariable(name: "size", arg: 3, scope: !6077, file: !6078, line: 138, type: !932)
!6086 = !DILocation(line: 138, column: 12, scope: !6077)
!6087 = !DILocalVariable(name: "flags", arg: 4, scope: !6077, file: !6078, line: 138, type: !342)
!6088 = !DILocation(line: 138, column: 24, scope: !6077)
!6089 = !DILocation(line: 140, column: 17, scope: !6077)
!6090 = !DILocation(line: 140, column: 2, scope: !6077)
!6091 = distinct !DISubprogram(name: "cxd2820r_release", scope: !3, file: !3, line: 398, type: !4538, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6092 = !DILocalVariable(name: "fe", arg: 1, scope: !6091, file: !3, line: 398, type: !4540)
!6093 = !DILocation(line: 398, column: 51, scope: !6091)
!6094 = !DILocalVariable(name: "priv", scope: !6091, file: !3, line: 400, type: !4851)
!6095 = !DILocation(line: 400, column: 24, scope: !6091)
!6096 = !DILocation(line: 400, column: 31, scope: !6091)
!6097 = !DILocation(line: 400, column: 35, scope: !6091)
!6098 = !DILocalVariable(name: "client", scope: !6091, file: !3, line: 401, type: !385)
!6099 = !DILocation(line: 401, column: 21, scope: !6091)
!6100 = !DILocation(line: 401, column: 30, scope: !6091)
!6101 = !DILocation(line: 401, column: 36, scope: !6091)
!6102 = !DILocation(line: 405, column: 24, scope: !6091)
!6103 = !DILocation(line: 405, column: 2, scope: !6091)
!6104 = !DILocation(line: 407, column: 2, scope: !6091)
!6105 = distinct !DISubprogram(name: "cxd2820r_init", scope: !3, file: !3, line: 262, type: !4667, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6106 = !DILocalVariable(name: "fe", arg: 1, scope: !6105, file: !3, line: 262, type: !4540)
!6107 = !DILocation(line: 262, column: 47, scope: !6105)
!6108 = !DILocation(line: 264, column: 2, scope: !6105)
!6109 = distinct !DISubprogram(name: "cxd2820r_sleep", scope: !3, file: !3, line: 267, type: !4667, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6110 = !DILocalVariable(name: "fe", arg: 1, scope: !6109, file: !3, line: 267, type: !4540)
!6111 = !DILocation(line: 267, column: 48, scope: !6109)
!6112 = !DILocalVariable(name: "priv", scope: !6109, file: !3, line: 269, type: !4851)
!6113 = !DILocation(line: 269, column: 24, scope: !6109)
!6114 = !DILocation(line: 269, column: 31, scope: !6109)
!6115 = !DILocation(line: 269, column: 35, scope: !6109)
!6116 = !DILocalVariable(name: "client", scope: !6109, file: !3, line: 270, type: !385)
!6117 = !DILocation(line: 270, column: 21, scope: !6109)
!6118 = !DILocation(line: 270, column: 30, scope: !6109)
!6119 = !DILocation(line: 270, column: 36, scope: !6109)
!6120 = !DILocalVariable(name: "c", scope: !6109, file: !3, line: 271, type: !4700)
!6121 = !DILocation(line: 271, column: 34, scope: !6109)
!6122 = !DILocation(line: 271, column: 39, scope: !6109)
!6123 = !DILocation(line: 271, column: 43, scope: !6109)
!6124 = !DILocalVariable(name: "ret", scope: !6109, file: !3, line: 272, type: !384)
!6125 = !DILocation(line: 272, column: 6, scope: !6109)
!6126 = !DILocation(line: 276, column: 10, scope: !6109)
!6127 = !DILocation(line: 276, column: 13, scope: !6109)
!6128 = !DILocation(line: 276, column: 2, scope: !6109)
!6129 = !DILocation(line: 278, column: 26, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6109, file: !3, line: 276, column: 30)
!6131 = !DILocation(line: 278, column: 9, scope: !6130)
!6132 = !DILocation(line: 278, column: 7, scope: !6130)
!6133 = !DILocation(line: 279, column: 3, scope: !6130)
!6134 = !DILocation(line: 281, column: 27, scope: !6130)
!6135 = !DILocation(line: 281, column: 9, scope: !6130)
!6136 = !DILocation(line: 281, column: 7, scope: !6130)
!6137 = !DILocation(line: 282, column: 3, scope: !6130)
!6138 = !DILocation(line: 284, column: 26, scope: !6130)
!6139 = !DILocation(line: 284, column: 9, scope: !6130)
!6140 = !DILocation(line: 284, column: 7, scope: !6130)
!6141 = !DILocation(line: 285, column: 3, scope: !6130)
!6142 = !DILocation(line: 287, column: 7, scope: !6130)
!6143 = !DILocation(line: 288, column: 3, scope: !6130)
!6144 = !DILocation(line: 290, column: 9, scope: !6109)
!6145 = !DILocation(line: 290, column: 2, scope: !6109)
!6146 = distinct !DISubprogram(name: "cxd2820r_get_frontend_algo", scope: !3, file: !3, line: 393, type: !4683, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6147 = !DILocalVariable(name: "fe", arg: 1, scope: !6146, file: !3, line: 393, type: !4540)
!6148 = !DILocation(line: 393, column: 72, scope: !6146)
!6149 = !DILocation(line: 395, column: 2, scope: !6146)
!6150 = distinct !DISubprogram(name: "cxd2820r_get_tune_settings", scope: !3, file: !3, line: 293, type: !4688, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6151 = !DILocalVariable(name: "fe", arg: 1, scope: !6150, file: !3, line: 293, type: !4540)
!6152 = !DILocation(line: 293, column: 60, scope: !6150)
!6153 = !DILocalVariable(name: "s", arg: 2, scope: !6150, file: !3, line: 294, type: !4690)
!6154 = !DILocation(line: 294, column: 46, scope: !6150)
!6155 = !DILocalVariable(name: "priv", scope: !6150, file: !3, line: 296, type: !4851)
!6156 = !DILocation(line: 296, column: 24, scope: !6150)
!6157 = !DILocation(line: 296, column: 31, scope: !6150)
!6158 = !DILocation(line: 296, column: 35, scope: !6150)
!6159 = !DILocalVariable(name: "client", scope: !6150, file: !3, line: 297, type: !385)
!6160 = !DILocation(line: 297, column: 21, scope: !6150)
!6161 = !DILocation(line: 297, column: 30, scope: !6150)
!6162 = !DILocation(line: 297, column: 36, scope: !6150)
!6163 = !DILocalVariable(name: "c", scope: !6150, file: !3, line: 298, type: !4700)
!6164 = !DILocation(line: 298, column: 34, scope: !6150)
!6165 = !DILocation(line: 298, column: 39, scope: !6150)
!6166 = !DILocation(line: 298, column: 43, scope: !6150)
!6167 = !DILocalVariable(name: "ret", scope: !6150, file: !3, line: 299, type: !384)
!6168 = !DILocation(line: 299, column: 6, scope: !6150)
!6169 = !DILocation(line: 303, column: 10, scope: !6150)
!6170 = !DILocation(line: 303, column: 13, scope: !6150)
!6171 = !DILocation(line: 303, column: 2, scope: !6150)
!6172 = !DILocation(line: 305, column: 38, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 303, column: 30)
!6174 = !DILocation(line: 305, column: 42, scope: !6173)
!6175 = !DILocation(line: 305, column: 9, scope: !6173)
!6176 = !DILocation(line: 305, column: 7, scope: !6173)
!6177 = !DILocation(line: 306, column: 3, scope: !6173)
!6178 = !DILocation(line: 308, column: 39, scope: !6173)
!6179 = !DILocation(line: 308, column: 43, scope: !6173)
!6180 = !DILocation(line: 308, column: 9, scope: !6173)
!6181 = !DILocation(line: 308, column: 7, scope: !6173)
!6182 = !DILocation(line: 309, column: 3, scope: !6173)
!6183 = !DILocation(line: 311, column: 38, scope: !6173)
!6184 = !DILocation(line: 311, column: 42, scope: !6173)
!6185 = !DILocation(line: 311, column: 9, scope: !6173)
!6186 = !DILocation(line: 311, column: 7, scope: !6173)
!6187 = !DILocation(line: 312, column: 3, scope: !6173)
!6188 = !DILocation(line: 314, column: 7, scope: !6173)
!6189 = !DILocation(line: 315, column: 3, scope: !6173)
!6190 = !DILocation(line: 317, column: 9, scope: !6150)
!6191 = !DILocation(line: 317, column: 2, scope: !6150)
!6192 = distinct !DISubprogram(name: "cxd2820r_get_frontend", scope: !3, file: !3, line: 173, type: !4698, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6193 = !DILocalVariable(name: "fe", arg: 1, scope: !6192, file: !3, line: 173, type: !4540)
!6194 = !DILocation(line: 173, column: 55, scope: !6192)
!6195 = !DILocalVariable(name: "p", arg: 2, scope: !6192, file: !3, line: 174, type: !4700)
!6196 = !DILocation(line: 174, column: 38, scope: !6192)
!6197 = !DILocalVariable(name: "priv", scope: !6192, file: !3, line: 176, type: !4851)
!6198 = !DILocation(line: 176, column: 24, scope: !6192)
!6199 = !DILocation(line: 176, column: 31, scope: !6192)
!6200 = !DILocation(line: 176, column: 35, scope: !6192)
!6201 = !DILocalVariable(name: "client", scope: !6192, file: !3, line: 177, type: !385)
!6202 = !DILocation(line: 177, column: 21, scope: !6192)
!6203 = !DILocation(line: 177, column: 30, scope: !6192)
!6204 = !DILocation(line: 177, column: 36, scope: !6192)
!6205 = !DILocalVariable(name: "c", scope: !6192, file: !3, line: 178, type: !4700)
!6206 = !DILocation(line: 178, column: 34, scope: !6192)
!6207 = !DILocation(line: 178, column: 39, scope: !6192)
!6208 = !DILocation(line: 178, column: 43, scope: !6192)
!6209 = !DILocalVariable(name: "ret", scope: !6192, file: !3, line: 179, type: !384)
!6210 = !DILocation(line: 179, column: 6, scope: !6192)
!6211 = !DILocation(line: 183, column: 6, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6192, file: !3, line: 183, column: 6)
!6213 = !DILocation(line: 183, column: 12, scope: !6212)
!6214 = !DILocation(line: 183, column: 28, scope: !6212)
!6215 = !DILocation(line: 183, column: 6, scope: !6192)
!6216 = !DILocation(line: 184, column: 3, scope: !6212)
!6217 = !DILocation(line: 186, column: 10, scope: !6192)
!6218 = !DILocation(line: 186, column: 13, scope: !6192)
!6219 = !DILocation(line: 186, column: 2, scope: !6192)
!6220 = !DILocation(line: 188, column: 33, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6192, file: !3, line: 186, column: 30)
!6222 = !DILocation(line: 188, column: 37, scope: !6221)
!6223 = !DILocation(line: 188, column: 9, scope: !6221)
!6224 = !DILocation(line: 188, column: 7, scope: !6221)
!6225 = !DILocation(line: 189, column: 3, scope: !6221)
!6226 = !DILocation(line: 191, column: 34, scope: !6221)
!6227 = !DILocation(line: 191, column: 38, scope: !6221)
!6228 = !DILocation(line: 191, column: 9, scope: !6221)
!6229 = !DILocation(line: 191, column: 7, scope: !6221)
!6230 = !DILocation(line: 192, column: 3, scope: !6221)
!6231 = !DILocation(line: 194, column: 33, scope: !6221)
!6232 = !DILocation(line: 194, column: 37, scope: !6221)
!6233 = !DILocation(line: 194, column: 9, scope: !6221)
!6234 = !DILocation(line: 194, column: 7, scope: !6221)
!6235 = !DILocation(line: 195, column: 3, scope: !6221)
!6236 = !DILocation(line: 197, column: 7, scope: !6221)
!6237 = !DILocation(line: 198, column: 3, scope: !6221)
!6238 = !DILocation(line: 200, column: 9, scope: !6192)
!6239 = !DILocation(line: 200, column: 2, scope: !6192)
!6240 = !DILocation(line: 201, column: 1, scope: !6192)
!6241 = distinct !DISubprogram(name: "cxd2820r_read_status", scope: !3, file: !3, line: 147, type: !4703, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6242 = !DILocalVariable(name: "fe", arg: 1, scope: !6241, file: !3, line: 147, type: !4540)
!6243 = !DILocation(line: 147, column: 54, scope: !6241)
!6244 = !DILocalVariable(name: "status", arg: 2, scope: !6241, file: !3, line: 147, type: !4680)
!6245 = !DILocation(line: 147, column: 74, scope: !6241)
!6246 = !DILocalVariable(name: "priv", scope: !6241, file: !3, line: 149, type: !4851)
!6247 = !DILocation(line: 149, column: 24, scope: !6241)
!6248 = !DILocation(line: 149, column: 31, scope: !6241)
!6249 = !DILocation(line: 149, column: 35, scope: !6241)
!6250 = !DILocalVariable(name: "client", scope: !6241, file: !3, line: 150, type: !385)
!6251 = !DILocation(line: 150, column: 21, scope: !6241)
!6252 = !DILocation(line: 150, column: 30, scope: !6241)
!6253 = !DILocation(line: 150, column: 36, scope: !6241)
!6254 = !DILocalVariable(name: "c", scope: !6241, file: !3, line: 151, type: !4700)
!6255 = !DILocation(line: 151, column: 34, scope: !6241)
!6256 = !DILocation(line: 151, column: 39, scope: !6241)
!6257 = !DILocation(line: 151, column: 43, scope: !6241)
!6258 = !DILocalVariable(name: "ret", scope: !6241, file: !3, line: 152, type: !384)
!6259 = !DILocation(line: 152, column: 6, scope: !6241)
!6260 = !DILocation(line: 156, column: 10, scope: !6241)
!6261 = !DILocation(line: 156, column: 13, scope: !6241)
!6262 = !DILocation(line: 156, column: 2, scope: !6241)
!6263 = !DILocation(line: 158, column: 32, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 156, column: 30)
!6265 = !DILocation(line: 158, column: 36, scope: !6264)
!6266 = !DILocation(line: 158, column: 9, scope: !6264)
!6267 = !DILocation(line: 158, column: 7, scope: !6264)
!6268 = !DILocation(line: 159, column: 3, scope: !6264)
!6269 = !DILocation(line: 161, column: 33, scope: !6264)
!6270 = !DILocation(line: 161, column: 37, scope: !6264)
!6271 = !DILocation(line: 161, column: 9, scope: !6264)
!6272 = !DILocation(line: 161, column: 7, scope: !6264)
!6273 = !DILocation(line: 162, column: 3, scope: !6264)
!6274 = !DILocation(line: 164, column: 32, scope: !6264)
!6275 = !DILocation(line: 164, column: 36, scope: !6264)
!6276 = !DILocation(line: 164, column: 9, scope: !6264)
!6277 = !DILocation(line: 164, column: 7, scope: !6264)
!6278 = !DILocation(line: 165, column: 3, scope: !6264)
!6279 = !DILocation(line: 167, column: 7, scope: !6264)
!6280 = !DILocation(line: 168, column: 3, scope: !6264)
!6281 = !DILocation(line: 170, column: 9, scope: !6241)
!6282 = !DILocation(line: 170, column: 2, scope: !6241)
!6283 = distinct !DISubprogram(name: "cxd2820r_read_ber", scope: !3, file: !3, line: 203, type: !4707, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6284 = !DILocalVariable(name: "fe", arg: 1, scope: !6283, file: !3, line: 203, type: !4540)
!6285 = !DILocation(line: 203, column: 51, scope: !6283)
!6286 = !DILocalVariable(name: "ber", arg: 2, scope: !6283, file: !3, line: 203, type: !2860)
!6287 = !DILocation(line: 203, column: 60, scope: !6283)
!6288 = !DILocalVariable(name: "priv", scope: !6283, file: !3, line: 205, type: !4851)
!6289 = !DILocation(line: 205, column: 24, scope: !6283)
!6290 = !DILocation(line: 205, column: 31, scope: !6283)
!6291 = !DILocation(line: 205, column: 35, scope: !6283)
!6292 = !DILocalVariable(name: "client", scope: !6283, file: !3, line: 206, type: !385)
!6293 = !DILocation(line: 206, column: 21, scope: !6283)
!6294 = !DILocation(line: 206, column: 30, scope: !6283)
!6295 = !DILocation(line: 206, column: 36, scope: !6283)
!6296 = !DILocalVariable(name: "c", scope: !6283, file: !3, line: 207, type: !4700)
!6297 = !DILocation(line: 207, column: 34, scope: !6283)
!6298 = !DILocation(line: 207, column: 39, scope: !6283)
!6299 = !DILocation(line: 207, column: 43, scope: !6283)
!6300 = !DILocation(line: 211, column: 10, scope: !6283)
!6301 = !DILocation(line: 211, column: 16, scope: !6283)
!6302 = !DILocation(line: 211, column: 33, scope: !6283)
!6303 = !DILocation(line: 211, column: 39, scope: !6283)
!6304 = !DILocation(line: 211, column: 31, scope: !6283)
!6305 = !DILocation(line: 211, column: 9, scope: !6283)
!6306 = !DILocation(line: 211, column: 3, scope: !6283)
!6307 = !DILocation(line: 211, column: 7, scope: !6283)
!6308 = !DILocation(line: 212, column: 36, scope: !6283)
!6309 = !DILocation(line: 212, column: 42, scope: !6283)
!6310 = !DILocation(line: 212, column: 2, scope: !6283)
!6311 = !DILocation(line: 212, column: 8, scope: !6283)
!6312 = !DILocation(line: 212, column: 34, scope: !6283)
!6313 = !DILocation(line: 214, column: 2, scope: !6283)
!6314 = distinct !DISubprogram(name: "cxd2820r_read_signal_strength", scope: !3, file: !3, line: 217, type: !4711, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6315 = !DILocalVariable(name: "fe", arg: 1, scope: !6314, file: !3, line: 217, type: !4540)
!6316 = !DILocation(line: 217, column: 63, scope: !6314)
!6317 = !DILocalVariable(name: "strength", arg: 2, scope: !6314, file: !3, line: 217, type: !4713)
!6318 = !DILocation(line: 217, column: 72, scope: !6314)
!6319 = !DILocalVariable(name: "priv", scope: !6314, file: !3, line: 219, type: !4851)
!6320 = !DILocation(line: 219, column: 24, scope: !6314)
!6321 = !DILocation(line: 219, column: 31, scope: !6314)
!6322 = !DILocation(line: 219, column: 35, scope: !6314)
!6323 = !DILocalVariable(name: "client", scope: !6314, file: !3, line: 220, type: !385)
!6324 = !DILocation(line: 220, column: 21, scope: !6314)
!6325 = !DILocation(line: 220, column: 30, scope: !6314)
!6326 = !DILocation(line: 220, column: 36, scope: !6314)
!6327 = !DILocalVariable(name: "c", scope: !6314, file: !3, line: 221, type: !4700)
!6328 = !DILocation(line: 221, column: 34, scope: !6314)
!6329 = !DILocation(line: 221, column: 39, scope: !6314)
!6330 = !DILocation(line: 221, column: 43, scope: !6314)
!6331 = !DILocation(line: 225, column: 6, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6314, file: !3, line: 225, column: 6)
!6333 = !DILocation(line: 225, column: 9, scope: !6332)
!6334 = !DILocation(line: 225, column: 18, scope: !6332)
!6335 = !DILocation(line: 225, column: 26, scope: !6332)
!6336 = !DILocation(line: 225, column: 32, scope: !6332)
!6337 = !DILocation(line: 225, column: 6, scope: !6314)
!6338 = !DILocation(line: 226, column: 15, scope: !6332)
!6339 = !DILocation(line: 226, column: 18, scope: !6332)
!6340 = !DILocation(line: 226, column: 27, scope: !6332)
!6341 = !DILocation(line: 226, column: 35, scope: !6332)
!6342 = !DILocation(line: 226, column: 4, scope: !6332)
!6343 = !DILocation(line: 226, column: 13, scope: !6332)
!6344 = !DILocation(line: 226, column: 3, scope: !6332)
!6345 = !DILocation(line: 228, column: 4, scope: !6332)
!6346 = !DILocation(line: 228, column: 13, scope: !6332)
!6347 = !DILocation(line: 230, column: 2, scope: !6314)
!6348 = distinct !DISubprogram(name: "cxd2820r_read_snr", scope: !3, file: !3, line: 233, type: !4711, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6349 = !DILocalVariable(name: "fe", arg: 1, scope: !6348, file: !3, line: 233, type: !4540)
!6350 = !DILocation(line: 233, column: 51, scope: !6348)
!6351 = !DILocalVariable(name: "snr", arg: 2, scope: !6348, file: !3, line: 233, type: !4713)
!6352 = !DILocation(line: 233, column: 60, scope: !6348)
!6353 = !DILocalVariable(name: "priv", scope: !6348, file: !3, line: 235, type: !4851)
!6354 = !DILocation(line: 235, column: 24, scope: !6348)
!6355 = !DILocation(line: 235, column: 31, scope: !6348)
!6356 = !DILocation(line: 235, column: 35, scope: !6348)
!6357 = !DILocalVariable(name: "client", scope: !6348, file: !3, line: 236, type: !385)
!6358 = !DILocation(line: 236, column: 21, scope: !6348)
!6359 = !DILocation(line: 236, column: 30, scope: !6348)
!6360 = !DILocation(line: 236, column: 36, scope: !6348)
!6361 = !DILocalVariable(name: "c", scope: !6348, file: !3, line: 237, type: !4700)
!6362 = !DILocation(line: 237, column: 34, scope: !6348)
!6363 = !DILocation(line: 237, column: 39, scope: !6348)
!6364 = !DILocation(line: 237, column: 43, scope: !6348)
!6365 = !DILocation(line: 241, column: 6, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 241, column: 6)
!6367 = !DILocation(line: 241, column: 9, scope: !6366)
!6368 = !DILocation(line: 241, column: 13, scope: !6366)
!6369 = !DILocation(line: 241, column: 21, scope: !6366)
!6370 = !DILocation(line: 241, column: 27, scope: !6366)
!6371 = !DILocation(line: 241, column: 6, scope: !6348)
!6372 = !DILocation(line: 242, column: 18, scope: !6366)
!6373 = !DILocation(line: 242, column: 21, scope: !6366)
!6374 = !DILocation(line: 242, column: 25, scope: !6366)
!6375 = !DILocation(line: 242, column: 33, scope: !6366)
!6376 = !DILocation(line: 242, column: 10, scope: !6366)
!6377 = !DILocation(line: 242, column: 4, scope: !6366)
!6378 = !DILocation(line: 242, column: 8, scope: !6366)
!6379 = !DILocation(line: 242, column: 3, scope: !6366)
!6380 = !DILocation(line: 244, column: 4, scope: !6366)
!6381 = !DILocation(line: 244, column: 8, scope: !6366)
!6382 = !DILocation(line: 246, column: 2, scope: !6348)
!6383 = distinct !DISubprogram(name: "cxd2820r_read_ucblocks", scope: !3, file: !3, line: 249, type: !4707, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6384 = !DILocalVariable(name: "fe", arg: 1, scope: !6383, file: !3, line: 249, type: !4540)
!6385 = !DILocation(line: 249, column: 56, scope: !6383)
!6386 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !6383, file: !3, line: 249, type: !2860)
!6387 = !DILocation(line: 249, column: 65, scope: !6383)
!6388 = !DILocalVariable(name: "priv", scope: !6383, file: !3, line: 251, type: !4851)
!6389 = !DILocation(line: 251, column: 24, scope: !6383)
!6390 = !DILocation(line: 251, column: 31, scope: !6383)
!6391 = !DILocation(line: 251, column: 35, scope: !6383)
!6392 = !DILocalVariable(name: "client", scope: !6383, file: !3, line: 252, type: !385)
!6393 = !DILocation(line: 252, column: 21, scope: !6383)
!6394 = !DILocation(line: 252, column: 30, scope: !6383)
!6395 = !DILocation(line: 252, column: 36, scope: !6383)
!6396 = !DILocalVariable(name: "c", scope: !6383, file: !3, line: 253, type: !4700)
!6397 = !DILocation(line: 253, column: 34, scope: !6383)
!6398 = !DILocation(line: 253, column: 39, scope: !6383)
!6399 = !DILocation(line: 253, column: 43, scope: !6383)
!6400 = !DILocation(line: 257, column: 3, scope: !6383)
!6401 = !DILocation(line: 257, column: 12, scope: !6383)
!6402 = !DILocation(line: 259, column: 2, scope: !6383)
!6403 = distinct !DISubprogram(name: "cxd2820r_i2c_gate_ctrl", scope: !3, file: !3, line: 410, type: !4760, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6404 = !DILocalVariable(name: "fe", arg: 1, scope: !6403, file: !3, line: 410, type: !4540)
!6405 = !DILocation(line: 410, column: 56, scope: !6403)
!6406 = !DILocalVariable(name: "enable", arg: 2, scope: !6403, file: !3, line: 410, type: !384)
!6407 = !DILocation(line: 410, column: 64, scope: !6403)
!6408 = !DILocalVariable(name: "priv", scope: !6403, file: !3, line: 412, type: !4851)
!6409 = !DILocation(line: 412, column: 24, scope: !6403)
!6410 = !DILocation(line: 412, column: 31, scope: !6403)
!6411 = !DILocation(line: 412, column: 35, scope: !6403)
!6412 = !DILocalVariable(name: "client", scope: !6403, file: !3, line: 413, type: !385)
!6413 = !DILocation(line: 413, column: 21, scope: !6403)
!6414 = !DILocation(line: 413, column: 30, scope: !6403)
!6415 = !DILocation(line: 413, column: 36, scope: !6403)
!6416 = !DILocation(line: 415, column: 2, scope: !6403)
!6417 = !DILocation(line: 415, column: 2, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 415, column: 2)
!6419 = !DILocation(line: 417, column: 28, scope: !6403)
!6420 = !DILocation(line: 417, column: 34, scope: !6403)
!6421 = !DILocation(line: 417, column: 59, scope: !6403)
!6422 = !DILocation(line: 417, column: 9, scope: !6403)
!6423 = !DILocation(line: 417, column: 2, scope: !6403)
!6424 = distinct !DISubprogram(name: "cxd2820r_search", scope: !3, file: !3, line: 320, type: !4766, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6425 = !DILocalVariable(name: "fe", arg: 1, scope: !6424, file: !3, line: 320, type: !4540)
!6426 = !DILocation(line: 320, column: 63, scope: !6424)
!6427 = !DILocalVariable(name: "priv", scope: !6424, file: !3, line: 322, type: !4851)
!6428 = !DILocation(line: 322, column: 24, scope: !6424)
!6429 = !DILocation(line: 322, column: 31, scope: !6424)
!6430 = !DILocation(line: 322, column: 35, scope: !6424)
!6431 = !DILocalVariable(name: "client", scope: !6424, file: !3, line: 323, type: !385)
!6432 = !DILocation(line: 323, column: 21, scope: !6424)
!6433 = !DILocation(line: 323, column: 30, scope: !6424)
!6434 = !DILocation(line: 323, column: 36, scope: !6424)
!6435 = !DILocalVariable(name: "c", scope: !6424, file: !3, line: 324, type: !4700)
!6436 = !DILocation(line: 324, column: 34, scope: !6424)
!6437 = !DILocation(line: 324, column: 39, scope: !6424)
!6438 = !DILocation(line: 324, column: 43, scope: !6424)
!6439 = !DILocalVariable(name: "ret", scope: !6424, file: !3, line: 325, type: !384)
!6440 = !DILocation(line: 325, column: 6, scope: !6424)
!6441 = !DILocalVariable(name: "i", scope: !6424, file: !3, line: 325, type: !384)
!6442 = !DILocation(line: 325, column: 11, scope: !6424)
!6443 = !DILocalVariable(name: "status", scope: !6424, file: !3, line: 326, type: !136)
!6444 = !DILocation(line: 326, column: 17, scope: !6424)
!6445 = !DILocation(line: 331, column: 6, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 331, column: 6)
!6447 = !DILocation(line: 331, column: 12, scope: !6446)
!6448 = !DILocation(line: 331, column: 6, scope: !6424)
!6449 = !DILocation(line: 332, column: 7, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 332, column: 7)
!6451 = distinct !DILexicalBlock(scope: !6446, file: !3, line: 331, column: 30)
!6452 = !DILocation(line: 332, column: 13, scope: !6450)
!6453 = !DILocation(line: 332, column: 29, scope: !6450)
!6454 = !DILocation(line: 332, column: 7, scope: !6451)
!6455 = !DILocation(line: 333, column: 27, scope: !6456)
!6456 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 332, column: 42)
!6457 = !DILocation(line: 333, column: 10, scope: !6456)
!6458 = !DILocation(line: 333, column: 8, scope: !6456)
!6459 = !DILocation(line: 334, column: 8, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6456, file: !3, line: 334, column: 8)
!6461 = !DILocation(line: 334, column: 8, scope: !6456)
!6462 = !DILocation(line: 335, column: 5, scope: !6460)
!6463 = !DILocation(line: 337, column: 4, scope: !6456)
!6464 = !DILocation(line: 337, column: 7, scope: !6456)
!6465 = !DILocation(line: 337, column: 23, scope: !6456)
!6466 = !DILocation(line: 338, column: 3, scope: !6456)
!6467 = !DILocation(line: 338, column: 14, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 338, column: 14)
!6469 = !DILocation(line: 338, column: 20, scope: !6468)
!6470 = !DILocation(line: 338, column: 36, scope: !6468)
!6471 = !DILocation(line: 338, column: 14, scope: !6450)
!6472 = !DILocation(line: 339, column: 28, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 338, column: 50)
!6474 = !DILocation(line: 339, column: 10, scope: !6473)
!6475 = !DILocation(line: 339, column: 8, scope: !6473)
!6476 = !DILocation(line: 340, column: 8, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6473, file: !3, line: 340, column: 8)
!6478 = !DILocation(line: 340, column: 8, scope: !6473)
!6479 = !DILocation(line: 341, column: 5, scope: !6477)
!6480 = !DILocation(line: 343, column: 4, scope: !6473)
!6481 = !DILocation(line: 343, column: 7, scope: !6473)
!6482 = !DILocation(line: 343, column: 23, scope: !6473)
!6483 = !DILocation(line: 344, column: 3, scope: !6473)
!6484 = !DILocation(line: 345, column: 2, scope: !6451)
!6485 = !DILocation(line: 348, column: 30, scope: !6424)
!6486 = !DILocation(line: 348, column: 8, scope: !6424)
!6487 = !DILocation(line: 348, column: 6, scope: !6424)
!6488 = !DILocation(line: 349, column: 6, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 349, column: 6)
!6490 = !DILocation(line: 349, column: 6, scope: !6424)
!6491 = !DILocation(line: 350, column: 3, scope: !6489)
!6492 = !DILocation(line: 353, column: 10, scope: !6424)
!6493 = !DILocation(line: 353, column: 16, scope: !6424)
!6494 = !DILocation(line: 353, column: 2, scope: !6424)
!6495 = !DILocation(line: 356, column: 5, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 353, column: 33)
!6497 = !DILocation(line: 357, column: 3, scope: !6496)
!6498 = !DILocation(line: 359, column: 5, scope: !6496)
!6499 = !DILocation(line: 360, column: 3, scope: !6496)
!6500 = !DILocation(line: 363, column: 5, scope: !6496)
!6501 = !DILocation(line: 364, column: 3, scope: !6496)
!6502 = !DILocation(line: 368, column: 2, scope: !6424)
!6503 = !DILocation(line: 368, column: 9, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6505, file: !3, line: 368, column: 2)
!6505 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 368, column: 2)
!6506 = !DILocation(line: 368, column: 11, scope: !6504)
!6507 = !DILocation(line: 368, column: 2, scope: !6505)
!6508 = !DILocation(line: 370, column: 3, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6504, file: !3, line: 368, column: 21)
!6510 = !DILocation(line: 371, column: 30, scope: !6509)
!6511 = !DILocation(line: 371, column: 9, scope: !6509)
!6512 = !DILocation(line: 371, column: 7, scope: !6509)
!6513 = !DILocation(line: 372, column: 7, scope: !6514)
!6514 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 372, column: 7)
!6515 = !DILocation(line: 372, column: 7, scope: !6509)
!6516 = !DILocation(line: 373, column: 4, scope: !6514)
!6517 = !DILocation(line: 375, column: 7, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 375, column: 7)
!6519 = !DILocation(line: 375, column: 14, scope: !6518)
!6520 = !DILocation(line: 375, column: 7, scope: !6509)
!6521 = !DILocation(line: 376, column: 4, scope: !6518)
!6522 = !DILocation(line: 377, column: 2, scope: !6509)
!6523 = !DILocation(line: 368, column: 17, scope: !6504)
!6524 = !DILocation(line: 368, column: 2, scope: !6504)
!6525 = distinct !{!6525, !6507, !6526}
!6526 = !DILocation(line: 377, column: 2, scope: !6505)
!6527 = !DILocation(line: 380, column: 6, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 380, column: 6)
!6529 = !DILocation(line: 380, column: 13, scope: !6528)
!6530 = !DILocation(line: 380, column: 6, scope: !6424)
!6531 = !DILocation(line: 381, column: 3, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 380, column: 28)
!6533 = !DILocation(line: 381, column: 9, scope: !6532)
!6534 = !DILocation(line: 381, column: 26, scope: !6532)
!6535 = !DILocation(line: 382, column: 3, scope: !6532)
!6536 = !DILocation(line: 384, column: 3, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 383, column: 9)
!6538 = !DILocation(line: 384, column: 9, scope: !6537)
!6539 = !DILocation(line: 384, column: 26, scope: !6537)
!6540 = !DILocation(line: 385, column: 3, scope: !6537)
!6541 = !DILabel(scope: !6424, name: "error", file: !3, line: 388)
!6542 = !DILocation(line: 388, column: 1, scope: !6424)
!6543 = !DILocation(line: 390, column: 2, scope: !6424)
!6544 = !DILocation(line: 391, column: 1, scope: !6424)
!6545 = distinct !DISubprogram(name: "div_s64", scope: !6546, file: !6546, line: 137, type: !6547, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6546 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!6547 = !DISubroutineType(types: !6548)
!6548 = !{!573, !573, !2518}
!6549 = !DILocalVariable(name: "dividend", arg: 1, scope: !6545, file: !6546, line: 137, type: !573)
!6550 = !DILocation(line: 137, column: 31, scope: !6545)
!6551 = !DILocalVariable(name: "divisor", arg: 2, scope: !6545, file: !6546, line: 137, type: !2518)
!6552 = !DILocation(line: 137, column: 45, scope: !6545)
!6553 = !DILocalVariable(name: "remainder", scope: !6545, file: !6546, line: 139, type: !2518)
!6554 = !DILocation(line: 139, column: 6, scope: !6545)
!6555 = !DILocation(line: 140, column: 21, scope: !6545)
!6556 = !DILocation(line: 140, column: 31, scope: !6545)
!6557 = !DILocation(line: 140, column: 9, scope: !6545)
!6558 = !DILocation(line: 140, column: 2, scope: !6545)
!6559 = distinct !DISubprogram(name: "div_s64_rem", scope: !6546, file: !6546, line: 39, type: !6560, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6560 = !DISubroutineType(types: !6561)
!6561 = !{!573, !573, !2518, !4811}
!6562 = !DILocalVariable(name: "dividend", arg: 1, scope: !6559, file: !6546, line: 39, type: !573)
!6563 = !DILocation(line: 39, column: 35, scope: !6559)
!6564 = !DILocalVariable(name: "divisor", arg: 2, scope: !6559, file: !6546, line: 39, type: !2518)
!6565 = !DILocation(line: 39, column: 49, scope: !6559)
!6566 = !DILocalVariable(name: "remainder", arg: 3, scope: !6559, file: !6546, line: 39, type: !4811)
!6567 = !DILocation(line: 39, column: 63, scope: !6559)
!6568 = !DILocation(line: 41, column: 15, scope: !6559)
!6569 = !DILocation(line: 41, column: 26, scope: !6559)
!6570 = !DILocation(line: 41, column: 24, scope: !6559)
!6571 = !DILocation(line: 41, column: 3, scope: !6559)
!6572 = !DILocation(line: 41, column: 13, scope: !6559)
!6573 = !DILocation(line: 42, column: 9, scope: !6559)
!6574 = !DILocation(line: 42, column: 20, scope: !6559)
!6575 = !DILocation(line: 42, column: 18, scope: !6559)
!6576 = !DILocation(line: 42, column: 2, scope: !6559)
!6577 = distinct !DISubprogram(name: "cxd2820r_set_frontend", scope: !3, file: !3, line: 104, type: !4667, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6578 = !DILocalVariable(name: "fe", arg: 1, scope: !6577, file: !3, line: 104, type: !4540)
!6579 = !DILocation(line: 104, column: 55, scope: !6577)
!6580 = !DILocalVariable(name: "priv", scope: !6577, file: !3, line: 106, type: !4851)
!6581 = !DILocation(line: 106, column: 24, scope: !6577)
!6582 = !DILocation(line: 106, column: 31, scope: !6577)
!6583 = !DILocation(line: 106, column: 35, scope: !6577)
!6584 = !DILocalVariable(name: "client", scope: !6577, file: !3, line: 107, type: !385)
!6585 = !DILocation(line: 107, column: 21, scope: !6577)
!6586 = !DILocation(line: 107, column: 30, scope: !6577)
!6587 = !DILocation(line: 107, column: 36, scope: !6577)
!6588 = !DILocalVariable(name: "c", scope: !6577, file: !3, line: 108, type: !4700)
!6589 = !DILocation(line: 108, column: 34, scope: !6577)
!6590 = !DILocation(line: 108, column: 39, scope: !6577)
!6591 = !DILocation(line: 108, column: 43, scope: !6577)
!6592 = !DILocalVariable(name: "ret", scope: !6577, file: !3, line: 109, type: !384)
!6593 = !DILocation(line: 109, column: 6, scope: !6577)
!6594 = !DILocation(line: 113, column: 10, scope: !6577)
!6595 = !DILocation(line: 113, column: 13, scope: !6577)
!6596 = !DILocation(line: 113, column: 2, scope: !6577)
!6597 = !DILocation(line: 115, column: 25, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 113, column: 30)
!6599 = !DILocation(line: 115, column: 9, scope: !6598)
!6600 = !DILocation(line: 115, column: 7, scope: !6598)
!6601 = !DILocation(line: 116, column: 7, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 116, column: 7)
!6603 = !DILocation(line: 116, column: 11, scope: !6602)
!6604 = !DILocation(line: 116, column: 7, scope: !6598)
!6605 = !DILocation(line: 117, column: 4, scope: !6602)
!6606 = !DILocation(line: 118, column: 33, scope: !6598)
!6607 = !DILocation(line: 118, column: 9, scope: !6598)
!6608 = !DILocation(line: 118, column: 7, scope: !6598)
!6609 = !DILocation(line: 119, column: 7, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 119, column: 7)
!6611 = !DILocation(line: 119, column: 11, scope: !6610)
!6612 = !DILocation(line: 119, column: 7, scope: !6598)
!6613 = !DILocation(line: 120, column: 4, scope: !6610)
!6614 = !DILocation(line: 121, column: 3, scope: !6598)
!6615 = !DILocation(line: 123, column: 25, scope: !6598)
!6616 = !DILocation(line: 123, column: 9, scope: !6598)
!6617 = !DILocation(line: 123, column: 7, scope: !6598)
!6618 = !DILocation(line: 124, column: 7, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 124, column: 7)
!6620 = !DILocation(line: 124, column: 11, scope: !6619)
!6621 = !DILocation(line: 124, column: 7, scope: !6598)
!6622 = !DILocation(line: 125, column: 4, scope: !6619)
!6623 = !DILocation(line: 126, column: 34, scope: !6598)
!6624 = !DILocation(line: 126, column: 9, scope: !6598)
!6625 = !DILocation(line: 126, column: 7, scope: !6598)
!6626 = !DILocation(line: 127, column: 7, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 127, column: 7)
!6628 = !DILocation(line: 127, column: 11, scope: !6627)
!6629 = !DILocation(line: 127, column: 7, scope: !6598)
!6630 = !DILocation(line: 128, column: 4, scope: !6627)
!6631 = !DILocation(line: 129, column: 3, scope: !6598)
!6632 = !DILocation(line: 131, column: 25, scope: !6598)
!6633 = !DILocation(line: 131, column: 9, scope: !6598)
!6634 = !DILocation(line: 131, column: 7, scope: !6598)
!6635 = !DILocation(line: 132, column: 7, scope: !6636)
!6636 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 132, column: 7)
!6637 = !DILocation(line: 132, column: 11, scope: !6636)
!6638 = !DILocation(line: 132, column: 7, scope: !6598)
!6639 = !DILocation(line: 133, column: 4, scope: !6636)
!6640 = !DILocation(line: 134, column: 33, scope: !6598)
!6641 = !DILocation(line: 134, column: 9, scope: !6598)
!6642 = !DILocation(line: 134, column: 7, scope: !6598)
!6643 = !DILocation(line: 135, column: 7, scope: !6644)
!6644 = distinct !DILexicalBlock(scope: !6598, file: !3, line: 135, column: 7)
!6645 = !DILocation(line: 135, column: 11, scope: !6644)
!6646 = !DILocation(line: 135, column: 7, scope: !6598)
!6647 = !DILocation(line: 136, column: 4, scope: !6644)
!6648 = !DILocation(line: 137, column: 3, scope: !6598)
!6649 = !DILocation(line: 140, column: 7, scope: !6598)
!6650 = !DILocation(line: 141, column: 3, scope: !6598)
!6651 = !DILocation(line: 142, column: 2, scope: !6598)
!6652 = !DILabel(scope: !6577, name: "err", file: !3, line: 143)
!6653 = !DILocation(line: 143, column: 1, scope: !6577)
!6654 = !DILocation(line: 144, column: 9, scope: !6577)
!6655 = !DILocation(line: 144, column: 2, scope: !6577)
!6656 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !60, file: !60, line: 660, type: !6657, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6657 = !DISubroutineType(types: !6658)
!6658 = !{null, !3524, !338}
!6659 = !DILocalVariable(name: "dev", arg: 1, scope: !6656, file: !60, line: 660, type: !3524)
!6660 = !DILocation(line: 660, column: 51, scope: !6656)
!6661 = !DILocalVariable(name: "data", arg: 2, scope: !6656, file: !60, line: 660, type: !338)
!6662 = !DILocation(line: 660, column: 62, scope: !6656)
!6663 = !DILocation(line: 662, column: 21, scope: !6656)
!6664 = !DILocation(line: 662, column: 2, scope: !6656)
!6665 = !DILocation(line: 662, column: 7, scope: !6656)
!6666 = !DILocation(line: 662, column: 19, scope: !6656)
!6667 = !DILocation(line: 663, column: 1, scope: !6656)
!6668 = distinct !DISubprogram(name: "i2c_get_clientdata", scope: !306, file: !306, line: 351, type: !6669, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6669 = !DISubroutineType(types: !6670)
!6670 = !{!338, !6671}
!6671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6672, size: 64)
!6672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!6673 = !DILocalVariable(name: "client", arg: 1, scope: !6668, file: !306, line: 351, type: !6671)
!6674 = !DILocation(line: 351, column: 65, scope: !6668)
!6675 = !DILocation(line: 353, column: 26, scope: !6668)
!6676 = !DILocation(line: 353, column: 34, scope: !6668)
!6677 = !DILocation(line: 353, column: 9, scope: !6668)
!6678 = !DILocation(line: 353, column: 2, scope: !6668)
!6679 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !60, file: !60, line: 655, type: !6680, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !475)
!6680 = !DISubroutineType(types: !6681)
!6681 = !{!338, !3854}
!6682 = !DILocalVariable(name: "dev", arg: 1, scope: !6679, file: !60, line: 655, type: !3854)
!6683 = !DILocation(line: 655, column: 58, scope: !6679)
!6684 = !DILocation(line: 657, column: 9, scope: !6679)
!6685 = !DILocation(line: 657, column: 14, scope: !6679)
!6686 = !DILocation(line: 657, column: 2, scope: !6679)
