; ModuleID = '../bcout/drivers/media/dvb-frontends/lgdt330x.llvm.bc'
source_filename = "drivers/media/dvb-frontends/lgdt330x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_lgdt330x_driver_init6:\09\09\09"
module asm ".long\09lgdt330x_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.i2c_driver = type { i32, i32 (%struct.i2c_client*, %struct.i2c_device_id*)*, i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*)*, void (%struct.i2c_client*)*, void (%struct.i2c_client*, i32, i32)*, i32 (%struct.i2c_client*, i32, i8*)*, %struct.device_driver, %struct.i2c_device_id*, i32 (%struct.i2c_client*, %struct.i2c_board_info*)*, i16*, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], %struct.i2c_adapter*, %struct.device, i32, i32, %struct.list_head }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.18, [0 x i64] }
%struct.anon.18 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.19, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
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
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.62 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.4, %union.anon.54, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.54 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.55, i32 }
%union.anon.55 = type { %struct.kuid_t }
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
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.57 = type { %struct.callback_head }
%union.anon.58 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.7 }
%union.anon.7 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.61 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.59 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.59 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.66, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.66 = type { %struct.kernfs_elem_attr }
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
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.67 }
%union.anon.67 = type { i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)*, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, %struct.dvb_adapter*, i8*, i8*, i8*, i8*, i8*, %struct.dtv_frontend_properties, i32 (i8*, i32, i32, i32)*, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, i8*, [6 x i8], i8*, %struct.device*, %struct.module*, i32, %struct.dvb_device*, %struct.mutex }
%struct.dvb_device = type { %struct.list_head, %struct.file_operations*, %struct.dvb_adapter*, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32 (%struct.file*, i32, i8*)*, i8* }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.0 }>
%union.anon.0 = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, void (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i8*)* }
%struct.analog_demod_info = type { i8* }
%struct.kmem_cache = type opaque
%struct.lgdt330x_config = type { i32, i32, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32, %struct.dvb_frontend* (%struct.i2c_client*)* }
%struct.lgdt330x_state = type { %struct.i2c_client*, %struct.lgdt330x_config, %struct.dvb_frontend, i32, i32, i16, i64, i32 }

@__param_str_debug = internal constant [15 x i8] c"lgdt330x.debug\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !482
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !379
@__UNIQUE_ID_debugtype220 = internal constant [28 x i8] c"lgdt330x.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !443
@__UNIQUE_ID_debug221 = internal constant [75 x i8] c"lgdt330x.parm=debug:Turn on/off lgdt330x frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !448
@.str = private unnamed_addr constant [9 x i8] c"lgdt330x\00", align 1
@__UNIQUE_ID___addressable_lgdt330x_driver_init222 = internal global i8* bitcast (i32 ()* @lgdt330x_driver_init to i8*), section ".discard.addressable", align 8, !dbg !453
@lgdt330x_driver = internal global %struct.i2c_driver { i32 0, i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lgdt330x_probe, i32 (%struct.i2c_client*)* @lgdt330x_remove, i32 (%struct.i2c_client*)* null, void (%struct.i2c_client*)* null, void (%struct.i2c_client*, i32, i32)* null, i32 (%struct.i2c_client*, i32, i8*)* null, %struct.device_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 1, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.i2c_device_id* getelementptr inbounds ([2 x %struct.i2c_device_id], [2 x %struct.i2c_device_id]* @lgdt330x_id_table, i32 0, i32 0), i32 (%struct.i2c_client*, %struct.i2c_board_info*)* null, i16* null, %struct.list_head zeroinitializer }, align 8, !dbg !484
@__exitcall_lgdt330x_driver_exit = internal global void ()* @lgdt330x_driver_exit, section ".exitcall.exit", align 8, !dbg !455
@__UNIQUE_ID_description223 = internal constant [92 x i8] c"lgdt330x.description=LGDT330X (ATSC 8VSB & ITU-T J.83 AnnexB 64/256 QAM) Demodulator Driver\00", section ".modinfo", align 1, !dbg !462
@__UNIQUE_ID_author224 = internal constant [32 x i8] c"lgdt330x.author=Wilson Michaels\00", section ".modinfo", align 1, !dbg !467
@__UNIQUE_ID_file225 = internal constant [51 x i8] c"lgdt330x.file=drivers/media/dvb-frontends/lgdt330x\00", section ".modinfo", align 1, !dbg !472
@__UNIQUE_ID_license226 = internal constant [21 x i8] c"lgdt330x.license=GPL\00", section ".modinfo", align 1, !dbg !477
@lgdt330x_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lgdt330x\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.i2c_device_id zeroinitializer], align 16, !dbg !4625
@lgdt3302_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LGDT3302 VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 5056941, i32 10762000, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @lgdt330x_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @lgdt330x_init, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @lgdt330x_set_parameters, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @lgdt330x_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @lgdt330x_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @lgdt3302_read_status, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i16*)* @lgdt330x_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @lgdt330x_read_snr, i32 (%struct.dvb_frontend*, i32*)* @lgdt330x_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !4280
@lgdt3303_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LGDT3303 VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 5056941, i32 10762000, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @lgdt330x_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @lgdt330x_init, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @lgdt330x_set_parameters, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @lgdt330x_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @lgdt330x_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @lgdt3303_read_status, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i16*)* @lgdt330x_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @lgdt330x_read_snr, i32 (%struct.dvb_frontend*, i32*)* @lgdt330x_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !4623
@.str.1 = private unnamed_addr constant [33 x i8] c"Demod loaded for LGDT330%s chip\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Error loading lgdt330x driver\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@lgdt330x_init.lgdt3302_init_data = internal constant [28 x i8] c"\16\00\17\87\18\8E\19\01f\FB-@.\93/\003\C64@*\07,\FE0\081\9A", align 16, !dbg !4602
@lgdt330x_init.lgdt3303_init_data = internal constant [2 x i8] c"L\14", align 1, !dbg !4606
@lgdt330x_init.flip_1_lgdt3303_init_data = internal constant [4 x i8] c"L\14\87\F3", align 1, !dbg !4609
@lgdt330x_init.flip_2_lgdt3303_init_data = internal constant [4 x i8] c"L\14\87\DA", align 1, !dbg !4612
@.str.7 = private unnamed_addr constant [9 x i8] c"LGDT3302\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"LGDT3303\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Only LGDT3302 and LGDT3303 are supported chips.\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Initialized the %s chip\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"%s: error (addr %02x <- %02x, err = %i)\0A\00", align 1
@__func__.i2c_write_demod_bytes = private unnamed_addr constant [22 x i8] c"i2c_write_demod_bytes\00", align 1
@__const.lgdt3302_sw_reset.reset = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@__const.lgdt3303_sw_reset.reset = private unnamed_addr constant [2 x i8] c"\02\00", align 1
@lgdt330x_set_parameters.lgdt3303_8vsb_44_data = internal constant [12 x i8] c"\04\00\0D@\0E\87\0F\8E\10\01G\8B", align 1, !dbg !4614
@lgdt330x_set_parameters.lgdt3303_qam_data = internal constant [22 x i8] c"\04\00\0D\00\0E\00\0F\00\10\00QcGfHfM\1AI\08J\9B", align 16, !dbg !4618
@__const.lgdt330x_set_parameters.top_ctrl_cfg = private unnamed_addr constant [2 x i8] c"\00\03", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"VSB_8 MODE\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"QAM_64 MODE\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"QAM_256 MODE\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"%s: Modulation type(%d) UNSUPPORTED\0A\00", align 1
@__func__.lgdt330x_set_parameters = private unnamed_addr constant [24 x i8] c"lgdt330x_set_parameters\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"%s: error blasting bytes to lgdt3303 for modulation type(%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"AGC_STATUS = 0x%02x\0A\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"TOP_CONTROL = 0x%02x, IRO_MASK = 0x%02x, IRQ_STATUS = 0x%02x\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"CARRIER_LOCK = 0x%02x\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"%s: Modulation set to unsupported value\0A\00", align 1
@__func__.lgdt3302_read_status = private unnamed_addr constant [21 x i8] c"lgdt3302_read_status\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"UCB = 0x%02x\0A\00", align 1
@__func__.lgdt3302_read_snr = private unnamed_addr constant [18 x i8] c"lgdt3302_read_snr\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"noise = 0x%08x, snr = %d.%02d dB\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"QAM LOCK = 0x%02x\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"8-VSB LOCK = 0x%02x\0A\00", align 1
@__func__.lgdt3303_read_status = private unnamed_addr constant [21 x i8] c"lgdt3303_read_status\00", align 1
@__func__.lgdt3303_read_snr = private unnamed_addr constant [18 x i8] c"lgdt3303_read_snr\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"%s: addr 0x%02x select 0x%02x error (ret == %i)\0A\00", align 1
@__func__.i2c_read_demod_bytes = private unnamed_addr constant [21 x i8] c"i2c_read_demod_bytes\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_lgdt330x_driver_init222 to i8*), i8* bitcast (void ()* @lgdt330x_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_lgdt330x_driver_exit to i8*), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @__UNIQUE_ID_description223, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_author224, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_file225, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license226, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @lgdt330x_attach(%struct.lgdt330x_config* %_config, i8 zeroext %demod_address, %struct.i2c_adapter* %i2c) #0 !dbg !4636 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %_config.addr = alloca %struct.lgdt330x_config*, align 8
  %demod_address.addr = alloca i8, align 1
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %board_info = alloca %struct.i2c_board_info, align 8
  %config = alloca %struct.lgdt330x_config, align 8
  store %struct.lgdt330x_config* %_config, %struct.lgdt330x_config** %_config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_config** %_config.addr, metadata !4653, metadata !DIExpression()), !dbg !4654
  store i8 %demod_address, i8* %demod_address.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %demod_address.addr, metadata !4655, metadata !DIExpression()), !dbg !4656
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4657, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !4659, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info* %board_info, metadata !4661, metadata !DIExpression()), !dbg !4662
  %0 = bitcast %struct.i2c_board_info* %board_info to i8*, !dbg !4662
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 80, i1 false), !dbg !4662
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_config* %config, metadata !4663, metadata !DIExpression()), !dbg !4664
  %1 = load %struct.lgdt330x_config*, %struct.lgdt330x_config** %_config.addr, align 8, !dbg !4665
  %2 = bitcast %struct.lgdt330x_config* %config to i8*, !dbg !4666
  %3 = bitcast %struct.lgdt330x_config* %1 to i8*, !dbg !4666
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 40, i1 false), !dbg !4666
  %type = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info, i32 0, i32 0, !dbg !4667
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !4668
  %call = call i64 @strscpy(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 20) #9, !dbg !4669
  %4 = load i8, i8* %demod_address.addr, align 1, !dbg !4670
  %conv = zext i8 %4 to i16, !dbg !4670
  %addr = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info, i32 0, i32 2, !dbg !4671
  store i16 %conv, i16* %addr, align 2, !dbg !4672
  %5 = bitcast %struct.lgdt330x_config* %config to i8*, !dbg !4673
  %platform_data = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board_info, i32 0, i32 4, !dbg !4674
  store i8* %5, i8** %platform_data, align 8, !dbg !4675
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4676
  %call1 = call %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter* %6, %struct.i2c_board_info* %board_info) #9, !dbg !4677
  store %struct.i2c_client* %call1, %struct.i2c_client** %client, align 8, !dbg !4678
  %7 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4679
  %call2 = call zeroext i1 @i2c_client_has_driver(%struct.i2c_client* %7) #9, !dbg !4681
  br i1 %call2, label %if.end, label %if.then, !dbg !4682

if.then:                                          ; preds = %entry
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4683
  br label %return, !dbg !4683

if.end:                                           ; preds = %entry
  %8 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4684
  %call3 = call %struct.dvb_frontend* @lgdt330x_get_dvb_frontend(%struct.i2c_client* %8) #9, !dbg !4685
  store %struct.dvb_frontend* %call3, %struct.dvb_frontend** %retval, align 8, !dbg !4686
  br label %return, !dbg !4686

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4687
  ret %struct.dvb_frontend* %9, !dbg !4687
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #3

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @i2c_client_has_driver(%struct.i2c_client* %client) #0 !dbg !4688 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4691, metadata !DIExpression()), !dbg !4692
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4693
  %1 = bitcast %struct.i2c_client* %0 to i8*, !dbg !4693
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #9, !dbg !4694
  br i1 %call, label %land.end, label %land.rhs, !dbg !4695

land.rhs:                                         ; preds = %entry
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4696
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 4, !dbg !4697
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !4698
  %3 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4698
  %tobool = icmp ne %struct.device_driver* %3, null, !dbg !4695
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !4699
  ret i1 %4, !dbg !4700
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dvb_frontend* @lgdt330x_get_dvb_frontend(%struct.i2c_client* %client) #0 !dbg !4701 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4702, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !4704, metadata !DIExpression()), !dbg !4716
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4717
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !4718
  %1 = bitcast i8* %call to %struct.lgdt330x_state*, !dbg !4718
  store %struct.lgdt330x_state* %1, %struct.lgdt330x_state** %state, align 8, !dbg !4716
  %2 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4719
  %frontend = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %2, i32 0, i32 2, !dbg !4720
  ret %struct.dvb_frontend* %frontend, !dbg !4721
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt330x_driver_init() #4 section ".init.text" !dbg !4722 {
entry:
  %call = call i32 @i2c_register_driver(%struct.module* null, %struct.i2c_driver* @lgdt330x_driver) #9, !dbg !4725
  ret i32 %call, !dbg !4725
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @lgdt330x_driver_exit() #4 section ".exit.text" !dbg !4726 {
entry:
  call void @i2c_del_driver(%struct.i2c_driver* @lgdt330x_driver) #9, !dbg !4727
  ret void, !dbg !4727
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_driver(%struct.i2c_driver*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !4728 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4732, metadata !DIExpression()), !dbg !4733
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4734
  %tobool = icmp ne i8* %0, null, !dbg !4734
  %lnot = xor i1 %tobool, true, !dbg !4734
  %lnot1 = xor i1 %lnot, true, !dbg !4734
  %lnot2 = xor i1 %lnot1, true, !dbg !4734
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4734
  %conv = sext i32 %lnot.ext to i64, !dbg !4734
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4734
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !4735

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !4736
  %2 = ptrtoint i8* %1 to i64, !dbg !4736
  %3 = inttoptr i64 %2 to i8*, !dbg !4736
  %4 = ptrtoint i8* %3 to i64, !dbg !4736
  %cmp = icmp uge i64 %4, -4095, !dbg !4736
  %lnot5 = xor i1 %cmp, true, !dbg !4736
  %lnot7 = xor i1 %lnot5, true, !dbg !4736
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4736
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !4736
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !4735
  br label %lor.end, !dbg !4735

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !4737
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_clientdata(%struct.i2c_client* %client) #0 !dbg !4738 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4743, metadata !DIExpression()), !dbg !4744
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4745
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !4746
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !4747
  ret i8* %call, !dbg !4748
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !4749 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4752, metadata !DIExpression()), !dbg !4753
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4754
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !4755
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4755
  ret i8* %1, !dbg !4756
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_register_driver(%struct.module*, %struct.i2c_driver*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt330x_probe(%struct.i2c_client* %client, %struct.i2c_device_id* %id) #0 !dbg !4757 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %id.addr = alloca %struct.i2c_device_id*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  %buf = alloca [1 x i8], align 1
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4758, metadata !DIExpression()), !dbg !4759
  store %struct.i2c_device_id* %id, %struct.i2c_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_device_id** %id.addr, metadata !4760, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !4762, metadata !DIExpression()), !dbg !4763
  store %struct.lgdt330x_state* null, %struct.lgdt330x_state** %state, align 8, !dbg !4763
  call void @llvm.dbg.declare(metadata [1 x i8]* %buf, metadata !4764, metadata !DIExpression()), !dbg !4766
  %call = call i8* @kzalloc(i64 1360, i32 3264) #9, !dbg !4767
  %0 = bitcast i8* %call to %struct.lgdt330x_state*, !dbg !4767
  store %struct.lgdt330x_state* %0, %struct.lgdt330x_state** %state, align 8, !dbg !4768
  %1 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4769
  %tobool = icmp ne %struct.lgdt330x_state* %1, null, !dbg !4769
  br i1 %tobool, label %if.end, label %if.then, !dbg !4771

if.then:                                          ; preds = %entry
  br label %error, !dbg !4772

if.end:                                           ; preds = %entry
  %2 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4773
  %config = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %2, i32 0, i32 1, !dbg !4774
  %3 = bitcast %struct.lgdt330x_config* %config to i8*, !dbg !4775
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4776
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 4, !dbg !4777
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 7, !dbg !4778
  %5 = load i8*, i8** %platform_data, align 8, !dbg !4778
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 1 %5, i64 40, i1 false), !dbg !4775
  %6 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4779
  %7 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4780
  %8 = bitcast %struct.lgdt330x_state* %7 to i8*, !dbg !4780
  call void @i2c_set_clientdata(%struct.i2c_client* %6, i8* %8) #9, !dbg !4781
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4782
  %10 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4783
  %client1 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %10, i32 0, i32 0, !dbg !4784
  store %struct.i2c_client* %9, %struct.i2c_client** %client1, align 8, !dbg !4785
  %11 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4786
  %config2 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %11, i32 0, i32 1, !dbg !4787
  %demod_chip = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config2, i32 0, i32 0, !dbg !4788
  %12 = load i32, i32* %demod_chip, align 8, !dbg !4788
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ], !dbg !4789

sw.bb:                                            ; preds = %if.end
  %13 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4790
  %frontend = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %13, i32 0, i32 2, !dbg !4792
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4793
  %14 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4794
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @lgdt3302_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4794
  br label %sw.epilog, !dbg !4795

sw.bb3:                                           ; preds = %if.end
  %15 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4796
  %frontend4 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %15, i32 0, i32 2, !dbg !4797
  %ops5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend4, i32 0, i32 1, !dbg !4798
  %16 = bitcast %struct.dvb_frontend_ops* %ops5 to i8*, !dbg !4799
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @lgdt3303_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4799
  br label %sw.epilog, !dbg !4800

sw.default:                                       ; preds = %if.end
  br label %error, !dbg !4801

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %17 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4802
  %18 = bitcast %struct.lgdt330x_state* %17 to i8*, !dbg !4802
  %19 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4803
  %frontend6 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %19, i32 0, i32 2, !dbg !4804
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend6, i32 0, i32 3, !dbg !4805
  store i8* %18, i8** %demodulator_priv, align 8, !dbg !4806
  %20 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4807
  %config7 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %20, i32 0, i32 1, !dbg !4808
  %get_dvb_frontend = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config7, i32 0, i32 5, !dbg !4809
  store %struct.dvb_frontend* (%struct.i2c_client*)* @lgdt330x_get_dvb_frontend, %struct.dvb_frontend* (%struct.i2c_client*)** %get_dvb_frontend, align 8, !dbg !4810
  %21 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4811
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %buf, i64 0, i64 0, !dbg !4813
  %call8 = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %21, i32 2, i8* %arraydecay, i32 1) #9, !dbg !4814
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4814
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4815

if.then10:                                        ; preds = %sw.epilog
  br label %error, !dbg !4816

if.end11:                                         ; preds = %sw.epilog
  %22 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4817
  %current_frequency = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %22, i32 0, i32 7, !dbg !4818
  store i32 -1, i32* %current_frequency, align 8, !dbg !4819
  %23 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4820
  %current_modulation = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %23, i32 0, i32 3, !dbg !4821
  store i32 -1, i32* %current_modulation, align 8, !dbg !4822
  %24 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4823
  %client12 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %24, i32 0, i32 0, !dbg !4823
  %25 = load %struct.i2c_client*, %struct.i2c_client** %client12, align 8, !dbg !4823
  %dev13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 4, !dbg !4823
  %26 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4823
  %config14 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %26, i32 0, i32 1, !dbg !4823
  %demod_chip15 = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config14, i32 0, i32 0, !dbg !4823
  %27 = load i32, i32* %demod_chip15, align 8, !dbg !4823
  %cmp = icmp eq i32 %27, 1, !dbg !4823
  %28 = zext i1 %cmp to i64, !dbg !4823
  %cond = select i1 %cmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), !dbg !4823
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %cond) #10, !dbg !4823
  store i32 0, i32* %retval, align 4, !dbg !4824
  br label %return, !dbg !4824

error:                                            ; preds = %if.then10, %sw.default, %if.then
  call void @llvm.dbg.label(metadata !4825), !dbg !4826
  %29 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4827
  %30 = bitcast %struct.lgdt330x_state* %29 to i8*, !dbg !4827
  call void @kfree(i8* %30) #9, !dbg !4828
  %31 = load i32, i32* @debug, align 4, !dbg !4829
  %tobool16 = icmp ne i32 %31, 0, !dbg !4829
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !4831

if.then17:                                        ; preds = %error
  %32 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4832
  %dev18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 4, !dbg !4833
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !4834
  br label %if.end19, !dbg !4834

if.end19:                                         ; preds = %if.then17, %error
  store i32 -19, i32* %retval, align 4, !dbg !4835
  br label %return, !dbg !4835

return:                                           ; preds = %if.end19, %if.end11
  %33 = load i32, i32* %retval, align 4, !dbg !4836
  ret i32 %33, !dbg !4836
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt330x_remove(%struct.i2c_client* %client) #0 !dbg !4837 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4838, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !4840, metadata !DIExpression()), !dbg !4841
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4842
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !4843
  %1 = bitcast i8* %call to %struct.lgdt330x_state*, !dbg !4843
  store %struct.lgdt330x_state* %1, %struct.lgdt330x_state** %state, align 8, !dbg !4841
  %2 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !4844
  %3 = bitcast %struct.lgdt330x_state* %2 to i8*, !dbg !4844
  call void @kfree(i8* %3) #9, !dbg !4845
  ret i32 0, !dbg !4846
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4847 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4850, metadata !DIExpression()), !dbg !4854
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4860, metadata !DIExpression()), !dbg !4861
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4862, metadata !DIExpression()), !dbg !4863
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4864, metadata !DIExpression()), !dbg !4865
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4866, metadata !DIExpression()), !dbg !4870
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4872, metadata !DIExpression()), !dbg !4876
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4878, metadata !DIExpression()), !dbg !4882
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4887, metadata !DIExpression()), !dbg !4888
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4889, metadata !DIExpression()), !dbg !4890
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4891, metadata !DIExpression()), !dbg !4892
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4893, metadata !DIExpression()), !dbg !4894
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4895, metadata !DIExpression()), !dbg !4896
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4897, metadata !DIExpression()), !dbg !4898
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4899, metadata !DIExpression()), !dbg !4900
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4901, metadata !DIExpression()), !dbg !4902
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4903, metadata !DIExpression()), !dbg !4904
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4905, metadata !DIExpression()), !dbg !4906
  %0 = load i64, i64* %size.addr, align 8, !dbg !4907
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4908
  %or = or i32 %1, 256, !dbg !4909
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4910
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4911
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4912

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4913
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4914
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4915

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4916
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4917
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4918
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4919
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4896
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4920
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4921
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4922
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4923
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4924
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4925
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4926
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4926
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4926
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4926
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4926
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4927
  br label %kmalloc.exit, !dbg !4927

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4928
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4929
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4929
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4931

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4932
  br label %kmalloc_index.exit.i, !dbg !4932

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4933
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4935
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4936

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4937
  br label %kmalloc_index.exit.i, !dbg !4937

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4938
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4940
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4941

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4942
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4943
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4944

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4945
  br label %kmalloc_index.exit.i, !dbg !4945

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4946
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4948
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4949

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4950
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4951
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4952

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4953
  br label %kmalloc_index.exit.i, !dbg !4953

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4954
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4956
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4957

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4958
  br label %kmalloc_index.exit.i, !dbg !4958

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4959
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4961
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4962

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4963
  br label %kmalloc_index.exit.i, !dbg !4963

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4964
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4966
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4967

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4968
  br label %kmalloc_index.exit.i, !dbg !4968

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4969
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4971
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4972

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4973
  br label %kmalloc_index.exit.i, !dbg !4973

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4974
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4976
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4977

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4978
  br label %kmalloc_index.exit.i, !dbg !4978

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4979
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4981
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4982

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4983
  br label %kmalloc_index.exit.i, !dbg !4983

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4984
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4986
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4987

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4988
  br label %kmalloc_index.exit.i, !dbg !4988

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4989
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4991
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4992

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4993
  br label %kmalloc_index.exit.i, !dbg !4993

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4994
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4996
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4997

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4998
  br label %kmalloc_index.exit.i, !dbg !4998

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4999
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5001
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5002

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5003
  br label %kmalloc_index.exit.i, !dbg !5003

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5004
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5006
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5007

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5008
  br label %kmalloc_index.exit.i, !dbg !5008

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5009
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5011
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5012

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5013
  br label %kmalloc_index.exit.i, !dbg !5013

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5014
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5016
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5017

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5018
  br label %kmalloc_index.exit.i, !dbg !5018

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5019
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5021
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5022

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5023
  br label %kmalloc_index.exit.i, !dbg !5023

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5024
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5026
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5027

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5028
  br label %kmalloc_index.exit.i, !dbg !5028

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5029
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5031
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5032

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5033
  br label %kmalloc_index.exit.i, !dbg !5033

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5034
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5036
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5037

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5038
  br label %kmalloc_index.exit.i, !dbg !5038

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5039
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5041
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5042

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5043
  br label %kmalloc_index.exit.i, !dbg !5043

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5044
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5046
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5047

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5048
  br label %kmalloc_index.exit.i, !dbg !5048

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5049
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5051
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5052

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5053
  br label %kmalloc_index.exit.i, !dbg !5053

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5054
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5056
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5057

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5058
  br label %kmalloc_index.exit.i, !dbg !5058

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5059
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5061
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5062

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5063
  br label %kmalloc_index.exit.i, !dbg !5063

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5064
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5066
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5067

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5068
  br label %kmalloc_index.exit.i, !dbg !5068

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5069
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5071
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5072

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5073
  br label %kmalloc_index.exit.i, !dbg !5073

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5074, !srcloc !5077
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #11, !dbg !5078, !srcloc !5081
  unreachable, !dbg !5082

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5083
  store i32 %45, i32* %index.i, align 4, !dbg !5084
  %46 = load i32, i32* %index.i, align 4, !dbg !5085
  %tobool.i = icmp ne i32 %46, 0, !dbg !5085
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5087

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5088
  br label %kmalloc.exit, !dbg !5088

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5089
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5090
  %and.i.i = and i32 %48, 17, !dbg !5090
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5090
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5090
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5090
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5090
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5092

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5093
  br label %kmalloc_type.exit.i, !dbg !5093

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5094
  %and2.i.i = and i32 %49, 1, !dbg !5095
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5094
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5094
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5094
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5096
  br label %kmalloc_type.exit.i, !dbg !5096

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5097
  %idxprom.i = zext i32 %51 to i64, !dbg !5098
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5098
  %52 = load i32, i32* %index.i, align 4, !dbg !5099
  %idxprom6.i = zext i32 %52 to i64, !dbg !5098
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5098
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5098
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5100
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5101
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5102
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5103
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5104
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5104
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5104
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5104
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5104
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4865
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5105
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5106
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5107
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5108
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5109
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5110
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5111
  store i8* %62, i8** %retval.i, align 8, !dbg !5112
  br label %kmalloc.exit, !dbg !5112

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5113
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5114
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5115
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5115
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5115
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5115
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5115
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5116
  br label %kmalloc.exit, !dbg !5116

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5117
  ret i8* %65, !dbg !5118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_clientdata(%struct.i2c_client* %client, i8* %data) #0 !dbg !5119 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5122, metadata !DIExpression()), !dbg !5123
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5124, metadata !DIExpression()), !dbg !5125
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5126
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !5127
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5128
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !5129
  ret void, !dbg !5130
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %state, i32 %reg, i8* %buf, i32 %len) #0 !dbg !5131 {
entry:
  %state.addr = alloca %struct.lgdt330x_state*, align 8
  %reg.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %wr = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  %ret = alloca i32, align 4
  store %struct.lgdt330x_state* %state, %struct.lgdt330x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state.addr, metadata !5134, metadata !DIExpression()), !dbg !5135
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5136, metadata !DIExpression()), !dbg !5137
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5138, metadata !DIExpression()), !dbg !5139
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5140, metadata !DIExpression()), !dbg !5141
  call void @llvm.dbg.declare(metadata [1 x i8]* %wr, metadata !5142, metadata !DIExpression()), !dbg !5143
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %wr, i64 0, i64 0, !dbg !5144
  %0 = load i32, i32* %reg.addr, align 4, !dbg !5145
  %conv = trunc i32 %0 to i8, !dbg !5145
  store i8 %conv, i8* %arrayinit.begin, align 1, !dbg !5144
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !5146, metadata !DIExpression()), !dbg !5148
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5149
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !5150
  %1 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5151
  %client = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %1, i32 0, i32 0, !dbg !5152
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5152
  %addr2 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 1, !dbg !5153
  %3 = load i16, i16* %addr2, align 2, !dbg !5153
  store i16 %3, i16* %addr, align 16, !dbg !5150
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !5150
  store i16 0, i16* %flags, align 2, !dbg !5150
  %len3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !5150
  store i16 1, i16* %len3, align 4, !dbg !5150
  %buf4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !5150
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %wr, i64 0, i64 0, !dbg !5154
  store i8* %arraydecay, i8** %buf4, align 8, !dbg !5150
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !5149
  %addr5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !5155
  %4 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5156
  %client6 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %4, i32 0, i32 0, !dbg !5157
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client6, align 8, !dbg !5157
  %addr7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 1, !dbg !5158
  %6 = load i16, i16* %addr7, align 2, !dbg !5158
  store i16 %6, i16* %addr5, align 16, !dbg !5155
  %flags8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !5155
  store i16 1, i16* %flags8, align 2, !dbg !5155
  %len9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !5155
  %7 = load i32, i32* %len.addr, align 4, !dbg !5159
  %conv10 = trunc i32 %7 to i16, !dbg !5159
  store i16 %conv10, i16* %len9, align 4, !dbg !5155
  %buf11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !5155
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5160
  store i8* %8, i8** %buf11, align 8, !dbg !5155
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5161, metadata !DIExpression()), !dbg !5162
  %9 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5163
  %client12 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %9, i32 0, i32 0, !dbg !5164
  %10 = load %struct.i2c_client*, %struct.i2c_client** %client12, align 8, !dbg !5164
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 3, !dbg !5165
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !5165
  %arraydecay13 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5166
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %11, %struct.i2c_msg* %arraydecay13, i32 2) #9, !dbg !5167
  store i32 %call, i32* %ret, align 4, !dbg !5168
  %12 = load i32, i32* %ret, align 4, !dbg !5169
  %cmp = icmp ne i32 %12, 2, !dbg !5171
  br i1 %cmp, label %if.then, label %if.else, !dbg !5172

if.then:                                          ; preds = %entry
  %13 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5173
  %client15 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %13, i32 0, i32 0, !dbg !5173
  %14 = load %struct.i2c_client*, %struct.i2c_client** %client15, align 8, !dbg !5173
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 4, !dbg !5173
  %15 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5173
  %client16 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %15, i32 0, i32 0, !dbg !5173
  %16 = load %struct.i2c_client*, %struct.i2c_client** %client16, align 8, !dbg !5173
  %addr17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1, !dbg !5173
  %17 = load i16, i16* %addr17, align 2, !dbg !5173
  %conv18 = zext i16 %17 to i32, !dbg !5173
  %18 = load i32, i32* %reg.addr, align 4, !dbg !5173
  %19 = load i32, i32* %ret, align 4, !dbg !5173
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.i2c_read_demod_bytes, i64 0, i64 0), i32 %conv18, i32 %18, i32 %19) #10, !dbg !5173
  %20 = load i32, i32* %ret, align 4, !dbg !5175
  %cmp19 = icmp sge i32 %20, 0, !dbg !5177
  br i1 %cmp19, label %if.then21, label %if.end, !dbg !5178

if.then21:                                        ; preds = %if.then
  store i32 -5, i32* %ret, align 4, !dbg !5179
  br label %if.end, !dbg !5180

if.end:                                           ; preds = %if.then21, %if.then
  br label %if.end22, !dbg !5181

if.else:                                          ; preds = %entry
  store i32 0, i32* %ret, align 4, !dbg !5182
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end
  %21 = load i32, i32* %ret, align 4, !dbg !5184
  ret i32 %21, !dbg !5185
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: cold noredzone
declare dso_local void @dev_printk(i8*, %struct.device*, i8*, ...) #5

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5186 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5190, metadata !DIExpression()), !dbg !5195
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5197, metadata !DIExpression()), !dbg !5198
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5199, metadata !DIExpression()), !dbg !5200
  %0 = load i64, i64* %size.addr, align 8, !dbg !5201
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5203
  br i1 %1, label %if.then, label %if.end447, !dbg !5204

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5205
  %tobool = icmp ne i64 %2, 0, !dbg !5205
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5208

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5209
  br label %return, !dbg !5209

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5210
  %cmp = icmp ult i64 %3, 4096, !dbg !5212
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5213

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5214
  br label %return, !dbg !5214

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub = sub i64 %4, 1, !dbg !5215
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5215
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5215

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub4 = sub i64 %6, 1, !dbg !5215
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5215
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5215

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub6 = sub i64 %8, 1, !dbg !5215
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5215
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5215

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5215

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub9 = sub i64 %9, 1, !dbg !5215
  %and = and i64 %sub9, -9223372036854775808, !dbg !5215
  %tobool10 = icmp ne i64 %and, 0, !dbg !5215
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5215

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5215

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub13 = sub i64 %10, 1, !dbg !5215
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5215
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5215
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5215

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5215

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub18 = sub i64 %11, 1, !dbg !5215
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5215
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5215
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5215

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5215

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub23 = sub i64 %12, 1, !dbg !5215
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5215
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5215
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5215

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5215

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub28 = sub i64 %13, 1, !dbg !5215
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5215
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5215
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5215

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5215

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub33 = sub i64 %14, 1, !dbg !5215
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5215
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5215
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5215

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5215

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub38 = sub i64 %15, 1, !dbg !5215
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5215
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5215
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5215

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5215

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub43 = sub i64 %16, 1, !dbg !5215
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5215
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5215
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5215

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5215

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub48 = sub i64 %17, 1, !dbg !5215
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5215
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5215
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5215

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5215

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub53 = sub i64 %18, 1, !dbg !5215
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5215
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5215
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5215

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5215

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub58 = sub i64 %19, 1, !dbg !5215
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5215
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5215
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5215

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5215

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub63 = sub i64 %20, 1, !dbg !5215
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5215
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5215
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5215

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5215

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub68 = sub i64 %21, 1, !dbg !5215
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5215
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5215
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5215

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5215

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub73 = sub i64 %22, 1, !dbg !5215
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5215
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5215
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5215

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5215

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub78 = sub i64 %23, 1, !dbg !5215
  %and79 = and i64 %sub78, 562949953421312, !dbg !5215
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5215
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5215

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5215

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub83 = sub i64 %24, 1, !dbg !5215
  %and84 = and i64 %sub83, 281474976710656, !dbg !5215
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5215
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5215

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5215

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub88 = sub i64 %25, 1, !dbg !5215
  %and89 = and i64 %sub88, 140737488355328, !dbg !5215
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5215
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5215

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5215

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub93 = sub i64 %26, 1, !dbg !5215
  %and94 = and i64 %sub93, 70368744177664, !dbg !5215
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5215
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5215

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5215

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub98 = sub i64 %27, 1, !dbg !5215
  %and99 = and i64 %sub98, 35184372088832, !dbg !5215
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5215
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5215

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5215

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub103 = sub i64 %28, 1, !dbg !5215
  %and104 = and i64 %sub103, 17592186044416, !dbg !5215
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5215
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5215

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5215

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub108 = sub i64 %29, 1, !dbg !5215
  %and109 = and i64 %sub108, 8796093022208, !dbg !5215
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5215
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5215

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5215

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub113 = sub i64 %30, 1, !dbg !5215
  %and114 = and i64 %sub113, 4398046511104, !dbg !5215
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5215
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5215

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5215

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub118 = sub i64 %31, 1, !dbg !5215
  %and119 = and i64 %sub118, 2199023255552, !dbg !5215
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5215
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5215

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5215

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub123 = sub i64 %32, 1, !dbg !5215
  %and124 = and i64 %sub123, 1099511627776, !dbg !5215
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5215
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5215

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5215

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub128 = sub i64 %33, 1, !dbg !5215
  %and129 = and i64 %sub128, 549755813888, !dbg !5215
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5215
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5215

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5215

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub133 = sub i64 %34, 1, !dbg !5215
  %and134 = and i64 %sub133, 274877906944, !dbg !5215
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5215
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5215

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5215

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub138 = sub i64 %35, 1, !dbg !5215
  %and139 = and i64 %sub138, 137438953472, !dbg !5215
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5215
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5215

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5215

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub143 = sub i64 %36, 1, !dbg !5215
  %and144 = and i64 %sub143, 68719476736, !dbg !5215
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5215
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5215

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5215

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub148 = sub i64 %37, 1, !dbg !5215
  %and149 = and i64 %sub148, 34359738368, !dbg !5215
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5215
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5215

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5215

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub153 = sub i64 %38, 1, !dbg !5215
  %and154 = and i64 %sub153, 17179869184, !dbg !5215
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5215
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5215

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5215

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub158 = sub i64 %39, 1, !dbg !5215
  %and159 = and i64 %sub158, 8589934592, !dbg !5215
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5215
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5215

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5215

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub163 = sub i64 %40, 1, !dbg !5215
  %and164 = and i64 %sub163, 4294967296, !dbg !5215
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5215
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5215

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5215

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub168 = sub i64 %41, 1, !dbg !5215
  %and169 = and i64 %sub168, 2147483648, !dbg !5215
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5215
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5215

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5215

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub173 = sub i64 %42, 1, !dbg !5215
  %and174 = and i64 %sub173, 1073741824, !dbg !5215
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5215
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5215

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5215

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub178 = sub i64 %43, 1, !dbg !5215
  %and179 = and i64 %sub178, 536870912, !dbg !5215
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5215
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5215

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5215

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub183 = sub i64 %44, 1, !dbg !5215
  %and184 = and i64 %sub183, 268435456, !dbg !5215
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5215
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5215

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5215

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub188 = sub i64 %45, 1, !dbg !5215
  %and189 = and i64 %sub188, 134217728, !dbg !5215
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5215
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5215

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5215

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub193 = sub i64 %46, 1, !dbg !5215
  %and194 = and i64 %sub193, 67108864, !dbg !5215
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5215
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5215

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5215

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub198 = sub i64 %47, 1, !dbg !5215
  %and199 = and i64 %sub198, 33554432, !dbg !5215
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5215
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5215

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5215

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub203 = sub i64 %48, 1, !dbg !5215
  %and204 = and i64 %sub203, 16777216, !dbg !5215
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5215
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5215

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5215

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub208 = sub i64 %49, 1, !dbg !5215
  %and209 = and i64 %sub208, 8388608, !dbg !5215
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5215
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5215

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5215

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub213 = sub i64 %50, 1, !dbg !5215
  %and214 = and i64 %sub213, 4194304, !dbg !5215
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5215
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5215

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5215

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub218 = sub i64 %51, 1, !dbg !5215
  %and219 = and i64 %sub218, 2097152, !dbg !5215
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5215
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5215

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5215

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub223 = sub i64 %52, 1, !dbg !5215
  %and224 = and i64 %sub223, 1048576, !dbg !5215
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5215
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5215

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5215

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub228 = sub i64 %53, 1, !dbg !5215
  %and229 = and i64 %sub228, 524288, !dbg !5215
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5215
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5215

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5215

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub233 = sub i64 %54, 1, !dbg !5215
  %and234 = and i64 %sub233, 262144, !dbg !5215
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5215
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5215

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5215

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub238 = sub i64 %55, 1, !dbg !5215
  %and239 = and i64 %sub238, 131072, !dbg !5215
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5215
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5215

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5215

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub243 = sub i64 %56, 1, !dbg !5215
  %and244 = and i64 %sub243, 65536, !dbg !5215
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5215
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5215

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5215

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub248 = sub i64 %57, 1, !dbg !5215
  %and249 = and i64 %sub248, 32768, !dbg !5215
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5215
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5215

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5215

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub253 = sub i64 %58, 1, !dbg !5215
  %and254 = and i64 %sub253, 16384, !dbg !5215
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5215
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5215

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5215

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub258 = sub i64 %59, 1, !dbg !5215
  %and259 = and i64 %sub258, 8192, !dbg !5215
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5215
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5215

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5215

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub263 = sub i64 %60, 1, !dbg !5215
  %and264 = and i64 %sub263, 4096, !dbg !5215
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5215
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5215

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5215

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub268 = sub i64 %61, 1, !dbg !5215
  %and269 = and i64 %sub268, 2048, !dbg !5215
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5215
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5215

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5215

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub273 = sub i64 %62, 1, !dbg !5215
  %and274 = and i64 %sub273, 1024, !dbg !5215
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5215
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5215

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5215

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub278 = sub i64 %63, 1, !dbg !5215
  %and279 = and i64 %sub278, 512, !dbg !5215
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5215
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5215

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5215

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub283 = sub i64 %64, 1, !dbg !5215
  %and284 = and i64 %sub283, 256, !dbg !5215
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5215
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5215

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5215

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub288 = sub i64 %65, 1, !dbg !5215
  %and289 = and i64 %sub288, 128, !dbg !5215
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5215
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5215

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5215

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub293 = sub i64 %66, 1, !dbg !5215
  %and294 = and i64 %sub293, 64, !dbg !5215
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5215
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5215

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5215

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub298 = sub i64 %67, 1, !dbg !5215
  %and299 = and i64 %sub298, 32, !dbg !5215
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5215
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5215

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5215

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub303 = sub i64 %68, 1, !dbg !5215
  %and304 = and i64 %sub303, 16, !dbg !5215
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5215
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5215

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5215

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub308 = sub i64 %69, 1, !dbg !5215
  %and309 = and i64 %sub308, 8, !dbg !5215
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5215
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5215

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5215

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub313 = sub i64 %70, 1, !dbg !5215
  %and314 = and i64 %sub313, 4, !dbg !5215
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5215
  %71 = zext i1 %tobool315 to i64, !dbg !5215
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5215
  br label %cond.end, !dbg !5215

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5215
  br label %cond.end317, !dbg !5215

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5215
  br label %cond.end319, !dbg !5215

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5215
  br label %cond.end321, !dbg !5215

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5215
  br label %cond.end323, !dbg !5215

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5215
  br label %cond.end325, !dbg !5215

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5215
  br label %cond.end327, !dbg !5215

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5215
  br label %cond.end329, !dbg !5215

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5215
  br label %cond.end331, !dbg !5215

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5215
  br label %cond.end333, !dbg !5215

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5215
  br label %cond.end335, !dbg !5215

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5215
  br label %cond.end337, !dbg !5215

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5215
  br label %cond.end339, !dbg !5215

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5215
  br label %cond.end341, !dbg !5215

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5215
  br label %cond.end343, !dbg !5215

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5215
  br label %cond.end345, !dbg !5215

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5215
  br label %cond.end347, !dbg !5215

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5215
  br label %cond.end349, !dbg !5215

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5215
  br label %cond.end351, !dbg !5215

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5215
  br label %cond.end353, !dbg !5215

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5215
  br label %cond.end355, !dbg !5215

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5215
  br label %cond.end357, !dbg !5215

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5215
  br label %cond.end359, !dbg !5215

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5215
  br label %cond.end361, !dbg !5215

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5215
  br label %cond.end363, !dbg !5215

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5215
  br label %cond.end365, !dbg !5215

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5215
  br label %cond.end367, !dbg !5215

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5215
  br label %cond.end369, !dbg !5215

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5215
  br label %cond.end371, !dbg !5215

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5215
  br label %cond.end373, !dbg !5215

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5215
  br label %cond.end375, !dbg !5215

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5215
  br label %cond.end377, !dbg !5215

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5215
  br label %cond.end379, !dbg !5215

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5215
  br label %cond.end381, !dbg !5215

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5215
  br label %cond.end383, !dbg !5215

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5215
  br label %cond.end385, !dbg !5215

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5215
  br label %cond.end387, !dbg !5215

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5215
  br label %cond.end389, !dbg !5215

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5215
  br label %cond.end391, !dbg !5215

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5215
  br label %cond.end393, !dbg !5215

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5215
  br label %cond.end395, !dbg !5215

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5215
  br label %cond.end397, !dbg !5215

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5215
  br label %cond.end399, !dbg !5215

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5215
  br label %cond.end401, !dbg !5215

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5215
  br label %cond.end403, !dbg !5215

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5215
  br label %cond.end405, !dbg !5215

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5215
  br label %cond.end407, !dbg !5215

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5215
  br label %cond.end409, !dbg !5215

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5215
  br label %cond.end411, !dbg !5215

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5215
  br label %cond.end413, !dbg !5215

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5215
  br label %cond.end415, !dbg !5215

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5215
  br label %cond.end417, !dbg !5215

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5215
  br label %cond.end419, !dbg !5215

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5215
  br label %cond.end421, !dbg !5215

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5215
  br label %cond.end423, !dbg !5215

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5215
  br label %cond.end425, !dbg !5215

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5215
  br label %cond.end427, !dbg !5215

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5215
  br label %cond.end429, !dbg !5215

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5215
  br label %cond.end431, !dbg !5215

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5215
  br label %cond.end433, !dbg !5215

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5215
  br label %cond.end435, !dbg !5215

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5215
  br label %cond.end437, !dbg !5215

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5215
  br label %cond.end440, !dbg !5215

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5215

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5215
  br label %cond.end444, !dbg !5215

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5215
  %sub443 = sub i64 %72, 1, !dbg !5215
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5215
  br label %cond.end444, !dbg !5215

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5215
  %sub446 = sub i32 %cond445, 12, !dbg !5216
  %add = add i32 %sub446, 1, !dbg !5217
  store i32 %add, i32* %retval, align 4, !dbg !5218
  br label %return, !dbg !5218

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5219
  %dec = add i64 %73, -1, !dbg !5219
  store i64 %dec, i64* %size.addr, align 8, !dbg !5219
  %74 = load i64, i64* %size.addr, align 8, !dbg !5220
  %shr = lshr i64 %74, 12, !dbg !5220
  store i64 %shr, i64* %size.addr, align 8, !dbg !5220
  %75 = load i64, i64* %size.addr, align 8, !dbg !5221
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5198
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5222
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5223
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5222, !srcloc !5224
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5222
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5225
  %add.i = add i32 %79, 1, !dbg !5226
  store i32 %add.i, i32* %retval, align 4, !dbg !5227
  br label %return, !dbg !5227

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5228
  ret i32 %80, !dbg !5228
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5229 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5190, metadata !DIExpression()), !dbg !5233
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5197, metadata !DIExpression()), !dbg !5235
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  %0 = load i64, i64* %n.addr, align 8, !dbg !5238
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5235
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5239
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5240
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5239, !srcloc !5224
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5239
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5241
  %add.i = add i32 %4, 1, !dbg !5242
  %sub = sub i32 %add.i, 1, !dbg !5243
  ret i32 %sub, !dbg !5244
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5245 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5249, metadata !DIExpression()), !dbg !5250
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5257
  ret i8* %0, !dbg !5258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !5259 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5266
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5267
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5268
  store i8* %0, i8** %driver_data, align 8, !dbg !5269
  ret void, !dbg !5270
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lgdt330x_release(%struct.dvb_frontend* %fe) #0 !dbg !5271 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  %client = alloca %struct.i2c_client*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5272, metadata !DIExpression()), !dbg !5273
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !5274, metadata !DIExpression()), !dbg !5275
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5276
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5277
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5277
  %2 = bitcast i8* %1 to %struct.lgdt330x_state*, !dbg !5276
  store %struct.lgdt330x_state* %2, %struct.lgdt330x_state** %state, align 8, !dbg !5275
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5278, metadata !DIExpression()), !dbg !5279
  %3 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5280
  %client1 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %3, i32 0, i32 0, !dbg !5281
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client1, align 8, !dbg !5281
  store %struct.i2c_client* %4, %struct.i2c_client** %client, align 8, !dbg !5279
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5282
  call void @i2c_unregister_device(%struct.i2c_client* %5) #9, !dbg !5283
  ret void, !dbg !5284
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt330x_init(%struct.dvb_frontend* %fe) #0 !dbg !4604 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %chip_name = alloca i8*, align 8
  %err = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !5287, metadata !DIExpression()), !dbg !5288
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5289
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5290
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5290
  %2 = bitcast i8* %1 to %struct.lgdt330x_state*, !dbg !5289
  store %struct.lgdt330x_state* %2, %struct.lgdt330x_state** %state, align 8, !dbg !5288
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5291, metadata !DIExpression()), !dbg !5292
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5293
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !5294
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5292
  call void @llvm.dbg.declare(metadata i8** %chip_name, metadata !5295, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5297, metadata !DIExpression()), !dbg !5298
  %4 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5299
  %config = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %4, i32 0, i32 1, !dbg !5300
  %demod_chip = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config, i32 0, i32 0, !dbg !5301
  %5 = load i32, i32* %demod_chip, align 8, !dbg !5301
  switch i32 %5, label %sw.default9 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ], !dbg !5302

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %chip_name, align 8, !dbg !5303
  %6 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5305
  %call = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @lgdt330x_init.lgdt3302_init_data, i64 0, i64 0), i32 28) #9, !dbg !5306
  store i32 %call, i32* %err, align 4, !dbg !5307
  br label %sw.epilog10, !dbg !5308

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %chip_name, align 8, !dbg !5309
  %7 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5310
  %config2 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %7, i32 0, i32 1, !dbg !5311
  %clock_polarity_flip = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config2, i32 0, i32 4, !dbg !5312
  %8 = load i32, i32* %clock_polarity_flip, align 8, !dbg !5312
  switch i32 %8, label %sw.default [
    i32 2, label %sw.bb3
    i32 1, label %sw.bb5
    i32 0, label %sw.bb7
  ], !dbg !5313

sw.bb3:                                           ; preds = %sw.bb1
  %9 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5314
  %call4 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @lgdt330x_init.flip_2_lgdt3303_init_data, i64 0, i64 0), i32 4) #9, !dbg !5316
  store i32 %call4, i32* %err, align 4, !dbg !5317
  br label %sw.epilog, !dbg !5318

sw.bb5:                                           ; preds = %sw.bb1
  %10 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5319
  %call6 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @lgdt330x_init.flip_1_lgdt3303_init_data, i64 0, i64 0), i32 4) #9, !dbg !5320
  store i32 %call6, i32* %err, align 4, !dbg !5321
  br label %sw.epilog, !dbg !5322

sw.bb7:                                           ; preds = %sw.bb1
  br label %sw.default, !dbg !5322

sw.default:                                       ; preds = %sw.bb1, %sw.bb7
  %11 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5323
  %call8 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @lgdt330x_init.lgdt3303_init_data, i64 0, i64 0), i32 2) #9, !dbg !5324
  store i32 %call8, i32* %err, align 4, !dbg !5325
  br label %sw.epilog, !dbg !5326

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb3
  br label %sw.epilog10, !dbg !5327

sw.default9:                                      ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %chip_name, align 8, !dbg !5328
  %12 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5329
  %client = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %12, i32 0, i32 0, !dbg !5329
  %13 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5329
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 4, !dbg !5329
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !5329
  store i32 -19, i32* %err, align 4, !dbg !5330
  br label %sw.epilog10, !dbg !5331

sw.epilog10:                                      ; preds = %sw.default9, %sw.epilog, %sw.bb
  br label %do.body, !dbg !5332

do.body:                                          ; preds = %sw.epilog10
  %14 = load i32, i32* @debug, align 4, !dbg !5333
  %tobool = icmp ne i32 %14, 0, !dbg !5333
  br i1 %tobool, label %if.then, label %if.end, !dbg !5336

if.then:                                          ; preds = %do.body
  %15 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5333
  %client11 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %15, i32 0, i32 0, !dbg !5333
  %16 = load %struct.i2c_client*, %struct.i2c_client** %client11, align 8, !dbg !5333
  %dev12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 4, !dbg !5333
  %17 = load i8*, i8** %chip_name, align 8, !dbg !5333
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %17) #10, !dbg !5333
  br label %if.end, !dbg !5333

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5336

do.end:                                           ; preds = %if.end
  %18 = load i32, i32* %err, align 4, !dbg !5337
  %cmp = icmp slt i32 %18, 0, !dbg !5339
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !5340

if.then13:                                        ; preds = %do.end
  %19 = load i32, i32* %err, align 4, !dbg !5341
  store i32 %19, i32* %retval, align 4, !dbg !5342
  br label %return, !dbg !5342

if.end14:                                         ; preds = %do.end
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5343
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 43, !dbg !5344
  %len = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr, i32 0, i32 0, !dbg !5345
  store i8 1, i8* %len, align 1, !dbg !5346
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5347
  %cnr15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 43, !dbg !5348
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr15, i32 0, i32 1, !dbg !5349
  %arrayidx = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !5347
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx, i32 0, i32 0, !dbg !5350
  store i8 0, i8* %scale, align 1, !dbg !5351
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5352
  %block_error = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 48, !dbg !5353
  %len16 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error, i32 0, i32 0, !dbg !5354
  store i8 1, i8* %len16, align 2, !dbg !5355
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5356
  %block_error17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 48, !dbg !5357
  %stat18 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error17, i32 0, i32 1, !dbg !5358
  %arrayidx19 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat18, i64 0, i64 0, !dbg !5356
  %scale20 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx19, i32 0, i32 0, !dbg !5359
  store i8 0, i8* %scale20, align 1, !dbg !5360
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5361
  %block_count = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 49, !dbg !5362
  %len21 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_count, i32 0, i32 0, !dbg !5363
  store i8 1, i8* %len21, align 1, !dbg !5364
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5365
  %block_count22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 49, !dbg !5366
  %stat23 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_count22, i32 0, i32 1, !dbg !5367
  %arrayidx24 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat23, i64 0, i64 0, !dbg !5365
  %scale25 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx24, i32 0, i32 0, !dbg !5368
  store i8 0, i8* %scale25, align 1, !dbg !5369
  %26 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5370
  %last_stats_time = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %26, i32 0, i32 6, !dbg !5371
  store i64 0, i64* %last_stats_time, align 8, !dbg !5372
  %27 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5373
  %call26 = call i32 @lgdt330x_sw_reset(%struct.lgdt330x_state* %27) #9, !dbg !5374
  store i32 %call26, i32* %retval, align 4, !dbg !5375
  br label %return, !dbg !5375

return:                                           ; preds = %if.end14, %if.then13
  %28 = load i32, i32* %retval, align 4, !dbg !5376
  ret i32 %28, !dbg !5376
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt330x_set_parameters(%struct.dvb_frontend* %fe) #0 !dbg !4616 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  %top_ctrl_cfg = alloca [2 x i8], align 1
  %err = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5377, metadata !DIExpression()), !dbg !5378
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5379, metadata !DIExpression()), !dbg !5380
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5381
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5382
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5380
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !5383, metadata !DIExpression()), !dbg !5384
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5385
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5386
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5386
  %3 = bitcast i8* %2 to %struct.lgdt330x_state*, !dbg !5385
  store %struct.lgdt330x_state* %3, %struct.lgdt330x_state** %state, align 8, !dbg !5384
  call void @llvm.dbg.declare(metadata [2 x i8]* %top_ctrl_cfg, metadata !5387, metadata !DIExpression()), !dbg !5389
  %4 = bitcast [2 x i8]* %top_ctrl_cfg to i8*, !dbg !5389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.lgdt330x_set_parameters.top_ctrl_cfg, i32 0, i32 0), i64 2, i1 false), !dbg !5389
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5390, metadata !DIExpression()), !dbg !5391
  store i32 0, i32* %err, align 4, !dbg !5391
  %5 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5392
  %current_modulation = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %5, i32 0, i32 3, !dbg !5394
  %6 = load i32, i32* %current_modulation, align 8, !dbg !5394
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5395
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 1, !dbg !5396
  %8 = load i32, i32* %modulation, align 4, !dbg !5396
  %cmp = icmp ne i32 %6, %8, !dbg !5397
  br i1 %cmp, label %if.then, label %if.end81, !dbg !5398

if.then:                                          ; preds = %entry
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5399
  %modulation1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 1, !dbg !5401
  %10 = load i32, i32* %modulation1, align 4, !dbg !5401
  switch i32 %10, label %sw.default [
    i32 7, label %sw.bb
    i32 3, label %sw.bb13
    i32 5, label %sw.bb36
  ], !dbg !5402

sw.bb:                                            ; preds = %if.then
  br label %do.body, !dbg !5403

do.body:                                          ; preds = %sw.bb
  %11 = load i32, i32* @debug, align 4, !dbg !5405
  %tobool = icmp ne i32 %11, 0, !dbg !5405
  br i1 %tobool, label %if.then2, label %if.end, !dbg !5408

if.then2:                                         ; preds = %do.body
  %12 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5405
  %client = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %12, i32 0, i32 0, !dbg !5405
  %13 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5405
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 4, !dbg !5405
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !5405
  br label %if.end, !dbg !5405

if.end:                                           ; preds = %if.then2, %do.body
  br label %do.end, !dbg !5408

do.end:                                           ; preds = %if.end
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %top_ctrl_cfg, i64 0, i64 1, !dbg !5409
  store i8 3, i8* %arrayidx, align 1, !dbg !5410
  %14 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5411
  %config = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %14, i32 0, i32 1, !dbg !5413
  %pll_rf_set = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config, i32 0, i32 2, !dbg !5414
  %15 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %pll_rf_set, align 8, !dbg !5414
  %tobool3 = icmp ne i32 (%struct.dvb_frontend*, i32)* %15, null, !dbg !5411
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !5415

if.then4:                                         ; preds = %do.end
  %16 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5416
  %config5 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %16, i32 0, i32 1, !dbg !5417
  %pll_rf_set6 = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config5, i32 0, i32 2, !dbg !5418
  %17 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %pll_rf_set6, align 8, !dbg !5418
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5419
  %call = call i32 %17(%struct.dvb_frontend* %18, i32 1) #9, !dbg !5416
  br label %if.end7, !dbg !5416

if.end7:                                          ; preds = %if.then4, %do.end
  %19 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5420
  %config8 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %19, i32 0, i32 1, !dbg !5422
  %demod_chip = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config8, i32 0, i32 0, !dbg !5423
  %20 = load i32, i32* %demod_chip, align 8, !dbg !5423
  %cmp9 = icmp eq i32 %20, 2, !dbg !5424
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !5425

if.then10:                                        ; preds = %if.end7
  %21 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5426
  %call11 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i64 0, i64 0), i32 12) #9, !dbg !5428
  store i32 %call11, i32* %err, align 4, !dbg !5429
  br label %if.end12, !dbg !5430

if.end12:                                         ; preds = %if.then10, %if.end7
  br label %sw.epilog, !dbg !5431

sw.bb13:                                          ; preds = %if.then
  br label %do.body14, !dbg !5432

do.body14:                                        ; preds = %sw.bb13
  %22 = load i32, i32* @debug, align 4, !dbg !5433
  %tobool15 = icmp ne i32 %22, 0, !dbg !5433
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !5436

if.then16:                                        ; preds = %do.body14
  %23 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5433
  %client17 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %23, i32 0, i32 0, !dbg !5433
  %24 = load %struct.i2c_client*, %struct.i2c_client** %client17, align 8, !dbg !5433
  %dev18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 4, !dbg !5433
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !5433
  br label %if.end19, !dbg !5433

if.end19:                                         ; preds = %if.then16, %do.body14
  br label %do.end20, !dbg !5436

do.end20:                                         ; preds = %if.end19
  %arrayidx21 = getelementptr [2 x i8], [2 x i8]* %top_ctrl_cfg, i64 0, i64 1, !dbg !5437
  store i8 0, i8* %arrayidx21, align 1, !dbg !5438
  %25 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5439
  %config22 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %25, i32 0, i32 1, !dbg !5441
  %pll_rf_set23 = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config22, i32 0, i32 2, !dbg !5442
  %26 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %pll_rf_set23, align 8, !dbg !5442
  %tobool24 = icmp ne i32 (%struct.dvb_frontend*, i32)* %26, null, !dbg !5439
  br i1 %tobool24, label %if.then25, label %if.end29, !dbg !5443

if.then25:                                        ; preds = %do.end20
  %27 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5444
  %config26 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %27, i32 0, i32 1, !dbg !5445
  %pll_rf_set27 = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config26, i32 0, i32 2, !dbg !5446
  %28 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %pll_rf_set27, align 8, !dbg !5446
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5447
  %call28 = call i32 %28(%struct.dvb_frontend* %29, i32 0) #9, !dbg !5444
  br label %if.end29, !dbg !5444

if.end29:                                         ; preds = %if.then25, %do.end20
  %30 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5448
  %config30 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %30, i32 0, i32 1, !dbg !5450
  %demod_chip31 = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config30, i32 0, i32 0, !dbg !5451
  %31 = load i32, i32* %demod_chip31, align 8, !dbg !5451
  %cmp32 = icmp eq i32 %31, 2, !dbg !5452
  br i1 %cmp32, label %if.then33, label %if.end35, !dbg !5453

if.then33:                                        ; preds = %if.end29
  %32 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5454
  %call34 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @lgdt330x_set_parameters.lgdt3303_qam_data, i64 0, i64 0), i32 22) #9, !dbg !5456
  store i32 %call34, i32* %err, align 4, !dbg !5457
  br label %if.end35, !dbg !5458

if.end35:                                         ; preds = %if.then33, %if.end29
  br label %sw.epilog, !dbg !5459

sw.bb36:                                          ; preds = %if.then
  br label %do.body37, !dbg !5460

do.body37:                                        ; preds = %sw.bb36
  %33 = load i32, i32* @debug, align 4, !dbg !5461
  %tobool38 = icmp ne i32 %33, 0, !dbg !5461
  br i1 %tobool38, label %if.then39, label %if.end42, !dbg !5464

if.then39:                                        ; preds = %do.body37
  %34 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5461
  %client40 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %34, i32 0, i32 0, !dbg !5461
  %35 = load %struct.i2c_client*, %struct.i2c_client** %client40, align 8, !dbg !5461
  %dev41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 4, !dbg !5461
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !5461
  br label %if.end42, !dbg !5461

if.end42:                                         ; preds = %if.then39, %do.body37
  br label %do.end43, !dbg !5464

do.end43:                                         ; preds = %if.end42
  %arrayidx44 = getelementptr [2 x i8], [2 x i8]* %top_ctrl_cfg, i64 0, i64 1, !dbg !5465
  store i8 1, i8* %arrayidx44, align 1, !dbg !5466
  %36 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5467
  %config45 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %36, i32 0, i32 1, !dbg !5469
  %pll_rf_set46 = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config45, i32 0, i32 2, !dbg !5470
  %37 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %pll_rf_set46, align 8, !dbg !5470
  %tobool47 = icmp ne i32 (%struct.dvb_frontend*, i32)* %37, null, !dbg !5467
  br i1 %tobool47, label %if.then48, label %if.end52, !dbg !5471

if.then48:                                        ; preds = %do.end43
  %38 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5472
  %config49 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %38, i32 0, i32 1, !dbg !5473
  %pll_rf_set50 = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config49, i32 0, i32 2, !dbg !5474
  %39 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %pll_rf_set50, align 8, !dbg !5474
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5475
  %call51 = call i32 %39(%struct.dvb_frontend* %40, i32 0) #9, !dbg !5472
  br label %if.end52, !dbg !5472

if.end52:                                         ; preds = %if.then48, %do.end43
  %41 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5476
  %config53 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %41, i32 0, i32 1, !dbg !5478
  %demod_chip54 = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config53, i32 0, i32 0, !dbg !5479
  %42 = load i32, i32* %demod_chip54, align 8, !dbg !5479
  %cmp55 = icmp eq i32 %42, 2, !dbg !5480
  br i1 %cmp55, label %if.then56, label %if.end58, !dbg !5481

if.then56:                                        ; preds = %if.end52
  %43 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5482
  %call57 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @lgdt330x_set_parameters.lgdt3303_qam_data, i64 0, i64 0), i32 22) #9, !dbg !5484
  store i32 %call57, i32* %err, align 4, !dbg !5485
  br label %if.end58, !dbg !5486

if.end58:                                         ; preds = %if.then56, %if.end52
  br label %sw.epilog, !dbg !5487

sw.default:                                       ; preds = %if.then
  %44 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5488
  %client59 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %44, i32 0, i32 0, !dbg !5488
  %45 = load %struct.i2c_client*, %struct.i2c_client** %client59, align 8, !dbg !5488
  %dev60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 4, !dbg !5488
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5488
  %modulation61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 1, !dbg !5488
  %47 = load i32, i32* %modulation61, align 4, !dbg !5488
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.lgdt330x_set_parameters, i64 0, i64 0), i32 %47) #10, !dbg !5488
  store i32 -1, i32* %retval, align 4, !dbg !5489
  br label %return, !dbg !5489

sw.epilog:                                        ; preds = %if.end58, %if.end35, %if.end12
  %48 = load i32, i32* %err, align 4, !dbg !5490
  %cmp62 = icmp slt i32 %48, 0, !dbg !5492
  br i1 %cmp62, label %if.then63, label %if.end67, !dbg !5493

if.then63:                                        ; preds = %sw.epilog
  %49 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5494
  %client64 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %49, i32 0, i32 0, !dbg !5494
  %50 = load %struct.i2c_client*, %struct.i2c_client** %client64, align 8, !dbg !5494
  %dev65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 4, !dbg !5494
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5494
  %modulation66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 1, !dbg !5494
  %52 = load i32, i32* %modulation66, align 4, !dbg !5494
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev65, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.lgdt330x_set_parameters, i64 0, i64 0), i32 %52) #10, !dbg !5494
  br label %if.end67, !dbg !5494

if.end67:                                         ; preds = %if.then63, %sw.epilog
  %53 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5495
  %config68 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %53, i32 0, i32 1, !dbg !5496
  %serial_mpeg = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config68, i32 0, i32 1, !dbg !5497
  %54 = load i32, i32* %serial_mpeg, align 4, !dbg !5497
  %arrayidx69 = getelementptr [2 x i8], [2 x i8]* %top_ctrl_cfg, i64 0, i64 1, !dbg !5498
  %55 = load i8, i8* %arrayidx69, align 1, !dbg !5499
  %conv = zext i8 %55 to i32, !dbg !5499
  %or = or i32 %conv, %54, !dbg !5499
  %conv70 = trunc i32 %or to i8, !dbg !5499
  store i8 %conv70, i8* %arrayidx69, align 1, !dbg !5499
  %56 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5500
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %top_ctrl_cfg, i64 0, i64 0, !dbg !5501
  %call71 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %56, i8* %arraydecay, i32 2) #9, !dbg !5502
  %57 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5503
  %config72 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %57, i32 0, i32 1, !dbg !5505
  %set_ts_params = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config72, i32 0, i32 3, !dbg !5506
  %58 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params, align 8, !dbg !5506
  %tobool73 = icmp ne i32 (%struct.dvb_frontend*, i32)* %58, null, !dbg !5503
  br i1 %tobool73, label %if.then74, label %if.end78, !dbg !5507

if.then74:                                        ; preds = %if.end67
  %59 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5508
  %config75 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %59, i32 0, i32 1, !dbg !5509
  %set_ts_params76 = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config75, i32 0, i32 3, !dbg !5510
  %60 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params76, align 8, !dbg !5510
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5511
  %call77 = call i32 %60(%struct.dvb_frontend* %61, i32 0) #9, !dbg !5508
  br label %if.end78, !dbg !5508

if.end78:                                         ; preds = %if.then74, %if.end67
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5512
  %modulation79 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 1, !dbg !5513
  %63 = load i32, i32* %modulation79, align 4, !dbg !5513
  %64 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5514
  %current_modulation80 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %64, i32 0, i32 3, !dbg !5515
  store i32 %63, i32* %current_modulation80, align 8, !dbg !5516
  br label %if.end81, !dbg !5517

if.end81:                                         ; preds = %if.end78, %entry
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5518
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %65, i32 0, i32 1, !dbg !5520
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5521
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5522
  %66 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5522
  %tobool82 = icmp ne i32 (%struct.dvb_frontend*)* %66, null, !dbg !5518
  br i1 %tobool82, label %if.then83, label %if.end95, !dbg !5523

if.then83:                                        ; preds = %if.end81
  %67 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5524
  %ops84 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %67, i32 0, i32 1, !dbg !5526
  %tuner_ops85 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops84, i32 0, i32 30, !dbg !5527
  %set_params86 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops85, i32 0, i32 6, !dbg !5528
  %68 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params86, align 8, !dbg !5528
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5529
  %call87 = call i32 %68(%struct.dvb_frontend* %69) #9, !dbg !5524
  %70 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5530
  %ops88 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %70, i32 0, i32 1, !dbg !5532
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops88, i32 0, i32 26, !dbg !5533
  %71 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5533
  %tobool89 = icmp ne i32 (%struct.dvb_frontend*, i32)* %71, null, !dbg !5530
  br i1 %tobool89, label %if.then90, label %if.end94, !dbg !5534

if.then90:                                        ; preds = %if.then83
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5535
  %ops91 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %72, i32 0, i32 1, !dbg !5536
  %i2c_gate_ctrl92 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops91, i32 0, i32 26, !dbg !5537
  %73 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl92, align 8, !dbg !5537
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5538
  %call93 = call i32 %73(%struct.dvb_frontend* %74, i32 0) #9, !dbg !5535
  br label %if.end94, !dbg !5535

if.end94:                                         ; preds = %if.then90, %if.then83
  br label %if.end95, !dbg !5539

if.end95:                                         ; preds = %if.end94, %if.end81
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5540
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 0, !dbg !5541
  %76 = load i32, i32* %frequency, align 4, !dbg !5541
  %77 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5542
  %current_frequency = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %77, i32 0, i32 7, !dbg !5543
  store i32 %76, i32* %current_frequency, align 8, !dbg !5544
  %78 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5545
  %call96 = call i32 @lgdt330x_sw_reset(%struct.lgdt330x_state* %78) #9, !dbg !5546
  store i32 0, i32* %retval, align 4, !dbg !5547
  br label %return, !dbg !5547

return:                                           ; preds = %if.end95, %sw.default
  %79 = load i32, i32* %retval, align 4, !dbg !5548
  ret i32 %79, !dbg !5548
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt330x_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fe_tune_settings) #0 !dbg !5549 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fe_tune_settings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5550, metadata !DIExpression()), !dbg !5551
  store %struct.dvb_frontend_tune_settings* %fe_tune_settings, %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, metadata !5552, metadata !DIExpression()), !dbg !5553
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, align 8, !dbg !5554
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !5555
  store i32 500, i32* %min_delay_ms, align 4, !dbg !5556
  %1 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, align 8, !dbg !5557
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %1, i32 0, i32 1, !dbg !5558
  store i32 0, i32* %step_size, align 4, !dbg !5559
  %2 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fe_tune_settings.addr, align 8, !dbg !5560
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %2, i32 0, i32 2, !dbg !5561
  store i32 0, i32* %max_drift, align 4, !dbg !5562
  ret i32 0, !dbg !5563
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt330x_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %p) #0 !dbg !5564 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5565, metadata !DIExpression()), !dbg !5566
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !5567, metadata !DIExpression()), !dbg !5568
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !5569, metadata !DIExpression()), !dbg !5570
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5571
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5572
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5572
  %2 = bitcast i8* %1 to %struct.lgdt330x_state*, !dbg !5571
  store %struct.lgdt330x_state* %2, %struct.lgdt330x_state** %state, align 8, !dbg !5570
  %3 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5573
  %current_frequency = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %3, i32 0, i32 7, !dbg !5574
  %4 = load i32, i32* %current_frequency, align 8, !dbg !5574
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5575
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 0, !dbg !5576
  store i32 %4, i32* %frequency, align 4, !dbg !5577
  ret i32 0, !dbg !5578
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt3302_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5579 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5580, metadata !DIExpression()), !dbg !5585
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %buf = alloca [3 x i8], align 1
  %err = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5587, metadata !DIExpression()), !dbg !5588
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5589, metadata !DIExpression()), !dbg !5590
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !5591, metadata !DIExpression()), !dbg !5592
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5593
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5594
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5594
  %2 = bitcast i8* %1 to %struct.lgdt330x_state*, !dbg !5593
  store %struct.lgdt330x_state* %2, %struct.lgdt330x_state** %state, align 8, !dbg !5592
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5595, metadata !DIExpression()), !dbg !5596
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5597
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !5598
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5596
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !5599, metadata !DIExpression()), !dbg !5601
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5602, metadata !DIExpression()), !dbg !5603
  %4 = load i32*, i32** %status.addr, align 8, !dbg !5604
  store i32 0, i32* %4, align 4, !dbg !5605
  %5 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5606
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5607
  %call = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %5, i32 63, i8* %arraydecay, i32 1) #9, !dbg !5608
  br label %do.body, !dbg !5609

do.body:                                          ; preds = %entry
  %6 = load i32, i32* @debug, align 4, !dbg !5610
  %tobool = icmp ne i32 %6, 0, !dbg !5610
  br i1 %tobool, label %if.then, label %if.end, !dbg !5613

if.then:                                          ; preds = %do.body
  %7 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5610
  %client = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %7, i32 0, i32 0, !dbg !5610
  %8 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5610
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 4, !dbg !5610
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5610
  %9 = load i8, i8* %arrayidx, align 1, !dbg !5610
  %conv = zext i8 %9 to i32, !dbg !5610
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 %conv) #10, !dbg !5610
  br label %if.end, !dbg !5610

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5613

do.end:                                           ; preds = %if.end
  %arrayidx1 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5614
  %10 = load i8, i8* %arrayidx1, align 1, !dbg !5614
  %conv2 = zext i8 %10 to i32, !dbg !5614
  %and = and i32 %conv2, 12, !dbg !5616
  %cmp = icmp eq i32 %and, 8, !dbg !5617
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5618

if.then4:                                         ; preds = %do.end
  %11 = load i32*, i32** %status.addr, align 8, !dbg !5619
  %12 = load i32, i32* %11, align 4, !dbg !5621
  %or = or i32 %12, 1, !dbg !5621
  store i32 %or, i32* %11, align 4, !dbg !5621
  br label %if.end5, !dbg !5622

if.end5:                                          ; preds = %if.then4, %do.end
  %13 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5623
  %arraydecay6 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5624
  %call7 = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %13, i32 0, i8* %arraydecay6, i32 3) #9, !dbg !5625
  br label %do.body8, !dbg !5626

do.body8:                                         ; preds = %if.end5
  %14 = load i32, i32* @debug, align 4, !dbg !5627
  %tobool9 = icmp ne i32 %14, 0, !dbg !5627
  br i1 %tobool9, label %if.then10, label %if.end19, !dbg !5630

if.then10:                                        ; preds = %do.body8
  %15 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5627
  %client11 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %15, i32 0, i32 0, !dbg !5627
  %16 = load %struct.i2c_client*, %struct.i2c_client** %client11, align 8, !dbg !5627
  %dev12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 4, !dbg !5627
  %arrayidx13 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5627
  %17 = load i8, i8* %arrayidx13, align 1, !dbg !5627
  %conv14 = zext i8 %17 to i32, !dbg !5627
  %arrayidx15 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5627
  %18 = load i8, i8* %arrayidx15, align 1, !dbg !5627
  %conv16 = zext i8 %18 to i32, !dbg !5627
  %arrayidx17 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5627
  %19 = load i8, i8* %arrayidx17, align 1, !dbg !5627
  %conv18 = zext i8 %19 to i32, !dbg !5627
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev12, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i64 0, i64 0), i32 %conv14, i32 %conv16, i32 %conv18) #10, !dbg !5627
  br label %if.end19, !dbg !5627

if.end19:                                         ; preds = %if.then10, %do.body8
  br label %do.end20, !dbg !5630

do.end20:                                         ; preds = %if.end19
  %arrayidx21 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5631
  %20 = load i8, i8* %arrayidx21, align 1, !dbg !5631
  %conv22 = zext i8 %20 to i32, !dbg !5631
  %and23 = and i32 %conv22, 3, !dbg !5633
  %cmp24 = icmp eq i32 %and23, 1, !dbg !5634
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !5635

if.then26:                                        ; preds = %do.end20
  %21 = load i32*, i32** %status.addr, align 8, !dbg !5636
  %22 = load i32, i32* %21, align 4, !dbg !5637
  %or27 = or i32 %22, 8, !dbg !5637
  store i32 %or27, i32* %21, align 4, !dbg !5637
  br label %if.end28, !dbg !5638

if.end28:                                         ; preds = %if.then26, %do.end20
  %arrayidx29 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5639
  %23 = load i8, i8* %arrayidx29, align 1, !dbg !5639
  %conv30 = zext i8 %23 to i32, !dbg !5639
  %and31 = and i32 %conv30, 12, !dbg !5641
  %cmp32 = icmp eq i32 %and31, 8, !dbg !5642
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !5643

if.then34:                                        ; preds = %if.end28
  %24 = load i32*, i32** %status.addr, align 8, !dbg !5644
  %25 = load i32, i32* %24, align 4, !dbg !5645
  %or35 = or i32 %25, 20, !dbg !5645
  store i32 %or35, i32* %24, align 4, !dbg !5645
  br label %if.end36, !dbg !5646

if.end36:                                         ; preds = %if.then34, %if.end28
  %26 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5647
  %arraydecay37 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5648
  %call38 = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %26, i32 28, i8* %arraydecay37, i32 1) #9, !dbg !5649
  br label %do.body39, !dbg !5650

do.body39:                                        ; preds = %if.end36
  %27 = load i32, i32* @debug, align 4, !dbg !5651
  %tobool40 = icmp ne i32 %27, 0, !dbg !5651
  br i1 %tobool40, label %if.then41, label %if.end46, !dbg !5654

if.then41:                                        ; preds = %do.body39
  %28 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5651
  %client42 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %28, i32 0, i32 0, !dbg !5651
  %29 = load %struct.i2c_client*, %struct.i2c_client** %client42, align 8, !dbg !5651
  %dev43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 4, !dbg !5651
  %arrayidx44 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5651
  %30 = load i8, i8* %arrayidx44, align 1, !dbg !5651
  %conv45 = zext i8 %30 to i32, !dbg !5651
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 %conv45) #10, !dbg !5651
  br label %if.end46, !dbg !5651

if.end46:                                         ; preds = %if.then41, %do.body39
  br label %do.end47, !dbg !5654

do.end47:                                         ; preds = %if.end46
  %31 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5655
  %current_modulation = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %31, i32 0, i32 3, !dbg !5656
  %32 = load i32, i32* %current_modulation, align 8, !dbg !5656
  switch i32 %32, label %sw.default [
    i32 5, label %sw.bb
    i32 3, label %sw.bb
    i32 7, label %sw.bb56
  ], !dbg !5657

sw.bb:                                            ; preds = %do.end47, %do.end47
  %arrayidx48 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5658
  %33 = load i8, i8* %arrayidx48, align 1, !dbg !5658
  %conv49 = zext i8 %33 to i32, !dbg !5658
  %and50 = and i32 %conv49, 7, !dbg !5661
  %cmp51 = icmp eq i32 %and50, 7, !dbg !5662
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !5663

if.then53:                                        ; preds = %sw.bb
  %34 = load i32*, i32** %status.addr, align 8, !dbg !5664
  %35 = load i32, i32* %34, align 4, !dbg !5665
  %or54 = or i32 %35, 2, !dbg !5665
  store i32 %or54, i32* %34, align 4, !dbg !5665
  br label %if.end55, !dbg !5666

if.end55:                                         ; preds = %if.then53, %sw.bb
  br label %sw.epilog, !dbg !5667

sw.bb56:                                          ; preds = %do.end47
  %arrayidx57 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5668
  %36 = load i8, i8* %arrayidx57, align 1, !dbg !5668
  %conv58 = zext i8 %36 to i32, !dbg !5668
  %and59 = and i32 %conv58, 128, !dbg !5670
  %cmp60 = icmp eq i32 %and59, 128, !dbg !5671
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !5672

if.then62:                                        ; preds = %sw.bb56
  %37 = load i32*, i32** %status.addr, align 8, !dbg !5673
  %38 = load i32, i32* %37, align 4, !dbg !5674
  %or63 = or i32 %38, 2, !dbg !5674
  store i32 %or63, i32* %37, align 4, !dbg !5674
  br label %if.end64, !dbg !5675

if.end64:                                         ; preds = %if.then62, %sw.bb56
  br label %sw.epilog, !dbg !5676

sw.default:                                       ; preds = %do.end47
  %39 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5677
  %client65 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %39, i32 0, i32 0, !dbg !5677
  %40 = load %struct.i2c_client*, %struct.i2c_client** %client65, align 8, !dbg !5677
  %dev66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 4, !dbg !5677
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.lgdt3302_read_status, i64 0, i64 0)) #10, !dbg !5677
  br label %sw.epilog, !dbg !5678

sw.epilog:                                        ; preds = %sw.default, %if.end64, %if.end55
  %41 = load i32*, i32** %status.addr, align 8, !dbg !5679
  %42 = load i32, i32* %41, align 4, !dbg !5681
  %and67 = and i32 %42, 16, !dbg !5682
  %tobool68 = icmp ne i32 %and67, 0, !dbg !5682
  br i1 %tobool68, label %if.end77, label %if.then69, !dbg !5683

if.then69:                                        ; preds = %sw.epilog
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5684
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 43, !dbg !5686
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr, i32 0, i32 1, !dbg !5687
  %arrayidx70 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !5684
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx70, i32 0, i32 0, !dbg !5688
  store i8 0, i8* %scale, align 1, !dbg !5689
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5690
  %block_error = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 48, !dbg !5691
  %stat71 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error, i32 0, i32 1, !dbg !5692
  %arrayidx72 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat71, i64 0, i64 0, !dbg !5690
  %scale73 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx72, i32 0, i32 0, !dbg !5693
  store i8 0, i8* %scale73, align 1, !dbg !5694
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5695
  %block_count = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 49, !dbg !5696
  %stat74 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_count, i32 0, i32 1, !dbg !5697
  %arrayidx75 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat74, i64 0, i64 0, !dbg !5695
  %scale76 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx75, i32 0, i32 0, !dbg !5698
  store i8 0, i8* %scale76, align 1, !dbg !5699
  store i32 0, i32* %retval, align 4, !dbg !5700
  br label %return, !dbg !5700

if.end77:                                         ; preds = %sw.epilog
  %46 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5701
  %last_stats_time = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %46, i32 0, i32 6, !dbg !5703
  %47 = load i64, i64* %last_stats_time, align 8, !dbg !5703
  %tobool78 = icmp ne i64 %47, 0, !dbg !5701
  br i1 %tobool78, label %land.lhs.true, label %if.end83, !dbg !5704

land.lhs.true:                                    ; preds = %if.end77
  %48 = load volatile i64, i64* @jiffies, align 8, !dbg !5705
  %49 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5705
  %last_stats_time79 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %49, i32 0, i32 6, !dbg !5705
  %50 = load i64, i64* %last_stats_time79, align 8, !dbg !5705
  %sub = sub i64 %48, %50, !dbg !5705
  %cmp80 = icmp slt i64 %sub, 0, !dbg !5705
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !5706

if.then82:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !5707
  br label %return, !dbg !5707

if.end83:                                         ; preds = %land.lhs.true, %if.end77
  %51 = load volatile i64, i64* @jiffies, align 8, !dbg !5708
  store i32 1000, i32* %m.addr.i, align 4
  %52 = load i32, i32* %m.addr.i, align 4, !dbg !5709
  %53 = call i1 @llvm.is.constant.i32(i32 %52) #11, !dbg !5711
  br i1 %53, label %if.then.i, label %if.else.i, !dbg !5712

if.then.i:                                        ; preds = %if.end83
  %54 = load i32, i32* %m.addr.i, align 4, !dbg !5713
  %cmp.i = icmp slt i32 %54, 0, !dbg !5716
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5717

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5718
  br label %msecs_to_jiffies.exit, !dbg !5718

if.end.i:                                         ; preds = %if.then.i
  %55 = load i32, i32* %m.addr.i, align 4, !dbg !5719
  %call.i = call i64 @_msecs_to_jiffies(i32 %55) #13, !dbg !5720
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5721
  br label %msecs_to_jiffies.exit, !dbg !5721

if.else.i:                                        ; preds = %if.end83
  %56 = load i32, i32* %m.addr.i, align 4, !dbg !5722
  %call2.i = call i64 @__msecs_to_jiffies(i32 %56) #13, !dbg !5724
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5725
  br label %msecs_to_jiffies.exit, !dbg !5725

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %57 = load i64, i64* %retval.i, align 8, !dbg !5726
  %add = add i64 %51, %57, !dbg !5727
  %58 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5728
  %last_stats_time85 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %58, i32 0, i32 6, !dbg !5729
  store i64 %add, i64* %last_stats_time85, align 8, !dbg !5730
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5731
  %call86 = call i32 @lgdt3302_read_snr(%struct.dvb_frontend* %59) #9, !dbg !5732
  store i32 %call86, i32* %err, align 4, !dbg !5733
  %60 = load i32, i32* %err, align 4, !dbg !5734
  %tobool87 = icmp ne i32 %60, 0, !dbg !5734
  br i1 %tobool87, label %if.else, label %if.then88, !dbg !5736

if.then88:                                        ; preds = %msecs_to_jiffies.exit
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5737
  %cnr89 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 43, !dbg !5739
  %stat90 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr89, i32 0, i32 1, !dbg !5740
  %arrayidx91 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat90, i64 0, i64 0, !dbg !5737
  %scale92 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx91, i32 0, i32 0, !dbg !5741
  store i8 1, i8* %scale92, align 1, !dbg !5742
  %62 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5743
  %snr = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %62, i32 0, i32 4, !dbg !5744
  %63 = load i32, i32* %snr, align 4, !dbg !5744
  %conv93 = zext i32 %63 to i64, !dbg !5745
  %mul = mul i64 %conv93, 1000, !dbg !5746
  %shr = lshr i64 %mul, 24, !dbg !5747
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5748
  %cnr94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 43, !dbg !5749
  %stat95 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr94, i32 0, i32 1, !dbg !5750
  %arrayidx96 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat95, i64 0, i64 0, !dbg !5748
  %65 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx96, i32 0, i32 1, !dbg !5751
  %svalue = bitcast %union.anon.0* %65 to i64*, !dbg !5751
  store i64 %shr, i64* %svalue, align 1, !dbg !5752
  br label %if.end101, !dbg !5753

if.else:                                          ; preds = %msecs_to_jiffies.exit
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5754
  %cnr97 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 43, !dbg !5756
  %stat98 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr97, i32 0, i32 1, !dbg !5757
  %arrayidx99 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat98, i64 0, i64 0, !dbg !5754
  %scale100 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx99, i32 0, i32 0, !dbg !5758
  store i8 0, i8* %scale100, align 1, !dbg !5759
  br label %if.end101

if.end101:                                        ; preds = %if.else, %if.then88
  %67 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5760
  %arraydecay102 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5761
  %call103 = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %67, i32 106, i8* %arraydecay102, i32 3) #9, !dbg !5762
  store i32 %call103, i32* %err, align 4, !dbg !5763
  %68 = load i32, i32* %err, align 4, !dbg !5764
  %tobool104 = icmp ne i32 %68, 0, !dbg !5764
  br i1 %tobool104, label %if.else140, label %if.then105, !dbg !5766

if.then105:                                       ; preds = %if.end101
  %arrayidx106 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5767
  %69 = load i8, i8* %arrayidx106, align 1, !dbg !5767
  %conv107 = zext i8 %69 to i32, !dbg !5767
  %shl = shl i32 %conv107, 8, !dbg !5769
  %arrayidx108 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5770
  %70 = load i8, i8* %arrayidx108, align 1, !dbg !5770
  %conv109 = zext i8 %70 to i32, !dbg !5770
  %or110 = or i32 %shl, %conv109, !dbg !5771
  %conv111 = trunc i32 %or110 to i16, !dbg !5772
  %71 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5773
  %ucblocks = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %71, i32 0, i32 5, !dbg !5774
  store i16 %conv111, i16* %ucblocks, align 8, !dbg !5775
  br label %do.body112, !dbg !5776

do.body112:                                       ; preds = %if.then105
  %72 = load i32, i32* @debug, align 4, !dbg !5777
  %tobool113 = icmp ne i32 %72, 0, !dbg !5777
  br i1 %tobool113, label %if.then114, label %if.end119, !dbg !5780

if.then114:                                       ; preds = %do.body112
  %73 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5777
  %client115 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %73, i32 0, i32 0, !dbg !5777
  %74 = load %struct.i2c_client*, %struct.i2c_client** %client115, align 8, !dbg !5777
  %dev116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 4, !dbg !5777
  %75 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5777
  %ucblocks117 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %75, i32 0, i32 5, !dbg !5777
  %76 = load i16, i16* %ucblocks117, align 8, !dbg !5777
  %conv118 = zext i16 %76 to i32, !dbg !5777
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %conv118) #10, !dbg !5777
  br label %if.end119, !dbg !5777

if.end119:                                        ; preds = %if.then114, %do.body112
  br label %do.end120, !dbg !5780

do.end120:                                        ; preds = %if.end119
  %77 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5781
  %ucblocks121 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %77, i32 0, i32 5, !dbg !5782
  %78 = load i16, i16* %ucblocks121, align 8, !dbg !5782
  %conv122 = zext i16 %78 to i64, !dbg !5781
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5783
  %block_error123 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 48, !dbg !5784
  %stat124 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error123, i32 0, i32 1, !dbg !5785
  %arrayidx125 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat124, i64 0, i64 0, !dbg !5783
  %80 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx125, i32 0, i32 1, !dbg !5786
  %uvalue = bitcast %union.anon.0* %80 to i64*, !dbg !5786
  %81 = load i64, i64* %uvalue, align 1, !dbg !5787
  %add126 = add i64 %81, %conv122, !dbg !5787
  store i64 %add126, i64* %uvalue, align 1, !dbg !5787
  %82 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5788
  %block_count127 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %82, i32 0, i32 49, !dbg !5789
  %stat128 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_count127, i32 0, i32 1, !dbg !5790
  %arrayidx129 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat128, i64 0, i64 0, !dbg !5788
  %83 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx129, i32 0, i32 1, !dbg !5791
  %uvalue130 = bitcast %union.anon.0* %83 to i64*, !dbg !5791
  %84 = load i64, i64* %uvalue130, align 1, !dbg !5792
  %add131 = add i64 %84, 10000, !dbg !5792
  store i64 %add131, i64* %uvalue130, align 1, !dbg !5792
  %85 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5793
  %block_error132 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %85, i32 0, i32 48, !dbg !5794
  %stat133 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error132, i32 0, i32 1, !dbg !5795
  %arrayidx134 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat133, i64 0, i64 0, !dbg !5793
  %scale135 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx134, i32 0, i32 0, !dbg !5796
  store i8 3, i8* %scale135, align 1, !dbg !5797
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5798
  %block_count136 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 49, !dbg !5799
  %stat137 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_count136, i32 0, i32 1, !dbg !5800
  %arrayidx138 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat137, i64 0, i64 0, !dbg !5798
  %scale139 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx138, i32 0, i32 0, !dbg !5801
  store i8 3, i8* %scale139, align 1, !dbg !5802
  br label %if.end149, !dbg !5803

if.else140:                                       ; preds = %if.end101
  %87 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5804
  %block_error141 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %87, i32 0, i32 48, !dbg !5806
  %stat142 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error141, i32 0, i32 1, !dbg !5807
  %arrayidx143 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat142, i64 0, i64 0, !dbg !5804
  %scale144 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx143, i32 0, i32 0, !dbg !5808
  store i8 0, i8* %scale144, align 1, !dbg !5809
  %88 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5810
  %block_count145 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %88, i32 0, i32 49, !dbg !5811
  %stat146 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_count145, i32 0, i32 1, !dbg !5812
  %arrayidx147 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat146, i64 0, i64 0, !dbg !5810
  %scale148 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx147, i32 0, i32 0, !dbg !5813
  store i8 0, i8* %scale148, align 1, !dbg !5814
  br label %if.end149

if.end149:                                        ; preds = %if.else140, %do.end120
  store i32 0, i32* %retval, align 4, !dbg !5815
  br label %return, !dbg !5815

return:                                           ; preds = %if.end149, %if.then82, %if.then69
  %89 = load i32, i32* %retval, align 4, !dbg !5816
  ret i32 %89, !dbg !5816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt330x_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5817 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  %snr = alloca i16, align 2
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5818, metadata !DIExpression()), !dbg !5819
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5820, metadata !DIExpression()), !dbg !5821
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !5822, metadata !DIExpression()), !dbg !5823
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5824
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5825
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5825
  %2 = bitcast i8* %1 to %struct.lgdt330x_state*, !dbg !5824
  store %struct.lgdt330x_state* %2, %struct.lgdt330x_state** %state, align 8, !dbg !5823
  call void @llvm.dbg.declare(metadata i16* %snr, metadata !5826, metadata !DIExpression()), !dbg !5827
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5828, metadata !DIExpression()), !dbg !5829
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5830
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 1, !dbg !5831
  %read_snr = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 16, !dbg !5832
  %4 = load i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)** %read_snr, align 8, !dbg !5832
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5833
  %call = call i32 %4(%struct.dvb_frontend* %5, i16* %snr) #9, !dbg !5830
  store i32 %call, i32* %ret, align 4, !dbg !5834
  %6 = load i32, i32* %ret, align 4, !dbg !5835
  %cmp = icmp ne i32 %6, 0, !dbg !5837
  br i1 %cmp, label %if.then, label %if.end, !dbg !5838

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4, !dbg !5839
  store i32 %7, i32* %retval, align 4, !dbg !5840
  br label %return, !dbg !5840

if.end:                                           ; preds = %entry
  %8 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5841
  %snr1 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %8, i32 0, i32 4, !dbg !5843
  %9 = load i32, i32* %snr1, align 4, !dbg !5843
  %cmp2 = icmp uge i32 %9, 587202560, !dbg !5844
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !5845

if.then3:                                         ; preds = %if.end
  %10 = load i16*, i16** %strength.addr, align 8, !dbg !5846
  store i16 -1, i16* %10, align 2, !dbg !5847
  br label %if.end5, !dbg !5848

if.else:                                          ; preds = %if.end
  %11 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5849
  %snr4 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %11, i32 0, i32 4, !dbg !5850
  %12 = load i32, i32* %snr4, align 4, !dbg !5850
  %div = udiv i32 %12, 8960, !dbg !5851
  %conv = trunc i32 %div to i16, !dbg !5849
  %13 = load i16*, i16** %strength.addr, align 8, !dbg !5852
  store i16 %conv, i16* %13, align 2, !dbg !5853
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  store i32 0, i32* %retval, align 4, !dbg !5854
  br label %return, !dbg !5854

return:                                           ; preds = %if.end5, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5855
  ret i32 %14, !dbg !5855
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt330x_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5856 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5857, metadata !DIExpression()), !dbg !5858
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5859, metadata !DIExpression()), !dbg !5860
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !5861, metadata !DIExpression()), !dbg !5862
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5863
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5864
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5864
  %2 = bitcast i8* %1 to %struct.lgdt330x_state*, !dbg !5863
  store %struct.lgdt330x_state* %2, %struct.lgdt330x_state** %state, align 8, !dbg !5862
  %3 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5865
  %snr1 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %3, i32 0, i32 4, !dbg !5866
  %4 = load i32, i32* %snr1, align 4, !dbg !5866
  %shr = lshr i32 %4, 16, !dbg !5867
  %conv = trunc i32 %shr to i16, !dbg !5868
  %5 = load i16*, i16** %snr.addr, align 8, !dbg !5869
  store i16 %conv, i16* %5, align 2, !dbg !5870
  ret i32 0, !dbg !5871
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt330x_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5872 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !5877, metadata !DIExpression()), !dbg !5878
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5879
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5880
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5880
  %2 = bitcast i8* %1 to %struct.lgdt330x_state*, !dbg !5879
  store %struct.lgdt330x_state* %2, %struct.lgdt330x_state** %state, align 8, !dbg !5878
  %3 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !5881
  %ucblocks1 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %3, i32 0, i32 5, !dbg !5882
  %4 = load i16, i16* %ucblocks1, align 8, !dbg !5882
  %conv = zext i16 %4 to i32, !dbg !5881
  %5 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5883
  store i32 %conv, i32* %5, align 4, !dbg !5884
  ret i32 0, !dbg !5885
}

; Function Attrs: noredzone
declare dso_local void @i2c_unregister_device(%struct.i2c_client*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %state, i8* %buf, i32 %len) #0 !dbg !5886 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.lgdt330x_state*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.lgdt330x_state* %state, %struct.lgdt330x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state.addr, metadata !5889, metadata !DIExpression()), !dbg !5890
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5893, metadata !DIExpression()), !dbg !5894
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5895, metadata !DIExpression()), !dbg !5896
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5897, metadata !DIExpression()), !dbg !5898
  store i32 0, i32* %i, align 4, !dbg !5899
  br label %for.cond, !dbg !5901

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5902
  %1 = load i32, i32* %len.addr, align 4, !dbg !5904
  %sub = sub i32 %1, 1, !dbg !5905
  %cmp = icmp slt i32 %0, %sub, !dbg !5906
  br i1 %cmp, label %for.body, label %for.end, !dbg !5907

for.body:                                         ; preds = %for.cond
  %2 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5908
  %client = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %2, i32 0, i32 0, !dbg !5910
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5910
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5911
  %call = call i32 @i2c_master_send(%struct.i2c_client* %3, i8* %4, i32 2) #9, !dbg !5912
  store i32 %call, i32* %err, align 4, !dbg !5913
  %5 = load i32, i32* %err, align 4, !dbg !5914
  %cmp1 = icmp ne i32 %5, 2, !dbg !5916
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5917

if.then:                                          ; preds = %for.body
  %6 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5918
  %client2 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %6, i32 0, i32 0, !dbg !5918
  %7 = load %struct.i2c_client*, %struct.i2c_client** %client2, align 8, !dbg !5918
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 4, !dbg !5918
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5918
  %arrayidx = getelementptr i8, i8* %8, i64 0, !dbg !5918
  %9 = load i8, i8* %arrayidx, align 1, !dbg !5918
  %conv = zext i8 %9 to i32, !dbg !5918
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !5918
  %arrayidx3 = getelementptr i8, i8* %10, i64 1, !dbg !5918
  %11 = load i8, i8* %arrayidx3, align 1, !dbg !5918
  %conv4 = zext i8 %11 to i32, !dbg !5918
  %12 = load i32, i32* %err, align 4, !dbg !5918
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.i2c_write_demod_bytes, i64 0, i64 0), i32 %conv, i32 %conv4, i32 %12) #10, !dbg !5918
  %13 = load i32, i32* %err, align 4, !dbg !5920
  %cmp5 = icmp slt i32 %13, 0, !dbg !5922
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !5923

if.then7:                                         ; preds = %if.then
  %14 = load i32, i32* %err, align 4, !dbg !5924
  store i32 %14, i32* %retval, align 4, !dbg !5925
  br label %return, !dbg !5925

if.else:                                          ; preds = %if.then
  store i32 -121, i32* %retval, align 4, !dbg !5926
  br label %return, !dbg !5926

if.end:                                           ; preds = %for.body
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !5927
  %add.ptr = getelementptr i8, i8* %15, i64 2, !dbg !5927
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !5927
  br label %for.inc, !dbg !5928

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !dbg !5929
  %add = add i32 %16, 2, !dbg !5929
  store i32 %add, i32* %i, align 4, !dbg !5929
  br label %for.cond, !dbg !5930, !llvm.loop !5931

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5933
  br label %return, !dbg !5933

return:                                           ; preds = %for.end, %if.else, %if.then7
  %17 = load i32, i32* %retval, align 4, !dbg !5934
  ret i32 %17, !dbg !5934
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt330x_sw_reset(%struct.lgdt330x_state* %state) #0 !dbg !5935 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.lgdt330x_state*, align 8
  store %struct.lgdt330x_state* %state, %struct.lgdt330x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state.addr, metadata !5938, metadata !DIExpression()), !dbg !5939
  %0 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5940
  %config = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %0, i32 0, i32 1, !dbg !5941
  %demod_chip = getelementptr inbounds %struct.lgdt330x_config, %struct.lgdt330x_config* %config, i32 0, i32 0, !dbg !5942
  %1 = load i32, i32* %demod_chip, align 8, !dbg !5942
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ], !dbg !5943

sw.bb:                                            ; preds = %entry
  %2 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5944
  %call = call i32 @lgdt3302_sw_reset(%struct.lgdt330x_state* %2) #9, !dbg !5946
  store i32 %call, i32* %retval, align 4, !dbg !5947
  br label %return, !dbg !5947

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5948
  %call2 = call i32 @lgdt3303_sw_reset(%struct.lgdt330x_state* %3) #9, !dbg !5949
  store i32 %call2, i32* %retval, align 4, !dbg !5950
  br label %return, !dbg !5950

sw.default:                                       ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5951
  br label %return, !dbg !5951

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %4 = load i32, i32* %retval, align 4, !dbg !5952
  ret i32 %4, !dbg !5952
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_master_send(%struct.i2c_client* %client, i8* %buf, i32 %count) #0 !dbg !5953 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5956, metadata !DIExpression()), !dbg !5957
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5958, metadata !DIExpression()), !dbg !5959
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5960, metadata !DIExpression()), !dbg !5961
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5962
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5963
  %2 = load i32, i32* %count.addr, align 4, !dbg !5964
  %call = call i32 @i2c_transfer_buffer_flags(%struct.i2c_client* %0, i8* %1, i32 %2, i16 zeroext 0) #9, !dbg !5965
  ret i32 %call, !dbg !5966
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer_buffer_flags(%struct.i2c_client*, i8*, i32, i16 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt3302_sw_reset(%struct.lgdt330x_state* %state) #0 !dbg !5967 {
entry:
  %state.addr = alloca %struct.lgdt330x_state*, align 8
  %ret = alloca i8, align 1
  %reset = alloca [2 x i8], align 1
  store %struct.lgdt330x_state* %state, %struct.lgdt330x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state.addr, metadata !5968, metadata !DIExpression()), !dbg !5969
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !5970, metadata !DIExpression()), !dbg !5971
  call void @llvm.dbg.declare(metadata [2 x i8]* %reset, metadata !5972, metadata !DIExpression()), !dbg !5973
  %0 = bitcast [2 x i8]* %reset to i8*, !dbg !5973
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.lgdt3302_sw_reset.reset, i32 0, i32 0), i64 2, i1 false), !dbg !5973
  %1 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5974
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %reset, i64 0, i64 0, !dbg !5975
  %call = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %1, i8* %arraydecay, i32 2) #9, !dbg !5976
  %conv = trunc i32 %call to i8, !dbg !5976
  store i8 %conv, i8* %ret, align 1, !dbg !5977
  %2 = load i8, i8* %ret, align 1, !dbg !5978
  %conv1 = zext i8 %2 to i32, !dbg !5978
  %cmp = icmp eq i32 %conv1, 0, !dbg !5980
  br i1 %cmp, label %if.then, label %if.end, !dbg !5981

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %reset, i64 0, i64 1, !dbg !5982
  store i8 127, i8* %arrayidx, align 1, !dbg !5984
  %3 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5985
  %arraydecay3 = getelementptr inbounds [2 x i8], [2 x i8]* %reset, i64 0, i64 0, !dbg !5986
  %call4 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %3, i8* %arraydecay3, i32 2) #9, !dbg !5987
  %conv5 = trunc i32 %call4 to i8, !dbg !5987
  store i8 %conv5, i8* %ret, align 1, !dbg !5988
  br label %if.end, !dbg !5989

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %ret, align 1, !dbg !5990
  %conv6 = zext i8 %4 to i32, !dbg !5990
  ret i32 %conv6, !dbg !5991
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt3303_sw_reset(%struct.lgdt330x_state* %state) #0 !dbg !5992 {
entry:
  %state.addr = alloca %struct.lgdt330x_state*, align 8
  %ret = alloca i8, align 1
  %reset = alloca [2 x i8], align 1
  store %struct.lgdt330x_state* %state, %struct.lgdt330x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state.addr, metadata !5993, metadata !DIExpression()), !dbg !5994
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !5995, metadata !DIExpression()), !dbg !5996
  call void @llvm.dbg.declare(metadata [2 x i8]* %reset, metadata !5997, metadata !DIExpression()), !dbg !5998
  %0 = bitcast [2 x i8]* %reset to i8*, !dbg !5998
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.lgdt3303_sw_reset.reset, i32 0, i32 0), i64 2, i1 false), !dbg !5998
  %1 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !5999
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %reset, i64 0, i64 0, !dbg !6000
  %call = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %1, i8* %arraydecay, i32 2) #9, !dbg !6001
  %conv = trunc i32 %call to i8, !dbg !6001
  store i8 %conv, i8* %ret, align 1, !dbg !6002
  %2 = load i8, i8* %ret, align 1, !dbg !6003
  %conv1 = zext i8 %2 to i32, !dbg !6003
  %cmp = icmp eq i32 %conv1, 0, !dbg !6005
  br i1 %cmp, label %if.then, label %if.end, !dbg !6006

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %reset, i64 0, i64 1, !dbg !6007
  store i8 1, i8* %arrayidx, align 1, !dbg !6009
  %3 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state.addr, align 8, !dbg !6010
  %arraydecay3 = getelementptr inbounds [2 x i8], [2 x i8]* %reset, i64 0, i64 0, !dbg !6011
  %call4 = call i32 @i2c_write_demod_bytes(%struct.lgdt330x_state* %3, i8* %arraydecay3, i32 2) #9, !dbg !6012
  %conv5 = trunc i32 %call4 to i8, !dbg !6012
  store i8 %conv5, i8* %ret, align 1, !dbg !6013
  br label %if.end, !dbg !6014

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %ret, align 1, !dbg !6015
  %conv6 = zext i8 %4 to i32, !dbg !6015
  ret i32 %conv6, !dbg !6016
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt3302_read_snr(%struct.dvb_frontend* %fe) #0 !dbg !6017 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  %buf = alloca [5 x i8], align 1
  %noise = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6018, metadata !DIExpression()), !dbg !6019
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !6020, metadata !DIExpression()), !dbg !6021
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6022
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6023
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6023
  %2 = bitcast i8* %1 to %struct.lgdt330x_state*, !dbg !6022
  store %struct.lgdt330x_state* %2, %struct.lgdt330x_state** %state, align 8, !dbg !6021
  call void @llvm.dbg.declare(metadata [5 x i8]* %buf, metadata !6024, metadata !DIExpression()), !dbg !6028
  call void @llvm.dbg.declare(metadata i32* %noise, metadata !6029, metadata !DIExpression()), !dbg !6030
  call void @llvm.dbg.declare(metadata i32* %c, metadata !6031, metadata !DIExpression()), !dbg !6032
  %3 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6033
  %current_modulation = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %3, i32 0, i32 3, !dbg !6034
  %4 = load i32, i32* %current_modulation, align 8, !dbg !6034
  switch i32 %4, label %sw.default [
    i32 7, label %sw.bb
    i32 3, label %sw.bb7
    i32 5, label %sw.bb7
  ], !dbg !6035

sw.bb:                                            ; preds = %entry
  %5 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6036
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6038
  %call = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %5, i32 71, i8* %arraydecay, i32 5) #9, !dbg !6039
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6040
  %6 = load i8, i8* %arrayidx, align 1, !dbg !6040
  %conv = zext i8 %6 to i32, !dbg !6040
  %and = and i32 %conv, 56, !dbg !6041
  %shl = shl i32 %and, 13, !dbg !6042
  %arrayidx1 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 3, !dbg !6043
  %7 = load i8, i8* %arrayidx1, align 1, !dbg !6043
  %conv2 = zext i8 %7 to i32, !dbg !6043
  %shl3 = shl i32 %conv2, 8, !dbg !6044
  %or = or i32 %shl, %shl3, !dbg !6045
  %arrayidx4 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 4, !dbg !6046
  %8 = load i8, i8* %arrayidx4, align 1, !dbg !6046
  %conv5 = zext i8 %8 to i32, !dbg !6046
  %or6 = or i32 %or, %conv5, !dbg !6047
  store i32 %or6, i32* %noise, align 4, !dbg !6048
  store i32 73957994, i32* %c, align 4, !dbg !6049
  br label %sw.epilog, !dbg !6050

sw.bb7:                                           ; preds = %entry, %entry
  %9 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6051
  %arraydecay8 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6052
  %call9 = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %9, i32 26, i8* %arraydecay8, i32 2) #9, !dbg !6053
  %arrayidx10 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6054
  %10 = load i8, i8* %arrayidx10, align 1, !dbg !6054
  %conv11 = zext i8 %10 to i32, !dbg !6054
  %and12 = and i32 %conv11, 3, !dbg !6055
  %shl13 = shl i32 %and12, 8, !dbg !6056
  %arrayidx14 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 1, !dbg !6057
  %11 = load i8, i8* %arrayidx14, align 1, !dbg !6057
  %conv15 = zext i8 %11 to i32, !dbg !6057
  %or16 = or i32 %shl13, %conv15, !dbg !6058
  store i32 %or16, i32* %noise, align 4, !dbg !6059
  %12 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6060
  %current_modulation17 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %12, i32 0, i32 3, !dbg !6061
  %13 = load i32, i32* %current_modulation17, align 8, !dbg !6061
  %cmp = icmp eq i32 %13, 3, !dbg !6062
  %14 = zext i1 %cmp to i64, !dbg !6060
  %cond = select i1 %cmp, i32 97939837, i32 98026066, !dbg !6060
  store i32 %cond, i32* %c, align 4, !dbg !6063
  br label %sw.epilog, !dbg !6064

sw.default:                                       ; preds = %entry
  %15 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6065
  %client = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %15, i32 0, i32 0, !dbg !6065
  %16 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6065
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 4, !dbg !6065
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.lgdt3302_read_snr, i64 0, i64 0)) #10, !dbg !6065
  %17 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6066
  %snr = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %17, i32 0, i32 4, !dbg !6067
  store i32 0, i32* %snr, align 4, !dbg !6068
  store i32 -121, i32* %retval, align 4, !dbg !6069
  br label %return, !dbg !6069

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %18 = load i32, i32* %noise, align 4, !dbg !6070
  %19 = load i32, i32* %c, align 4, !dbg !6071
  %call19 = call i32 @calculate_snr(i32 %18, i32 %19) #9, !dbg !6072
  %20 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6073
  %snr20 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %20, i32 0, i32 4, !dbg !6074
  store i32 %call19, i32* %snr20, align 4, !dbg !6075
  br label %do.body, !dbg !6076

do.body:                                          ; preds = %sw.epilog
  %21 = load i32, i32* @debug, align 4, !dbg !6077
  %tobool = icmp ne i32 %21, 0, !dbg !6077
  br i1 %tobool, label %if.then, label %if.end, !dbg !6080

if.then:                                          ; preds = %do.body
  %22 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6077
  %client21 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %22, i32 0, i32 0, !dbg !6077
  %23 = load %struct.i2c_client*, %struct.i2c_client** %client21, align 8, !dbg !6077
  %dev22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 4, !dbg !6077
  %24 = load i32, i32* %noise, align 4, !dbg !6077
  %25 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6077
  %snr23 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %25, i32 0, i32 4, !dbg !6077
  %26 = load i32, i32* %snr23, align 4, !dbg !6077
  %shr = lshr i32 %26, 24, !dbg !6077
  %27 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6077
  %snr24 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %27, i32 0, i32 4, !dbg !6077
  %28 = load i32, i32* %snr24, align 4, !dbg !6077
  %shr25 = lshr i32 %28, 8, !dbg !6077
  %and26 = and i32 %shr25, 65535, !dbg !6077
  %mul = mul i32 %and26, 100, !dbg !6077
  %shr27 = lshr i32 %mul, 16, !dbg !6077
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i32 %24, i32 %shr, i32 %shr27) #10, !dbg !6077
  br label %if.end, !dbg !6077

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6080

do.end:                                           ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6081
  br label %return, !dbg !6081

return:                                           ; preds = %do.end, %sw.default
  %29 = load i32, i32* %retval, align 4, !dbg !6082
  ret i32 %29, !dbg !6082
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !6083 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  %0 = load i32, i32* %m.addr, align 4, !dbg !6086
  %conv = zext i32 %0 to i64, !dbg !6086
  %add = add i64 %conv, 4, !dbg !6087
  %sub = sub i64 %add, 1, !dbg !6088
  %div = sdiv i64 %sub, 4, !dbg !6089
  ret i64 %div, !dbg !6090
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @calculate_snr(i32 %mse, i32 %c) #0 !dbg !6091 {
entry:
  %retval = alloca i32, align 4
  %mse.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %mse, i32* %mse.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mse.addr, metadata !6094, metadata !DIExpression()), !dbg !6095
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !6096, metadata !DIExpression()), !dbg !6097
  %0 = load i32, i32* %mse.addr, align 4, !dbg !6098
  %cmp = icmp eq i32 %0, 0, !dbg !6100
  br i1 %cmp, label %if.then, label %if.end, !dbg !6101

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6102
  br label %return, !dbg !6102

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mse.addr, align 4, !dbg !6103
  %call = call i32 @intlog10(i32 %1) #9, !dbg !6104
  store i32 %call, i32* %mse.addr, align 4, !dbg !6105
  %2 = load i32, i32* %mse.addr, align 4, !dbg !6106
  %3 = load i32, i32* %c.addr, align 4, !dbg !6108
  %cmp1 = icmp ugt i32 %2, %3, !dbg !6109
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !6110

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6111
  br label %return, !dbg !6111

if.end3:                                          ; preds = %if.end
  %4 = load i32, i32* %c.addr, align 4, !dbg !6113
  %5 = load i32, i32* %mse.addr, align 4, !dbg !6114
  %sub = sub i32 %4, %5, !dbg !6115
  %mul = mul i32 10, %sub, !dbg !6116
  store i32 %mul, i32* %retval, align 4, !dbg !6117
  br label %return, !dbg !6117

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !6118
  ret i32 %6, !dbg !6118
}

; Function Attrs: noredzone
declare dso_local i32 @intlog10(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt3303_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !6119 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5580, metadata !DIExpression()), !dbg !6120
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %buf = alloca [3 x i8], align 1
  %err = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6122, metadata !DIExpression()), !dbg !6123
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !6124, metadata !DIExpression()), !dbg !6125
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !6126, metadata !DIExpression()), !dbg !6127
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6128
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6129
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6129
  %2 = bitcast i8* %1 to %struct.lgdt330x_state*, !dbg !6128
  store %struct.lgdt330x_state* %2, %struct.lgdt330x_state** %state, align 8, !dbg !6127
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !6130, metadata !DIExpression()), !dbg !6131
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6132
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !6133
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !6131
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !6134, metadata !DIExpression()), !dbg !6135
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6136, metadata !DIExpression()), !dbg !6137
  %4 = load i32*, i32** %status.addr, align 8, !dbg !6138
  store i32 0, i32* %4, align 4, !dbg !6139
  %5 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6140
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6141
  %call = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %5, i32 88, i8* %arraydecay, i32 1) #9, !dbg !6142
  store i32 %call, i32* %err, align 4, !dbg !6143
  %6 = load i32, i32* %err, align 4, !dbg !6144
  %cmp = icmp slt i32 %6, 0, !dbg !6146
  br i1 %cmp, label %if.then, label %if.end, !dbg !6147

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %err, align 4, !dbg !6148
  store i32 %7, i32* %retval, align 4, !dbg !6149
  br label %return, !dbg !6149

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6150

do.body:                                          ; preds = %if.end
  %8 = load i32, i32* @debug, align 4, !dbg !6151
  %tobool = icmp ne i32 %8, 0, !dbg !6151
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !6154

if.then1:                                         ; preds = %do.body
  %9 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6151
  %client = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %9, i32 0, i32 0, !dbg !6151
  %10 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6151
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 4, !dbg !6151
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6151
  %11 = load i8, i8* %arrayidx, align 1, !dbg !6151
  %conv = zext i8 %11 to i32, !dbg !6151
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 %conv) #10, !dbg !6151
  br label %if.end2, !dbg !6151

if.end2:                                          ; preds = %if.then1, %do.body
  br label %do.end, !dbg !6154

do.end:                                           ; preds = %if.end2
  %arrayidx3 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6155
  %12 = load i8, i8* %arrayidx3, align 1, !dbg !6155
  %conv4 = zext i8 %12 to i32, !dbg !6155
  %and = and i32 %conv4, 33, !dbg !6157
  %cmp5 = icmp eq i32 %and, 1, !dbg !6158
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !6159

if.then7:                                         ; preds = %do.end
  %13 = load i32*, i32** %status.addr, align 8, !dbg !6160
  %14 = load i32, i32* %13, align 4, !dbg !6162
  %or = or i32 %14, 1, !dbg !6162
  store i32 %or, i32* %13, align 4, !dbg !6162
  br label %if.end8, !dbg !6163

if.end8:                                          ; preds = %if.then7, %do.end
  %15 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6164
  %arraydecay9 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6165
  %call10 = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %15, i32 28, i8* %arraydecay9, i32 1) #9, !dbg !6166
  br label %do.body11, !dbg !6167

do.body11:                                        ; preds = %if.end8
  %16 = load i32, i32* @debug, align 4, !dbg !6168
  %tobool12 = icmp ne i32 %16, 0, !dbg !6168
  br i1 %tobool12, label %if.then13, label %if.end18, !dbg !6171

if.then13:                                        ; preds = %do.body11
  %17 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6168
  %client14 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %17, i32 0, i32 0, !dbg !6168
  %18 = load %struct.i2c_client*, %struct.i2c_client** %client14, align 8, !dbg !6168
  %dev15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 4, !dbg !6168
  %arrayidx16 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6168
  %19 = load i8, i8* %arrayidx16, align 1, !dbg !6168
  %conv17 = zext i8 %19 to i32, !dbg !6168
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 %conv17) #10, !dbg !6168
  br label %if.end18, !dbg !6168

if.end18:                                         ; preds = %if.then13, %do.body11
  br label %do.end19, !dbg !6171

do.end19:                                         ; preds = %if.end18
  %20 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6172
  %current_modulation = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %20, i32 0, i32 3, !dbg !6173
  %21 = load i32, i32* %current_modulation, align 8, !dbg !6173
  switch i32 %21, label %sw.default [
    i32 5, label %sw.bb
    i32 3, label %sw.bb
    i32 7, label %sw.bb63
  ], !dbg !6174

sw.bb:                                            ; preds = %do.end19, %do.end19
  %arrayidx20 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6175
  %22 = load i8, i8* %arrayidx20, align 1, !dbg !6175
  %conv21 = zext i8 %22 to i32, !dbg !6175
  %and22 = and i32 %conv21, 7, !dbg !6178
  %cmp23 = icmp eq i32 %and22, 7, !dbg !6179
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !6180

if.then25:                                        ; preds = %sw.bb
  %23 = load i32*, i32** %status.addr, align 8, !dbg !6181
  %24 = load i32, i32* %23, align 4, !dbg !6182
  %or26 = or i32 %24, 2, !dbg !6182
  store i32 %or26, i32* %23, align 4, !dbg !6182
  br label %if.end27, !dbg !6183

if.else:                                          ; preds = %sw.bb
  br label %sw.epilog, !dbg !6184

if.end27:                                         ; preds = %if.then25
  %25 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6185
  %arraydecay28 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6186
  %call29 = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %25, i32 138, i8* %arraydecay28, i32 1) #9, !dbg !6187
  br label %do.body30, !dbg !6188

do.body30:                                        ; preds = %if.end27
  %26 = load i32, i32* @debug, align 4, !dbg !6189
  %tobool31 = icmp ne i32 %26, 0, !dbg !6189
  br i1 %tobool31, label %if.then32, label %if.end37, !dbg !6192

if.then32:                                        ; preds = %do.body30
  %27 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6189
  %client33 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %27, i32 0, i32 0, !dbg !6189
  %28 = load %struct.i2c_client*, %struct.i2c_client** %client33, align 8, !dbg !6189
  %dev34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 4, !dbg !6189
  %arrayidx35 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6189
  %29 = load i8, i8* %arrayidx35, align 1, !dbg !6189
  %conv36 = zext i8 %29 to i32, !dbg !6189
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %conv36) #10, !dbg !6189
  br label %if.end37, !dbg !6189

if.end37:                                         ; preds = %if.then32, %do.body30
  br label %do.end38, !dbg !6192

do.end38:                                         ; preds = %if.end37
  %arrayidx39 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6193
  %30 = load i8, i8* %arrayidx39, align 1, !dbg !6193
  %conv40 = zext i8 %30 to i32, !dbg !6193
  %and41 = and i32 %conv40, 4, !dbg !6195
  %cmp42 = icmp eq i32 %and41, 4, !dbg !6196
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !6197

if.then44:                                        ; preds = %do.end38
  %31 = load i32*, i32** %status.addr, align 8, !dbg !6198
  %32 = load i32, i32* %31, align 4, !dbg !6199
  %or45 = or i32 %32, 8, !dbg !6199
  store i32 %or45, i32* %31, align 4, !dbg !6199
  br label %if.end46, !dbg !6200

if.end46:                                         ; preds = %if.then44, %do.end38
  %arrayidx47 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6201
  %33 = load i8, i8* %arrayidx47, align 1, !dbg !6201
  %conv48 = zext i8 %33 to i32, !dbg !6201
  %and49 = and i32 %conv48, 1, !dbg !6203
  %cmp50 = icmp eq i32 %and49, 1, !dbg !6204
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !6205

if.then52:                                        ; preds = %if.end46
  %34 = load i32*, i32** %status.addr, align 8, !dbg !6206
  %35 = load i32, i32* %34, align 4, !dbg !6207
  %or53 = or i32 %35, 16, !dbg !6207
  store i32 %or53, i32* %34, align 4, !dbg !6207
  br label %if.end54, !dbg !6208

if.end54:                                         ; preds = %if.then52, %if.end46
  %arrayidx55 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6209
  %36 = load i8, i8* %arrayidx55, align 1, !dbg !6209
  %conv56 = zext i8 %36 to i32, !dbg !6209
  %and57 = and i32 %conv56, 8, !dbg !6211
  %cmp58 = icmp eq i32 %and57, 8, !dbg !6212
  br i1 %cmp58, label %if.then60, label %if.end62, !dbg !6213

if.then60:                                        ; preds = %if.end54
  %37 = load i32*, i32** %status.addr, align 8, !dbg !6214
  %38 = load i32, i32* %37, align 4, !dbg !6215
  %or61 = or i32 %38, 4, !dbg !6215
  store i32 %or61, i32* %37, align 4, !dbg !6215
  br label %if.end62, !dbg !6216

if.end62:                                         ; preds = %if.then60, %if.end54
  br label %sw.epilog, !dbg !6217

sw.bb63:                                          ; preds = %do.end19
  %arrayidx64 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6218
  %39 = load i8, i8* %arrayidx64, align 1, !dbg !6218
  %conv65 = zext i8 %39 to i32, !dbg !6218
  %and66 = and i32 %conv65, 128, !dbg !6220
  %cmp67 = icmp eq i32 %and66, 128, !dbg !6221
  br i1 %cmp67, label %if.then69, label %if.else71, !dbg !6222

if.then69:                                        ; preds = %sw.bb63
  %40 = load i32*, i32** %status.addr, align 8, !dbg !6223
  %41 = load i32, i32* %40, align 4, !dbg !6224
  %or70 = or i32 %41, 2, !dbg !6224
  store i32 %or70, i32* %40, align 4, !dbg !6224
  br label %if.end72, !dbg !6225

if.else71:                                        ; preds = %sw.bb63
  br label %sw.epilog, !dbg !6226

if.end72:                                         ; preds = %if.then69
  %42 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6227
  %arraydecay73 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6228
  %call74 = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %42, i32 56, i8* %arraydecay73, i32 1) #9, !dbg !6229
  br label %do.body75, !dbg !6230

do.body75:                                        ; preds = %if.end72
  %43 = load i32, i32* @debug, align 4, !dbg !6231
  %tobool76 = icmp ne i32 %43, 0, !dbg !6231
  br i1 %tobool76, label %if.then77, label %if.end82, !dbg !6234

if.then77:                                        ; preds = %do.body75
  %44 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6231
  %client78 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %44, i32 0, i32 0, !dbg !6231
  %45 = load %struct.i2c_client*, %struct.i2c_client** %client78, align 8, !dbg !6231
  %dev79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 4, !dbg !6231
  %arrayidx80 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6231
  %46 = load i8, i8* %arrayidx80, align 1, !dbg !6231
  %conv81 = zext i8 %46 to i32, !dbg !6231
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 %conv81) #10, !dbg !6231
  br label %if.end82, !dbg !6231

if.end82:                                         ; preds = %if.then77, %do.body75
  br label %do.end83, !dbg !6234

do.end83:                                         ; preds = %if.end82
  %arrayidx84 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6235
  %47 = load i8, i8* %arrayidx84, align 1, !dbg !6235
  %conv85 = zext i8 %47 to i32, !dbg !6235
  %and86 = and i32 %conv85, 2, !dbg !6237
  %cmp87 = icmp eq i32 %and86, 0, !dbg !6238
  br i1 %cmp87, label %if.then89, label %if.end91, !dbg !6239

if.then89:                                        ; preds = %do.end83
  %48 = load i32*, i32** %status.addr, align 8, !dbg !6240
  %49 = load i32, i32* %48, align 4, !dbg !6241
  %or90 = or i32 %49, 8, !dbg !6241
  store i32 %or90, i32* %48, align 4, !dbg !6241
  br label %if.end91, !dbg !6242

if.end91:                                         ; preds = %if.then89, %do.end83
  %arrayidx92 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6243
  %50 = load i8, i8* %arrayidx92, align 1, !dbg !6243
  %conv93 = zext i8 %50 to i32, !dbg !6243
  %and94 = and i32 %conv93, 1, !dbg !6245
  %cmp95 = icmp eq i32 %and94, 1, !dbg !6246
  br i1 %cmp95, label %if.then97, label %if.end99, !dbg !6247

if.then97:                                        ; preds = %if.end91
  %51 = load i32*, i32** %status.addr, align 8, !dbg !6248
  %52 = load i32, i32* %51, align 4, !dbg !6249
  %or98 = or i32 %52, 20, !dbg !6249
  store i32 %or98, i32* %51, align 4, !dbg !6249
  br label %if.end99, !dbg !6250

if.end99:                                         ; preds = %if.then97, %if.end91
  br label %sw.epilog, !dbg !6251

sw.default:                                       ; preds = %do.end19
  %53 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6252
  %client100 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %53, i32 0, i32 0, !dbg !6252
  %54 = load %struct.i2c_client*, %struct.i2c_client** %client100, align 8, !dbg !6252
  %dev101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 4, !dbg !6252
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev101, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.lgdt3303_read_status, i64 0, i64 0)) #10, !dbg !6252
  br label %sw.epilog, !dbg !6253

sw.epilog:                                        ; preds = %sw.default, %if.end99, %if.else71, %if.end62, %if.else
  %55 = load i32*, i32** %status.addr, align 8, !dbg !6254
  %56 = load i32, i32* %55, align 4, !dbg !6256
  %and102 = and i32 %56, 16, !dbg !6257
  %tobool103 = icmp ne i32 %and102, 0, !dbg !6257
  br i1 %tobool103, label %if.end112, label %if.then104, !dbg !6258

if.then104:                                       ; preds = %sw.epilog
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6259
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 43, !dbg !6261
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr, i32 0, i32 1, !dbg !6262
  %arrayidx105 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !6259
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx105, i32 0, i32 0, !dbg !6263
  store i8 0, i8* %scale, align 1, !dbg !6264
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6265
  %block_error = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 48, !dbg !6266
  %stat106 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error, i32 0, i32 1, !dbg !6267
  %arrayidx107 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat106, i64 0, i64 0, !dbg !6265
  %scale108 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx107, i32 0, i32 0, !dbg !6268
  store i8 0, i8* %scale108, align 1, !dbg !6269
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6270
  %block_count = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 49, !dbg !6271
  %stat109 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_count, i32 0, i32 1, !dbg !6272
  %arrayidx110 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat109, i64 0, i64 0, !dbg !6270
  %scale111 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx110, i32 0, i32 0, !dbg !6273
  store i8 0, i8* %scale111, align 1, !dbg !6274
  store i32 0, i32* %retval, align 4, !dbg !6275
  br label %return, !dbg !6275

if.end112:                                        ; preds = %sw.epilog
  %60 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6276
  %last_stats_time = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %60, i32 0, i32 6, !dbg !6278
  %61 = load i64, i64* %last_stats_time, align 8, !dbg !6278
  %tobool113 = icmp ne i64 %61, 0, !dbg !6276
  br i1 %tobool113, label %land.lhs.true, label %if.end118, !dbg !6279

land.lhs.true:                                    ; preds = %if.end112
  %62 = load volatile i64, i64* @jiffies, align 8, !dbg !6280
  %63 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6280
  %last_stats_time114 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %63, i32 0, i32 6, !dbg !6280
  %64 = load i64, i64* %last_stats_time114, align 8, !dbg !6280
  %sub = sub i64 %62, %64, !dbg !6280
  %cmp115 = icmp slt i64 %sub, 0, !dbg !6280
  br i1 %cmp115, label %if.then117, label %if.end118, !dbg !6281

if.then117:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !6282
  br label %return, !dbg !6282

if.end118:                                        ; preds = %land.lhs.true, %if.end112
  %65 = load volatile i64, i64* @jiffies, align 8, !dbg !6283
  store i32 1000, i32* %m.addr.i, align 4
  %66 = load i32, i32* %m.addr.i, align 4, !dbg !6284
  %67 = call i1 @llvm.is.constant.i32(i32 %66) #11, !dbg !6285
  br i1 %67, label %if.then.i, label %if.else.i, !dbg !6286

if.then.i:                                        ; preds = %if.end118
  %68 = load i32, i32* %m.addr.i, align 4, !dbg !6287
  %cmp.i = icmp slt i32 %68, 0, !dbg !6288
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6289

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !6290
  br label %msecs_to_jiffies.exit, !dbg !6290

if.end.i:                                         ; preds = %if.then.i
  %69 = load i32, i32* %m.addr.i, align 4, !dbg !6291
  %call.i = call i64 @_msecs_to_jiffies(i32 %69) #13, !dbg !6292
  store i64 %call.i, i64* %retval.i, align 8, !dbg !6293
  br label %msecs_to_jiffies.exit, !dbg !6293

if.else.i:                                        ; preds = %if.end118
  %70 = load i32, i32* %m.addr.i, align 4, !dbg !6294
  %call2.i = call i64 @__msecs_to_jiffies(i32 %70) #13, !dbg !6295
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !6296
  br label %msecs_to_jiffies.exit, !dbg !6296

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %71 = load i64, i64* %retval.i, align 8, !dbg !6297
  %add = add i64 %65, %71, !dbg !6298
  %72 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6299
  %last_stats_time120 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %72, i32 0, i32 6, !dbg !6300
  store i64 %add, i64* %last_stats_time120, align 8, !dbg !6301
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6302
  %call121 = call i32 @lgdt3303_read_snr(%struct.dvb_frontend* %73) #9, !dbg !6303
  store i32 %call121, i32* %err, align 4, !dbg !6304
  %74 = load i32, i32* %err, align 4, !dbg !6305
  %tobool122 = icmp ne i32 %74, 0, !dbg !6305
  br i1 %tobool122, label %if.else132, label %if.then123, !dbg !6307

if.then123:                                       ; preds = %msecs_to_jiffies.exit
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6308
  %cnr124 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 43, !dbg !6310
  %stat125 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr124, i32 0, i32 1, !dbg !6311
  %arrayidx126 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat125, i64 0, i64 0, !dbg !6308
  %scale127 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx126, i32 0, i32 0, !dbg !6312
  store i8 1, i8* %scale127, align 1, !dbg !6313
  %76 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6314
  %snr = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %76, i32 0, i32 4, !dbg !6315
  %77 = load i32, i32* %snr, align 4, !dbg !6315
  %conv128 = zext i32 %77 to i64, !dbg !6316
  %mul = mul i64 %conv128, 1000, !dbg !6317
  %shr = lshr i64 %mul, 24, !dbg !6318
  %78 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6319
  %cnr129 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %78, i32 0, i32 43, !dbg !6320
  %stat130 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr129, i32 0, i32 1, !dbg !6321
  %arrayidx131 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat130, i64 0, i64 0, !dbg !6319
  %79 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx131, i32 0, i32 1, !dbg !6322
  %svalue = bitcast %union.anon.0* %79 to i64*, !dbg !6322
  store i64 %shr, i64* %svalue, align 1, !dbg !6323
  br label %if.end137, !dbg !6324

if.else132:                                       ; preds = %msecs_to_jiffies.exit
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6325
  %cnr133 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 43, !dbg !6327
  %stat134 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr133, i32 0, i32 1, !dbg !6328
  %arrayidx135 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat134, i64 0, i64 0, !dbg !6325
  %scale136 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx135, i32 0, i32 0, !dbg !6329
  store i8 0, i8* %scale136, align 1, !dbg !6330
  br label %if.end137

if.end137:                                        ; preds = %if.else132, %if.then123
  %81 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6331
  %arraydecay138 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6332
  %call139 = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %81, i32 139, i8* %arraydecay138, i32 3) #9, !dbg !6333
  store i32 %call139, i32* %err, align 4, !dbg !6334
  %82 = load i32, i32* %err, align 4, !dbg !6335
  %tobool140 = icmp ne i32 %82, 0, !dbg !6335
  br i1 %tobool140, label %if.else176, label %if.then141, !dbg !6337

if.then141:                                       ; preds = %if.end137
  %arrayidx142 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6338
  %83 = load i8, i8* %arrayidx142, align 1, !dbg !6338
  %conv143 = zext i8 %83 to i32, !dbg !6338
  %shl = shl i32 %conv143, 8, !dbg !6340
  %arrayidx144 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !6341
  %84 = load i8, i8* %arrayidx144, align 1, !dbg !6341
  %conv145 = zext i8 %84 to i32, !dbg !6341
  %or146 = or i32 %shl, %conv145, !dbg !6342
  %conv147 = trunc i32 %or146 to i16, !dbg !6343
  %85 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6344
  %ucblocks = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %85, i32 0, i32 5, !dbg !6345
  store i16 %conv147, i16* %ucblocks, align 8, !dbg !6346
  br label %do.body148, !dbg !6347

do.body148:                                       ; preds = %if.then141
  %86 = load i32, i32* @debug, align 4, !dbg !6348
  %tobool149 = icmp ne i32 %86, 0, !dbg !6348
  br i1 %tobool149, label %if.then150, label %if.end155, !dbg !6351

if.then150:                                       ; preds = %do.body148
  %87 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6348
  %client151 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %87, i32 0, i32 0, !dbg !6348
  %88 = load %struct.i2c_client*, %struct.i2c_client** %client151, align 8, !dbg !6348
  %dev152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 4, !dbg !6348
  %89 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6348
  %ucblocks153 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %89, i32 0, i32 5, !dbg !6348
  %90 = load i16, i16* %ucblocks153, align 8, !dbg !6348
  %conv154 = zext i16 %90 to i32, !dbg !6348
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %conv154) #10, !dbg !6348
  br label %if.end155, !dbg !6348

if.end155:                                        ; preds = %if.then150, %do.body148
  br label %do.end156, !dbg !6351

do.end156:                                        ; preds = %if.end155
  %91 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6352
  %ucblocks157 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %91, i32 0, i32 5, !dbg !6353
  %92 = load i16, i16* %ucblocks157, align 8, !dbg !6353
  %conv158 = zext i16 %92 to i64, !dbg !6352
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6354
  %block_error159 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 48, !dbg !6355
  %stat160 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error159, i32 0, i32 1, !dbg !6356
  %arrayidx161 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat160, i64 0, i64 0, !dbg !6354
  %94 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx161, i32 0, i32 1, !dbg !6357
  %uvalue = bitcast %union.anon.0* %94 to i64*, !dbg !6357
  %95 = load i64, i64* %uvalue, align 1, !dbg !6358
  %add162 = add i64 %95, %conv158, !dbg !6358
  store i64 %add162, i64* %uvalue, align 1, !dbg !6358
  %96 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6359
  %block_count163 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %96, i32 0, i32 49, !dbg !6360
  %stat164 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_count163, i32 0, i32 1, !dbg !6361
  %arrayidx165 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat164, i64 0, i64 0, !dbg !6359
  %97 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx165, i32 0, i32 1, !dbg !6362
  %uvalue166 = bitcast %union.anon.0* %97 to i64*, !dbg !6362
  %98 = load i64, i64* %uvalue166, align 1, !dbg !6363
  %add167 = add i64 %98, 10000, !dbg !6363
  store i64 %add167, i64* %uvalue166, align 1, !dbg !6363
  %99 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6364
  %block_error168 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %99, i32 0, i32 48, !dbg !6365
  %stat169 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error168, i32 0, i32 1, !dbg !6366
  %arrayidx170 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat169, i64 0, i64 0, !dbg !6364
  %scale171 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx170, i32 0, i32 0, !dbg !6367
  store i8 3, i8* %scale171, align 1, !dbg !6368
  %100 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6369
  %block_count172 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %100, i32 0, i32 49, !dbg !6370
  %stat173 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_count172, i32 0, i32 1, !dbg !6371
  %arrayidx174 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat173, i64 0, i64 0, !dbg !6369
  %scale175 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx174, i32 0, i32 0, !dbg !6372
  store i8 3, i8* %scale175, align 1, !dbg !6373
  br label %if.end185, !dbg !6374

if.else176:                                       ; preds = %if.end137
  %101 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6375
  %block_error177 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %101, i32 0, i32 48, !dbg !6377
  %stat178 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error177, i32 0, i32 1, !dbg !6378
  %arrayidx179 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat178, i64 0, i64 0, !dbg !6375
  %scale180 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx179, i32 0, i32 0, !dbg !6379
  store i8 0, i8* %scale180, align 1, !dbg !6380
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6381
  %block_count181 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 49, !dbg !6382
  %stat182 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_count181, i32 0, i32 1, !dbg !6383
  %arrayidx183 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat182, i64 0, i64 0, !dbg !6381
  %scale184 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx183, i32 0, i32 0, !dbg !6384
  store i8 0, i8* %scale184, align 1, !dbg !6385
  br label %if.end185

if.end185:                                        ; preds = %if.else176, %do.end156
  store i32 0, i32* %retval, align 4, !dbg !6386
  br label %return, !dbg !6386

return:                                           ; preds = %if.end185, %if.then117, %if.then104, %if.then
  %103 = load i32, i32* %retval, align 4, !dbg !6387
  ret i32 %103, !dbg !6387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgdt3303_read_snr(%struct.dvb_frontend* %fe) #0 !dbg !6388 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.lgdt330x_state*, align 8
  %buf = alloca [5 x i8], align 1
  %noise = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6389, metadata !DIExpression()), !dbg !6390
  call void @llvm.dbg.declare(metadata %struct.lgdt330x_state** %state, metadata !6391, metadata !DIExpression()), !dbg !6392
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6393
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6394
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6394
  %2 = bitcast i8* %1 to %struct.lgdt330x_state*, !dbg !6393
  store %struct.lgdt330x_state* %2, %struct.lgdt330x_state** %state, align 8, !dbg !6392
  call void @llvm.dbg.declare(metadata [5 x i8]* %buf, metadata !6395, metadata !DIExpression()), !dbg !6396
  call void @llvm.dbg.declare(metadata i32* %noise, metadata !6397, metadata !DIExpression()), !dbg !6398
  call void @llvm.dbg.declare(metadata i32* %c, metadata !6399, metadata !DIExpression()), !dbg !6400
  %3 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6401
  %current_modulation = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %3, i32 0, i32 3, !dbg !6402
  %4 = load i32, i32* %current_modulation, align 8, !dbg !6402
  switch i32 %4, label %sw.default [
    i32 7, label %sw.bb
    i32 3, label %sw.bb7
    i32 5, label %sw.bb7
  ], !dbg !6403

sw.bb:                                            ; preds = %entry
  %5 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6404
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6406
  %call = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %5, i32 110, i8* %arraydecay, i32 5) #9, !dbg !6407
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6408
  %6 = load i8, i8* %arrayidx, align 1, !dbg !6408
  %conv = zext i8 %6 to i32, !dbg !6408
  %and = and i32 %conv, 7, !dbg !6409
  %shl = shl i32 %and, 16, !dbg !6410
  %arrayidx1 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 3, !dbg !6411
  %7 = load i8, i8* %arrayidx1, align 1, !dbg !6411
  %conv2 = zext i8 %7 to i32, !dbg !6411
  %shl3 = shl i32 %conv2, 8, !dbg !6412
  %or = or i32 %shl, %shl3, !dbg !6413
  %arrayidx4 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 4, !dbg !6414
  %8 = load i8, i8* %arrayidx4, align 1, !dbg !6414
  %conv5 = zext i8 %8 to i32, !dbg !6414
  %or6 = or i32 %or, %conv5, !dbg !6415
  store i32 %or6, i32* %noise, align 4, !dbg !6416
  store i32 73957994, i32* %c, align 4, !dbg !6417
  br label %sw.epilog, !dbg !6418

sw.bb7:                                           ; preds = %entry, %entry
  %9 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6419
  %arraydecay8 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6420
  %call9 = call i32 @i2c_read_demod_bytes(%struct.lgdt330x_state* %9, i32 26, i8* %arraydecay8, i32 2) #9, !dbg !6421
  %arrayidx10 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6422
  %10 = load i8, i8* %arrayidx10, align 1, !dbg !6422
  %conv11 = zext i8 %10 to i32, !dbg !6422
  %shl12 = shl i32 %conv11, 8, !dbg !6423
  %arrayidx13 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 1, !dbg !6424
  %11 = load i8, i8* %arrayidx13, align 1, !dbg !6424
  %conv14 = zext i8 %11 to i32, !dbg !6424
  %or15 = or i32 %shl12, %conv14, !dbg !6425
  store i32 %or15, i32* %noise, align 4, !dbg !6426
  %12 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6427
  %current_modulation16 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %12, i32 0, i32 3, !dbg !6428
  %13 = load i32, i32* %current_modulation16, align 8, !dbg !6428
  %cmp = icmp eq i32 %13, 3, !dbg !6429
  %14 = zext i1 %cmp to i64, !dbg !6427
  %cond = select i1 %cmp, i32 97939837, i32 98026066, !dbg !6427
  store i32 %cond, i32* %c, align 4, !dbg !6430
  br label %sw.epilog, !dbg !6431

sw.default:                                       ; preds = %entry
  %15 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6432
  %client = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %15, i32 0, i32 0, !dbg !6432
  %16 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6432
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 4, !dbg !6432
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.lgdt3303_read_snr, i64 0, i64 0)) #10, !dbg !6432
  %17 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6433
  %snr = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %17, i32 0, i32 4, !dbg !6434
  store i32 0, i32* %snr, align 4, !dbg !6435
  store i32 -121, i32* %retval, align 4, !dbg !6436
  br label %return, !dbg !6436

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %18 = load i32, i32* %noise, align 4, !dbg !6437
  %19 = load i32, i32* %c, align 4, !dbg !6438
  %call18 = call i32 @calculate_snr(i32 %18, i32 %19) #9, !dbg !6439
  %20 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6440
  %snr19 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %20, i32 0, i32 4, !dbg !6441
  store i32 %call18, i32* %snr19, align 4, !dbg !6442
  br label %do.body, !dbg !6443

do.body:                                          ; preds = %sw.epilog
  %21 = load i32, i32* @debug, align 4, !dbg !6444
  %tobool = icmp ne i32 %21, 0, !dbg !6444
  br i1 %tobool, label %if.then, label %if.end, !dbg !6447

if.then:                                          ; preds = %do.body
  %22 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6444
  %client20 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %22, i32 0, i32 0, !dbg !6444
  %23 = load %struct.i2c_client*, %struct.i2c_client** %client20, align 8, !dbg !6444
  %dev21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 4, !dbg !6444
  %24 = load i32, i32* %noise, align 4, !dbg !6444
  %25 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6444
  %snr22 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %25, i32 0, i32 4, !dbg !6444
  %26 = load i32, i32* %snr22, align 4, !dbg !6444
  %shr = lshr i32 %26, 24, !dbg !6444
  %27 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %state, align 8, !dbg !6444
  %snr23 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %27, i32 0, i32 4, !dbg !6444
  %28 = load i32, i32* %snr23, align 4, !dbg !6444
  %shr24 = lshr i32 %28, 8, !dbg !6444
  %and25 = and i32 %shr24, 65535, !dbg !6444
  %mul = mul i32 %and25, 100, !dbg !6444
  %shr26 = lshr i32 %mul, 16, !dbg !6444
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.device* %dev21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i32 %24, i32 %shr, i32 %shr26) #10, !dbg !6444
  br label %if.end, !dbg !6444

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6447

do.end:                                           ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6448
  br label %return, !dbg !6448

return:                                           ; preds = %do.end, %sw.default
  %29 = load i32, i32* %retval, align 4, !dbg !6449
  ret i32 %29, !dbg !6449
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

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
!llvm.module.flags = !{!4631, !4632, !4633, !4634}
!llvm.ident = !{!4635}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 39, type: !4628, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !361, globals: !378, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/lgdt330x.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283, !289, !298, !303, !310, !316}
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
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lg_chip_t", file: !284, line: 13, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "drivers/media/dvb-frontends/lgdt330x.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287, !288}
!286 = !DIEnumerator(name: "UNDEFINED", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "LGDT3302", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "LGDT3303", value: 2, isUnsigned: true)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !290, line: 19, baseType: !7, size: 32, elements: !291)
!290 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !293, !294, !295, !296, !297}
!292 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!293 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!294 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!295 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!296 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!297 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "i2c_alert_protocol", file: !299, line: 215, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!300 = !{!301, !302}
!301 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_ALERT", value: 0, isUnsigned: true)
!302 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_HOST_NOTIFY", value: 1, isUnsigned: true)
!303 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !304, line: 305, baseType: !7, size: 32, elements: !305)
!304 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!305 = !{!306, !307, !308, !309}
!306 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!307 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!308 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!309 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fecap_scale_params", file: !6, line: 752, baseType: !7, size: 32, elements: !311)
!311 = !{!312, !313, !314, !315}
!312 = !DIEnumerator(name: "FE_SCALE_NOT_AVAILABLE", value: 0, isUnsigned: true)
!313 = !DIEnumerator(name: "FE_SCALE_DECIBEL", value: 1, isUnsigned: true)
!314 = !DIEnumerator(name: "FE_SCALE_RELATIVE", value: 2, isUnsigned: true)
!315 = !DIEnumerator(name: "FE_SCALE_COUNTER", value: 3, isUnsigned: true)
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "I2C_REG", file: !317, line: 12, baseType: !7, size: 32, elements: !318)
!317 = !DIFile(filename: "drivers/media/dvb-frontends/lgdt330x_priv.h", directory: "/home/lizy2001/genbc/linux")
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!319 = !DIEnumerator(name: "TOP_CONTROL", value: 0, isUnsigned: true)
!320 = !DIEnumerator(name: "IRQ_MASK", value: 1, isUnsigned: true)
!321 = !DIEnumerator(name: "IRQ_STATUS", value: 2, isUnsigned: true)
!322 = !DIEnumerator(name: "VSB_CARRIER_FREQ0", value: 22, isUnsigned: true)
!323 = !DIEnumerator(name: "VSB_CARRIER_FREQ1", value: 23, isUnsigned: true)
!324 = !DIEnumerator(name: "VSB_CARRIER_FREQ2", value: 24, isUnsigned: true)
!325 = !DIEnumerator(name: "VSB_CARRIER_FREQ3", value: 25, isUnsigned: true)
!326 = !DIEnumerator(name: "CARRIER_MSEQAM1", value: 26, isUnsigned: true)
!327 = !DIEnumerator(name: "CARRIER_MSEQAM2", value: 27, isUnsigned: true)
!328 = !DIEnumerator(name: "CARRIER_LOCK", value: 28, isUnsigned: true)
!329 = !DIEnumerator(name: "TIMING_RECOVERY", value: 29, isUnsigned: true)
!330 = !DIEnumerator(name: "AGC_DELAY0", value: 42, isUnsigned: true)
!331 = !DIEnumerator(name: "AGC_DELAY1", value: 43, isUnsigned: true)
!332 = !DIEnumerator(name: "AGC_DELAY2", value: 44, isUnsigned: true)
!333 = !DIEnumerator(name: "AGC_RF_BANDWIDTH0", value: 45, isUnsigned: true)
!334 = !DIEnumerator(name: "AGC_RF_BANDWIDTH1", value: 46, isUnsigned: true)
!335 = !DIEnumerator(name: "AGC_RF_BANDWIDTH2", value: 47, isUnsigned: true)
!336 = !DIEnumerator(name: "AGC_LOOP_BANDWIDTH0", value: 48, isUnsigned: true)
!337 = !DIEnumerator(name: "AGC_LOOP_BANDWIDTH1", value: 49, isUnsigned: true)
!338 = !DIEnumerator(name: "AGC_FUNC_CTRL1", value: 50, isUnsigned: true)
!339 = !DIEnumerator(name: "AGC_FUNC_CTRL2", value: 51, isUnsigned: true)
!340 = !DIEnumerator(name: "AGC_FUNC_CTRL3", value: 52, isUnsigned: true)
!341 = !DIEnumerator(name: "AGC_RFIF_ACC0", value: 57, isUnsigned: true)
!342 = !DIEnumerator(name: "AGC_RFIF_ACC1", value: 58, isUnsigned: true)
!343 = !DIEnumerator(name: "AGC_RFIF_ACC2", value: 59, isUnsigned: true)
!344 = !DIEnumerator(name: "AGC_STATUS", value: 63, isUnsigned: true)
!345 = !DIEnumerator(name: "SYNC_STATUS_VSB", value: 67, isUnsigned: true)
!346 = !DIEnumerator(name: "DEMUX_CONTROL", value: 102, isUnsigned: true)
!347 = !DIEnumerator(name: "LGDT3302_EQPH_ERR0", value: 71, isUnsigned: true)
!348 = !DIEnumerator(name: "LGDT3302_EQ_ERR1", value: 72, isUnsigned: true)
!349 = !DIEnumerator(name: "LGDT3302_EQ_ERR2", value: 73, isUnsigned: true)
!350 = !DIEnumerator(name: "LGDT3302_PH_ERR1", value: 74, isUnsigned: true)
!351 = !DIEnumerator(name: "LGDT3302_PH_ERR2", value: 75, isUnsigned: true)
!352 = !DIEnumerator(name: "LGDT3302_PACKET_ERR_COUNTER1", value: 106, isUnsigned: true)
!353 = !DIEnumerator(name: "LGDT3302_PACKET_ERR_COUNTER2", value: 107, isUnsigned: true)
!354 = !DIEnumerator(name: "LGDT3303_EQPH_ERR0", value: 110, isUnsigned: true)
!355 = !DIEnumerator(name: "LGDT3303_EQ_ERR1", value: 111, isUnsigned: true)
!356 = !DIEnumerator(name: "LGDT3303_EQ_ERR2", value: 112, isUnsigned: true)
!357 = !DIEnumerator(name: "LGDT3303_PH_ERR1", value: 113, isUnsigned: true)
!358 = !DIEnumerator(name: "LGDT3303_PH_ERR2", value: 114, isUnsigned: true)
!359 = !DIEnumerator(name: "LGDT3303_PACKET_ERR_COUNTER1", value: 139, isUnsigned: true)
!360 = !DIEnumerator(name: "LGDT3303_PACKET_ERR_COUNTER2", value: 140, isUnsigned: true)
!361 = !{!362, !363, !364, !367, !369, !371, !372, !377}
!362 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !366, line: 76, flags: DIFlagFwdDecl)
!366 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !368, line: 148, baseType: !7)
!368 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!371 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !373, line: 23, baseType: !374)
!373 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !375, line: 31, baseType: !376)
!375 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!376 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!377 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!378 = !{!379, !443, !448, !453, !455, !462, !467, !472, !477, !482, !0, !484, !4280, !4602, !4606, !4609, !4612, !4614, !4618, !4623, !4625}
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 39, type: !381, isLocal: true, isDefinition: true, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !383, line: 69, size: 320, elements: !384)
!383 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!384 = !{!385, !388, !389, !408, !413, !417, !421}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !383, line: 70, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !382, file: !383, line: 71, baseType: !364, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !382, file: !383, line: 72, baseType: !390, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !383, line: 47, size: 256, elements: !393)
!393 = !{!394, !395, !400, !404}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !383, line: 49, baseType: !7, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !392, file: !383, line: 51, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!377, !386, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !392, file: !383, line: 53, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!377, !369, !399}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !392, file: !383, line: 55, baseType: !405, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !363}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !382, file: !383, line: 73, baseType: !409, size: 16, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !373, line: 19, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !375, line: 24, baseType: !412)
!412 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !382, file: !383, line: 74, baseType: !414, size: 8, offset: 208)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !373, line: 16, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !375, line: 20, baseType: !416)
!416 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !382, file: !383, line: 75, baseType: !418, size: 8, offset: 216)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !373, line: 17, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !375, line: 21, baseType: !420)
!420 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !383, line: 76, baseType: !422, size: 64, offset: 256)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !383, line: 76, size: 64, elements: !423)
!423 = !{!424, !425, !432}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !422, file: !383, line: 77, baseType: !363, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !422, file: !383, line: 78, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !383, line: 86, size: 128, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !428, file: !383, line: 87, baseType: !7, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !428, file: !383, line: 88, baseType: !369, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !422, file: !383, line: 79, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !383, line: 92, size: 256, elements: !436)
!436 = !{!437, !438, !439, !441, !442}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !435, file: !383, line: 94, baseType: !7, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !435, file: !383, line: 95, baseType: !7, size: 32, offset: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !435, file: !383, line: 96, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !435, file: !383, line: 97, baseType: !390, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !435, file: !383, line: 98, baseType: !363, size: 64, offset: 192)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 39, type: !445, isLocal: true, isDefinition: true, align: 8)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 224, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 28)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 40, type: !450, isLocal: true, isDefinition: true, align: 8)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 600, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 75)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lgdt330x_driver_init222", scope: !2, file: !3, line: 1004, type: !363, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "__exitcall_lgdt330x_driver_exit", scope: !2, file: !3, line: 1004, type: !457, isLocal: true, isDefinition: true)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !458, line: 117, baseType: !459)
!458 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null}
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description223", scope: !2, file: !3, line: 1007, type: !464, isLocal: true, isDefinition: true, align: 8)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 736, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 92)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author224", scope: !2, file: !3, line: 1008, type: !469, isLocal: true, isDefinition: true, align: 8)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 256, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 32)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file225", scope: !2, file: !3, line: 1009, type: !474, isLocal: true, isDefinition: true, align: 8)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 408, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 51)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license226", scope: !2, file: !3, line: 1009, type: !479, isLocal: true, isDefinition: true, align: 8)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 168, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 21)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 38, type: !377, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "lgdt330x_driver", scope: !2, file: !3, line: 994, type: !486, isLocal: true, isDefinition: true)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_driver", file: !299, line: 255, size: 1920, elements: !487)
!487 = !{!488, !489, !4199, !4203, !4204, !4208, !4212, !4216, !4217, !4218, !4276, !4279}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !486, file: !299, line: 256, baseType: !7, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !486, file: !299, line: 259, baseType: !490, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!377, !493, !4193}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !299, line: 314, size: 6016, elements: !495)
!495 = !{!496, !497, !498, !502, !4189, !4190, !4191, !4192}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !299, line: 315, baseType: !412, size: 16)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !494, file: !299, line: 325, baseType: !412, size: 16, offset: 16)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !494, file: !299, line: 328, baseType: !499, size: 160, offset: 32)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 160, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 20)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !494, file: !299, line: 329, baseType: !503, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !299, line: 695, size: 7552, elements: !505)
!505 = !{!506, !507, !508, !547, !548, !562, !3582, !3583, !3584, !3585, !4136, !4137, !4138, !4142, !4143, !4144, !4145, !4177, !4188}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !504, file: !299, line: 696, baseType: !364, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !504, file: !299, line: 697, baseType: !7, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !504, file: !299, line: 698, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !299, line: 519, size: 320, elements: !512)
!512 = !{!513, !526, !527, !540, !541}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !511, file: !299, line: 529, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!377, !503, !517, !377}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !519, line: 69, size: 128, elements: !520)
!519 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!520 = !{!521, !522, !523, !524}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !518, file: !519, line: 70, baseType: !411, size: 16)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !519, line: 71, baseType: !411, size: 16, offset: 16)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !518, file: !519, line: 84, baseType: !411, size: 16, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !518, file: !519, line: 85, baseType: !525, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !511, file: !299, line: 531, baseType: !514, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !511, file: !299, line: 533, baseType: !528, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!377, !503, !410, !412, !370, !418, !377, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !519, line: 135, size: 272, elements: !533)
!533 = !{!534, !535, !536}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !532, file: !519, line: 136, baseType: !419, size: 8)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !532, file: !519, line: 137, baseType: !411, size: 16)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !532, file: !519, line: 138, baseType: !537, size: 272)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 272, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 34)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !511, file: !299, line: 536, baseType: !528, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !511, file: !299, line: 541, baseType: !542, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!545, !503}
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !373, line: 21, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !375, line: 27, baseType: !7)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !504, file: !299, line: 699, baseType: !363, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !504, file: !299, line: 702, baseType: !549, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !299, line: 557, size: 192, elements: !552)
!552 = !{!553, !557, !561}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !551, file: !299, line: 558, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !503, !7}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !551, file: !299, line: 559, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!377, !503, !7}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !551, file: !299, line: 560, baseType: !554, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !504, file: !299, line: 703, baseType: !563, size: 192, offset: 320)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !564, line: 30, size: 192, elements: !565)
!564 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!565 = !{!566, !576, !591}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !563, file: !564, line: 31, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !568, line: 29, baseType: !569)
!568 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !568, line: 20, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !569, file: !568, line: 21, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !573, line: 25, baseType: !574)
!573 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 25, elements: !575)
!575 = !{}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !563, file: !564, line: 32, baseType: !577, size: 128)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !578, line: 125, size: 128, elements: !579)
!578 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!579 = !{!580, !590}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !577, file: !578, line: 126, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !578, line: 31, size: 64, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !581, file: !578, line: 32, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !578, line: 24, size: 192, align: 64, elements: !586)
!586 = !{!587, !588, !589}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !585, file: !578, line: 25, baseType: !362, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !585, file: !578, line: 26, baseType: !584, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !585, file: !578, line: 27, baseType: !584, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !577, file: !578, line: 127, baseType: !584, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !563, file: !564, line: 33, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !594, line: 640, size: 48640, elements: !595)
!594 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!595 = !{!596, !602, !604, !605, !615, !616, !617, !618, !619, !620, !621, !622, !626, !649, !660, !752, !753, !754, !765, !766, !768, !769, !2888, !2889, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2971, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2986, !2987, !2988, !2990, !2991, !2992, !2993, !2994, !2995, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3019, !3024, !3025, !3026, !3027, !3028, !3030, !3033, !3036, !3039, !3042, !3046, !3147, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3191, !3192, !3193, !3194, !3195, !3200, !3201, !3202, !3205, !3206, !3209, !3212, !3215, !3216, !3248, !3251, !3252, !3331, !3332, !3335, !3336, !3339, !3340, !3341, !3345, !3346, !3347, !3360, !3361, !3362, !3372, !3377, !3378, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !593, file: !594, line: 646, baseType: !597, size: 128)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !598, line: 56, size: 128, elements: !599)
!598 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !598, line: 57, baseType: !362, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !597, file: !598, line: 58, baseType: !545, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !593, file: !594, line: 649, baseType: !603, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !371)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !593, file: !594, line: 657, baseType: !363, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !593, file: !594, line: 658, baseType: !606, size: 32, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !607, line: 113, baseType: !608)
!607 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !607, line: 111, size: 32, elements: !609)
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !608, file: !607, line: 112, baseType: !611, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !368, line: 168, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 166, size: 32, elements: !613)
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !612, file: !368, line: 167, baseType: !377, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !594, line: 660, baseType: !7, size: 32, offset: 288)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !593, file: !594, line: 661, baseType: !7, size: 32, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !593, file: !594, line: 684, baseType: !377, size: 32, offset: 352)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !593, file: !594, line: 686, baseType: !377, size: 32, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !593, file: !594, line: 687, baseType: !377, size: 32, offset: 416)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !593, file: !594, line: 688, baseType: !377, size: 32, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !593, file: !594, line: 689, baseType: !7, size: 32, offset: 480)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !593, file: !594, line: 691, baseType: !623, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !594, line: 691, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !593, file: !594, line: 692, baseType: !627, size: 832, offset: 576)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !594, line: 451, size: 832, elements: !628)
!628 = !{!629, !634, !635, !641, !642, !643, !644, !645, !646, !647}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !627, file: !594, line: 453, baseType: !630, size: 128)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !594, line: 325, size: 128, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !630, file: !594, line: 326, baseType: !362, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !630, file: !594, line: 327, baseType: !545, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !627, file: !594, line: 454, baseType: !585, size: 192, align: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !627, file: !594, line: 455, baseType: !636, size: 128, offset: 320)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !368, line: 178, size: 128, elements: !637)
!637 = !{!638, !640}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !636, file: !368, line: 179, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !636, file: !368, line: 179, baseType: !639, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !627, file: !594, line: 456, baseType: !7, size: 32, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !627, file: !594, line: 458, baseType: !372, size: 64, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !627, file: !594, line: 459, baseType: !372, size: 64, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !627, file: !594, line: 460, baseType: !372, size: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !627, file: !594, line: 461, baseType: !372, size: 64, offset: 704)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !627, file: !594, line: 463, baseType: !372, size: 64, offset: 768)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !627, file: !594, line: 465, baseType: !648, offset: 832)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !594, line: 415, elements: !575)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !593, file: !594, line: 693, baseType: !650, size: 384, offset: 1408)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !594, line: 489, size: 384, elements: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !658}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !650, file: !594, line: 490, baseType: !636, size: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !650, file: !594, line: 491, baseType: !362, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !650, file: !594, line: 492, baseType: !362, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !650, file: !594, line: 493, baseType: !7, size: 32, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !650, file: !594, line: 494, baseType: !412, size: 16, offset: 288)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !650, file: !594, line: 495, baseType: !412, size: 16, offset: 304)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !650, file: !594, line: 497, baseType: !659, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !593, file: !594, line: 697, baseType: !661, size: 1792, offset: 1792)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !594, line: 507, size: 1792, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !673, !674, !675, !676, !677, !678, !679, !749, !750}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !661, file: !594, line: 508, baseType: !585, size: 192, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !661, file: !594, line: 515, baseType: !372, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !661, file: !594, line: 516, baseType: !372, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !661, file: !594, line: 517, baseType: !372, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !661, file: !594, line: 518, baseType: !372, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !661, file: !594, line: 519, baseType: !372, size: 64, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !661, file: !594, line: 526, baseType: !670, size: 64, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !373, line: 22, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !375, line: 30, baseType: !672)
!672 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !661, file: !594, line: 527, baseType: !372, size: 64, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !594, line: 528, baseType: !7, size: 32, offset: 640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !661, file: !594, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !661, file: !594, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !661, file: !594, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !661, file: !594, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !661, file: !594, line: 563, baseType: !680, size: 512, offset: 704)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !681)
!681 = !{!682, !690, !691, !696, !745, !746, !747, !748}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !680, file: !191, line: 119, baseType: !683, size: 256)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !684, line: 9, size: 256, elements: !685)
!684 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !683, file: !684, line: 10, baseType: !585, size: 192, align: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !683, file: !684, line: 11, baseType: !688, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !689, line: 29, baseType: !670)
!689 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !680, file: !191, line: 120, baseType: !688, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !680, file: !191, line: 121, baseType: !692, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!190, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !680, file: !191, line: 122, baseType: !697, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !699)
!699 = !{!700, !720, !721, !725, !735, !736, !740, !744}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !698, file: !191, line: 160, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !702, file: !191, line: 215, baseType: !567)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !702, file: !191, line: 216, baseType: !7, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !702, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !702, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !702, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !702, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !702, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !702, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !702, file: !191, line: 233, baseType: !688, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !702, file: !191, line: 234, baseType: !695, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !702, file: !191, line: 235, baseType: !688, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !702, file: !191, line: 236, baseType: !695, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !702, file: !191, line: 237, baseType: !717, size: 4096, offset: 512)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 4096, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 8)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !698, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !698, file: !191, line: 162, baseType: !722, size: 32, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !368, line: 27, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !724, line: 96, baseType: !377)
!724 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!725 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !698, file: !191, line: 163, baseType: !726, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !727, line: 276, baseType: !728)
!727 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !727, line: 276, size: 32, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !728, file: !727, line: 276, baseType: !731, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !727, line: 70, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !727, line: 65, size: 32, elements: !733)
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !732, file: !727, line: 66, baseType: !7, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !698, file: !191, line: 164, baseType: !695, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !698, file: !191, line: 165, baseType: !737, size: 128, offset: 256)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !684, line: 14, size: 128, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !737, file: !684, line: 15, baseType: !577, size: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !698, file: !191, line: 166, baseType: !741, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!688}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !698, file: !191, line: 167, baseType: !688, size: 64, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !680, file: !191, line: 123, baseType: !418, size: 8, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !680, file: !191, line: 124, baseType: !418, size: 8, offset: 456)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !680, file: !191, line: 125, baseType: !418, size: 8, offset: 464)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !680, file: !191, line: 126, baseType: !418, size: 8, offset: 472)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !661, file: !594, line: 572, baseType: !680, size: 512, offset: 1216)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !661, file: !594, line: 580, baseType: !751, size: 64, offset: 1728)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !593, file: !594, line: 721, baseType: !7, size: 32, offset: 3584)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !593, file: !594, line: 722, baseType: !377, size: 32, offset: 3616)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !593, file: !594, line: 723, baseType: !755, size: 64, offset: 3648)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !758, line: 17, baseType: !759)
!758 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !758, line: 17, size: 64, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !759, file: !758, line: 17, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 64, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 1)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !593, file: !594, line: 724, baseType: !757, size: 64, offset: 3712)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !593, file: !594, line: 749, baseType: !767, offset: 3776)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !594, line: 290, elements: !575)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !593, file: !594, line: 751, baseType: !636, size: 128, offset: 3776)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !593, file: !594, line: 757, baseType: !770, size: 64, offset: 3904)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !772, line: 388, size: 7296, elements: !773)
!772 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!773 = !{!774, !2884}
!774 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !772, line: 389, baseType: !775, size: 7296)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !772, line: 389, size: 7296, elements: !776)
!776 = !{!777, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2797, !2803, !2806, !2845, !2846, !2868, !2869, !2872, !2873, !2874, !2877, !2878, !2879, !2882, !2883}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !775, file: !772, line: 390, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !772, line: 305, size: 1472, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !787, !788, !796, !797, !802, !803, !806, !810, !811, !2745, !2746, !2747}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !779, file: !772, line: 308, baseType: !362, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !779, file: !772, line: 309, baseType: !362, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !779, file: !772, line: 313, baseType: !778, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !779, file: !772, line: 313, baseType: !778, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !779, file: !772, line: 315, baseType: !585, size: 192, align: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !779, file: !772, line: 323, baseType: !362, size: 64, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !779, file: !772, line: 327, baseType: !770, size: 64, offset: 512)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !779, file: !772, line: 333, baseType: !789, size: 64, offset: 576)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !790, line: 284, baseType: !791)
!790 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !790, line: 284, size: 64, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !791, file: !790, line: 284, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !795, line: 19, baseType: !362)
!795 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!796 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !779, file: !772, line: 334, baseType: !362, size: 64, offset: 640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !779, file: !772, line: 343, baseType: !798, size: 256, offset: 704)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !772, line: 340, size: 256, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !798, file: !772, line: 341, baseType: !585, size: 192, align: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !798, file: !772, line: 342, baseType: !362, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !779, file: !772, line: 351, baseType: !636, size: 128, offset: 960)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !779, file: !772, line: 353, baseType: !804, size: 64, offset: 1088)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !772, line: 353, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !779, file: !772, line: 356, baseType: !807, size: 64, offset: 1152)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !772, line: 356, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !779, file: !772, line: 359, baseType: !362, size: 64, offset: 1216)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !779, file: !772, line: 361, baseType: !812, size: 64, offset: 1280)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !814)
!814 = !{!815, !833, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2544, !2729, !2738, !2739, !2740, !2741, !2742, !2743, !2744}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !813, file: !208, line: 920, baseType: !816, size: 128)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !208, line: 917, size: 128, elements: !817)
!817 = !{!818, !824}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !816, file: !208, line: 918, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !820, line: 58, size: 64, elements: !821)
!820 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!821 = !{!822}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !819, file: !820, line: 59, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !816, file: !208, line: 919, baseType: !825, size: 128, align: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !368, line: 216, size: 128, align: 64, elements: !826)
!826 = !{!827, !829}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !825, file: !368, line: 217, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !825, file: !368, line: 218, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !828}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !813, file: !208, line: 921, baseType: !834, size: 128, offset: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !835, line: 8, size: 128, elements: !836)
!835 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!836 = !{!837, !841}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !834, file: !835, line: 9, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !840, line: 18, flags: DIFlagFwdDecl)
!840 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!841 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !834, file: !835, line: 10, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !840, line: 89, size: 1536, elements: !844)
!844 = !{!845, !846, !851, !859, !860, !875, !2474, !2476, !2488, !2489, !2490, !2491, !2492, !2497, !2498, !2499}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !843, file: !840, line: 91, baseType: !7, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !843, file: !840, line: 92, baseType: !847, size: 32, offset: 32)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !727, line: 277, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !727, line: 277, size: 32, elements: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !848, file: !727, line: 277, baseType: !731, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !843, file: !840, line: 93, baseType: !852, size: 128, offset: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !853, line: 38, size: 128, elements: !854)
!853 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!854 = !{!855, !857}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !853, line: 39, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !852, file: !853, line: 39, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !843, file: !840, line: 94, baseType: !842, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !843, file: !840, line: 95, baseType: !861, size: 128, offset: 256)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !840, line: 47, size: 128, elements: !862)
!862 = !{!863, !872}
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !861, file: !840, line: 48, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !861, file: !840, line: 48, size: 64, elements: !865)
!865 = !{!866, !871}
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !840, line: 49, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !864, file: !840, line: 49, size: 64, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !867, file: !840, line: 50, baseType: !545, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !867, file: !840, line: 50, baseType: !545, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !864, file: !840, line: 52, baseType: !372, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !861, file: !840, line: 54, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !843, file: !840, line: 96, baseType: !876, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !878)
!878 = !{!879, !881, !882, !890, !897, !898, !1047, !1863, !1864, !1865, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !2142, !2150, !2151, !2152, !2470, !2471, !2472, !2473}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !877, file: !208, line: 611, baseType: !880, size: 16)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !368, line: 19, baseType: !412)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !877, file: !208, line: 612, baseType: !412, size: 16, offset: 16)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !877, file: !208, line: 613, baseType: !883, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !884, line: 23, baseType: !885)
!884 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !884, line: 21, size: 32, elements: !886)
!886 = !{!887}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !885, file: !884, line: 22, baseType: !888, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !368, line: 32, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !724, line: 49, baseType: !7)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !877, file: !208, line: 614, baseType: !891, size: 32, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !884, line: 28, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !884, line: 26, size: 32, elements: !893)
!893 = !{!894}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !892, file: !884, line: 27, baseType: !895, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !368, line: 33, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !724, line: 50, baseType: !7)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !877, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !877, file: !208, line: 622, baseType: !899, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !902)
!902 = !{!903, !907, !917, !921, !927, !931, !937, !941, !945, !949, !953, !954, !960, !964, !988, !1017, !1027, !1033, !1038, !1042, !1043}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !901, file: !208, line: 1865, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!842, !876, !842, !7}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !901, file: !208, line: 1866, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!386, !842, !876, !911}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !913, line: 10, size: 128, elements: !914)
!913 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !912, file: !913, line: 11, baseType: !405, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !912, file: !913, line: 12, baseType: !363, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !901, file: !208, line: 1867, baseType: !918, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!377, !876, !377}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !901, file: !208, line: 1868, baseType: !922, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!925, !876, !377}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !901, file: !208, line: 1870, baseType: !928, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!377, !842, !369, !377}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !901, file: !208, line: 1872, baseType: !932, size: 64, offset: 320)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!377, !876, !842, !880, !935}
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !368, line: 30, baseType: !936)
!936 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !901, file: !208, line: 1873, baseType: !938, size: 64, offset: 384)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!377, !842, !876, !842}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !901, file: !208, line: 1874, baseType: !942, size: 64, offset: 448)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!377, !876, !842}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !901, file: !208, line: 1875, baseType: !946, size: 64, offset: 512)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!377, !876, !842, !386}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !901, file: !208, line: 1876, baseType: !950, size: 64, offset: 576)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!377, !876, !842, !880}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !901, file: !208, line: 1877, baseType: !942, size: 64, offset: 640)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !901, file: !208, line: 1878, baseType: !955, size: 64, offset: 704)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!377, !876, !842, !880, !958}
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !368, line: 16, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !368, line: 13, baseType: !545)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !901, file: !208, line: 1879, baseType: !961, size: 64, offset: 768)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!377, !876, !842, !876, !842, !7}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !901, file: !208, line: 1881, baseType: !965, size: 64, offset: 832)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!377, !842, !968}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !970)
!970 = !{!971, !972, !973, !974, !975, !978, !985, !986, !987}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !969, file: !208, line: 220, baseType: !7, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !969, file: !208, line: 221, baseType: !880, size: 16, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !969, file: !208, line: 222, baseType: !883, size: 32, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !969, file: !208, line: 223, baseType: !891, size: 32, offset: 96)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !969, file: !208, line: 224, baseType: !976, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !368, line: 46, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !724, line: 88, baseType: !672)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !969, file: !208, line: 225, baseType: !979, size: 128, offset: 192)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !980, line: 13, size: 128, elements: !981)
!980 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!981 = !{!982, !984}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !979, file: !980, line: 14, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !980, line: 8, baseType: !671)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !979, file: !980, line: 15, baseType: !371, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !969, file: !208, line: 226, baseType: !979, size: 128, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !969, file: !208, line: 227, baseType: !979, size: 128, offset: 448)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !969, file: !208, line: 234, baseType: !812, size: 64, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !901, file: !208, line: 1882, baseType: !989, size: 64, offset: 896)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!377, !992, !994, !545, !7}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !996, line: 22, size: 1152, elements: !997)
!996 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!997 = !{!998, !999, !1000, !1001, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !995, file: !996, line: 23, baseType: !545, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !995, file: !996, line: 24, baseType: !880, size: 16, offset: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !995, file: !996, line: 25, baseType: !7, size: 32, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !995, file: !996, line: 26, baseType: !1002, size: 32, offset: 96)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !368, line: 104, baseType: !545)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !995, file: !996, line: 27, baseType: !372, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !995, file: !996, line: 28, baseType: !372, size: 64, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !995, file: !996, line: 37, baseType: !372, size: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !995, file: !996, line: 38, baseType: !958, size: 32, offset: 320)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !995, file: !996, line: 39, baseType: !958, size: 32, offset: 352)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !995, file: !996, line: 40, baseType: !883, size: 32, offset: 384)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !995, file: !996, line: 41, baseType: !891, size: 32, offset: 416)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !995, file: !996, line: 42, baseType: !976, size: 64, offset: 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !995, file: !996, line: 43, baseType: !979, size: 128, offset: 512)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !995, file: !996, line: 44, baseType: !979, size: 128, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !995, file: !996, line: 45, baseType: !979, size: 128, offset: 768)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !995, file: !996, line: 46, baseType: !979, size: 128, offset: 896)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !995, file: !996, line: 47, baseType: !372, size: 64, offset: 1024)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !995, file: !996, line: 48, baseType: !372, size: 64, offset: 1088)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !901, file: !208, line: 1883, baseType: !1018, size: 64, offset: 960)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!1021, !842, !369, !1024}
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !368, line: 60, baseType: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !724, line: 73, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !724, line: 15, baseType: !371)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !368, line: 55, baseType: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !724, line: 72, baseType: !1026)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !724, line: 16, baseType: !362)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !901, file: !208, line: 1884, baseType: !1028, size: 64, offset: 1024)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!377, !876, !1031, !372, !372}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !901, file: !208, line: 1886, baseType: !1034, size: 64, offset: 1088)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!377, !876, !1037, !377}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !901, file: !208, line: 1887, baseType: !1039, size: 64, offset: 1152)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!377, !876, !842, !812, !7, !880}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !901, file: !208, line: 1890, baseType: !950, size: 64, offset: 1216)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !901, file: !208, line: 1891, baseType: !1044, size: 64, offset: 1280)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!377, !876, !925, !377}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !877, file: !208, line: 623, baseType: !1048, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1105, !1442, !1530, !1613, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1629, !1633, !1634, !1637, !1640, !1643, !1644, !1645, !1686, !1718, !1719, !1720, !1721, !1722, !1723, !1726, !1728, !1737, !1738, !1740, !1741, !1742, !1801, !1802, !1817, !1818, !1819, !1820, !1821, !1825, !1826, !1829, !1844, !1845, !1846, !1857, !1858, !1859, !1860, !1861, !1862}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1049, file: !208, line: 1417, baseType: !636, size: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1049, file: !208, line: 1418, baseType: !958, size: 32, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1049, file: !208, line: 1419, baseType: !420, size: 8, offset: 160)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1049, file: !208, line: 1420, baseType: !362, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1049, file: !208, line: 1421, baseType: !976, size: 64, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1049, file: !208, line: 1422, baseType: !1057, size: 64, offset: 320)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1069, !1073, !1077, !1081, !1082, !1083, !1093, !1096, !1097, !1098, !1102, !1103, !1104}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1058, file: !208, line: 2229, baseType: !386, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1058, file: !208, line: 2230, baseType: !377, size: 32, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1058, file: !208, line: 2238, baseType: !1063, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!377, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1068, line: 28, flags: DIFlagFwdDecl)
!1068 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1058, file: !208, line: 2239, baseType: !1070, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1072)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1058, file: !208, line: 2240, baseType: !1074, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!842, !1057, !377, !386, !363}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1058, file: !208, line: 2242, baseType: !1078, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !1048}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1058, file: !208, line: 2243, baseType: !364, size: 64, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1058, file: !208, line: 2244, baseType: !1057, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1058, file: !208, line: 2245, baseType: !1084, size: 64, offset: 512)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !368, line: 182, size: 64, elements: !1085)
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1084, file: !368, line: 183, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !368, line: 186, size: 128, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1088, file: !368, line: 187, baseType: !1087, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1088, file: !368, line: 187, baseType: !1092, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1058, file: !208, line: 2247, baseType: !1094, offset: 576)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1095, line: 187, elements: !575)
!1095 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1058, file: !208, line: 2248, baseType: !1094, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1058, file: !208, line: 2249, baseType: !1094, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1058, file: !208, line: 2250, baseType: !1099, offset: 576)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, elements: !1100)
!1100 = !{!1101}
!1101 = !DISubrange(count: 3)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1058, file: !208, line: 2252, baseType: !1094, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1058, file: !208, line: 2253, baseType: !1094, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1058, file: !208, line: 2254, baseType: !1094, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1049, file: !208, line: 1423, baseType: !1106, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1109)
!1109 = !{!1110, !1114, !1118, !1119, !1123, !1129, !1133, !1134, !1135, !1139, !1143, !1144, !1145, !1146, !1152, !1157, !1158, !1164, !1165, !1166, !1167, !1426, !1441}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1108, file: !208, line: 1936, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!876, !1048}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1108, file: !208, line: 1937, baseType: !1115, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !876}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1108, file: !208, line: 1938, baseType: !1115, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1108, file: !208, line: 1940, baseType: !1120, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !876, !377}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1108, file: !208, line: 1941, baseType: !1124, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!377, !876, !1127}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1108, file: !208, line: 1942, baseType: !1130, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!377, !876}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1108, file: !208, line: 1943, baseType: !1115, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1108, file: !208, line: 1944, baseType: !1078, size: 64, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1108, file: !208, line: 1945, baseType: !1136, size: 64, offset: 512)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!377, !1048, !377}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1108, file: !208, line: 1946, baseType: !1140, size: 64, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!377, !1048}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1108, file: !208, line: 1947, baseType: !1140, size: 64, offset: 640)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1108, file: !208, line: 1948, baseType: !1140, size: 64, offset: 704)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1108, file: !208, line: 1949, baseType: !1140, size: 64, offset: 768)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1108, file: !208, line: 1950, baseType: !1147, size: 64, offset: 832)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!377, !842, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1108, file: !208, line: 1951, baseType: !1153, size: 64, offset: 896)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!377, !1048, !1156, !369}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1108, file: !208, line: 1952, baseType: !1078, size: 64, offset: 960)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1108, file: !208, line: 1954, baseType: !1159, size: 64, offset: 1024)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!377, !1162, !842}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !790, line: 539, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1108, file: !208, line: 1955, baseType: !1159, size: 64, offset: 1088)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1108, file: !208, line: 1956, baseType: !1159, size: 64, offset: 1152)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1108, file: !208, line: 1957, baseType: !1159, size: 64, offset: 1216)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1108, file: !208, line: 1963, baseType: !1168, size: 64, offset: 1280)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!377, !1048, !1171, !367}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !772, line: 68, size: 512, align: 128, elements: !1173)
!1173 = !{!1174, !1175, !1418, !1425}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1172, file: !772, line: 69, baseType: !362, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !772, line: 77, baseType: !1176, size: 320, offset: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1172, file: !772, line: 77, size: 320, elements: !1177)
!1177 = !{!1178, !1350, !1355, !1383, !1391, !1397, !1410, !1417}
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !772, line: 78, baseType: !1179, size: 320)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !772, line: 78, size: 320, elements: !1180)
!1180 = !{!1181, !1182, !1348, !1349}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1179, file: !772, line: 84, baseType: !636, size: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1179, file: !772, line: 86, baseType: !1183, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1185)
!1185 = !{!1186, !1187, !1201, !1202, !1203, !1204, !1218, !1219, !1220, !1221, !1341, !1342, !1345, !1346, !1347}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1184, file: !208, line: 452, baseType: !876, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1184, file: !208, line: 453, baseType: !1188, size: 128, offset: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1189, line: 292, size: 128, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1190 = !{!1191, !1199, !1200}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1188, file: !1189, line: 293, baseType: !1192)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !568, line: 83, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !568, line: 71, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !568, line: 72, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !568, line: 72, elements: !1197)
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1196, file: !568, line: 73, baseType: !569)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1188, file: !1189, line: 295, baseType: !367, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1188, file: !1189, line: 296, baseType: !363, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1184, file: !208, line: 454, baseType: !367, size: 32, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1184, file: !208, line: 455, baseType: !611, size: 32, offset: 224)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1184, file: !208, line: 460, baseType: !577, size: 128, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1184, file: !208, line: 461, baseType: !1205, size: 256, offset: 384)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1206, line: 35, size: 256, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1207 = !{!1208, !1215, !1216, !1217}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1205, file: !1206, line: 36, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1210, line: 13, baseType: !1211)
!1210 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !368, line: 175, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 173, size: 64, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1212, file: !368, line: 174, baseType: !670, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1205, file: !1206, line: 42, baseType: !1209, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1205, file: !1206, line: 46, baseType: !567, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1205, file: !1206, line: 47, baseType: !636, size: 128, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1184, file: !208, line: 462, baseType: !362, size: 64, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1184, file: !208, line: 463, baseType: !362, size: 64, offset: 704)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1184, file: !208, line: 464, baseType: !362, size: 64, offset: 768)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1184, file: !208, line: 465, baseType: !1222, size: 64, offset: 832)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1225)
!1225 = !{!1226, !1230, !1234, !1238, !1242, !1246, !1252, !1258, !1262, !1267, !1271, !1275, !1279, !1305, !1309, !1315, !1316, !1317, !1321, !1326, !1330, !1337}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1224, file: !208, line: 368, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!377, !1171, !1127}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1224, file: !208, line: 369, baseType: !1231, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!377, !812, !1171}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1224, file: !208, line: 372, baseType: !1235, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!377, !1183, !1127}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1224, file: !208, line: 375, baseType: !1239, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!377, !1171}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1224, file: !208, line: 381, baseType: !1243, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!377, !812, !1183, !639, !7}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1224, file: !208, line: 383, baseType: !1247, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !1250}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1224, file: !208, line: 385, baseType: !1253, size: 64, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!377, !812, !1183, !976, !7, !7, !1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1224, file: !208, line: 388, baseType: !1259, size: 64, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!377, !812, !1183, !976, !7, !7, !1171, !363}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1224, file: !208, line: 393, baseType: !1263, size: 64, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!1266, !1183, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !368, line: 125, baseType: !372)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1224, file: !208, line: 394, baseType: !1268, size: 64, offset: 576)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !1171, !7, !7}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1224, file: !208, line: 395, baseType: !1272, size: 64, offset: 640)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!377, !1171, !367}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1224, file: !208, line: 396, baseType: !1276, size: 64, offset: 704)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !1171}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1224, file: !208, line: 397, baseType: !1280, size: 64, offset: 768)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!1021, !1283, !1303}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1292, !1293, !1294, !1295, !1296}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1284, file: !208, line: 321, baseType: !812, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1284, file: !208, line: 326, baseType: !976, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1284, file: !208, line: 327, baseType: !1289, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !1283, !371, !371}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1284, file: !208, line: 328, baseType: !363, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1284, file: !208, line: 329, baseType: !377, size: 32, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1284, file: !208, line: 330, baseType: !410, size: 16, offset: 288)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1284, file: !208, line: 331, baseType: !410, size: 16, offset: 304)
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !208, line: 332, baseType: !1297, size: 64, offset: 320)
!1297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1284, file: !208, line: 332, size: 64, elements: !1298)
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1297, file: !208, line: 333, baseType: !7, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1297, file: !208, line: 334, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1224, file: !208, line: 402, baseType: !1306, size: 64, offset: 832)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!377, !1183, !1171, !1171, !183}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1224, file: !208, line: 404, baseType: !1310, size: 64, offset: 896)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!935, !1171, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1314, line: 305, baseType: !7)
!1314 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1224, file: !208, line: 405, baseType: !1276, size: 64, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1224, file: !208, line: 406, baseType: !1239, size: 64, offset: 1024)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1224, file: !208, line: 407, baseType: !1318, size: 64, offset: 1088)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!377, !1171, !362, !362}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1224, file: !208, line: 409, baseType: !1322, size: 64, offset: 1152)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{null, !1171, !1325, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1224, file: !208, line: 410, baseType: !1327, size: 64, offset: 1216)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!377, !1183, !1171}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1224, file: !208, line: 413, baseType: !1331, size: 64, offset: 1280)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!377, !1334, !812, !1336}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1224, file: !208, line: 415, baseType: !1338, size: 64, offset: 1344)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !812}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1184, file: !208, line: 466, baseType: !362, size: 64, offset: 896)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1184, file: !208, line: 467, baseType: !1343, size: 32, offset: 960)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1344, line: 8, baseType: !545)
!1344 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1184, file: !208, line: 468, baseType: !1192, offset: 992)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1184, file: !208, line: 469, baseType: !636, size: 128, offset: 1024)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1184, file: !208, line: 470, baseType: !363, size: 64, offset: 1152)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1179, file: !772, line: 87, baseType: !362, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1179, file: !772, line: 94, baseType: !362, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !772, line: 96, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !772, line: 96, size: 64, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1351, file: !772, line: 101, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !368, line: 143, baseType: !372)
!1355 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !772, line: 103, baseType: !1356, size: 320)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !772, line: 103, size: 320, elements: !1357)
!1357 = !{!1358, !1368, !1371, !1372}
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !772, line: 104, baseType: !1359, size: 128)
!1359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1356, file: !772, line: 104, size: 128, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1359, file: !772, line: 105, baseType: !636, size: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1359, file: !772, line: 106, baseType: !1363, size: 128)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1359, file: !772, line: 106, size: 128, elements: !1364)
!1364 = !{!1365, !1366, !1367}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1363, file: !772, line: 107, baseType: !1171, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1363, file: !772, line: 109, baseType: !377, size: 32, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1363, file: !772, line: 110, baseType: !377, size: 32, offset: 96)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1356, file: !772, line: 117, baseType: !1369, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !772, line: 117, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1356, file: !772, line: 119, baseType: !363, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !772, line: 120, baseType: !1373, size: 64, offset: 256)
!1373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1356, file: !772, line: 120, size: 64, elements: !1374)
!1374 = !{!1375, !1376, !1377}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1373, file: !772, line: 121, baseType: !363, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1373, file: !772, line: 122, baseType: !362, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1373, file: !772, line: 123, baseType: !1378, size: 32)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1373, file: !772, line: 123, size: 32, elements: !1379)
!1379 = !{!1380, !1381, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1378, file: !772, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1378, file: !772, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1378, file: !772, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !772, line: 130, baseType: !1384, size: 192)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !772, line: 130, size: 192, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389, !1390}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1384, file: !772, line: 131, baseType: !362, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1384, file: !772, line: 134, baseType: !420, size: 8, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1384, file: !772, line: 135, baseType: !420, size: 8, offset: 72)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1384, file: !772, line: 136, baseType: !611, size: 32, offset: 96)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1384, file: !772, line: 137, baseType: !7, size: 32, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !772, line: 139, baseType: !1392, size: 256)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !772, line: 139, size: 256, elements: !1393)
!1393 = !{!1394, !1395, !1396}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1392, file: !772, line: 140, baseType: !362, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1392, file: !772, line: 141, baseType: !611, size: 32, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1392, file: !772, line: 143, baseType: !636, size: 128, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !772, line: 145, baseType: !1398, size: 256)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !772, line: 145, size: 256, elements: !1399)
!1399 = !{!1400, !1401, !1403, !1404, !1409}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1398, file: !772, line: 146, baseType: !362, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1398, file: !772, line: 147, baseType: !1402, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !790, line: 509, baseType: !1171)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1398, file: !772, line: 148, baseType: !362, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !772, line: 149, baseType: !1405, size: 64, offset: 192)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1398, file: !772, line: 149, size: 64, elements: !1406)
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1405, file: !772, line: 150, baseType: !770, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1405, file: !772, line: 151, baseType: !611, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1398, file: !772, line: 156, baseType: !1192, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !772, line: 159, baseType: !1411, size: 128)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !772, line: 159, size: 128, elements: !1412)
!1412 = !{!1413, !1416}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1411, file: !772, line: 161, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !772, line: 161, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1411, file: !772, line: 162, baseType: !363, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1176, file: !772, line: 176, baseType: !825, size: 128, align: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !772, line: 179, baseType: !1419, size: 32, offset: 384)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1172, file: !772, line: 179, size: 32, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1419, file: !772, line: 184, baseType: !611, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1419, file: !772, line: 192, baseType: !7, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1419, file: !772, line: 194, baseType: !7, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1419, file: !772, line: 195, baseType: !377, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1172, file: !772, line: 199, baseType: !611, size: 32, offset: 416)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1108, file: !208, line: 1964, baseType: !1427, size: 64, offset: 1344)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!371, !1048, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1432, line: 12, size: 256, elements: !1433)
!1432 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1433 = !{!1434, !1435, !1436, !1437, !1438}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1431, file: !1432, line: 13, baseType: !367, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1431, file: !1432, line: 16, baseType: !377, size: 32, offset: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1431, file: !1432, line: 23, baseType: !362, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1431, file: !1432, line: 30, baseType: !362, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1431, file: !1432, line: 33, baseType: !1439, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !772, line: 27, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1108, file: !208, line: 1966, baseType: !1427, size: 64, offset: 1408)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1049, file: !208, line: 1424, baseType: !1443, size: 64, offset: 448)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !1446)
!1446 = !{!1447, !1499, !1503, !1507, !1508, !1509, !1510, !1511, !1516, !1521, !1525}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1445, file: !202, line: 323, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!377, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1465, !1466, !1467, !1468, !1484, !1485, !1486}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1452, file: !202, line: 295, baseType: !1088, size: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1452, file: !202, line: 296, baseType: !636, size: 128, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1452, file: !202, line: 297, baseType: !636, size: 128, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1452, file: !202, line: 298, baseType: !636, size: 128, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1452, file: !202, line: 299, baseType: !1459, size: 192, offset: 512)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1460, line: 53, size: 192, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1459, file: !1460, line: 54, baseType: !1209, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1459, file: !1460, line: 55, baseType: !1192, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1459, file: !1460, line: 59, baseType: !636, size: 128, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1452, file: !202, line: 300, baseType: !1192, offset: 704)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1452, file: !202, line: 301, baseType: !611, size: 32, offset: 704)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1452, file: !202, line: 302, baseType: !1048, size: 64, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1452, file: !202, line: 303, baseType: !1469, size: 64, offset: 832)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !1470)
!1470 = !{!1471, !1483}
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !202, line: 69, baseType: !1472, size: 32)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !202, line: 69, size: 32, elements: !1473)
!1473 = !{!1474, !1475, !1476}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1472, file: !202, line: 70, baseType: !883, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1472, file: !202, line: 71, baseType: !891, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1472, file: !202, line: 72, baseType: !1477, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1478, line: 24, baseType: !1479)
!1478 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1478, line: 22, size: 32, elements: !1480)
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1479, file: !1478, line: 23, baseType: !1482, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1478, line: 20, baseType: !889)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1469, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1452, file: !202, line: 304, baseType: !976, size: 64, offset: 896)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1452, file: !202, line: 305, baseType: !362, size: 64, offset: 960)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1452, file: !202, line: 306, baseType: !1487, size: 576, offset: 1024)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !1488)
!1488 = !{!1489, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1487, file: !202, line: 206, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !672)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1487, file: !202, line: 207, baseType: !1490, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1487, file: !202, line: 208, baseType: !1490, size: 64, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1487, file: !202, line: 209, baseType: !1490, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1487, file: !202, line: 210, baseType: !1490, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1487, file: !202, line: 211, baseType: !1490, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1487, file: !202, line: 212, baseType: !1490, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1487, file: !202, line: 213, baseType: !983, size: 64, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1487, file: !202, line: 214, baseType: !983, size: 64, offset: 512)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1445, file: !202, line: 324, baseType: !1500, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!1451, !1048, !377}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1445, file: !202, line: 325, baseType: !1504, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !1451}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1445, file: !202, line: 326, baseType: !1448, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1445, file: !202, line: 327, baseType: !1448, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1445, file: !202, line: 328, baseType: !1448, size: 64, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1445, file: !202, line: 329, baseType: !1136, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1445, file: !202, line: 332, baseType: !1512, size: 64, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!1515, !876}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1445, file: !202, line: 333, baseType: !1517, size: 64, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!377, !876, !1520}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1445, file: !202, line: 335, baseType: !1522, size: 64, offset: 576)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!377, !876, !1515}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1445, file: !202, line: 337, baseType: !1526, size: 64, offset: 640)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!377, !1048, !1529}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1049, file: !208, line: 1425, baseType: !1531, size: 64, offset: 512)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !1534)
!1534 = !{!1535, !1539, !1540, !1544, !1545, !1546, !1561, !1584, !1588, !1589, !1612}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1533, file: !202, line: 429, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!377, !1048, !377, !377, !992}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1533, file: !202, line: 430, baseType: !1136, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1533, file: !202, line: 431, baseType: !1541, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!377, !1048, !7}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1533, file: !202, line: 432, baseType: !1541, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1533, file: !202, line: 433, baseType: !1136, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1533, file: !202, line: 434, baseType: !1547, size: 64, offset: 320)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!377, !1048, !377, !1550}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1551, file: !202, line: 416, baseType: !377, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1551, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1551, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1551, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1551, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1551, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1551, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1551, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1533, file: !202, line: 435, baseType: !1562, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!377, !1048, !1469, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1566, file: !202, line: 344, baseType: !377, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1566, file: !202, line: 345, baseType: !372, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1566, file: !202, line: 346, baseType: !372, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1566, file: !202, line: 347, baseType: !372, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1566, file: !202, line: 348, baseType: !372, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1566, file: !202, line: 349, baseType: !372, size: 64, offset: 320)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1566, file: !202, line: 350, baseType: !372, size: 64, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1566, file: !202, line: 351, baseType: !670, size: 64, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1566, file: !202, line: 353, baseType: !670, size: 64, offset: 512)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1566, file: !202, line: 354, baseType: !377, size: 32, offset: 576)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1566, file: !202, line: 355, baseType: !377, size: 32, offset: 608)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1566, file: !202, line: 356, baseType: !372, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1566, file: !202, line: 357, baseType: !372, size: 64, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1566, file: !202, line: 358, baseType: !372, size: 64, offset: 768)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1566, file: !202, line: 359, baseType: !670, size: 64, offset: 832)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1566, file: !202, line: 360, baseType: !377, size: 32, offset: 896)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1533, file: !202, line: 436, baseType: !1585, size: 64, offset: 448)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!377, !1048, !1529, !1565}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1533, file: !202, line: 438, baseType: !1562, size: 64, offset: 512)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1533, file: !202, line: 439, baseType: !1590, size: 64, offset: 576)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!377, !1048, !1593}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1594, file: !202, line: 410, baseType: !7, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1594, file: !202, line: 411, baseType: !1598, size: 1344, offset: 64)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1599, size: 1344, elements: !1100)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !1600)
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1611}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1599, file: !202, line: 396, baseType: !7, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1599, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1599, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1599, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1599, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1599, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1599, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1599, file: !202, line: 404, baseType: !376, size: 64, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1599, file: !202, line: 405, baseType: !1610, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !368, line: 126, baseType: !372)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1599, file: !202, line: 406, baseType: !1610, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1533, file: !202, line: 440, baseType: !1541, size: 64, offset: 640)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1049, file: !208, line: 1426, baseType: !1614, size: 64, offset: 576)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1616)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1049, file: !208, line: 1427, baseType: !362, size: 64, offset: 640)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1049, file: !208, line: 1428, baseType: !362, size: 64, offset: 704)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1049, file: !208, line: 1429, baseType: !362, size: 64, offset: 768)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1049, file: !208, line: 1430, baseType: !842, size: 64, offset: 832)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1049, file: !208, line: 1431, baseType: !1205, size: 256, offset: 896)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1049, file: !208, line: 1432, baseType: !377, size: 32, offset: 1152)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1049, file: !208, line: 1433, baseType: !611, size: 32, offset: 1184)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1049, file: !208, line: 1437, baseType: !1625, size: 64, offset: 1216)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1049, file: !208, line: 1449, baseType: !1630, size: 64, offset: 1280)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !853, line: 34, size: 64, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1630, file: !853, line: 35, baseType: !856, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1049, file: !208, line: 1450, baseType: !636, size: 128, offset: 1344)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1049, file: !208, line: 1451, baseType: !1635, size: 64, offset: 1472)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1049, file: !208, line: 1452, baseType: !1638, size: 64, offset: 1536)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !594, line: 40, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1049, file: !208, line: 1453, baseType: !1641, size: 64, offset: 1600)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1049, file: !208, line: 1454, baseType: !1088, size: 128, offset: 1664)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1049, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1049, file: !208, line: 1456, baseType: !1646, size: 2432, offset: 1856)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1652, !1684}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1646, file: !202, line: 519, baseType: !7, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1646, file: !202, line: 520, baseType: !1205, size: 256, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1646, file: !202, line: 521, baseType: !1651, size: 192, offset: 320)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 192, elements: !1100)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1646, file: !202, line: 522, baseType: !1653, size: 1728, offset: 512)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1654, size: 1728, elements: !1100)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !1655)
!1655 = !{!1656, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1654, file: !202, line: 223, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !1659)
!1659 = !{!1660, !1661, !1674, !1675}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1658, file: !202, line: 444, baseType: !377, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1658, file: !202, line: 445, baseType: !1662, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !1665)
!1665 = !{!1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1664, file: !202, line: 311, baseType: !1136, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1664, file: !202, line: 312, baseType: !1136, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1664, file: !202, line: 313, baseType: !1136, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1664, file: !202, line: 314, baseType: !1136, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1664, file: !202, line: 315, baseType: !1448, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1664, file: !202, line: 316, baseType: !1448, size: 64, offset: 320)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1664, file: !202, line: 317, baseType: !1448, size: 64, offset: 384)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1664, file: !202, line: 318, baseType: !1526, size: 64, offset: 448)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1658, file: !202, line: 446, baseType: !364, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1658, file: !202, line: 447, baseType: !1657, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1654, file: !202, line: 224, baseType: !377, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1654, file: !202, line: 226, baseType: !636, size: 128, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1654, file: !202, line: 227, baseType: !362, size: 64, offset: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1654, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1654, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1654, file: !202, line: 230, baseType: !1490, size: 64, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1654, file: !202, line: 231, baseType: !1490, size: 64, offset: 448)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1654, file: !202, line: 232, baseType: !363, size: 64, offset: 512)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1646, file: !202, line: 523, baseType: !1685, size: 192, offset: 2240)
!1685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1662, size: 192, elements: !1100)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1049, file: !208, line: 1458, baseType: !1687, size: 2112, offset: 4288)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !1688)
!1688 = !{!1689, !1690, !1697}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1687, file: !208, line: 1411, baseType: !377, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1687, file: !208, line: 1412, baseType: !1691, size: 128, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1692, line: 40, baseType: !1693)
!1692 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1692, line: 36, size: 128, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1693, file: !1692, line: 37, baseType: !1192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1693, file: !1692, line: 38, baseType: !636, size: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1687, file: !208, line: 1413, baseType: !1698, size: 1920, offset: 192)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1699, size: 1920, elements: !1100)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1700, line: 12, size: 640, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !{!1702, !1710, !1711, !1716, !1717}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1699, file: !1700, line: 13, baseType: !1703, size: 320)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1704, line: 17, size: 320, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1705 = !{!1706, !1707, !1708, !1709}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1703, file: !1704, line: 18, baseType: !377, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1703, file: !1704, line: 19, baseType: !377, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1703, file: !1704, line: 20, baseType: !1691, size: 128, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1703, file: !1704, line: 22, baseType: !825, size: 128, align: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1699, file: !1700, line: 14, baseType: !440, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1699, file: !1700, line: 15, baseType: !1712, size: 64, offset: 384)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1713, line: 16, size: 64, elements: !1714)
!1713 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1712, file: !1713, line: 17, baseType: !592, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1699, file: !1700, line: 16, baseType: !1691, size: 128, offset: 448)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1699, file: !1700, line: 17, baseType: !611, size: 32, offset: 576)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1049, file: !208, line: 1465, baseType: !363, size: 64, offset: 6400)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1049, file: !208, line: 1468, baseType: !545, size: 32, offset: 6464)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1049, file: !208, line: 1470, baseType: !983, size: 64, offset: 6528)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1049, file: !208, line: 1471, baseType: !983, size: 64, offset: 6592)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1049, file: !208, line: 1473, baseType: !546, size: 32, offset: 6656)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1049, file: !208, line: 1474, baseType: !1724, size: 64, offset: 6720)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1049, file: !208, line: 1477, baseType: !1727, size: 256, offset: 6784)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 256, elements: !470)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1049, file: !208, line: 1478, baseType: !1729, size: 128, offset: 7040)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1730, line: 18, baseType: !1731)
!1730 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1730, line: 16, size: 128, elements: !1732)
!1732 = !{!1733}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1731, file: !1730, line: 17, baseType: !1734, size: 128)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 128, elements: !1735)
!1735 = !{!1736}
!1736 = !DISubrange(count: 16)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1049, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !1049, file: !208, line: 1481, baseType: !1739, size: 32, offset: 7200)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !368, line: 150, baseType: !7)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1049, file: !208, line: 1487, baseType: !1459, size: 192, offset: 7232)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1049, file: !208, line: 1493, baseType: !386, size: 64, offset: 7424)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1049, file: !208, line: 1495, baseType: !1743, size: 64, offset: 7488)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1745)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !840, line: 135, size: 1024, align: 512, elements: !1746)
!1746 = !{!1747, !1751, !1752, !1759, !1765, !1769, !1773, !1777, !1778, !1782, !1786, !1791, !1795}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1745, file: !840, line: 136, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!377, !842, !7}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1745, file: !840, line: 137, baseType: !1748, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1745, file: !840, line: 138, baseType: !1753, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!377, !1756, !1758}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1745, file: !840, line: 139, baseType: !1760, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!377, !1756, !7, !386, !1763}
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1745, file: !840, line: 141, baseType: !1766, size: 64, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!377, !1756}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1745, file: !840, line: 142, baseType: !1770, size: 64, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!377, !842}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1745, file: !840, line: 143, baseType: !1774, size: 64, offset: 384)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !842}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1745, file: !840, line: 144, baseType: !1774, size: 64, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1745, file: !840, line: 145, baseType: !1779, size: 64, offset: 512)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !842, !876}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1745, file: !840, line: 146, baseType: !1783, size: 64, offset: 576)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!369, !842, !369, !377}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1745, file: !840, line: 147, baseType: !1787, size: 64, offset: 640)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!838, !1790}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1745, file: !840, line: 148, baseType: !1792, size: 64, offset: 704)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!377, !992, !935}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1745, file: !840, line: 149, baseType: !1796, size: 64, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!842, !842, !1799}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !1049, file: !208, line: 1500, baseType: !377, size: 32, offset: 7552)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1049, file: !208, line: 1502, baseType: !1803, size: 448, offset: 7616)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1432, line: 60, size: 448, elements: !1804)
!1804 = !{!1805, !1810, !1811, !1812, !1813, !1814, !1815}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1803, file: !1432, line: 61, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!362, !1809, !1430}
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1803, file: !1432, line: 63, baseType: !1806, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1803, file: !1432, line: 66, baseType: !371, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1803, file: !1432, line: 67, baseType: !377, size: 32, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1803, file: !1432, line: 68, baseType: !7, size: 32, offset: 224)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1803, file: !1432, line: 71, baseType: !636, size: 128, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1803, file: !1432, line: 77, baseType: !1816, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1049, file: !208, line: 1505, baseType: !1209, size: 64, offset: 8064)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !1049, file: !208, line: 1508, baseType: !1209, size: 64, offset: 8128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1049, file: !208, line: 1511, baseType: !377, size: 32, offset: 8192)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1049, file: !208, line: 1514, baseType: !1343, size: 32, offset: 8224)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1049, file: !208, line: 1517, baseType: !1822, size: 64, offset: 8256)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1824, line: 18, flags: DIFlagFwdDecl)
!1824 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1049, file: !208, line: 1518, baseType: !1084, size: 64, offset: 8320)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1049, file: !208, line: 1525, baseType: !1827, size: 64, offset: 8384)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !884, line: 18, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1049, file: !208, line: 1532, baseType: !1830, size: 64, offset: 8448)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1831, line: 52, size: 64, elements: !1832)
!1831 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1830, file: !1831, line: 53, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1831, line: 40, size: 256, elements: !1836)
!1836 = !{!1837, !1838, !1843}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1835, file: !1831, line: 42, baseType: !1192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1835, file: !1831, line: 44, baseType: !1839, size: 192)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1831, line: 28, size: 192, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1839, file: !1831, line: 29, baseType: !636, size: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1839, file: !1831, line: 31, baseType: !371, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1835, file: !1831, line: 49, baseType: !371, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1049, file: !208, line: 1533, baseType: !1830, size: 64, offset: 8512)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1049, file: !208, line: 1534, baseType: !825, size: 128, align: 64, offset: 8576)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1049, file: !208, line: 1535, baseType: !1847, size: 256, offset: 8704)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1824, line: 102, size: 256, elements: !1848)
!1848 = !{!1849, !1850, !1851}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1847, file: !1824, line: 103, baseType: !1209, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1847, file: !1824, line: 104, baseType: !636, size: 128, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1847, file: !1824, line: 105, baseType: !1852, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1824, line: 21, baseType: !1853)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{null, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1049, file: !208, line: 1537, baseType: !1459, size: 192, offset: 8960)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1049, file: !208, line: 1542, baseType: !377, size: 32, offset: 9152)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1049, file: !208, line: 1545, baseType: !1192, offset: 9184)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1049, file: !208, line: 1546, baseType: !636, size: 128, offset: 9216)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1049, file: !208, line: 1548, baseType: !1192, offset: 9344)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1049, file: !208, line: 1549, baseType: !636, size: 128, offset: 9344)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !877, file: !208, line: 624, baseType: !1183, size: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !877, file: !208, line: 631, baseType: !362, size: 64, offset: 320)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !208, line: 639, baseType: !1866, size: 32, offset: 384)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !208, line: 639, size: 32, elements: !1867)
!1867 = !{!1868, !1870}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1866, file: !208, line: 640, baseType: !1869, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1866, file: !208, line: 641, baseType: !7, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !877, file: !208, line: 643, baseType: !958, size: 32, offset: 416)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !877, file: !208, line: 644, baseType: !976, size: 64, offset: 448)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !877, file: !208, line: 645, baseType: !979, size: 128, offset: 512)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !877, file: !208, line: 646, baseType: !979, size: 128, offset: 640)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !877, file: !208, line: 647, baseType: !979, size: 128, offset: 768)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !877, file: !208, line: 648, baseType: !1192, offset: 896)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !877, file: !208, line: 649, baseType: !412, size: 16, offset: 896)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !877, file: !208, line: 650, baseType: !418, size: 8, offset: 912)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !877, file: !208, line: 651, baseType: !418, size: 8, offset: 920)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !877, file: !208, line: 652, baseType: !1610, size: 64, offset: 960)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !877, file: !208, line: 659, baseType: !362, size: 64, offset: 1024)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !877, file: !208, line: 660, baseType: !1205, size: 256, offset: 1088)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !877, file: !208, line: 662, baseType: !362, size: 64, offset: 1344)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !877, file: !208, line: 663, baseType: !362, size: 64, offset: 1408)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !877, file: !208, line: 665, baseType: !1088, size: 128, offset: 1472)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !877, file: !208, line: 666, baseType: !636, size: 128, offset: 1600)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !877, file: !208, line: 675, baseType: !636, size: 128, offset: 1728)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !877, file: !208, line: 676, baseType: !636, size: 128, offset: 1856)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !877, file: !208, line: 677, baseType: !636, size: 128, offset: 1984)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !208, line: 678, baseType: !1891, size: 128, offset: 2112)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !208, line: 678, size: 128, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1891, file: !208, line: 679, baseType: !1084, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1891, file: !208, line: 680, baseType: !825, size: 128, align: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !877, file: !208, line: 682, baseType: !1211, size: 64, offset: 2240)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !877, file: !208, line: 683, baseType: !1211, size: 64, offset: 2304)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !877, file: !208, line: 684, baseType: !611, size: 32, offset: 2368)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !877, file: !208, line: 685, baseType: !611, size: 32, offset: 2400)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !877, file: !208, line: 686, baseType: !611, size: 32, offset: 2432)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !877, file: !208, line: 688, baseType: !611, size: 32, offset: 2464)
!1901 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !208, line: 690, baseType: !1902, size: 64, offset: 2496)
!1902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !208, line: 690, size: 64, elements: !1903)
!1903 = !{!1904, !2141}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1902, file: !208, line: 691, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !1908)
!1908 = !{!1909, !1910, !1914, !1919, !1923, !1924, !1925, !1929, !1942, !1943, !1960, !1964, !1965, !1969, !1970, !1974, !1979, !1980, !1984, !1988, !2096, !2100, !2104, !2108, !2109, !2115, !2119, !2124, !2128, !2132, !2136, !2140}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1907, file: !208, line: 1823, baseType: !364, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1907, file: !208, line: 1824, baseType: !1911, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!976, !812, !976, !377}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1907, file: !208, line: 1825, baseType: !1915, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!1021, !812, !369, !1024, !1918}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1907, file: !208, line: 1826, baseType: !1920, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!1021, !812, !386, !1024, !1918}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1907, file: !208, line: 1827, baseType: !1280, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1907, file: !208, line: 1828, baseType: !1280, size: 64, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1907, file: !208, line: 1829, baseType: !1926, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!377, !1283, !935}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1907, file: !208, line: 1830, baseType: !1930, size: 64, offset: 448)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!377, !812, !1933}
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !1935)
!1935 = !{!1936, !1941}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1934, file: !208, line: 1777, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !1938)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!377, !1933, !386, !377, !976, !372, !7}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1934, file: !208, line: 1778, baseType: !976, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1907, file: !208, line: 1831, baseType: !1930, size: 64, offset: 512)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1907, file: !208, line: 1832, baseType: !1944, size: 64, offset: 576)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1947, !812, !1949}
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1948, line: 52, baseType: !7)
!1948 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1951, line: 43, size: 128, elements: !1952)
!1951 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1952 = !{!1953, !1959}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1950, file: !1951, line: 44, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1951, line: 37, baseType: !1955)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !812, !1958, !1949}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1950, file: !1951, line: 45, baseType: !1947, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1907, file: !208, line: 1833, baseType: !1961, size: 64, offset: 640)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!371, !812, !7, !362}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1907, file: !208, line: 1834, baseType: !1961, size: 64, offset: 704)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1907, file: !208, line: 1835, baseType: !1966, size: 64, offset: 768)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!377, !812, !778}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1907, file: !208, line: 1836, baseType: !362, size: 64, offset: 832)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1907, file: !208, line: 1837, baseType: !1971, size: 64, offset: 896)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!377, !876, !812}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1907, file: !208, line: 1838, baseType: !1975, size: 64, offset: 960)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!377, !812, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !363)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1907, file: !208, line: 1839, baseType: !1971, size: 64, offset: 1024)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1907, file: !208, line: 1840, baseType: !1981, size: 64, offset: 1088)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!377, !812, !976, !976, !377}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1907, file: !208, line: 1841, baseType: !1985, size: 64, offset: 1152)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!377, !377, !812, !377}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1907, file: !208, line: 1842, baseType: !1989, size: 64, offset: 1216)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!377, !812, !377, !1992}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !1994)
!1994 = !{!1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2026, !2027, !2028, !2041, !2072}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1993, file: !208, line: 1063, baseType: !1992, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1993, file: !208, line: 1064, baseType: !636, size: 128, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1993, file: !208, line: 1065, baseType: !1088, size: 128, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1993, file: !208, line: 1066, baseType: !636, size: 128, offset: 320)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1993, file: !208, line: 1069, baseType: !636, size: 128, offset: 448)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1993, file: !208, line: 1072, baseType: !1978, size: 64, offset: 576)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1993, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1993, file: !208, line: 1074, baseType: !420, size: 8, offset: 672)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1993, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1993, file: !208, line: 1076, baseType: !377, size: 32, offset: 736)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1993, file: !208, line: 1077, baseType: !1691, size: 128, offset: 768)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1993, file: !208, line: 1078, baseType: !812, size: 64, offset: 896)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1993, file: !208, line: 1079, baseType: !976, size: 64, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1993, file: !208, line: 1080, baseType: !976, size: 64, offset: 1024)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1993, file: !208, line: 1082, baseType: !2010, size: 64, offset: 1088)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !2012)
!2012 = !{!2013, !2021, !2022, !2023, !2024, !2025}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2011, file: !208, line: 1315, baseType: !2014)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2015, line: 20, baseType: !2016)
!2015 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2015, line: 11, elements: !2017)
!2017 = !{!2018}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2016, file: !2015, line: 12, baseType: !2019)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !573, line: 33, baseType: !2020)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 31, elements: !575)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2011, file: !208, line: 1316, baseType: !377, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2011, file: !208, line: 1317, baseType: !377, size: 32, offset: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2011, file: !208, line: 1318, baseType: !2010, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2011, file: !208, line: 1319, baseType: !812, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2011, file: !208, line: 1320, baseType: !825, size: 128, align: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1993, file: !208, line: 1084, baseType: !362, size: 64, offset: 1152)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1993, file: !208, line: 1085, baseType: !362, size: 64, offset: 1216)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1993, file: !208, line: 1087, baseType: !2029, size: 64, offset: 1280)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2031)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !2032)
!2032 = !{!2033, !2037}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2031, file: !208, line: 1012, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !1992, !1992}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2031, file: !208, line: 1013, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{null, !1992}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1993, file: !208, line: 1088, baseType: !2042, size: 64, offset: 1344)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2044)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !2045)
!2045 = !{!2046, !2050, !2054, !2055, !2059, !2063, !2067, !2071}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2044, file: !208, line: 1017, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!1978, !1978}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2044, file: !208, line: 1018, baseType: !2051, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !1978}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2044, file: !208, line: 1019, baseType: !2038, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2044, file: !208, line: 1020, baseType: !2056, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!377, !1992, !377}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2044, file: !208, line: 1021, baseType: !2060, size: 64, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!935, !1992}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2044, file: !208, line: 1022, baseType: !2064, size: 64, offset: 320)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!377, !1992, !377, !639}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2044, file: !208, line: 1023, baseType: !2068, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !1992, !1257}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2044, file: !208, line: 1024, baseType: !2060, size: 64, offset: 448)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1993, file: !208, line: 1097, baseType: !2073, size: 256, offset: 1408)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !208, line: 1089, size: 256, elements: !2074)
!2074 = !{!2075, !2084, !2090}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2073, file: !208, line: 1090, baseType: !2076, size: 256)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2077, line: 10, size: 256, elements: !2078)
!2077 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2078 = !{!2079, !2080, !2083}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2076, file: !2077, line: 11, baseType: !545, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2076, file: !2077, line: 12, baseType: !2081, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2077, line: 5, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2076, file: !2077, line: 13, baseType: !636, size: 128, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2073, file: !208, line: 1091, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2077, line: 17, size: 64, elements: !2086)
!2086 = !{!2087}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2085, file: !2077, line: 18, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2077, line: 16, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2073, file: !208, line: 1096, baseType: !2091, size: 192)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2073, file: !208, line: 1092, size: 192, elements: !2092)
!2092 = !{!2093, !2094, !2095}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2091, file: !208, line: 1093, baseType: !636, size: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2091, file: !208, line: 1094, baseType: !377, size: 32, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2091, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1907, file: !208, line: 1843, baseType: !2097, size: 64, offset: 1280)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!1021, !812, !1171, !377, !1024, !1918, !377}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1907, file: !208, line: 1844, baseType: !2101, size: 64, offset: 1344)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!362, !812, !362, !362, !362, !362}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1907, file: !208, line: 1845, baseType: !2105, size: 64, offset: 1408)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!377, !377}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1907, file: !208, line: 1846, baseType: !1989, size: 64, offset: 1472)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1907, file: !208, line: 1847, baseType: !2110, size: 64, offset: 1536)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!1021, !2113, !812, !1918, !1024, !7}
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !594, line: 53, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1907, file: !208, line: 1848, baseType: !2116, size: 64, offset: 1600)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!1021, !812, !1918, !2113, !1024, !7}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1907, file: !208, line: 1849, baseType: !2120, size: 64, offset: 1664)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!377, !812, !371, !2123, !1257}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1907, file: !208, line: 1850, baseType: !2125, size: 64, offset: 1728)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!371, !812, !377, !976, !976}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1907, file: !208, line: 1852, baseType: !2129, size: 64, offset: 1792)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !1162, !812}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1907, file: !208, line: 1856, baseType: !2133, size: 64, offset: 1856)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!1021, !812, !976, !812, !976, !1024, !7}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1907, file: !208, line: 1858, baseType: !2137, size: 64, offset: 1920)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!976, !812, !976, !812, !976, !976, !7}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1907, file: !208, line: 1861, baseType: !1981, size: 64, offset: 1984)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1902, file: !208, line: 692, baseType: !1115, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !877, file: !208, line: 694, baseType: !2143, size: 64, offset: 2560)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2144, file: !208, line: 1101, baseType: !1192)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2144, file: !208, line: 1102, baseType: !636, size: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2144, file: !208, line: 1103, baseType: !636, size: 128, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2144, file: !208, line: 1104, baseType: !636, size: 128, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !877, file: !208, line: 695, baseType: !1184, size: 1216, align: 64, offset: 2624)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !877, file: !208, line: 696, baseType: !636, size: 128, offset: 3840)
!2152 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !208, line: 697, baseType: !2153, size: 64, offset: 3968)
!2153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !208, line: 697, size: 64, elements: !2154)
!2154 = !{!2155, !2156, !2157, !2468, !2469}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2153, file: !208, line: 698, baseType: !2113, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2153, file: !208, line: 699, baseType: !1635, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2153, file: !208, line: 700, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2160, line: 14, size: 832, elements: !2161)
!2160 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2161 = !{!2162, !2463, !2464, !2465, !2466, !2467}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2159, file: !2160, line: 15, baseType: !2163, size: 512)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2164, line: 64, size: 512, elements: !2165)
!2164 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2165 = !{!2166, !2167, !2168, !2170, !2212, !2314, !2453, !2458, !2459, !2460, !2461, !2462}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2163, file: !2164, line: 65, baseType: !386, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2163, file: !2164, line: 66, baseType: !636, size: 128, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2163, file: !2164, line: 67, baseType: !2169, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2163, file: !2164, line: 68, baseType: !2171, size: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2164, line: 192, size: 704, elements: !2173)
!2173 = !{!2174, !2175, !2176, !2177}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2172, file: !2164, line: 193, baseType: !636, size: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2172, file: !2164, line: 194, baseType: !1192, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2172, file: !2164, line: 195, baseType: !2163, size: 512, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2172, file: !2164, line: 196, baseType: !2178, size: 64, offset: 640)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2180)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2164, line: 156, size: 192, elements: !2181)
!2181 = !{!2182, !2187, !2192}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2180, file: !2164, line: 157, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2184)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!377, !2171, !2169}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2180, file: !2164, line: 158, baseType: !2188, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2189)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!386, !2171, !2169}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2180, file: !2164, line: 159, baseType: !2193, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!377, !2171, !2169, !2197}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2164, line: 148, size: 20736, elements: !2199)
!2199 = !{!2200, !2202, !2206, !2207, !2211}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2198, file: !2164, line: 149, baseType: !2201, size: 192)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 192, elements: !1100)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2198, file: !2164, line: 150, baseType: !2203, size: 4096, offset: 192)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 4096, elements: !2204)
!2204 = !{!2205}
!2205 = !DISubrange(count: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2198, file: !2164, line: 151, baseType: !377, size: 32, offset: 4288)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2198, file: !2164, line: 152, baseType: !2208, size: 16384, offset: 4320)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 16384, elements: !2209)
!2209 = !{!2210}
!2210 = !DISubrange(count: 2048)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2198, file: !2164, line: 153, baseType: !377, size: 32, offset: 20704)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2163, file: !2164, line: 69, baseType: !2213, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2164, line: 138, size: 448, elements: !2215)
!2215 = !{!2216, !2220, !2239, !2241, !2274, !2304, !2308}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2214, file: !2164, line: 139, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2169}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2214, file: !2164, line: 140, baseType: !2221, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2224, line: 230, size: 128, elements: !2225)
!2224 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2225 = !{!2226, !2235}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2223, file: !2224, line: 231, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!1021, !2169, !2230, !369}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2224, line: 30, size: 128, elements: !2232)
!2232 = !{!2233, !2234}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2231, file: !2224, line: 31, baseType: !386, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2231, file: !2224, line: 32, baseType: !880, size: 16, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2223, file: !2224, line: 232, baseType: !2236, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!1021, !2169, !2230, !386, !1024}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2214, file: !2164, line: 141, baseType: !2240, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2214, file: !2164, line: 142, baseType: !2242, size: 64, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2245)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2224, line: 84, size: 320, elements: !2246)
!2246 = !{!2247, !2248, !2252, !2271, !2272}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2245, file: !2224, line: 85, baseType: !386, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2245, file: !2224, line: 86, baseType: !2249, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!880, !2169, !2230, !377}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2245, file: !2224, line: 88, baseType: !2253, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!880, !2169, !2256, !377}
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2224, line: 168, size: 448, elements: !2258)
!2258 = !{!2259, !2260, !2261, !2262, !2266, !2267}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2257, file: !2224, line: 169, baseType: !2231, size: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2257, file: !2224, line: 170, baseType: !1024, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2257, file: !2224, line: 171, baseType: !363, size: 64, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2257, file: !2224, line: 172, baseType: !2263, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!1021, !812, !2169, !2256, !369, !976, !1024}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2257, file: !2224, line: 174, baseType: !2263, size: 64, offset: 320)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2257, file: !2224, line: 176, baseType: !2268, size: 64, offset: 384)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!377, !812, !2169, !2256, !778}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2245, file: !2224, line: 90, baseType: !2240, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2245, file: !2224, line: 91, baseType: !2273, size: 64, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2214, file: !2164, line: 143, baseType: !2275, size: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!2278, !2169}
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2280)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !2281)
!2281 = !{!2282, !2283, !2287, !2291, !2299, !2303}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2280, file: !225, line: 40, baseType: !224, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2280, file: !225, line: 41, baseType: !2284, size: 64, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!935}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2280, file: !225, line: 42, baseType: !2288, size: 64, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!363}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2280, file: !225, line: 43, baseType: !2292, size: 64, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!2295, !2297}
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2280, file: !225, line: 44, baseType: !2300, size: 64, offset: 256)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!2295}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2280, file: !225, line: 45, baseType: !405, size: 64, offset: 320)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2214, file: !2164, line: 144, baseType: !2305, size: 64, offset: 320)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!2295, !2169}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2214, file: !2164, line: 145, baseType: !2309, size: 64, offset: 384)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{null, !2169, !2312, !2313}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2163, file: !2164, line: 70, baseType: !2315, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1068, line: 123, size: 1024, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2446, !2447, !2448, !2449, !2450}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2316, file: !1068, line: 124, baseType: !611, size: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2316, file: !1068, line: 125, baseType: !611, size: 32, offset: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2316, file: !1068, line: 135, baseType: !2315, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2316, file: !1068, line: 136, baseType: !386, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2316, file: !1068, line: 138, baseType: !585, size: 192, align: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2316, file: !1068, line: 140, baseType: !2295, size: 64, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2316, file: !1068, line: 141, baseType: !7, size: 32, offset: 448)
!2325 = !DIDerivedType(tag: DW_TAG_member, scope: !2316, file: !1068, line: 142, baseType: !2326, size: 256, offset: 512)
!2326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2316, file: !1068, line: 142, size: 256, elements: !2327)
!2327 = !{!2328, !2374, !2378}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2326, file: !1068, line: 143, baseType: !2329, size: 192)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1068, line: 91, size: 192, elements: !2330)
!2330 = !{!2331, !2332, !2333}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2329, file: !1068, line: 92, baseType: !362, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2329, file: !1068, line: 94, baseType: !581, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2329, file: !1068, line: 100, baseType: !2334, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1068, line: 180, size: 704, elements: !2336)
!2336 = !{!2337, !2338, !2339, !2346, !2347, !2348, !2372, !2373}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2335, file: !1068, line: 182, baseType: !2315, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2335, file: !1068, line: 183, baseType: !7, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2335, file: !1068, line: 186, baseType: !2340, size: 192, offset: 128)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2341, line: 19, size: 192, elements: !2342)
!2341 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2342 = !{!2343, !2344, !2345}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2340, file: !2341, line: 20, baseType: !1188, size: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2340, file: !2341, line: 21, baseType: !7, size: 32, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2340, file: !2341, line: 22, baseType: !7, size: 32, offset: 160)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2335, file: !1068, line: 187, baseType: !545, size: 32, offset: 320)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2335, file: !1068, line: 188, baseType: !545, size: 32, offset: 352)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2335, file: !1068, line: 189, baseType: !2349, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1068, line: 168, size: 320, elements: !2351)
!2351 = !{!2352, !2356, !2360, !2364, !2368}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2350, file: !1068, line: 169, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!377, !1162, !2334}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2350, file: !1068, line: 171, baseType: !2357, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!377, !2315, !386, !880}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2350, file: !1068, line: 173, baseType: !2361, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!377, !2315}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2350, file: !1068, line: 174, baseType: !2365, size: 64, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!377, !2315, !2315, !386}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2350, file: !1068, line: 176, baseType: !2369, size: 64, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!377, !1162, !2315, !2334}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2335, file: !1068, line: 192, baseType: !636, size: 128, offset: 448)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2335, file: !1068, line: 194, baseType: !1691, size: 128, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2326, file: !1068, line: 144, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1068, line: 103, size: 64, elements: !2376)
!2376 = !{!2377}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2375, file: !1068, line: 104, baseType: !2315, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2326, file: !1068, line: 145, baseType: !2379, size: 256)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1068, line: 107, size: 256, elements: !2380)
!2380 = !{!2381, !2441, !2444, !2445}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2379, file: !1068, line: 108, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2384)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1068, line: 217, size: 768, elements: !2385)
!2385 = !{!2386, !2406, !2410, !2414, !2418, !2422, !2426, !2430, !2431, !2432, !2433, !2437}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2384, file: !1068, line: 222, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!377, !2390}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1068, line: 197, size: 1088, elements: !2392)
!2392 = !{!2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2391, file: !1068, line: 199, baseType: !2315, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2391, file: !1068, line: 200, baseType: !812, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2391, file: !1068, line: 201, baseType: !1162, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2391, file: !1068, line: 202, baseType: !363, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2391, file: !1068, line: 205, baseType: !1459, size: 192, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2391, file: !1068, line: 206, baseType: !1459, size: 192, offset: 448)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2391, file: !1068, line: 207, baseType: !377, size: 32, offset: 640)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2391, file: !1068, line: 208, baseType: !636, size: 128, offset: 704)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2391, file: !1068, line: 209, baseType: !369, size: 64, offset: 832)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2391, file: !1068, line: 211, baseType: !1024, size: 64, offset: 896)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2391, file: !1068, line: 212, baseType: !935, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2391, file: !1068, line: 213, baseType: !935, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2391, file: !1068, line: 214, baseType: !807, size: 64, offset: 1024)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2384, file: !1068, line: 223, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !2390}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2384, file: !1068, line: 236, baseType: !2411, size: 64, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!377, !1162, !363}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2384, file: !1068, line: 238, baseType: !2415, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!363, !1162, !1918}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2384, file: !1068, line: 239, baseType: !2419, size: 64, offset: 256)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!363, !1162, !363, !1918}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2384, file: !1068, line: 240, baseType: !2423, size: 64, offset: 320)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !1162, !363}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2384, file: !1068, line: 242, baseType: !2427, size: 64, offset: 384)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!1021, !2390, !369, !1024, !976}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2384, file: !1068, line: 252, baseType: !1024, size: 64, offset: 448)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2384, file: !1068, line: 259, baseType: !935, size: 8, offset: 512)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2384, file: !1068, line: 260, baseType: !2427, size: 64, offset: 576)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2384, file: !1068, line: 263, baseType: !2434, size: 64, offset: 640)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!1947, !2390, !1949}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2384, file: !1068, line: 266, baseType: !2438, size: 64, offset: 704)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!377, !2390, !778}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2379, file: !1068, line: 109, baseType: !2442, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1068, line: 31, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2379, file: !1068, line: 110, baseType: !976, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2379, file: !1068, line: 111, baseType: !2315, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2316, file: !1068, line: 148, baseType: !363, size: 64, offset: 768)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2316, file: !1068, line: 154, baseType: !372, size: 64, offset: 832)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2316, file: !1068, line: 156, baseType: !412, size: 16, offset: 896)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2316, file: !1068, line: 157, baseType: !880, size: 16, offset: 912)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2316, file: !1068, line: 158, baseType: !2451, size: 64, offset: 960)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1068, line: 32, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2163, file: !2164, line: 71, baseType: !2454, size: 32, offset: 448)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2455, line: 19, size: 32, elements: !2456)
!2455 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2456 = !{!2457}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2454, file: !2455, line: 20, baseType: !606, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2163, file: !2164, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2163, file: !2164, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2163, file: !2164, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2163, file: !2164, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2163, file: !2164, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2159, file: !2160, line: 16, baseType: !364, size: 64, offset: 512)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2159, file: !2160, line: 17, baseType: !1905, size: 64, offset: 576)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2159, file: !2160, line: 18, baseType: !636, size: 128, offset: 640)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2159, file: !2160, line: 19, baseType: !958, size: 32, offset: 768)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2159, file: !2160, line: 20, baseType: !7, size: 32, offset: 800)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2153, file: !208, line: 701, baseType: !369, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2153, file: !208, line: 702, baseType: !7, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !877, file: !208, line: 705, baseType: !546, size: 32, offset: 4032)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !877, file: !208, line: 708, baseType: !546, size: 32, offset: 4064)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !877, file: !208, line: 709, baseType: !1724, size: 64, offset: 4096)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !877, file: !208, line: 720, baseType: !363, size: 64, offset: 4160)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !843, file: !840, line: 98, baseType: !2475, size: 256, offset: 448)
!2475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 256, elements: !470)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !843, file: !840, line: 101, baseType: !2477, size: 32, offset: 704)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2478, line: 25, size: 32, elements: !2479)
!2478 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2479 = !{!2480}
!2480 = !DIDerivedType(tag: DW_TAG_member, scope: !2477, file: !2478, line: 26, baseType: !2481, size: 32)
!2481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2477, file: !2478, line: 26, size: 32, elements: !2482)
!2482 = !{!2483}
!2483 = !DIDerivedType(tag: DW_TAG_member, scope: !2481, file: !2478, line: 30, baseType: !2484, size: 32)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2481, file: !2478, line: 30, size: 32, elements: !2485)
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2484, file: !2478, line: 31, baseType: !1192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2484, file: !2478, line: 32, baseType: !377, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !843, file: !840, line: 102, baseType: !1743, size: 64, offset: 768)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !843, file: !840, line: 103, baseType: !1048, size: 64, offset: 832)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !843, file: !840, line: 104, baseType: !362, size: 64, offset: 896)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !843, file: !840, line: 105, baseType: !363, size: 64, offset: 960)
!2492 = !DIDerivedType(tag: DW_TAG_member, scope: !843, file: !840, line: 107, baseType: !2493, size: 128, offset: 1024)
!2493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !840, line: 107, size: 128, elements: !2494)
!2494 = !{!2495, !2496}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2493, file: !840, line: 108, baseType: !636, size: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2493, file: !840, line: 109, baseType: !1958, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !843, file: !840, line: 111, baseType: !636, size: 128, offset: 1152)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !843, file: !840, line: 112, baseType: !636, size: 128, offset: 1280)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !843, file: !840, line: 120, baseType: !2500, size: 128, offset: 1408)
!2500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !840, line: 116, size: 128, elements: !2501)
!2501 = !{!2502, !2503, !2504}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2500, file: !840, line: 117, baseType: !1088, size: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2500, file: !840, line: 118, baseType: !852, size: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2500, file: !840, line: 119, baseType: !825, size: 128, align: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !813, file: !208, line: 922, baseType: !876, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !813, file: !208, line: 923, baseType: !1905, size: 64, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !813, file: !208, line: 929, baseType: !1192, offset: 384)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !813, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !813, file: !208, line: 931, baseType: !1209, size: 64, offset: 448)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !813, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !813, file: !208, line: 933, baseType: !1739, size: 32, offset: 544)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !813, file: !208, line: 934, baseType: !1459, size: 192, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !813, file: !208, line: 935, baseType: !976, size: 64, offset: 768)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !813, file: !208, line: 936, baseType: !2515, size: 192, offset: 832)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !2516)
!2516 = !{!2517, !2518, !2540, !2541, !2542, !2543}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2515, file: !208, line: 886, baseType: !2014)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2515, file: !208, line: 887, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2525, !2529, !2530, !2531, !2532}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2520, file: !217, line: 61, baseType: !606, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2520, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2520, file: !217, line: 63, baseType: !1192, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2520, file: !217, line: 65, baseType: !2526, size: 256, offset: 64)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1084, size: 256, elements: !2527)
!2527 = !{!2528}
!2528 = !DISubrange(count: 4)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2520, file: !217, line: 66, baseType: !1084, size: 64, offset: 320)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2520, file: !217, line: 68, baseType: !1691, size: 128, offset: 384)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2520, file: !217, line: 69, baseType: !825, size: 128, align: 64, offset: 512)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2520, file: !217, line: 70, baseType: !2533, size: 128, offset: 640)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2534, size: 128, elements: !763)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !2535)
!2535 = !{!2536, !2537}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2534, file: !217, line: 55, baseType: !377, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2534, file: !217, line: 56, baseType: !2538, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2515, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2515, file: !208, line: 889, baseType: !883, size: 32, offset: 96)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2515, file: !208, line: 889, baseType: !883, size: 32, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2515, file: !208, line: 890, baseType: !377, size: 32, offset: 160)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !813, file: !208, line: 937, baseType: !2545, size: 64, offset: 1024)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2547)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2548, line: 111, size: 1280, elements: !2549)
!2548 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2549 = !{!2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2569, !2570, !2571, !2572, !2573, !2574, !2684, !2685, !2686, !2687, !2713, !2714, !2724}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2547, file: !2548, line: 112, baseType: !611, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2547, file: !2548, line: 120, baseType: !883, size: 32, offset: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2547, file: !2548, line: 121, baseType: !891, size: 32, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2547, file: !2548, line: 122, baseType: !883, size: 32, offset: 96)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2547, file: !2548, line: 123, baseType: !891, size: 32, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2547, file: !2548, line: 124, baseType: !883, size: 32, offset: 160)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2547, file: !2548, line: 125, baseType: !891, size: 32, offset: 192)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2547, file: !2548, line: 126, baseType: !883, size: 32, offset: 224)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2547, file: !2548, line: 127, baseType: !891, size: 32, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2547, file: !2548, line: 128, baseType: !7, size: 32, offset: 288)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2547, file: !2548, line: 129, baseType: !2561, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2562, line: 26, baseType: !2563)
!2562 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2562, line: 24, size: 64, elements: !2564)
!2564 = !{!2565}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2563, file: !2562, line: 25, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 64, elements: !2567)
!2567 = !{!2568}
!2568 = !DISubrange(count: 2)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2547, file: !2548, line: 130, baseType: !2561, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2547, file: !2548, line: 131, baseType: !2561, size: 64, offset: 448)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2547, file: !2548, line: 132, baseType: !2561, size: 64, offset: 512)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2547, file: !2548, line: 133, baseType: !2561, size: 64, offset: 576)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2547, file: !2548, line: 135, baseType: !420, size: 8, offset: 640)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2547, file: !2548, line: 137, baseType: !2575, size: 64, offset: 704)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2577, line: 189, size: 1664, elements: !2578)
!2577 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2578 = !{!2579, !2580, !2585, !2590, !2591, !2594, !2595, !2600, !2601, !2602, !2603, !2605, !2606, !2607, !2609, !2610, !2648, !2669}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2576, file: !2577, line: 190, baseType: !606, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2576, file: !2577, line: 191, baseType: !2581, size: 32, offset: 32)
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2577, line: 28, baseType: !2582)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !368, line: 98, baseType: !2583)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !373, line: 20, baseType: !2584)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !375, line: 26, baseType: !377)
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2576, file: !2577, line: 192, baseType: !2586, size: 192, offset: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2576, file: !2577, line: 192, size: 192, elements: !2587)
!2587 = !{!2588, !2589}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2586, file: !2577, line: 193, baseType: !636, size: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2586, file: !2577, line: 194, baseType: !585, size: 192, align: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2576, file: !2577, line: 199, baseType: !1205, size: 256, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2576, file: !2577, line: 200, baseType: !2592, size: 64, offset: 512)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2577, line: 200, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2576, file: !2577, line: 201, baseType: !363, size: 64, offset: 576)
!2595 = !DIDerivedType(tag: DW_TAG_member, scope: !2576, file: !2577, line: 202, baseType: !2596, size: 64, offset: 640)
!2596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2576, file: !2577, line: 202, size: 64, elements: !2597)
!2597 = !{!2598, !2599}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2596, file: !2577, line: 203, baseType: !983, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2596, file: !2577, line: 204, baseType: !983, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2576, file: !2577, line: 206, baseType: !983, size: 64, offset: 704)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2576, file: !2577, line: 207, baseType: !883, size: 32, offset: 768)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2576, file: !2577, line: 208, baseType: !891, size: 32, offset: 800)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2576, file: !2577, line: 209, baseType: !2604, size: 32, offset: 832)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2577, line: 31, baseType: !1002)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2576, file: !2577, line: 210, baseType: !412, size: 16, offset: 864)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2576, file: !2577, line: 211, baseType: !412, size: 16, offset: 880)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2576, file: !2577, line: 215, baseType: !2608, size: 16, offset: 896)
!2608 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2576, file: !2577, line: 222, baseType: !362, size: 64, offset: 960)
!2610 = !DIDerivedType(tag: DW_TAG_member, scope: !2576, file: !2577, line: 239, baseType: !2611, size: 320, offset: 1024)
!2611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2576, file: !2577, line: 239, size: 320, elements: !2612)
!2612 = !{!2613, !2640}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2611, file: !2577, line: 240, baseType: !2614, size: 320)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2577, line: 108, size: 320, elements: !2615)
!2615 = !{!2616, !2617, !2629, !2632, !2639}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2614, file: !2577, line: 110, baseType: !362, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, scope: !2614, file: !2577, line: 111, baseType: !2618, size: 64, offset: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2614, file: !2577, line: 111, size: 64, elements: !2619)
!2619 = !{!2620, !2628}
!2620 = !DIDerivedType(tag: DW_TAG_member, scope: !2618, file: !2577, line: 112, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2618, file: !2577, line: 112, size: 64, elements: !2622)
!2622 = !{!2623, !2624}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2621, file: !2577, line: 114, baseType: !410, size: 16)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2621, file: !2577, line: 115, baseType: !2625, size: 48, offset: 16)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 48, elements: !2626)
!2626 = !{!2627}
!2627 = !DISubrange(count: 6)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2618, file: !2577, line: 121, baseType: !362, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2614, file: !2577, line: 123, baseType: !2630, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2577, line: 96, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2614, file: !2577, line: 124, baseType: !2633, size: 64, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2577, line: 102, size: 192, elements: !2635)
!2635 = !{!2636, !2637, !2638}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2634, file: !2577, line: 103, baseType: !825, size: 128, align: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2634, file: !2577, line: 104, baseType: !606, size: 32, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2634, file: !2577, line: 105, baseType: !935, size: 8, offset: 160)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2614, file: !2577, line: 125, baseType: !386, size: 64, offset: 256)
!2640 = !DIDerivedType(tag: DW_TAG_member, scope: !2611, file: !2577, line: 241, baseType: !2641, size: 320)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !2577, line: 241, size: 320, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646, !2647}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2641, file: !2577, line: 242, baseType: !362, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2641, file: !2577, line: 243, baseType: !362, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2641, file: !2577, line: 244, baseType: !2630, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2641, file: !2577, line: 245, baseType: !2633, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2641, file: !2577, line: 246, baseType: !369, size: 64, offset: 256)
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !2576, file: !2577, line: 254, baseType: !2649, size: 256, offset: 1344)
!2649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2576, file: !2577, line: 254, size: 256, elements: !2650)
!2650 = !{!2651, !2657}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2649, file: !2577, line: 255, baseType: !2652, size: 256)
!2652 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2577, line: 128, size: 256, elements: !2653)
!2653 = !{!2654, !2655}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2652, file: !2577, line: 129, baseType: !363, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2652, file: !2577, line: 130, baseType: !2656, size: 256)
!2656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 256, elements: !2527)
!2657 = !DIDerivedType(tag: DW_TAG_member, scope: !2649, file: !2577, line: 256, baseType: !2658, size: 256)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2649, file: !2577, line: 256, size: 256, elements: !2659)
!2659 = !{!2660, !2661}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2658, file: !2577, line: 258, baseType: !636, size: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2658, file: !2577, line: 259, baseType: !2662, size: 128, offset: 128)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2663, line: 22, size: 128, elements: !2664)
!2663 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2664 = !{!2665, !2668}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2662, file: !2663, line: 23, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2663, line: 23, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2662, file: !2663, line: 24, baseType: !362, size: 64, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2576, file: !2577, line: 274, baseType: !2670, size: 64, offset: 1600)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2577, line: 170, size: 192, elements: !2672)
!2672 = !{!2673, !2682, !2683}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2671, file: !2577, line: 171, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2577, line: 165, baseType: !2675)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!377, !2575, !2678, !2680, !2575}
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2631)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2671, file: !2577, line: 172, baseType: !2575, size: 64, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2671, file: !2577, line: 173, baseType: !2630, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2547, file: !2548, line: 138, baseType: !2575, size: 64, offset: 768)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2547, file: !2548, line: 139, baseType: !2575, size: 64, offset: 832)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2547, file: !2548, line: 140, baseType: !2575, size: 64, offset: 896)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2547, file: !2548, line: 145, baseType: !2688, size: 64, offset: 960)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2690, line: 13, size: 896, elements: !2691)
!2690 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2689, file: !2690, line: 14, baseType: !606, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2689, file: !2690, line: 15, baseType: !611, size: 32, offset: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2689, file: !2690, line: 16, baseType: !611, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2689, file: !2690, line: 21, baseType: !1209, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2689, file: !2690, line: 27, baseType: !362, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2689, file: !2690, line: 28, baseType: !362, size: 64, offset: 256)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2689, file: !2690, line: 29, baseType: !1209, size: 64, offset: 320)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2689, file: !2690, line: 32, baseType: !1088, size: 128, offset: 384)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2689, file: !2690, line: 33, baseType: !883, size: 32, offset: 512)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2689, file: !2690, line: 37, baseType: !1209, size: 64, offset: 576)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2689, file: !2690, line: 44, baseType: !2703, size: 256, offset: 640)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2704, line: 15, size: 256, elements: !2705)
!2704 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2705 = !{!2706, !2707, !2708, !2709, !2710, !2711, !2712}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2703, file: !2704, line: 16, baseType: !567)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2703, file: !2704, line: 18, baseType: !377, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2703, file: !2704, line: 19, baseType: !377, size: 32, offset: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2703, file: !2704, line: 20, baseType: !377, size: 32, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2703, file: !2704, line: 21, baseType: !377, size: 32, offset: 96)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2703, file: !2704, line: 22, baseType: !362, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2703, file: !2704, line: 23, baseType: !362, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2547, file: !2548, line: 146, baseType: !1827, size: 64, offset: 1024)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2547, file: !2548, line: 147, baseType: !2715, size: 64, offset: 1088)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2548, line: 25, size: 64, elements: !2717)
!2717 = !{!2718, !2719, !2720}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2716, file: !2548, line: 26, baseType: !611, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2716, file: !2548, line: 27, baseType: !377, size: 32, offset: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2716, file: !2548, line: 28, baseType: !2721, offset: 64)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, elements: !2722)
!2722 = !{!2723}
!2723 = !DISubrange(count: 0)
!2724 = !DIDerivedType(tag: DW_TAG_member, scope: !2547, file: !2548, line: 149, baseType: !2725, size: 128, offset: 1152)
!2725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2547, file: !2548, line: 149, size: 128, elements: !2726)
!2726 = !{!2727, !2728}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2725, file: !2548, line: 150, baseType: !377, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2725, file: !2548, line: 151, baseType: !825, size: 128, align: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !813, file: !208, line: 938, baseType: !2730, size: 256, offset: 1088)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2730, file: !208, line: 897, baseType: !362, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2730, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2730, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2730, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2730, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2730, file: !208, line: 904, baseType: !976, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !813, file: !208, line: 940, baseType: !372, size: 64, offset: 1344)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !813, file: !208, line: 945, baseType: !363, size: 64, offset: 1408)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !813, file: !208, line: 949, baseType: !636, size: 128, offset: 1472)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !813, file: !208, line: 950, baseType: !636, size: 128, offset: 1600)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !813, file: !208, line: 952, baseType: !1183, size: 64, offset: 1728)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !813, file: !208, line: 953, baseType: !1343, size: 32, offset: 1792)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !813, file: !208, line: 954, baseType: !1343, size: 32, offset: 1824)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !779, file: !772, line: 362, baseType: !363, size: 64, offset: 1344)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !779, file: !772, line: 365, baseType: !1209, size: 64, offset: 1408)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !779, file: !772, line: 373, baseType: !2748, offset: 1472)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !772, line: 296, elements: !575)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !775, file: !772, line: 391, baseType: !581, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !775, file: !772, line: 392, baseType: !372, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !775, file: !772, line: 394, baseType: !2101, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !775, file: !772, line: 398, baseType: !362, size: 64, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !775, file: !772, line: 399, baseType: !362, size: 64, offset: 320)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !775, file: !772, line: 405, baseType: !362, size: 64, offset: 384)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !775, file: !772, line: 406, baseType: !362, size: 64, offset: 448)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !775, file: !772, line: 407, baseType: !2757, size: 64, offset: 512)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !790, line: 286, baseType: !2759)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !790, line: 286, size: 64, elements: !2760)
!2760 = !{!2761}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2759, file: !790, line: 286, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !795, line: 18, baseType: !362)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !775, file: !772, line: 416, baseType: !611, size: 32, offset: 576)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !775, file: !772, line: 428, baseType: !611, size: 32, offset: 608)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !775, file: !772, line: 437, baseType: !611, size: 32, offset: 640)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !775, file: !772, line: 447, baseType: !611, size: 32, offset: 672)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !775, file: !772, line: 450, baseType: !1209, size: 64, offset: 704)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !775, file: !772, line: 452, baseType: !377, size: 32, offset: 768)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !775, file: !772, line: 454, baseType: !1192, offset: 800)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !775, file: !772, line: 457, baseType: !1205, size: 256, offset: 832)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !775, file: !772, line: 459, baseType: !636, size: 128, offset: 1088)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !775, file: !772, line: 466, baseType: !362, size: 64, offset: 1216)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !775, file: !772, line: 467, baseType: !362, size: 64, offset: 1280)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !775, file: !772, line: 469, baseType: !362, size: 64, offset: 1344)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !775, file: !772, line: 470, baseType: !362, size: 64, offset: 1408)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !775, file: !772, line: 471, baseType: !1211, size: 64, offset: 1472)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !775, file: !772, line: 472, baseType: !362, size: 64, offset: 1536)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !775, file: !772, line: 473, baseType: !362, size: 64, offset: 1600)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !775, file: !772, line: 474, baseType: !362, size: 64, offset: 1664)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !775, file: !772, line: 475, baseType: !362, size: 64, offset: 1728)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !775, file: !772, line: 477, baseType: !1192, offset: 1792)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !775, file: !772, line: 478, baseType: !362, size: 64, offset: 1792)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !775, file: !772, line: 478, baseType: !362, size: 64, offset: 1856)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !775, file: !772, line: 478, baseType: !362, size: 64, offset: 1920)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !775, file: !772, line: 478, baseType: !362, size: 64, offset: 1984)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !775, file: !772, line: 479, baseType: !362, size: 64, offset: 2048)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !775, file: !772, line: 479, baseType: !362, size: 64, offset: 2112)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !775, file: !772, line: 479, baseType: !362, size: 64, offset: 2176)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !775, file: !772, line: 480, baseType: !362, size: 64, offset: 2240)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !775, file: !772, line: 480, baseType: !362, size: 64, offset: 2304)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !775, file: !772, line: 480, baseType: !362, size: 64, offset: 2368)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !775, file: !772, line: 480, baseType: !362, size: 64, offset: 2432)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !775, file: !772, line: 482, baseType: !2794, size: 2816, offset: 2496)
!2794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 2816, elements: !2795)
!2795 = !{!2796}
!2796 = !DISubrange(count: 44)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !775, file: !772, line: 488, baseType: !2798, size: 256, offset: 5312)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2799, line: 60, size: 256, elements: !2800)
!2799 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2800 = !{!2801}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2798, file: !2799, line: 61, baseType: !2802, size: 256)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1209, size: 256, elements: !2527)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !775, file: !772, line: 490, baseType: !2804, size: 64, offset: 5568)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !772, line: 490, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !775, file: !772, line: 493, baseType: !2807, size: 896, offset: 5632)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2808, line: 53, baseType: !2809)
!2808 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2808, line: 13, size: 896, elements: !2810)
!2810 = !{!2811, !2812, !2813, !2814, !2817, !2818, !2819, !2820, !2840, !2841, !2842}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2809, file: !2808, line: 18, baseType: !372, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2809, file: !2808, line: 28, baseType: !1211, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2809, file: !2808, line: 31, baseType: !1205, size: 256, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2809, file: !2808, line: 32, baseType: !2815, size: 64, offset: 384)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2808, line: 32, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2809, file: !2808, line: 37, baseType: !412, size: 16, offset: 448)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2809, file: !2808, line: 40, baseType: !1459, size: 192, offset: 512)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2809, file: !2808, line: 41, baseType: !363, size: 64, offset: 704)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2809, file: !2808, line: 42, baseType: !2821, size: 64, offset: 768)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2823)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2824, line: 13, size: 896, elements: !2825)
!2824 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2823, file: !2824, line: 14, baseType: !363, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2823, file: !2824, line: 15, baseType: !362, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2823, file: !2824, line: 17, baseType: !362, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2823, file: !2824, line: 17, baseType: !362, size: 64, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2823, file: !2824, line: 19, baseType: !371, size: 64, offset: 256)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2823, file: !2824, line: 21, baseType: !371, size: 64, offset: 320)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2823, file: !2824, line: 22, baseType: !371, size: 64, offset: 384)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2823, file: !2824, line: 23, baseType: !371, size: 64, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2823, file: !2824, line: 24, baseType: !371, size: 64, offset: 512)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2823, file: !2824, line: 25, baseType: !371, size: 64, offset: 576)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2823, file: !2824, line: 26, baseType: !371, size: 64, offset: 640)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2823, file: !2824, line: 27, baseType: !371, size: 64, offset: 704)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2823, file: !2824, line: 28, baseType: !371, size: 64, offset: 768)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2823, file: !2824, line: 29, baseType: !371, size: 64, offset: 832)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2809, file: !2808, line: 44, baseType: !611, size: 32, offset: 832)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2809, file: !2808, line: 50, baseType: !410, size: 16, offset: 864)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2809, file: !2808, line: 51, baseType: !2843, size: 16, offset: 880)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !373, line: 18, baseType: !2844)
!2844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !375, line: 23, baseType: !2608)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !772, line: 495, baseType: !362, size: 64, offset: 6528)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !775, file: !772, line: 497, baseType: !2847, size: 64, offset: 6592)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !772, line: 381, size: 384, elements: !2849)
!2849 = !{!2850, !2851, !2857}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2848, file: !772, line: 382, baseType: !611, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2848, file: !772, line: 383, baseType: !2852, size: 128, offset: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !772, line: 376, size: 128, elements: !2853)
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2852, file: !772, line: 377, baseType: !592, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2852, file: !772, line: 378, baseType: !2856, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2848, file: !772, line: 384, baseType: !2858, size: 192, offset: 192)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2859, line: 26, size: 192, elements: !2860)
!2859 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2860 = !{!2861, !2862}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2858, file: !2859, line: 27, baseType: !7, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2858, file: !2859, line: 28, baseType: !2863, size: 128, offset: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2864, line: 43, size: 128, elements: !2865)
!2864 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2865 = !{!2866, !2867}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2863, file: !2864, line: 44, baseType: !567)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2863, file: !2864, line: 45, baseType: !636, size: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !775, file: !772, line: 500, baseType: !1192, offset: 6656)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !775, file: !772, line: 501, baseType: !2870, size: 64, offset: 6656)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !772, line: 387, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !775, file: !772, line: 516, baseType: !1827, size: 64, offset: 6720)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !775, file: !772, line: 519, baseType: !812, size: 64, offset: 6784)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !775, file: !772, line: 521, baseType: !2875, size: 64, offset: 6848)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !772, line: 521, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !775, file: !772, line: 545, baseType: !611, size: 32, offset: 6912)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !775, file: !772, line: 548, baseType: !935, size: 8, offset: 6944)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !775, file: !772, line: 550, baseType: !2880, offset: 6952)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2881, line: 142, elements: !575)
!2881 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !775, file: !772, line: 554, baseType: !1847, size: 256, offset: 6976)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !775, file: !772, line: 557, baseType: !545, size: 32, offset: 7232)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !771, file: !772, line: 565, baseType: !2885, offset: 7296)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, elements: !2886)
!2886 = !{!2887}
!2887 = !DISubrange(count: -1)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !593, file: !594, line: 758, baseType: !770, size: 64, offset: 3968)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !593, file: !594, line: 761, baseType: !2890, size: 320, offset: 4032)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2799, line: 34, size: 320, elements: !2891)
!2891 = !{!2892, !2893}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2890, file: !2799, line: 35, baseType: !372, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2890, file: !2799, line: 36, baseType: !2894, size: 256, offset: 64)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 256, elements: !2527)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !593, file: !594, line: 766, baseType: !377, size: 32, offset: 4352)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !593, file: !594, line: 767, baseType: !377, size: 32, offset: 4384)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !593, file: !594, line: 768, baseType: !377, size: 32, offset: 4416)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !593, file: !594, line: 770, baseType: !377, size: 32, offset: 4448)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !593, file: !594, line: 772, baseType: !362, size: 64, offset: 4480)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !593, file: !594, line: 775, baseType: !7, size: 32, offset: 4544)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !593, file: !594, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !593, file: !594, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !593, file: !594, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !593, file: !594, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !593, file: !594, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !593, file: !594, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !593, file: !594, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !593, file: !594, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !593, file: !594, line: 831, baseType: !362, size: 64, offset: 4672)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !593, file: !594, line: 833, baseType: !2911, size: 384, offset: 4736)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !2912)
!2912 = !{!2913, !2918}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2911, file: !196, line: 26, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!371, !2917}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, scope: !2911, file: !196, line: 27, baseType: !2919, size: 320, offset: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2911, file: !196, line: 27, size: 320, elements: !2920)
!2920 = !{!2921, !2931, !2956}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2919, file: !196, line: 36, baseType: !2922, size: 320)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2919, file: !196, line: 29, size: 320, elements: !2923)
!2923 = !{!2924, !2926, !2927, !2928, !2929, !2930}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2922, file: !196, line: 30, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2922, file: !196, line: 31, baseType: !545, size: 32, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2922, file: !196, line: 32, baseType: !545, size: 32, offset: 96)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2922, file: !196, line: 33, baseType: !545, size: 32, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2922, file: !196, line: 34, baseType: !372, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2922, file: !196, line: 35, baseType: !2925, size: 64, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2919, file: !196, line: 46, baseType: !2932, size: 192)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2919, file: !196, line: 38, size: 192, elements: !2933)
!2933 = !{!2934, !2935, !2936, !2955}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2932, file: !196, line: 39, baseType: !722, size: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2932, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, scope: !2932, file: !196, line: 41, baseType: !2937, size: 64, offset: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2932, file: !196, line: 41, size: 64, elements: !2938)
!2938 = !{!2939, !2947}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2937, file: !196, line: 42, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2942, line: 7, size: 128, elements: !2943)
!2942 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2943 = !{!2944, !2946}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2941, file: !2942, line: 8, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !724, line: 93, baseType: !672)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2941, file: !2942, line: 9, baseType: !672, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2937, file: !196, line: 43, baseType: !2948, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2950, line: 7, size: 64, elements: !2951)
!2950 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2951 = !{!2952, !2954}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2949, file: !2950, line: 8, baseType: !2953, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2950, line: 5, baseType: !2583)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2949, file: !2950, line: 9, baseType: !2583, size: 32, offset: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2932, file: !196, line: 45, baseType: !372, size: 64, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2919, file: !196, line: 54, baseType: !2957, size: 256)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2919, file: !196, line: 48, size: 256, elements: !2958)
!2958 = !{!2959, !2967, !2968, !2969, !2970}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2957, file: !196, line: 49, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2962, line: 36, size: 64, elements: !2963)
!2962 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2963 = !{!2964, !2965, !2966}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2961, file: !2962, line: 37, baseType: !377, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2961, file: !2962, line: 38, baseType: !2608, size: 16, offset: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2961, file: !2962, line: 39, baseType: !2608, size: 16, offset: 48)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2957, file: !196, line: 50, baseType: !377, size: 32, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2957, file: !196, line: 51, baseType: !377, size: 32, offset: 96)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2957, file: !196, line: 52, baseType: !362, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2957, file: !196, line: 53, baseType: !362, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !593, file: !594, line: 835, baseType: !2972, size: 32, offset: 5120)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !368, line: 22, baseType: !2973)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !724, line: 28, baseType: !377)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !593, file: !594, line: 836, baseType: !2972, size: 32, offset: 5152)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !593, file: !594, line: 840, baseType: !362, size: 64, offset: 5184)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !593, file: !594, line: 849, baseType: !592, size: 64, offset: 5248)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !593, file: !594, line: 852, baseType: !592, size: 64, offset: 5312)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !593, file: !594, line: 857, baseType: !636, size: 128, offset: 5376)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !593, file: !594, line: 858, baseType: !636, size: 128, offset: 5504)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !593, file: !594, line: 859, baseType: !592, size: 64, offset: 5632)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !593, file: !594, line: 867, baseType: !636, size: 128, offset: 5696)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !593, file: !594, line: 868, baseType: !636, size: 128, offset: 5824)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !593, file: !594, line: 871, baseType: !2519, size: 64, offset: 5952)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !593, file: !594, line: 872, baseType: !2985, size: 512, offset: 6016)
!2985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1088, size: 512, elements: !2527)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !593, file: !594, line: 873, baseType: !636, size: 128, offset: 6528)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !593, file: !594, line: 874, baseType: !636, size: 128, offset: 6656)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !593, file: !594, line: 876, baseType: !2989, size: 64, offset: 6784)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !593, file: !594, line: 879, baseType: !1156, size: 64, offset: 6848)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !593, file: !594, line: 882, baseType: !1156, size: 64, offset: 6912)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !593, file: !594, line: 884, baseType: !372, size: 64, offset: 6976)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !593, file: !594, line: 885, baseType: !372, size: 64, offset: 7040)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !593, file: !594, line: 890, baseType: !372, size: 64, offset: 7104)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !593, file: !594, line: 891, baseType: !2996, size: 128, offset: 7168)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !594, line: 242, size: 128, elements: !2997)
!2997 = !{!2998, !2999, !3000}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2996, file: !594, line: 244, baseType: !372, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2996, file: !594, line: 245, baseType: !372, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2996, file: !594, line: 246, baseType: !567, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !593, file: !594, line: 900, baseType: !362, size: 64, offset: 7296)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !593, file: !594, line: 901, baseType: !362, size: 64, offset: 7360)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !593, file: !594, line: 904, baseType: !372, size: 64, offset: 7424)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !593, file: !594, line: 907, baseType: !372, size: 64, offset: 7488)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !593, file: !594, line: 910, baseType: !362, size: 64, offset: 7552)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !593, file: !594, line: 911, baseType: !362, size: 64, offset: 7616)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !593, file: !594, line: 914, baseType: !3008, size: 640, offset: 7680)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3009, line: 123, size: 640, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!3010 = !{!3011, !3017, !3018}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3008, file: !3009, line: 124, baseType: !3012, size: 576)
!3012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3013, size: 576, elements: !1100)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3009, line: 108, size: 192, elements: !3014)
!3014 = !{!3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3013, file: !3009, line: 109, baseType: !372, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3013, file: !3009, line: 110, baseType: !737, size: 128, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3008, file: !3009, line: 125, baseType: !7, size: 32, offset: 576)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3008, file: !3009, line: 126, baseType: !7, size: 32, offset: 608)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !593, file: !594, line: 917, baseType: !3020, size: 192, offset: 8320)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3009, line: 134, size: 192, elements: !3021)
!3021 = !{!3022, !3023}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3020, file: !3009, line: 135, baseType: !825, size: 128, align: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3020, file: !3009, line: 136, baseType: !7, size: 32, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !593, file: !594, line: 923, baseType: !2545, size: 64, offset: 8512)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !593, file: !594, line: 926, baseType: !2545, size: 64, offset: 8576)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !593, file: !594, line: 929, baseType: !2545, size: 64, offset: 8640)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !593, file: !594, line: 933, baseType: !2575, size: 64, offset: 8704)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !593, file: !594, line: 943, baseType: !3029, size: 128, offset: 8768)
!3029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 128, elements: !1735)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !593, file: !594, line: 945, baseType: !3031, size: 64, offset: 8896)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !594, line: 49, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !593, file: !594, line: 956, baseType: !3034, size: 64, offset: 8960)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !594, line: 45, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !593, file: !594, line: 959, baseType: !3037, size: 64, offset: 9024)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !594, line: 959, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !593, file: !594, line: 962, baseType: !3040, size: 64, offset: 9088)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !594, line: 66, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !593, file: !594, line: 966, baseType: !3043, size: 64, offset: 9152)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3045, line: 35, flags: DIFlagFwdDecl)
!3045 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !593, file: !594, line: 969, baseType: !3047, size: 64, offset: 9216)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3049, line: 82, size: 7296, elements: !3050)
!3049 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!3050 = !{!3051, !3052, !3053, !3054, !3055, !3056, !3057, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3086, !3095, !3096, !3098, !3099, !3100, !3103, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3133, !3134, !3141, !3142, !3143, !3144, !3145, !3146}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3048, file: !3049, line: 83, baseType: !606, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3048, file: !3049, line: 84, baseType: !611, size: 32, offset: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3048, file: !3049, line: 85, baseType: !377, size: 32, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3048, file: !3049, line: 86, baseType: !636, size: 128, offset: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3048, file: !3049, line: 88, baseType: !1691, size: 128, offset: 256)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3048, file: !3049, line: 91, baseType: !592, size: 64, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3048, file: !3049, line: 94, baseType: !3058, size: 192, offset: 448)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3059, line: 30, size: 192, elements: !3060)
!3059 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!3060 = !{!3061, !3062}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3058, file: !3059, line: 31, baseType: !636, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3058, file: !3059, line: 32, baseType: !3063, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3064, line: 25, baseType: !3065)
!3064 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3064, line: 23, size: 64, elements: !3066)
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3065, file: !3064, line: 24, baseType: !762, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3048, file: !3049, line: 97, baseType: !1084, size: 64, offset: 640)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3048, file: !3049, line: 100, baseType: !377, size: 32, offset: 704)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3048, file: !3049, line: 106, baseType: !377, size: 32, offset: 736)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !3048, file: !3049, line: 107, baseType: !592, size: 64, offset: 768)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3048, file: !3049, line: 110, baseType: !377, size: 32, offset: 832)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3048, file: !3049, line: 111, baseType: !7, size: 32, offset: 864)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3048, file: !3049, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3048, file: !3049, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !3048, file: !3049, line: 128, baseType: !377, size: 32, offset: 928)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3048, file: !3049, line: 129, baseType: !636, size: 128, offset: 960)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3048, file: !3049, line: 132, baseType: !680, size: 512, offset: 1088)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3048, file: !3049, line: 133, baseType: !688, size: 64, offset: 1600)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3048, file: !3049, line: 140, baseType: !3081, size: 256, offset: 1664)
!3081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3082, size: 256, elements: !2567)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3049, line: 38, size: 128, elements: !3083)
!3083 = !{!3084, !3085}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3082, file: !3049, line: 39, baseType: !372, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3082, file: !3049, line: 40, baseType: !372, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3048, file: !3049, line: 146, baseType: !3087, size: 192, offset: 1920)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3049, line: 66, size: 192, elements: !3088)
!3088 = !{!3089}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3087, file: !3049, line: 67, baseType: !3090, size: 192)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3049, line: 47, size: 192, elements: !3091)
!3091 = !{!3092, !3093, !3094}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3090, file: !3049, line: 48, baseType: !1211, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3090, file: !3049, line: 49, baseType: !1211, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3090, file: !3049, line: 50, baseType: !1211, size: 64, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3048, file: !3049, line: 150, baseType: !3008, size: 640, offset: 2112)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3048, file: !3049, line: 153, baseType: !3097, size: 256, offset: 2752)
!3097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2519, size: 256, elements: !2527)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3048, file: !3049, line: 159, baseType: !2519, size: 64, offset: 3008)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3048, file: !3049, line: 162, baseType: !377, size: 32, offset: 3072)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3048, file: !3049, line: 164, baseType: !3101, size: 64, offset: 3136)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3049, line: 164, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3048, file: !3049, line: 175, baseType: !3104, size: 32, offset: 3200)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !727, line: 805, baseType: !3105)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !727, line: 798, size: 32, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3105, file: !727, line: 803, baseType: !847, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3105, file: !727, line: 804, baseType: !1192, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3048, file: !3049, line: 176, baseType: !372, size: 64, offset: 3264)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3048, file: !3049, line: 176, baseType: !372, size: 64, offset: 3328)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3048, file: !3049, line: 176, baseType: !372, size: 64, offset: 3392)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3048, file: !3049, line: 176, baseType: !372, size: 64, offset: 3456)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3048, file: !3049, line: 177, baseType: !372, size: 64, offset: 3520)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3048, file: !3049, line: 178, baseType: !372, size: 64, offset: 3584)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3048, file: !3049, line: 179, baseType: !2996, size: 128, offset: 3648)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3048, file: !3049, line: 180, baseType: !362, size: 64, offset: 3776)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3048, file: !3049, line: 180, baseType: !362, size: 64, offset: 3840)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3048, file: !3049, line: 180, baseType: !362, size: 64, offset: 3904)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3048, file: !3049, line: 180, baseType: !362, size: 64, offset: 3968)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3048, file: !3049, line: 181, baseType: !362, size: 64, offset: 4032)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3048, file: !3049, line: 181, baseType: !362, size: 64, offset: 4096)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3048, file: !3049, line: 181, baseType: !362, size: 64, offset: 4160)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3048, file: !3049, line: 181, baseType: !362, size: 64, offset: 4224)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3048, file: !3049, line: 182, baseType: !362, size: 64, offset: 4288)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3048, file: !3049, line: 182, baseType: !362, size: 64, offset: 4352)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3048, file: !3049, line: 182, baseType: !362, size: 64, offset: 4416)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3048, file: !3049, line: 182, baseType: !362, size: 64, offset: 4480)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3048, file: !3049, line: 183, baseType: !362, size: 64, offset: 4544)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3048, file: !3049, line: 183, baseType: !362, size: 64, offset: 4608)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3048, file: !3049, line: 184, baseType: !3131, offset: 4672)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3132, line: 12, elements: !575)
!3132 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3048, file: !3049, line: 192, baseType: !376, size: 64, offset: 4672)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3048, file: !3049, line: 203, baseType: !3135, size: 2048, offset: 4736)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3136, size: 2048, elements: !1735)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3137, line: 43, size: 128, elements: !3138)
!3137 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3138 = !{!3139, !3140}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3136, file: !3137, line: 44, baseType: !1026, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3136, file: !3137, line: 45, baseType: !1026, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3048, file: !3049, line: 220, baseType: !935, size: 8, offset: 6784)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3048, file: !3049, line: 221, baseType: !2608, size: 16, offset: 6800)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3048, file: !3049, line: 222, baseType: !2608, size: 16, offset: 6816)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3048, file: !3049, line: 224, baseType: !770, size: 64, offset: 6848)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3048, file: !3049, line: 227, baseType: !1459, size: 192, offset: 6912)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !3048, file: !3049, line: 233, baseType: !1459, size: 192, offset: 7104)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !593, file: !594, line: 970, baseType: !3148, size: 64, offset: 9280)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3049, line: 20, size: 16576, elements: !3150)
!3150 = !{!3151, !3152, !3153, !3154}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3149, file: !3049, line: 21, baseType: !1192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3149, file: !3049, line: 22, baseType: !606, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3149, file: !3049, line: 23, baseType: !1691, size: 128, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3149, file: !3049, line: 24, baseType: !3155, size: 16384, offset: 192)
!3155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3156, size: 16384, elements: !2204)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3059, line: 49, size: 256, elements: !3157)
!3157 = !{!3158}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3156, file: !3059, line: 50, baseType: !3159, size: 256)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3059, line: 35, size: 256, elements: !3160)
!3160 = !{!3161, !3168, !3169, !3173}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3159, file: !3059, line: 37, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3163, line: 19, baseType: !3164)
!3163 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3163, line: 18, baseType: !3166)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{null, !377}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3159, file: !3059, line: 38, baseType: !362, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3159, file: !3059, line: 44, baseType: !3170, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3163, line: 22, baseType: !3171)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3163, line: 21, baseType: !460)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3159, file: !3059, line: 46, baseType: !3063, size: 64, offset: 192)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !593, file: !594, line: 971, baseType: !3063, size: 64, offset: 9344)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !593, file: !594, line: 972, baseType: !3063, size: 64, offset: 9408)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !593, file: !594, line: 974, baseType: !3063, size: 64, offset: 9472)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !593, file: !594, line: 975, baseType: !3058, size: 192, offset: 9536)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !593, file: !594, line: 976, baseType: !362, size: 64, offset: 9728)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !593, file: !594, line: 977, baseType: !1024, size: 64, offset: 9792)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !593, file: !594, line: 978, baseType: !7, size: 32, offset: 9856)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !593, file: !594, line: 980, baseType: !828, size: 64, offset: 9920)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !593, file: !594, line: 989, baseType: !3183, size: 128, offset: 9984)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3184, line: 35, size: 128, elements: !3185)
!3184 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3185 = !{!3186, !3187, !3188}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3183, file: !3184, line: 36, baseType: !377, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3183, file: !3184, line: 37, baseType: !611, size: 32, offset: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3183, file: !3184, line: 38, baseType: !3189, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3184, line: 23, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !593, file: !594, line: 992, baseType: !372, size: 64, offset: 10112)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !593, file: !594, line: 993, baseType: !372, size: 64, offset: 10176)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !593, file: !594, line: 996, baseType: !1192, offset: 10240)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !593, file: !594, line: 999, baseType: !567, offset: 10240)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !593, file: !594, line: 1001, baseType: !3196, size: 64, offset: 10240)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !594, line: 636, size: 64, elements: !3197)
!3197 = !{!3198}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3196, file: !594, line: 637, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !593, file: !594, line: 1005, baseType: !577, size: 128, offset: 10304)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !593, file: !594, line: 1007, baseType: !592, size: 64, offset: 10432)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !593, file: !594, line: 1009, baseType: !3203, size: 64, offset: 10496)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !594, line: 1009, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !593, file: !594, line: 1043, baseType: !363, size: 64, offset: 10560)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !593, file: !594, line: 1046, baseType: !3207, size: 64, offset: 10624)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !594, line: 41, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !593, file: !594, line: 1050, baseType: !3210, size: 64, offset: 10688)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !594, line: 42, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !593, file: !594, line: 1054, baseType: !3213, size: 64, offset: 10752)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !594, line: 55, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !593, file: !594, line: 1056, baseType: !1638, size: 64, offset: 10816)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !593, file: !594, line: 1058, baseType: !3217, size: 64, offset: 10880)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3219, line: 99, size: 704, elements: !3220)
!3219 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3220 = !{!3221, !3222, !3223, !3224, !3225, !3226, !3227, !3246, !3247}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3218, file: !3219, line: 100, baseType: !1209, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3218, file: !3219, line: 101, baseType: !611, size: 32, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3218, file: !3219, line: 102, baseType: !611, size: 32, offset: 96)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3218, file: !3219, line: 105, baseType: !1192, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3218, file: !3219, line: 107, baseType: !412, size: 16, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3218, file: !3219, line: 109, baseType: !1188, size: 128, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3218, file: !3219, line: 110, baseType: !3228, size: 64, offset: 320)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3219, line: 73, size: 448, elements: !3230)
!3230 = !{!3231, !3234, !3235, !3240, !3245}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3229, file: !3219, line: 74, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3219, line: 74, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3229, file: !3219, line: 75, baseType: !3217, size: 64, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !3229, file: !3219, line: 83, baseType: !3236, size: 128, offset: 128)
!3236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3229, file: !3219, line: 83, size: 128, elements: !3237)
!3237 = !{!3238, !3239}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3236, file: !3219, line: 84, baseType: !636, size: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3236, file: !3219, line: 85, baseType: !1369, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, scope: !3229, file: !3219, line: 87, baseType: !3241, size: 128, offset: 256)
!3241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3229, file: !3219, line: 87, size: 128, elements: !3242)
!3242 = !{!3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3241, file: !3219, line: 88, baseType: !1088, size: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3241, file: !3219, line: 89, baseType: !825, size: 128, align: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3229, file: !3219, line: 92, baseType: !7, size: 32, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3218, file: !3219, line: 111, baseType: !1084, size: 64, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3218, file: !3219, line: 113, baseType: !1847, size: 256, offset: 448)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !593, file: !594, line: 1061, baseType: !3249, size: 64, offset: 10944)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !594, line: 43, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !593, file: !594, line: 1064, baseType: !362, size: 64, offset: 11008)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !593, file: !594, line: 1065, baseType: !3253, size: 64, offset: 11072)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3059, line: 14, baseType: !3255)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3059, line: 12, size: 384, elements: !3256)
!3256 = !{!3257}
!3257 = !DIDerivedType(tag: DW_TAG_member, scope: !3255, file: !3059, line: 13, baseType: !3258, size: 384)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !3059, line: 13, size: 384, elements: !3259)
!3259 = !{!3260, !3261, !3262, !3263}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3258, file: !3059, line: 13, baseType: !377, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3258, file: !3059, line: 13, baseType: !377, size: 32, offset: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3258, file: !3059, line: 13, baseType: !377, size: 32, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3258, file: !3059, line: 13, baseType: !3264, size: 256, offset: 128)
!3264 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3265, line: 32, size: 256, elements: !3266)
!3265 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3266 = !{!3267, !3272, !3285, !3291, !3300, !3320, !3325}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3264, file: !3265, line: 37, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3264, file: !3265, line: 34, size: 64, elements: !3269)
!3269 = !{!3270, !3271}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3268, file: !3265, line: 35, baseType: !2973, size: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3268, file: !3265, line: 36, baseType: !889, size: 32, offset: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3264, file: !3265, line: 45, baseType: !3273, size: 192)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3264, file: !3265, line: 40, size: 192, elements: !3274)
!3274 = !{!3275, !3277, !3278, !3284}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3273, file: !3265, line: 41, baseType: !3276, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !724, line: 95, baseType: !377)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3273, file: !3265, line: 42, baseType: !377, size: 32, offset: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3273, file: !3265, line: 43, baseType: !3279, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3265, line: 11, baseType: !3280)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3265, line: 8, size: 64, elements: !3281)
!3281 = !{!3282, !3283}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3280, file: !3265, line: 9, baseType: !377, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3280, file: !3265, line: 10, baseType: !363, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3273, file: !3265, line: 44, baseType: !377, size: 32, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3264, file: !3265, line: 52, baseType: !3286, size: 128)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3264, file: !3265, line: 48, size: 128, elements: !3287)
!3287 = !{!3288, !3289, !3290}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3286, file: !3265, line: 49, baseType: !2973, size: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3286, file: !3265, line: 50, baseType: !889, size: 32, offset: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3286, file: !3265, line: 51, baseType: !3279, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3264, file: !3265, line: 61, baseType: !3292, size: 256)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3264, file: !3265, line: 55, size: 256, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3299}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3292, file: !3265, line: 56, baseType: !2973, size: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3292, file: !3265, line: 57, baseType: !889, size: 32, offset: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3292, file: !3265, line: 58, baseType: !377, size: 32, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3292, file: !3265, line: 59, baseType: !3298, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !724, line: 94, baseType: !1023)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3292, file: !3265, line: 60, baseType: !3298, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3264, file: !3265, line: 95, baseType: !3301, size: 256)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3264, file: !3265, line: 64, size: 256, elements: !3302)
!3302 = !{!3303, !3304}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3301, file: !3265, line: 65, baseType: !363, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, scope: !3301, file: !3265, line: 77, baseType: !3305, size: 192, offset: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3301, file: !3265, line: 77, size: 192, elements: !3306)
!3306 = !{!3307, !3308, !3315}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3305, file: !3265, line: 82, baseType: !2608, size: 16)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3305, file: !3265, line: 88, baseType: !3309, size: 192)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3265, line: 84, size: 192, elements: !3310)
!3310 = !{!3311, !3313, !3314}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3309, file: !3265, line: 85, baseType: !3312, size: 64)
!3312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 64, elements: !718)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3309, file: !3265, line: 86, baseType: !363, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3309, file: !3265, line: 87, baseType: !363, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3305, file: !3265, line: 93, baseType: !3316, size: 96)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !3265, line: 90, size: 96, elements: !3317)
!3317 = !{!3318, !3319}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3316, file: !3265, line: 91, baseType: !3312, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3316, file: !3265, line: 92, baseType: !546, size: 32, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3264, file: !3265, line: 101, baseType: !3321, size: 128)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3264, file: !3265, line: 98, size: 128, elements: !3322)
!3322 = !{!3323, !3324}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3321, file: !3265, line: 99, baseType: !371, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3321, file: !3265, line: 100, baseType: !377, size: 32, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3264, file: !3265, line: 108, baseType: !3326, size: 128)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3264, file: !3265, line: 104, size: 128, elements: !3327)
!3327 = !{!3328, !3329, !3330}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3326, file: !3265, line: 105, baseType: !363, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3326, file: !3265, line: 106, baseType: !377, size: 32, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3326, file: !3265, line: 107, baseType: !7, size: 32, offset: 96)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !593, file: !594, line: 1067, baseType: !3131, offset: 11136)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !593, file: !594, line: 1099, baseType: !3333, size: 64, offset: 11136)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !594, line: 56, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !593, file: !594, line: 1103, baseType: !636, size: 128, offset: 11200)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !593, file: !594, line: 1104, baseType: !3337, size: 64, offset: 11328)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !594, line: 46, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !593, file: !594, line: 1105, baseType: !1459, size: 192, offset: 11392)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !593, file: !594, line: 1106, baseType: !7, size: 32, offset: 11584)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !593, file: !594, line: 1109, baseType: !3342, size: 128, offset: 11648)
!3342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3343, size: 128, elements: !2567)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !594, line: 51, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !593, file: !594, line: 1110, baseType: !1459, size: 192, offset: 11776)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !593, file: !594, line: 1111, baseType: !636, size: 128, offset: 11968)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !593, file: !594, line: 1173, baseType: !3348, size: 64, offset: 12096)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3350, line: 62, size: 256, align: 256, elements: !3351)
!3350 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3351 = !{!3352, !3353, !3354, !3359}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3349, file: !3350, line: 75, baseType: !546, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3349, file: !3350, line: 90, baseType: !546, size: 32, offset: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3349, file: !3350, line: 124, baseType: !3355, size: 64, offset: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3349, file: !3350, line: 109, size: 64, elements: !3356)
!3356 = !{!3357, !3358}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3355, file: !3350, line: 110, baseType: !374, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3355, file: !3350, line: 112, baseType: !374, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3349, file: !3350, line: 144, baseType: !546, size: 32, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !593, file: !594, line: 1174, baseType: !545, size: 32, offset: 12160)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !593, file: !594, line: 1179, baseType: !362, size: 64, offset: 12224)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !593, file: !594, line: 1182, baseType: !3363, size: 128, offset: 12288)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2799, line: 76, size: 128, elements: !3364)
!3364 = !{!3365, !3370, !3371}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3363, file: !2799, line: 85, baseType: !3366, size: 64)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3367, line: 7, size: 64, elements: !3368)
!3367 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3368 = !{!3369}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3366, file: !3367, line: 12, baseType: !759, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3363, file: !2799, line: 88, baseType: !935, size: 8, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3363, file: !2799, line: 95, baseType: !935, size: 8, offset: 72)
!3372 = !DIDerivedType(tag: DW_TAG_member, scope: !593, file: !594, line: 1184, baseType: !3373, size: 128, offset: 12416)
!3373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !593, file: !594, line: 1184, size: 128, elements: !3374)
!3374 = !{!3375, !3376}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3373, file: !594, line: 1185, baseType: !606, size: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3373, file: !594, line: 1186, baseType: !825, size: 128, align: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !593, file: !594, line: 1190, baseType: !2113, size: 64, offset: 12544)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !593, file: !594, line: 1192, baseType: !3379, size: 128, offset: 12608)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2799, line: 64, size: 128, elements: !3380)
!3380 = !{!3381, !3382, !3383}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3379, file: !2799, line: 65, baseType: !1171, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3379, file: !2799, line: 67, baseType: !546, size: 32, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3379, file: !2799, line: 68, baseType: !546, size: 32, offset: 96)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !593, file: !594, line: 1206, baseType: !377, size: 32, offset: 12736)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !593, file: !594, line: 1207, baseType: !377, size: 32, offset: 12768)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !593, file: !594, line: 1209, baseType: !362, size: 64, offset: 12800)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !593, file: !594, line: 1219, baseType: !372, size: 64, offset: 12864)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !593, file: !594, line: 1220, baseType: !372, size: 64, offset: 12928)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !593, file: !594, line: 1317, baseType: !377, size: 32, offset: 12992)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !593, file: !594, line: 1319, baseType: !592, size: 64, offset: 13056)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !593, file: !594, line: 1322, baseType: !3392, size: 64, offset: 13120)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3394, line: 56, size: 512, elements: !3395)
!3394 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401, !3402, !3404}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3393, file: !3394, line: 57, baseType: !3392, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3393, file: !3394, line: 58, baseType: !363, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3393, file: !3394, line: 59, baseType: !362, size: 64, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3393, file: !3394, line: 60, baseType: !362, size: 64, offset: 192)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3393, file: !3394, line: 61, baseType: !1256, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3393, file: !3394, line: 62, baseType: !7, size: 32, offset: 320)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3393, file: !3394, line: 63, baseType: !3403, size: 64, offset: 384)
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !368, line: 153, baseType: !372)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3393, file: !3394, line: 64, baseType: !2295, size: 64, offset: 448)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !593, file: !594, line: 1326, baseType: !606, size: 32, offset: 13184)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !593, file: !594, line: 1342, baseType: !363, size: 64, offset: 13248)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !593, file: !594, line: 1343, baseType: !374, size: 64, offset: 13312)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !593, file: !594, line: 1344, baseType: !372, size: 64, offset: 13376)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !593, file: !594, line: 1345, baseType: !374, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !593, file: !594, line: 1346, baseType: !374, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !593, file: !594, line: 1347, baseType: !374, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !593, file: !594, line: 1348, baseType: !825, size: 128, align: 64, offset: 13504)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !593, file: !594, line: 1358, baseType: !3414, size: 34816, offset: 13824)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3415, line: 485, size: 34816, elements: !3416)
!3415 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3416 = !{!3417, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3446, !3447, !3448, !3449, !3450, !3451, !3454, !3455, !3456}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3414, file: !3415, line: 487, baseType: !3418, size: 192)
!3418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3419, size: 192, elements: !1100)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3420, line: 16, size: 64, elements: !3421)
!3420 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3419, file: !3420, line: 17, baseType: !410, size: 16)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3419, file: !3420, line: 18, baseType: !410, size: 16, offset: 16)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3419, file: !3420, line: 19, baseType: !410, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3419, file: !3420, line: 19, baseType: !410, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3419, file: !3420, line: 19, baseType: !410, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3419, file: !3420, line: 19, baseType: !410, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3419, file: !3420, line: 19, baseType: !410, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3419, file: !3420, line: 20, baseType: !410, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3419, file: !3420, line: 20, baseType: !410, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3419, file: !3420, line: 20, baseType: !410, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3419, file: !3420, line: 20, baseType: !410, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3419, file: !3420, line: 20, baseType: !410, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3419, file: !3420, line: 20, baseType: !410, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3414, file: !3415, line: 491, baseType: !362, size: 64, offset: 192)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3414, file: !3415, line: 495, baseType: !412, size: 16, offset: 256)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3414, file: !3415, line: 496, baseType: !412, size: 16, offset: 272)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3414, file: !3415, line: 497, baseType: !412, size: 16, offset: 288)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3414, file: !3415, line: 498, baseType: !412, size: 16, offset: 304)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3414, file: !3415, line: 502, baseType: !362, size: 64, offset: 320)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3414, file: !3415, line: 503, baseType: !362, size: 64, offset: 384)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3414, file: !3415, line: 514, baseType: !3443, size: 256, offset: 448)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3444, size: 256, elements: !2527)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3415, line: 483, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3414, file: !3415, line: 516, baseType: !362, size: 64, offset: 704)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3414, file: !3415, line: 518, baseType: !362, size: 64, offset: 768)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3414, file: !3415, line: 520, baseType: !362, size: 64, offset: 832)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3414, file: !3415, line: 521, baseType: !362, size: 64, offset: 896)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3414, file: !3415, line: 522, baseType: !362, size: 64, offset: 960)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3414, file: !3415, line: 528, baseType: !3452, size: 64, offset: 1024)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3415, line: 10, flags: DIFlagFwdDecl)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3414, file: !3415, line: 535, baseType: !362, size: 64, offset: 1088)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3414, file: !3415, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3414, file: !3415, line: 540, baseType: !3457, size: 33280, offset: 1536)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3458, line: 317, size: 33280, elements: !3459)
!3458 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3459 = !{!3460, !3461, !3462}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3457, file: !3458, line: 330, baseType: !7, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3457, file: !3458, line: 337, baseType: !362, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3457, file: !3458, line: 348, baseType: !3463, size: 32768, offset: 512)
!3463 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3458, line: 304, size: 32768, elements: !3464)
!3464 = !{!3465, !3478, !3515, !3565, !3578}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3463, file: !3458, line: 305, baseType: !3466, size: 896)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3458, line: 12, size: 896, elements: !3467)
!3467 = !{!3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3477}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3466, file: !3458, line: 13, baseType: !545, size: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3466, file: !3458, line: 14, baseType: !545, size: 32, offset: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3466, file: !3458, line: 15, baseType: !545, size: 32, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3466, file: !3458, line: 16, baseType: !545, size: 32, offset: 96)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3466, file: !3458, line: 17, baseType: !545, size: 32, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3466, file: !3458, line: 18, baseType: !545, size: 32, offset: 160)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3466, file: !3458, line: 19, baseType: !545, size: 32, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3466, file: !3458, line: 22, baseType: !3476, size: 640, offset: 224)
!3476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 640, elements: !500)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3466, file: !3458, line: 25, baseType: !545, size: 32, offset: 864)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3463, file: !3458, line: 306, baseType: !3479, size: 4096, align: 128)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3458, line: 34, size: 4096, align: 128, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3500, !3501, !3502, !3504, !3506, !3510}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3479, file: !3458, line: 35, baseType: !410, size: 16)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3479, file: !3458, line: 36, baseType: !410, size: 16, offset: 16)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3479, file: !3458, line: 37, baseType: !410, size: 16, offset: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3479, file: !3458, line: 38, baseType: !410, size: 16, offset: 48)
!3485 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !3458, line: 39, baseType: !3486, size: 128, offset: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3479, file: !3458, line: 39, size: 128, elements: !3487)
!3487 = !{!3488, !3493}
!3488 = !DIDerivedType(tag: DW_TAG_member, scope: !3486, file: !3458, line: 40, baseType: !3489, size: 128)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3486, file: !3458, line: 40, size: 128, elements: !3490)
!3490 = !{!3491, !3492}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3489, file: !3458, line: 41, baseType: !372, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3489, file: !3458, line: 42, baseType: !372, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, scope: !3486, file: !3458, line: 44, baseType: !3494, size: 128)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3486, file: !3458, line: 44, size: 128, elements: !3495)
!3495 = !{!3496, !3497, !3498, !3499}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3494, file: !3458, line: 45, baseType: !545, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3494, file: !3458, line: 46, baseType: !545, size: 32, offset: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3494, file: !3458, line: 47, baseType: !545, size: 32, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3494, file: !3458, line: 48, baseType: !545, size: 32, offset: 96)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3479, file: !3458, line: 51, baseType: !545, size: 32, offset: 192)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3479, file: !3458, line: 52, baseType: !545, size: 32, offset: 224)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3479, file: !3458, line: 55, baseType: !3503, size: 1024, offset: 256)
!3503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 1024, elements: !470)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3479, file: !3458, line: 58, baseType: !3505, size: 2048, offset: 1280)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 2048, elements: !2204)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3479, file: !3458, line: 60, baseType: !3507, size: 384, offset: 3328)
!3507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 384, elements: !3508)
!3508 = !{!3509}
!3509 = !DISubrange(count: 12)
!3510 = !DIDerivedType(tag: DW_TAG_member, scope: !3479, file: !3458, line: 62, baseType: !3511, size: 384, offset: 3712)
!3511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3479, file: !3458, line: 62, size: 384, elements: !3512)
!3512 = !{!3513, !3514}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3511, file: !3458, line: 63, baseType: !3507, size: 384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3511, file: !3458, line: 64, baseType: !3507, size: 384)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3463, file: !3458, line: 307, baseType: !3516, size: 1088)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3458, line: 79, size: 1088, elements: !3517)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3564}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3516, file: !3458, line: 80, baseType: !545, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3516, file: !3458, line: 81, baseType: !545, size: 32, offset: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3516, file: !3458, line: 82, baseType: !545, size: 32, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3516, file: !3458, line: 83, baseType: !545, size: 32, offset: 96)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3516, file: !3458, line: 84, baseType: !545, size: 32, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3516, file: !3458, line: 85, baseType: !545, size: 32, offset: 160)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3516, file: !3458, line: 86, baseType: !545, size: 32, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3516, file: !3458, line: 88, baseType: !3476, size: 640, offset: 224)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3516, file: !3458, line: 89, baseType: !418, size: 8, offset: 864)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3516, file: !3458, line: 90, baseType: !418, size: 8, offset: 872)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3516, file: !3458, line: 91, baseType: !418, size: 8, offset: 880)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3516, file: !3458, line: 92, baseType: !418, size: 8, offset: 888)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3516, file: !3458, line: 93, baseType: !418, size: 8, offset: 896)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3516, file: !3458, line: 94, baseType: !418, size: 8, offset: 904)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3516, file: !3458, line: 95, baseType: !3533, size: 64, offset: 960)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3535, line: 11, size: 128, elements: !3536)
!3535 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3536 = !{!3537, !3538}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3534, file: !3535, line: 12, baseType: !371, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3534, file: !3535, line: 13, baseType: !3539, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3541, line: 56, size: 1344, elements: !3542)
!3541 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3542 = !{!3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3540, file: !3541, line: 61, baseType: !362, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3540, file: !3541, line: 62, baseType: !362, size: 64, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3540, file: !3541, line: 63, baseType: !362, size: 64, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3540, file: !3541, line: 64, baseType: !362, size: 64, offset: 192)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3540, file: !3541, line: 65, baseType: !362, size: 64, offset: 256)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3540, file: !3541, line: 66, baseType: !362, size: 64, offset: 320)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3540, file: !3541, line: 68, baseType: !362, size: 64, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3540, file: !3541, line: 69, baseType: !362, size: 64, offset: 448)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3540, file: !3541, line: 70, baseType: !362, size: 64, offset: 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3540, file: !3541, line: 71, baseType: !362, size: 64, offset: 576)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3540, file: !3541, line: 72, baseType: !362, size: 64, offset: 640)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3540, file: !3541, line: 73, baseType: !362, size: 64, offset: 704)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3540, file: !3541, line: 74, baseType: !362, size: 64, offset: 768)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3540, file: !3541, line: 75, baseType: !362, size: 64, offset: 832)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3540, file: !3541, line: 76, baseType: !362, size: 64, offset: 896)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3540, file: !3541, line: 81, baseType: !362, size: 64, offset: 960)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3540, file: !3541, line: 83, baseType: !362, size: 64, offset: 1024)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3540, file: !3541, line: 84, baseType: !362, size: 64, offset: 1088)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3540, file: !3541, line: 85, baseType: !362, size: 64, offset: 1152)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3540, file: !3541, line: 86, baseType: !362, size: 64, offset: 1216)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3540, file: !3541, line: 87, baseType: !362, size: 64, offset: 1280)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3516, file: !3458, line: 96, baseType: !545, size: 32, offset: 1024)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3463, file: !3458, line: 308, baseType: !3566, size: 4608, align: 512)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3458, line: 289, size: 4608, align: 512, elements: !3567)
!3567 = !{!3568, !3569, !3576}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3566, file: !3458, line: 290, baseType: !3479, size: 4096, align: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3566, file: !3458, line: 291, baseType: !3570, size: 512, offset: 4096)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3458, line: 268, size: 512, elements: !3571)
!3571 = !{!3572, !3573, !3574}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3570, file: !3458, line: 269, baseType: !372, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3570, file: !3458, line: 270, baseType: !372, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3570, file: !3458, line: 271, baseType: !3575, size: 384, offset: 128)
!3575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 384, elements: !2626)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3566, file: !3458, line: 292, baseType: !3577, offset: 4608)
!3577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, elements: !2722)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3463, file: !3458, line: 309, baseType: !3579, size: 32768)
!3579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 32768, elements: !3580)
!3580 = !{!3581}
!3581 = !DISubrange(count: 4096)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !504, file: !299, line: 704, baseType: !563, size: 192, offset: 512)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !504, file: !299, line: 706, baseType: !377, size: 32, offset: 704)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !504, file: !299, line: 707, baseType: !377, size: 32, offset: 736)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !504, file: !299, line: 708, baseType: !3586, size: 5568, offset: 768)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !3587)
!3587 = !{!3588, !3589, !3591, !3594, !3595, !3646, !3737, !3738, !3739, !3740, !3741, !3750, !3855, !3868, !4063, !4064, !4068, !4070, !4071, !4072, !4076, !4082, !4083, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4124, !4125, !4126, !4129, !4132, !4133, !4134, !4135}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3586, file: !237, line: 462, baseType: !2163, size: 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3586, file: !237, line: 463, baseType: !3590, size: 64, offset: 512)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3586, file: !237, line: 465, baseType: !3592, size: 64, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3586, file: !237, line: 467, baseType: !386, size: 64, offset: 640)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3586, file: !237, line: 468, baseType: !3596, size: 64, offset: 704)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3598)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3599)
!3599 = !{!3600, !3601, !3602, !3606, !3611, !3615}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3598, file: !237, line: 88, baseType: !386, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3598, file: !237, line: 89, baseType: !2242, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3598, file: !237, line: 90, baseType: !3603, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!377, !3590, !2197}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3598, file: !237, line: 91, baseType: !3607, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!369, !3590, !3610, !2312, !2313}
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3598, file: !237, line: 93, baseType: !3612, size: 64, offset: 256)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{null, !3590}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3598, file: !237, line: 95, baseType: !3616, size: 64, offset: 320)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3618)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3619)
!3619 = !{!3620, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3618, file: !244, line: 279, baseType: !3621, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!377, !3590}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3618, file: !244, line: 280, baseType: !3612, size: 64, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3618, file: !244, line: 281, baseType: !3621, size: 64, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3618, file: !244, line: 282, baseType: !3621, size: 64, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3618, file: !244, line: 283, baseType: !3621, size: 64, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3618, file: !244, line: 284, baseType: !3621, size: 64, offset: 320)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3618, file: !244, line: 285, baseType: !3621, size: 64, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3618, file: !244, line: 286, baseType: !3621, size: 64, offset: 448)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3618, file: !244, line: 287, baseType: !3621, size: 64, offset: 512)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3618, file: !244, line: 288, baseType: !3621, size: 64, offset: 576)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3618, file: !244, line: 289, baseType: !3621, size: 64, offset: 640)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3618, file: !244, line: 290, baseType: !3621, size: 64, offset: 704)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3618, file: !244, line: 291, baseType: !3621, size: 64, offset: 768)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3618, file: !244, line: 292, baseType: !3621, size: 64, offset: 832)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3618, file: !244, line: 293, baseType: !3621, size: 64, offset: 896)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3618, file: !244, line: 294, baseType: !3621, size: 64, offset: 960)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3618, file: !244, line: 295, baseType: !3621, size: 64, offset: 1024)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3618, file: !244, line: 296, baseType: !3621, size: 64, offset: 1088)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3618, file: !244, line: 297, baseType: !3621, size: 64, offset: 1152)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3618, file: !244, line: 298, baseType: !3621, size: 64, offset: 1216)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3618, file: !244, line: 299, baseType: !3621, size: 64, offset: 1280)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3618, file: !244, line: 300, baseType: !3621, size: 64, offset: 1344)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3618, file: !244, line: 301, baseType: !3621, size: 64, offset: 1408)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3586, file: !237, line: 470, baseType: !3647, size: 64, offset: 768)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3649, line: 82, size: 1408, elements: !3650)
!3649 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3656, !3657, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3732, !3735, !3736}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3648, file: !3649, line: 83, baseType: !386, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3648, file: !3649, line: 84, baseType: !386, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3648, file: !3649, line: 85, baseType: !3590, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3648, file: !3649, line: 86, baseType: !2242, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3648, file: !3649, line: 87, baseType: !2242, size: 64, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3648, file: !3649, line: 88, baseType: !2242, size: 64, offset: 320)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3648, file: !3649, line: 90, baseType: !3658, size: 64, offset: 384)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!377, !3590, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3663)
!3663 = !{!3664, !3665, !3666, !3667, !3668, !3669, !3670, !3683, !3696, !3697, !3698, !3699, !3700, !3708, !3709, !3710, !3711, !3712, !3713}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3662, file: !231, line: 96, baseType: !386, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3662, file: !231, line: 97, baseType: !3647, size: 64, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3662, file: !231, line: 99, baseType: !364, size: 64, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3662, file: !231, line: 100, baseType: !386, size: 64, offset: 192)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3662, file: !231, line: 102, baseType: !935, size: 8, offset: 256)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3662, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3662, file: !231, line: 105, baseType: !3671, size: 64, offset: 320)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3673)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3674, line: 262, size: 1600, elements: !3675)
!3674 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3675 = !{!3676, !3677, !3678, !3682}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3673, file: !3674, line: 263, baseType: !1727, size: 256)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3673, file: !3674, line: 264, baseType: !1727, size: 256, offset: 256)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3673, file: !3674, line: 265, baseType: !3679, size: 1024, offset: 512)
!3679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 1024, elements: !3680)
!3680 = !{!3681}
!3681 = !DISubrange(count: 128)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3673, file: !3674, line: 266, baseType: !2295, size: 64, offset: 1536)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3662, file: !231, line: 106, baseType: !3684, size: 64, offset: 384)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3686)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3674, line: 210, size: 256, elements: !3687)
!3687 = !{!3688, !3692, !3694, !3695}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3686, file: !3674, line: 211, baseType: !3689, size: 72)
!3689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 72, elements: !3690)
!3690 = !{!3691}
!3691 = !DISubrange(count: 9)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3686, file: !3674, line: 212, baseType: !3693, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3674, line: 14, baseType: !362)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3686, file: !3674, line: 213, baseType: !546, size: 32, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3686, file: !3674, line: 214, baseType: !546, size: 32, offset: 224)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3662, file: !231, line: 108, baseType: !3621, size: 64, offset: 448)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3662, file: !231, line: 109, baseType: !3612, size: 64, offset: 512)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3662, file: !231, line: 110, baseType: !3621, size: 64, offset: 576)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3662, file: !231, line: 111, baseType: !3612, size: 64, offset: 640)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3662, file: !231, line: 112, baseType: !3701, size: 64, offset: 704)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!377, !3590, !3704}
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3705)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3706)
!3706 = !{!3707}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3705, file: !244, line: 51, baseType: !377, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3662, file: !231, line: 113, baseType: !3621, size: 64, offset: 768)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3662, file: !231, line: 114, baseType: !2242, size: 64, offset: 832)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3662, file: !231, line: 115, baseType: !2242, size: 64, offset: 896)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3662, file: !231, line: 117, baseType: !3616, size: 64, offset: 960)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3662, file: !231, line: 118, baseType: !3612, size: 64, offset: 1024)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3662, file: !231, line: 120, baseType: !3714, size: 64, offset: 1088)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3648, file: !3649, line: 91, baseType: !3603, size: 64, offset: 448)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3648, file: !3649, line: 92, baseType: !3621, size: 64, offset: 512)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3648, file: !3649, line: 93, baseType: !3612, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3648, file: !3649, line: 94, baseType: !3621, size: 64, offset: 640)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3648, file: !3649, line: 95, baseType: !3612, size: 64, offset: 704)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3648, file: !3649, line: 97, baseType: !3621, size: 64, offset: 768)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3648, file: !3649, line: 98, baseType: !3621, size: 64, offset: 832)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3648, file: !3649, line: 100, baseType: !3701, size: 64, offset: 896)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3648, file: !3649, line: 101, baseType: !3621, size: 64, offset: 960)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3648, file: !3649, line: 103, baseType: !3621, size: 64, offset: 1024)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3648, file: !3649, line: 105, baseType: !3621, size: 64, offset: 1088)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3648, file: !3649, line: 107, baseType: !3616, size: 64, offset: 1152)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3648, file: !3649, line: 109, baseType: !3729, size: 64, offset: 1216)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3731)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3649, line: 109, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3648, file: !3649, line: 111, baseType: !3733, size: 64, offset: 1280)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3649, line: 111, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3648, file: !3649, line: 112, baseType: !1094, offset: 1344)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3648, file: !3649, line: 114, baseType: !935, size: 8, offset: 1344)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3586, file: !237, line: 471, baseType: !3661, size: 64, offset: 832)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3586, file: !237, line: 473, baseType: !363, size: 64, offset: 896)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3586, file: !237, line: 475, baseType: !363, size: 64, offset: 960)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3586, file: !237, line: 480, baseType: !1459, size: 192, offset: 1024)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3586, file: !237, line: 484, baseType: !3742, size: 576, offset: 1216)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3743)
!3743 = !{!3744, !3745, !3746, !3747, !3748, !3749}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3742, file: !237, line: 362, baseType: !636, size: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3742, file: !237, line: 363, baseType: !636, size: 128, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3742, file: !237, line: 364, baseType: !636, size: 128, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3742, file: !237, line: 365, baseType: !636, size: 128, offset: 384)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3742, file: !237, line: 366, baseType: !935, size: 8, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3742, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3586, file: !237, line: 485, baseType: !3751, size: 2304, offset: 1792)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3752)
!3752 = !{!3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3848, !3852}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3751, file: !244, line: 566, baseType: !3704, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3751, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3751, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3751, file: !244, line: 569, baseType: !935, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3751, file: !244, line: 570, baseType: !935, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3751, file: !244, line: 571, baseType: !935, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3751, file: !244, line: 572, baseType: !935, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3751, file: !244, line: 573, baseType: !935, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3751, file: !244, line: 574, baseType: !935, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3751, file: !244, line: 575, baseType: !935, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3751, file: !244, line: 576, baseType: !935, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3751, file: !244, line: 577, baseType: !545, size: 32, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3751, file: !244, line: 578, baseType: !1192, offset: 96)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3751, file: !244, line: 580, baseType: !636, size: 128, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3751, file: !244, line: 581, baseType: !2858, size: 192, offset: 256)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3751, file: !244, line: 582, baseType: !3769, size: 64, offset: 448)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3771, line: 43, size: 1472, elements: !3772)
!3771 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3772 = !{!3773, !3774, !3775, !3776, !3777, !3780, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3770, file: !3771, line: 44, baseType: !386, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3770, file: !3771, line: 45, baseType: !377, size: 32, offset: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3770, file: !3771, line: 46, baseType: !636, size: 128, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3770, file: !3771, line: 47, baseType: !1192, offset: 256)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3770, file: !3771, line: 48, baseType: !3778, size: 64, offset: 256)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3770, file: !3771, line: 49, baseType: !3781, size: 320, offset: 320)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3782, line: 11, size: 320, elements: !3783)
!3782 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3783 = !{!3784, !3785, !3786, !3791}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3781, file: !3782, line: 16, baseType: !1088, size: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3781, file: !3782, line: 17, baseType: !362, size: 64, offset: 128)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3781, file: !3782, line: 18, baseType: !3787, size: 64, offset: 192)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3781, file: !3782, line: 19, baseType: !545, size: 32, offset: 256)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3770, file: !3771, line: 50, baseType: !362, size: 64, offset: 640)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3770, file: !3771, line: 51, baseType: !688, size: 64, offset: 704)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3770, file: !3771, line: 52, baseType: !688, size: 64, offset: 768)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3770, file: !3771, line: 53, baseType: !688, size: 64, offset: 832)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3770, file: !3771, line: 54, baseType: !688, size: 64, offset: 896)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3770, file: !3771, line: 55, baseType: !688, size: 64, offset: 960)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3770, file: !3771, line: 56, baseType: !362, size: 64, offset: 1024)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3770, file: !3771, line: 57, baseType: !362, size: 64, offset: 1088)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3770, file: !3771, line: 58, baseType: !362, size: 64, offset: 1152)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3770, file: !3771, line: 59, baseType: !362, size: 64, offset: 1216)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3770, file: !3771, line: 60, baseType: !362, size: 64, offset: 1280)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3770, file: !3771, line: 61, baseType: !3590, size: 64, offset: 1344)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3770, file: !3771, line: 62, baseType: !935, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3770, file: !3771, line: 63, baseType: !935, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3751, file: !244, line: 583, baseType: !935, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3751, file: !244, line: 584, baseType: !935, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3751, file: !244, line: 585, baseType: !935, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3751, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3751, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3751, file: !244, line: 592, baseType: !680, size: 512, offset: 576)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3751, file: !244, line: 593, baseType: !372, size: 64, offset: 1088)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3751, file: !244, line: 594, baseType: !1847, size: 256, offset: 1152)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3751, file: !244, line: 595, baseType: !1691, size: 128, offset: 1408)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3751, file: !244, line: 596, baseType: !3778, size: 64, offset: 1536)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3751, file: !244, line: 597, baseType: !611, size: 32, offset: 1600)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3751, file: !244, line: 598, baseType: !611, size: 32, offset: 1632)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3751, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3751, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3751, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3751, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3751, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3751, file: !244, line: 604, baseType: !935, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3751, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3751, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3751, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3751, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3751, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3751, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3751, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3751, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3751, file: !244, line: 613, baseType: !377, size: 32, offset: 1792)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3751, file: !244, line: 614, baseType: !377, size: 32, offset: 1824)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3751, file: !244, line: 615, baseType: !372, size: 64, offset: 1856)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3751, file: !244, line: 616, baseType: !372, size: 64, offset: 1920)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3751, file: !244, line: 617, baseType: !372, size: 64, offset: 1984)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3751, file: !244, line: 618, baseType: !372, size: 64, offset: 2048)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3751, file: !244, line: 620, baseType: !3839, size: 64, offset: 2112)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3840, file: !244, line: 537, baseType: !1192)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3840, file: !244, line: 538, baseType: !7, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3840, file: !244, line: 540, baseType: !636, size: 128, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3840, file: !244, line: 543, baseType: !3846, size: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3751, file: !244, line: 621, baseType: !3849, size: 64, offset: 2176)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{null, !3590, !2583}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3751, file: !244, line: 622, baseType: !3853, size: 64, offset: 2240)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3586, file: !237, line: 486, baseType: !3856, size: 64, offset: 4096)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3858)
!3858 = !{!3859, !3860, !3861, !3865, !3866, !3867}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3857, file: !244, line: 643, baseType: !3618, size: 1472)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3857, file: !244, line: 644, baseType: !3621, size: 64, offset: 1472)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3857, file: !244, line: 645, baseType: !3862, size: 64, offset: 1536)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !3590, !935}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3857, file: !244, line: 646, baseType: !3621, size: 64, offset: 1600)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3857, file: !244, line: 647, baseType: !3612, size: 64, offset: 1664)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3857, file: !244, line: 648, baseType: !3612, size: 64, offset: 1728)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3586, file: !237, line: 493, baseType: !3869, size: 64, offset: 4160)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3871)
!3871 = !{!3872, !3873, !3874, !4047, !4048, !4049, !4050, !4051, !4052, !4055, !4056, !4057, !4058, !4059, !4060, !4061}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3870, file: !258, line: 163, baseType: !636, size: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3870, file: !258, line: 164, baseType: !386, size: 64, offset: 128)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3870, file: !258, line: 165, baseType: !3875, size: 64, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3877)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3878)
!3878 = !{!3879, !3997, !4008, !4013, !4017, !4024, !4028, !4032, !4039, !4043}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3877, file: !258, line: 106, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!377, !3869, !3883, !257}
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3885, line: 51, size: 1344, elements: !3886)
!3885 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3886 = !{!3887, !3888, !3890, !3891, !3981, !3990, !3991, !3992, !3993, !3994, !3995, !3996}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3884, file: !3885, line: 52, baseType: !386, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3884, file: !3885, line: 53, baseType: !3889, size: 32, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3885, line: 28, baseType: !545)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3884, file: !3885, line: 54, baseType: !386, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3884, file: !3885, line: 55, baseType: !3892, size: 192, offset: 192)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3893, line: 17, size: 192, elements: !3894)
!3893 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3894 = !{!3895, !3897, !3980}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3892, file: !3893, line: 18, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3892, file: !3893, line: 19, baseType: !3898, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3900)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3893, line: 110, size: 1152, elements: !3901)
!3901 = !{!3902, !3906, !3910, !3916, !3922, !3926, !3930, !3935, !3939, !3940, !3944, !3948, !3952, !3963, !3964, !3965, !3966, !3976}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3900, file: !3893, line: 111, baseType: !3903, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!3896, !3896}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3900, file: !3893, line: 112, baseType: !3907, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{null, !3896}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3900, file: !3893, line: 113, baseType: !3911, size: 64, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!935, !3914}
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3892)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3900, file: !3893, line: 114, baseType: !3917, size: 64, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!2295, !3914, !3920}
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3586)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3900, file: !3893, line: 116, baseType: !3923, size: 64, offset: 256)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!935, !3914, !386}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3900, file: !3893, line: 118, baseType: !3927, size: 64, offset: 320)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!377, !3914, !386, !7, !363, !1024}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3900, file: !3893, line: 123, baseType: !3931, size: 64, offset: 384)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!377, !3914, !386, !3934, !1024}
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3900, file: !3893, line: 126, baseType: !3936, size: 64, offset: 448)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!386, !3914}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3900, file: !3893, line: 127, baseType: !3936, size: 64, offset: 512)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3900, file: !3893, line: 128, baseType: !3941, size: 64, offset: 576)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!3896, !3914}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3900, file: !3893, line: 130, baseType: !3945, size: 64, offset: 640)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!3896, !3914, !3896}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3900, file: !3893, line: 133, baseType: !3949, size: 64, offset: 704)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!3896, !3914, !386}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3900, file: !3893, line: 135, baseType: !3953, size: 64, offset: 768)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!377, !3914, !386, !386, !7, !7, !3956}
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3893, line: 43, size: 640, elements: !3958)
!3958 = !{!3959, !3960, !3961}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3957, file: !3893, line: 44, baseType: !3896, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3957, file: !3893, line: 45, baseType: !7, size: 32, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3957, file: !3893, line: 46, baseType: !3962, size: 512, offset: 128)
!3962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 512, elements: !718)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3900, file: !3893, line: 140, baseType: !3945, size: 64, offset: 832)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3900, file: !3893, line: 143, baseType: !3941, size: 64, offset: 896)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3900, file: !3893, line: 145, baseType: !3903, size: 64, offset: 960)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3900, file: !3893, line: 146, baseType: !3967, size: 64, offset: 1024)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!377, !3914, !3970}
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3893, line: 29, size: 128, elements: !3972)
!3972 = !{!3973, !3974, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3971, file: !3893, line: 30, baseType: !7, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3971, file: !3893, line: 31, baseType: !7, size: 32, offset: 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3971, file: !3893, line: 32, baseType: !3914, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3900, file: !3893, line: 148, baseType: !3977, size: 64, offset: 1088)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!377, !3914, !3590}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3892, file: !3893, line: 20, baseType: !3590, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3884, file: !3885, line: 57, baseType: !3982, size: 64, offset: 384)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3885, line: 31, size: 704, elements: !3984)
!3984 = !{!3985, !3986, !3987, !3988, !3989}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3983, file: !3885, line: 32, baseType: !369, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3983, file: !3885, line: 33, baseType: !377, size: 32, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3983, file: !3885, line: 34, baseType: !363, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3983, file: !3885, line: 35, baseType: !3982, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3983, file: !3885, line: 43, baseType: !2257, size: 448, offset: 256)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3884, file: !3885, line: 58, baseType: !3982, size: 64, offset: 448)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3884, file: !3885, line: 59, baseType: !3883, size: 64, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3884, file: !3885, line: 60, baseType: !3883, size: 64, offset: 576)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3884, file: !3885, line: 61, baseType: !3883, size: 64, offset: 640)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3884, file: !3885, line: 63, baseType: !2163, size: 512, offset: 704)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3884, file: !3885, line: 65, baseType: !362, size: 64, offset: 1216)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3884, file: !3885, line: 66, baseType: !363, size: 64, offset: 1280)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3877, file: !258, line: 108, baseType: !3998, size: 64, offset: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!377, !3869, !4001, !257}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !4003)
!4003 = !{!4004, !4005, !4006}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4002, file: !258, line: 64, baseType: !3896, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4002, file: !258, line: 65, baseType: !377, size: 32, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4002, file: !258, line: 66, baseType: !4007, size: 512, offset: 96)
!4007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 512, elements: !1735)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3877, file: !258, line: 110, baseType: !4009, size: 64, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!377, !3869, !7, !4012}
!4012 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !368, line: 164, baseType: !362)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3877, file: !258, line: 111, baseType: !4014, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !3869, !7}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3877, file: !258, line: 112, baseType: !4018, size: 64, offset: 256)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!377, !3869, !3883, !4021, !7, !4023, !440}
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3877, file: !258, line: 117, baseType: !4025, size: 64, offset: 320)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!377, !3869, !7, !7, !363}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3877, file: !258, line: 119, baseType: !4029, size: 64, offset: 384)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{null, !3869, !7, !7}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3877, file: !258, line: 121, baseType: !4033, size: 64, offset: 448)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!377, !3869, !4036, !935}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4038, line: 11, flags: DIFlagFwdDecl)
!4038 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3877, file: !258, line: 122, baseType: !4040, size: 64, offset: 512)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{null, !3869, !4036}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3877, file: !258, line: 123, baseType: !4044, size: 64, offset: 576)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!377, !3869, !4001, !4023, !440}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3870, file: !258, line: 166, baseType: !363, size: 64, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3870, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3870, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3870, file: !258, line: 171, baseType: !3896, size: 64, offset: 384)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3870, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3870, file: !258, line: 173, baseType: !4053, size: 64, offset: 512)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3870, file: !258, line: 175, baseType: !3869, size: 64, offset: 576)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3870, file: !258, line: 182, baseType: !4012, size: 64, offset: 640)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3870, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3870, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3870, file: !258, line: 185, baseType: !1188, size: 128, offset: 768)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3870, file: !258, line: 186, baseType: !1459, size: 192, offset: 896)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3870, file: !258, line: 187, baseType: !4062, offset: 1088)
!4062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2886)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3586, file: !237, line: 499, baseType: !636, size: 128, offset: 4224)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3586, file: !237, line: 502, baseType: !4065, size: 64, offset: 4352)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4067)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3586, file: !237, line: 504, baseType: !4069, size: 64, offset: 4416)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3586, file: !237, line: 505, baseType: !372, size: 64, offset: 4480)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3586, file: !237, line: 510, baseType: !372, size: 64, offset: 4544)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3586, file: !237, line: 511, baseType: !4073, size: 64, offset: 4608)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4075)
!4075 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3586, file: !237, line: 513, baseType: !4077, size: 64, offset: 4672)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4079)
!4079 = !{!4080, !4081}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4078, file: !237, line: 293, baseType: !7, size: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4078, file: !237, line: 294, baseType: !362, size: 64, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3586, file: !237, line: 515, baseType: !636, size: 128, offset: 4736)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3586, file: !237, line: 526, baseType: !4084, offset: 4864)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4085, line: 5, elements: !575)
!4085 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3586, file: !237, line: 528, baseType: !3883, size: 64, offset: 4864)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3586, file: !237, line: 529, baseType: !3896, size: 64, offset: 4928)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3586, file: !237, line: 534, baseType: !958, size: 32, offset: 4992)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3586, file: !237, line: 535, baseType: !545, size: 32, offset: 5024)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3586, file: !237, line: 537, baseType: !1192, offset: 5056)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3586, file: !237, line: 538, baseType: !636, size: 128, offset: 5056)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3586, file: !237, line: 540, baseType: !4093, size: 64, offset: 5184)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4095, line: 54, size: 960, elements: !4096)
!4095 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4102, !4103, !4107, !4111, !4112, !4113, !4114, !4118, !4122, !4123}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4094, file: !4095, line: 55, baseType: !386, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4094, file: !4095, line: 56, baseType: !364, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4094, file: !4095, line: 58, baseType: !2242, size: 64, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4094, file: !4095, line: 59, baseType: !2242, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4094, file: !4095, line: 60, baseType: !2169, size: 64, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4094, file: !4095, line: 62, baseType: !3603, size: 64, offset: 320)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4094, file: !4095, line: 63, baseType: !4104, size: 64, offset: 384)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!369, !3590, !3610}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4094, file: !4095, line: 65, baseType: !4108, size: 64, offset: 448)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{null, !4093}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4094, file: !4095, line: 66, baseType: !3612, size: 64, offset: 512)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4094, file: !4095, line: 68, baseType: !3621, size: 64, offset: 576)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4094, file: !4095, line: 70, baseType: !2278, size: 64, offset: 640)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4094, file: !4095, line: 71, baseType: !4115, size: 64, offset: 704)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!2295, !3590}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4094, file: !4095, line: 73, baseType: !4119, size: 64, offset: 768)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{null, !3590, !2312, !2313}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4094, file: !4095, line: 75, baseType: !3616, size: 64, offset: 832)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4094, file: !4095, line: 77, baseType: !3733, size: 64, offset: 896)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3586, file: !237, line: 541, baseType: !2242, size: 64, offset: 5248)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3586, file: !237, line: 543, baseType: !3612, size: 64, offset: 5312)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3586, file: !237, line: 544, baseType: !4127, size: 64, offset: 5376)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3586, file: !237, line: 545, baseType: !4130, size: 64, offset: 5440)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3586, file: !237, line: 547, baseType: !935, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3586, file: !237, line: 548, baseType: !935, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3586, file: !237, line: 549, baseType: !935, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3586, file: !237, line: 550, baseType: !935, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !504, file: !299, line: 709, baseType: !362, size: 64, offset: 6336)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !504, file: !299, line: 713, baseType: !377, size: 32, offset: 6400)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !504, file: !299, line: 714, baseType: !4139, size: 384, offset: 6432)
!4139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 384, elements: !4140)
!4140 = !{!4141}
!4141 = !DISubrange(count: 48)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !504, file: !299, line: 715, baseType: !2858, size: 192, offset: 6848)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !504, file: !299, line: 717, baseType: !1459, size: 192, offset: 7040)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !504, file: !299, line: 718, baseType: !636, size: 128, offset: 7232)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !504, file: !299, line: 720, baseType: !4146, size: 64, offset: 7360)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !299, line: 618, size: 832, elements: !4148)
!4148 = !{!4149, !4153, !4154, !4158, !4159, !4160, !4161, !4165, !4166, !4169, !4170, !4173, !4176}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4147, file: !299, line: 619, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!377, !503}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4147, file: !299, line: 621, baseType: !4150, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4147, file: !299, line: 622, baseType: !4155, size: 64, offset: 128)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{null, !503, !377}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4147, file: !299, line: 623, baseType: !4150, size: 64, offset: 192)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4147, file: !299, line: 624, baseType: !4155, size: 64, offset: 256)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4147, file: !299, line: 625, baseType: !4150, size: 64, offset: 320)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4147, file: !299, line: 627, baseType: !4162, size: 64, offset: 384)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !503}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4147, file: !299, line: 628, baseType: !4162, size: 64, offset: 448)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4147, file: !299, line: 631, baseType: !4167, size: 64, offset: 512)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !299, line: 631, flags: DIFlagFwdDecl)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4147, file: !299, line: 632, baseType: !4167, size: 64, offset: 576)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4147, file: !299, line: 633, baseType: !4171, size: 64, offset: 640)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !299, line: 633, flags: DIFlagFwdDecl)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4147, file: !299, line: 634, baseType: !4174, size: 64, offset: 704)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !299, line: 634, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4147, file: !299, line: 635, baseType: !4174, size: 64, offset: 768)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !504, file: !299, line: 721, baseType: !4178, size: 64, offset: 7424)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4180)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !299, line: 664, size: 192, elements: !4181)
!4181 = !{!4182, !4183, !4184, !4185, !4186, !4187}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4180, file: !299, line: 665, baseType: !372, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4180, file: !299, line: 666, baseType: !377, size: 32, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4180, file: !299, line: 667, baseType: !410, size: 16, offset: 96)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4180, file: !299, line: 668, baseType: !410, size: 16, offset: 112)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4180, file: !299, line: 669, baseType: !410, size: 16, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4180, file: !299, line: 670, baseType: !410, size: 16, offset: 144)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !504, file: !299, line: 723, baseType: !3869, size: 64, offset: 7488)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !494, file: !299, line: 330, baseType: !3586, size: 5568, offset: 256)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !494, file: !299, line: 331, baseType: !377, size: 32, offset: 5824)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !494, file: !299, line: 332, baseType: !377, size: 32, offset: 5856)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !494, file: !299, line: 333, baseType: !636, size: 128, offset: 5888)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4195)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_device_id", file: !3674, line: 457, size: 256, elements: !4196)
!4196 = !{!4197, !4198}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4195, file: !3674, line: 458, baseType: !499, size: 160)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4195, file: !3674, line: 459, baseType: !3693, size: 64, offset: 192)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !486, file: !299, line: 260, baseType: !4200, size: 64, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!377, !493}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "probe_new", scope: !486, file: !299, line: 265, baseType: !4200, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !486, file: !299, line: 268, baseType: !4205, size: 64, offset: 256)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{null, !493}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "alert", scope: !486, file: !299, line: 277, baseType: !4209, size: 64, offset: 320)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{null, !493, !298, !7}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !486, file: !299, line: 283, baseType: !4213, size: 64, offset: 384)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!377, !493, !7, !363}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !486, file: !299, line: 285, baseType: !3662, size: 1152, offset: 448)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !486, file: !299, line: 286, baseType: !4193, size: 64, offset: 1600)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !486, file: !299, line: 289, baseType: !4219, size: 64, offset: 1664)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!377, !493, !4222}
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !299, line: 410, size: 640, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4258, !4274, !4275}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4223, file: !299, line: 411, baseType: !499, size: 160)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4223, file: !299, line: 412, baseType: !412, size: 16, offset: 160)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4223, file: !299, line: 413, baseType: !412, size: 16, offset: 176)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4223, file: !299, line: 414, baseType: !386, size: 64, offset: 192)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4223, file: !299, line: 415, baseType: !363, size: 64, offset: 256)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4223, file: !299, line: 416, baseType: !3883, size: 64, offset: 320)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4223, file: !299, line: 417, baseType: !3896, size: 64, offset: 384)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4223, file: !299, line: 418, baseType: !4233, size: 64, offset: 448)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4235)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !290, line: 263, size: 256, elements: !4236)
!4236 = !{!4237, !4238, !4239, !4240, !4241}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4235, file: !290, line: 264, baseType: !386, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4235, file: !290, line: 265, baseType: !1024, size: 64, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !4235, file: !290, line: 266, baseType: !935, size: 8, offset: 128)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4235, file: !290, line: 267, baseType: !289, size: 32, offset: 160)
!4241 = !DIDerivedType(tag: DW_TAG_member, scope: !4235, file: !290, line: 268, baseType: !4242, size: 64, offset: 192)
!4242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4235, file: !290, line: 268, size: 64, elements: !4243)
!4243 = !{!4244, !4245}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4242, file: !290, line: 269, baseType: !2295, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4242, file: !290, line: 276, baseType: !4246, size: 64)
!4246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4242, file: !290, line: 270, size: 64, elements: !4247)
!4247 = !{!4248, !4250, !4252, !4254, !4256}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !4246, file: !290, line: 271, baseType: !4249, size: 64)
!4249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 64, elements: !718)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !4246, file: !290, line: 272, baseType: !4251, size: 64)
!4251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 64, elements: !2527)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !4246, file: !290, line: 273, baseType: !4253, size: 64)
!4253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 64, elements: !2567)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !4246, file: !290, line: 274, baseType: !4255, size: 64)
!4255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 64, elements: !763)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4246, file: !290, line: 275, baseType: !4257, size: 64)
!4257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 64, elements: !763)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4223, file: !299, line: 419, baseType: !4259, size: 64, offset: 512)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4261)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4262, line: 20, size: 512, elements: !4263)
!4262 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4263 = !{!4264, !4266, !4267, !4268, !4269, !4270, !4272, !4273}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4261, file: !4262, line: 21, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !368, line: 158, baseType: !3403)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4261, file: !4262, line: 22, baseType: !4265, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4261, file: !4262, line: 23, baseType: !386, size: 64, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4261, file: !4262, line: 24, baseType: !362, size: 64, offset: 192)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4261, file: !4262, line: 25, baseType: !362, size: 64, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4261, file: !4262, line: 26, baseType: !4271, size: 64, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4261, file: !4262, line: 26, baseType: !4271, size: 64, offset: 384)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4261, file: !4262, line: 26, baseType: !4271, size: 64, offset: 448)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4223, file: !299, line: 420, baseType: !7, size: 32, offset: 576)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4223, file: !299, line: 421, baseType: !377, size: 32, offset: 608)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "address_list", scope: !486, file: !299, line: 290, baseType: !4277, size: 64, offset: 1728)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !486, file: !299, line: 291, baseType: !636, size: 128, offset: 1792)
!4280 = !DIGlobalVariableExpression(var: !4281, expr: !DIExpression())
!4281 = distinct !DIGlobalVariable(name: "lgdt3302_ops", scope: !2, file: !3, line: 933, type: !4282, isLocal: true, isDefinition: true)
!4282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4283)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !4284)
!4284 = !{!4285, !4297, !4298, !4425, !4426, !4427, !4431, !4432, !4438, !4443, !4447, !4448, !4458, !4463, !4467, !4471, !4476, !4477, !4478, !4479, !4489, !4500, !4504, !4508, !4512, !4516, !4520, !4524, !4525, !4526, !4530, !4584}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4283, file: !51, line: 436, baseType: !4286, size: 1280)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !4287)
!4287 = !{!4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4286, file: !51, line: 339, baseType: !3679, size: 1024)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4286, file: !51, line: 340, baseType: !545, size: 32, offset: 1024)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4286, file: !51, line: 341, baseType: !545, size: 32, offset: 1056)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4286, file: !51, line: 342, baseType: !545, size: 32, offset: 1088)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4286, file: !51, line: 343, baseType: !545, size: 32, offset: 1120)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4286, file: !51, line: 344, baseType: !545, size: 32, offset: 1152)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4286, file: !51, line: 345, baseType: !545, size: 32, offset: 1184)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4286, file: !51, line: 346, baseType: !545, size: 32, offset: 1216)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4286, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4283, file: !51, line: 438, baseType: !4249, size: 64, offset: 1280)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4283, file: !51, line: 440, baseType: !4299, size: 64, offset: 1344)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{null, !4302}
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !4304)
!4304 = !{!4305, !4306, !4307, !4341, !4342, !4343, !4344, !4345, !4346, !4419, !4423, !4424}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4303, file: !51, line: 687, baseType: !2454, size: 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4303, file: !51, line: 688, baseType: !4283, size: 6016, offset: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4303, file: !51, line: 689, baseType: !4308, size: 64, offset: 6080)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !4310)
!4310 = !{!4311, !4312, !4313, !4314, !4315, !4317, !4318, !4319, !4320, !4321, !4340}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4309, file: !272, line: 102, baseType: !377, size: 32)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4309, file: !272, line: 103, baseType: !636, size: 128, offset: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4309, file: !272, line: 104, baseType: !636, size: 128, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4309, file: !272, line: 105, baseType: !386, size: 64, offset: 320)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4309, file: !272, line: 106, baseType: !4316, size: 48, offset: 384)
!4316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 48, elements: !2626)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4309, file: !272, line: 107, baseType: !363, size: 64, offset: 448)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4309, file: !272, line: 109, baseType: !3590, size: 64, offset: 512)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4309, file: !272, line: 111, baseType: !364, size: 64, offset: 576)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4309, file: !272, line: 113, baseType: !377, size: 32, offset: 640)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4309, file: !272, line: 114, baseType: !4322, size: 64, offset: 704)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4324)
!4324 = !{!4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4339}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4323, file: !272, line: 158, baseType: !636, size: 128)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4323, file: !272, line: 159, baseType: !1905, size: 64, offset: 128)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4323, file: !272, line: 160, baseType: !4308, size: 64, offset: 192)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4323, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4323, file: !272, line: 162, baseType: !377, size: 32, offset: 288)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4323, file: !272, line: 163, baseType: !545, size: 32, offset: 320)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4323, file: !272, line: 167, baseType: !377, size: 32, offset: 352)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4323, file: !272, line: 168, baseType: !377, size: 32, offset: 384)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4323, file: !272, line: 169, baseType: !377, size: 32, offset: 416)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4323, file: !272, line: 171, baseType: !1691, size: 128, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4323, file: !272, line: 173, baseType: !4336, size: 64, offset: 576)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!377, !812, !7, !363}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4323, file: !272, line: 187, baseType: !363, size: 64, offset: 640)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4309, file: !272, line: 115, baseType: !1459, size: 192, offset: 768)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4303, file: !51, line: 690, baseType: !363, size: 64, offset: 6144)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4303, file: !51, line: 691, baseType: !363, size: 64, offset: 6208)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4303, file: !51, line: 692, baseType: !363, size: 64, offset: 6272)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4303, file: !51, line: 693, baseType: !363, size: 64, offset: 6336)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4303, file: !51, line: 694, baseType: !363, size: 64, offset: 6400)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4303, file: !51, line: 695, baseType: !4347, size: 3648, offset: 6464)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4412, !4413, !4414, !4415, !4416, !4417, !4418}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4347, file: !51, line: 587, baseType: !545, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4347, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4347, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4347, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4347, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4347, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4347, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4347, file: !51, line: 595, baseType: !545, size: 32, offset: 224)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4347, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4347, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4347, file: !51, line: 598, baseType: !545, size: 32, offset: 320)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4347, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4347, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4347, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4347, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4347, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4347, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4347, file: !51, line: 610, baseType: !418, size: 8, offset: 544)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4347, file: !51, line: 611, baseType: !418, size: 8, offset: 552)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4347, file: !51, line: 612, baseType: !418, size: 8, offset: 560)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4347, file: !51, line: 613, baseType: !545, size: 32, offset: 576)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4347, file: !51, line: 614, baseType: !545, size: 32, offset: 608)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4347, file: !51, line: 615, baseType: !418, size: 8, offset: 640)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4347, file: !51, line: 621, baseType: !4373, size: 384, offset: 672)
!4373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4374, size: 384, elements: !1100)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4347, file: !51, line: 616, size: 128, elements: !4375)
!4375 = !{!4376, !4377, !4378, !4379}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4374, file: !51, line: 617, baseType: !418, size: 8)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4374, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4374, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4374, file: !51, line: 620, baseType: !418, size: 8, offset: 96)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4347, file: !51, line: 624, baseType: !545, size: 32, offset: 1056)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4347, file: !51, line: 627, baseType: !545, size: 32, offset: 1088)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4347, file: !51, line: 630, baseType: !418, size: 8, offset: 1120)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4347, file: !51, line: 631, baseType: !418, size: 8, offset: 1128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4347, file: !51, line: 632, baseType: !418, size: 8, offset: 1136)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4347, file: !51, line: 633, baseType: !418, size: 8, offset: 1144)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4347, file: !51, line: 634, baseType: !418, size: 8, offset: 1152)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4347, file: !51, line: 635, baseType: !418, size: 8, offset: 1160)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4347, file: !51, line: 637, baseType: !418, size: 8, offset: 1168)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4347, file: !51, line: 638, baseType: !418, size: 8, offset: 1176)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4347, file: !51, line: 639, baseType: !418, size: 8, offset: 1184)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4347, file: !51, line: 640, baseType: !418, size: 8, offset: 1192)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4347, file: !51, line: 641, baseType: !418, size: 8, offset: 1200)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4347, file: !51, line: 642, baseType: !418, size: 8, offset: 1208)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4347, file: !51, line: 643, baseType: !418, size: 8, offset: 1216)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4347, file: !51, line: 644, baseType: !418, size: 8, offset: 1224)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4347, file: !51, line: 645, baseType: !418, size: 8, offset: 1232)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4347, file: !51, line: 647, baseType: !545, size: 32, offset: 1248)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4347, file: !51, line: 650, baseType: !4399, size: 296, offset: 1280)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4400)
!4400 = !{!4401, !4402}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4399, file: !6, line: 826, baseType: !419, size: 8)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4399, file: !6, line: 827, baseType: !4403, size: 288, offset: 8)
!4403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4404, size: 288, elements: !2527)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4405)
!4405 = !{!4406, !4407}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4404, file: !6, line: 804, baseType: !419, size: 8)
!4407 = !DIDerivedType(tag: DW_TAG_member, scope: !4404, file: !6, line: 805, baseType: !4408, size: 64, offset: 8)
!4408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4404, file: !6, line: 805, size: 64, elements: !4409)
!4409 = !{!4410, !4411}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4408, file: !6, line: 806, baseType: !374, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4408, file: !6, line: 807, baseType: !671, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4347, file: !51, line: 651, baseType: !4399, size: 296, offset: 1576)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4347, file: !51, line: 652, baseType: !4399, size: 296, offset: 1872)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4347, file: !51, line: 653, baseType: !4399, size: 296, offset: 2168)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4347, file: !51, line: 654, baseType: !4399, size: 296, offset: 2464)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4347, file: !51, line: 655, baseType: !4399, size: 296, offset: 2760)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4347, file: !51, line: 656, baseType: !4399, size: 296, offset: 3056)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4347, file: !51, line: 657, baseType: !4399, size: 296, offset: 3352)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4303, file: !51, line: 698, baseType: !4420, size: 64, offset: 10112)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!377, !363, !377, !377, !377}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4303, file: !51, line: 699, baseType: !377, size: 32, offset: 10176)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4303, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4283, file: !51, line: 441, baseType: !4299, size: 64, offset: 1408)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4283, file: !51, line: 442, baseType: !4299, size: 64, offset: 1472)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4283, file: !51, line: 444, baseType: !4428, size: 64, offset: 1536)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!377, !4302}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4283, file: !51, line: 445, baseType: !4428, size: 64, offset: 1600)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4283, file: !51, line: 447, baseType: !4433, size: 64, offset: 1664)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!377, !4302, !4436, !377}
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4283, file: !51, line: 450, baseType: !4439, size: 64, offset: 1728)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!377, !4302, !935, !7, !440, !4442}
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4283, file: !51, line: 457, baseType: !4444, size: 64, offset: 1792)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!50, !4302}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4283, file: !51, line: 460, baseType: !4428, size: 64, offset: 1856)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4283, file: !51, line: 461, baseType: !4449, size: 64, offset: 1920)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!377, !4302, !4452}
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4454)
!4454 = !{!4455, !4456, !4457}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4453, file: !51, line: 70, baseType: !377, size: 32)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4453, file: !51, line: 71, baseType: !377, size: 32, offset: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4453, file: !51, line: 72, baseType: !377, size: 32, offset: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4283, file: !51, line: 463, baseType: !4459, size: 64, offset: 1984)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!377, !4302, !4462}
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4283, file: !51, line: 466, baseType: !4464, size: 64, offset: 2048)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!377, !4302, !4442}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4283, file: !51, line: 467, baseType: !4468, size: 64, offset: 2112)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!377, !4302, !2925}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4283, file: !51, line: 468, baseType: !4472, size: 64, offset: 2176)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!377, !4302, !4475}
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4283, file: !51, line: 469, baseType: !4472, size: 64, offset: 2240)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4283, file: !51, line: 470, baseType: !4468, size: 64, offset: 2304)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4283, file: !51, line: 472, baseType: !4428, size: 64, offset: 2368)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4283, file: !51, line: 473, baseType: !4480, size: 64, offset: 2432)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!377, !4302, !4483}
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4485)
!4485 = !{!4486, !4488}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4484, file: !6, line: 174, baseType: !4487, size: 48)
!4487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 48, elements: !2626)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4484, file: !6, line: 175, baseType: !419, size: 8, offset: 48)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4283, file: !51, line: 474, baseType: !4490, size: 64, offset: 2496)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!377, !4302, !4493}
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4495)
!4495 = !{!4496, !4498, !4499}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4494, file: !6, line: 196, baseType: !4497, size: 32)
!4497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 32, elements: !2527)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4494, file: !6, line: 197, baseType: !419, size: 8, offset: 32)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4494, file: !6, line: 198, baseType: !377, size: 32, offset: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4283, file: !51, line: 475, baseType: !4501, size: 64, offset: 2560)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!377, !4302, !171}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4283, file: !51, line: 477, baseType: !4505, size: 64, offset: 2624)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!377, !4302, !78}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4283, file: !51, line: 478, baseType: !4509, size: 64, offset: 2688)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!377, !4302, !73}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4283, file: !51, line: 480, baseType: !4513, size: 64, offset: 2752)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!377, !4302, !371}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4283, file: !51, line: 481, baseType: !4517, size: 64, offset: 2816)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!377, !4302, !362}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4283, file: !51, line: 482, baseType: !4521, size: 64, offset: 2880)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!377, !4302, !377}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4283, file: !51, line: 483, baseType: !4521, size: 64, offset: 2944)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4283, file: !51, line: 484, baseType: !4428, size: 64, offset: 3008)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4283, file: !51, line: 490, baseType: !4527, size: 64, offset: 3072)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!175, !4302}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4283, file: !51, line: 492, baseType: !4531, size: 2304, offset: 3136)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4532)
!4532 = !{!4533, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4560, !4564, !4565, !4566, !4567, !4568, !4569, !4574, !4579, !4583}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4531, file: !51, line: 228, baseType: !4534, size: 1216)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4535)
!4535 = !{!4536, !4537, !4538, !4539, !4540, !4541, !4542}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4534, file: !51, line: 89, baseType: !3679, size: 1024)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4534, file: !51, line: 91, baseType: !545, size: 32, offset: 1024)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4534, file: !51, line: 92, baseType: !545, size: 32, offset: 1056)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4534, file: !51, line: 93, baseType: !545, size: 32, offset: 1088)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4534, file: !51, line: 95, baseType: !545, size: 32, offset: 1120)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4534, file: !51, line: 96, baseType: !545, size: 32, offset: 1152)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4534, file: !51, line: 97, baseType: !545, size: 32, offset: 1184)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4531, file: !51, line: 230, baseType: !4299, size: 64, offset: 1216)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4531, file: !51, line: 231, baseType: !4428, size: 64, offset: 1280)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4531, file: !51, line: 232, baseType: !4428, size: 64, offset: 1344)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4531, file: !51, line: 233, baseType: !4428, size: 64, offset: 1408)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4531, file: !51, line: 234, baseType: !4428, size: 64, offset: 1472)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4531, file: !51, line: 237, baseType: !4428, size: 64, offset: 1536)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4531, file: !51, line: 238, baseType: !4550, size: 64, offset: 1600)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!377, !4302, !4553}
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4555)
!4555 = !{!4556, !4557, !4558, !4559}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4554, file: !51, line: 115, baseType: !7, size: 32)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4554, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4554, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4554, file: !51, line: 118, baseType: !372, size: 64, offset: 128)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4531, file: !51, line: 240, baseType: !4561, size: 64, offset: 1664)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!377, !4302, !363}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4531, file: !51, line: 242, baseType: !4468, size: 64, offset: 1728)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4531, file: !51, line: 243, baseType: !4468, size: 64, offset: 1792)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4531, file: !51, line: 244, baseType: !4468, size: 64, offset: 1856)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4531, file: !51, line: 248, baseType: !4468, size: 64, offset: 1920)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4531, file: !51, line: 249, baseType: !4472, size: 64, offset: 1984)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4531, file: !51, line: 250, baseType: !4570, size: 64, offset: 2048)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!377, !4302, !4573}
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4531, file: !51, line: 258, baseType: !4575, size: 64, offset: 2112)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!377, !4302, !4578, !377}
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4531, file: !51, line: 267, baseType: !4580, size: 64, offset: 2176)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!377, !4302, !545}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4531, file: !51, line: 268, baseType: !4580, size: 64, offset: 2240)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4283, file: !51, line: 493, baseType: !4585, size: 576, offset: 5440)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4586)
!4586 = !{!4587, !4591, !4595, !4596, !4597, !4598, !4599, !4600, !4601}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4585, file: !51, line: 304, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4589)
!4589 = !{!4590}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4588, file: !51, line: 277, baseType: !369, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4585, file: !51, line: 306, baseType: !4592, size: 64, offset: 64)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{null, !4302, !4553}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4585, file: !51, line: 308, baseType: !4472, size: 64, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4585, file: !51, line: 309, baseType: !4570, size: 64, offset: 192)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4585, file: !51, line: 310, baseType: !4299, size: 64, offset: 256)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4585, file: !51, line: 311, baseType: !4299, size: 64, offset: 320)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4585, file: !51, line: 312, baseType: !4299, size: 64, offset: 384)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4585, file: !51, line: 313, baseType: !4521, size: 64, offset: 448)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4585, file: !51, line: 316, baseType: !4561, size: 64, offset: 512)
!4602 = !DIGlobalVariableExpression(var: !4603, expr: !DIExpression())
!4603 = distinct !DIGlobalVariable(name: "lgdt3302_init_data", scope: !4604, file: !3, line: 189, type: !4605, isLocal: true, isDefinition: true)
!4604 = distinct !DISubprogram(name: "lgdt330x_init", scope: !3, file: !3, line: 179, type: !4429, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4437, size: 224, elements: !446)
!4606 = !DIGlobalVariableExpression(var: !4607, expr: !DIExpression())
!4607 = distinct !DIGlobalVariable(name: "lgdt3303_init_data", scope: !4604, file: !3, line: 234, type: !4608, isLocal: true, isDefinition: true)
!4608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4437, size: 16, elements: !2567)
!4609 = !DIGlobalVariableExpression(var: !4610, expr: !DIExpression())
!4610 = distinct !DIGlobalVariable(name: "flip_1_lgdt3303_init_data", scope: !4604, file: !3, line: 237, type: !4611, isLocal: true, isDefinition: true)
!4611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4437, size: 32, elements: !2527)
!4612 = !DIGlobalVariableExpression(var: !4613, expr: !DIExpression())
!4613 = distinct !DIGlobalVariable(name: "flip_2_lgdt3303_init_data", scope: !4604, file: !3, line: 241, type: !4611, isLocal: true, isDefinition: true)
!4614 = !DIGlobalVariableExpression(var: !4615, expr: !DIExpression())
!4615 = distinct !DIGlobalVariable(name: "lgdt3303_8vsb_44_data", scope: !4616, file: !3, line: 317, type: !4617, isLocal: true, isDefinition: true)
!4616 = distinct !DISubprogram(name: "lgdt330x_set_parameters", scope: !3, file: !3, line: 309, type: !4429, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4437, size: 96, elements: !3508)
!4618 = !DIGlobalVariableExpression(var: !4619, expr: !DIExpression())
!4619 = distinct !DIGlobalVariable(name: "lgdt3303_qam_data", scope: !4616, file: !3, line: 329, type: !4620, isLocal: true, isDefinition: true)
!4620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4437, size: 176, elements: !4621)
!4621 = !{!4622}
!4622 = !DISubrange(count: 22)
!4623 = !DIGlobalVariableExpression(var: !4624, expr: !DIExpression())
!4624 = distinct !DIGlobalVariable(name: "lgdt3303_ops", scope: !2, file: !3, line: 955, type: !4282, isLocal: true, isDefinition: true)
!4625 = !DIGlobalVariableExpression(var: !4626, expr: !DIExpression())
!4626 = distinct !DIGlobalVariable(name: "lgdt330x_id_table", scope: !2, file: !3, line: 988, type: !4627, isLocal: true, isDefinition: true)
!4627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4194, size: 512, elements: !2567)
!4628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 120, elements: !4629)
!4629 = !{!4630}
!4630 = !DISubrange(count: 15)
!4631 = !{i32 7, !"Dwarf Version", i32 4}
!4632 = !{i32 2, !"Debug Info Version", i32 3}
!4633 = !{i32 1, !"wchar_size", i32 2}
!4634 = !{i32 1, !"Code Model", i32 2}
!4635 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4636 = distinct !DISubprogram(name: "lgdt330x_attach", scope: !3, file: !3, line: 914, type: !4637, scopeLine: 917, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!4302, !4639, !418, !503}
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4641)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lgdt330x_config", file: !284, line: 34, size: 320, elements: !4642)
!4642 = !{!4643, !4645, !4646, !4647, !4648, !4649}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "demod_chip", scope: !4641, file: !284, line: 36, baseType: !4644, size: 32)
!4644 = !DIDerivedType(tag: DW_TAG_typedef, name: "lg_chip_type", file: !284, line: 17, baseType: !283)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "serial_mpeg", scope: !4641, file: !284, line: 37, baseType: !377, size: 32, offset: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "pll_rf_set", scope: !4641, file: !284, line: 38, baseType: !4521, size: 64, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "set_ts_params", scope: !4641, file: !284, line: 39, baseType: !4521, size: 64, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity_flip", scope: !4641, file: !284, line: 40, baseType: !377, size: 32, offset: 192)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "get_dvb_frontend", scope: !4641, file: !284, line: 42, baseType: !4650, size: 64, offset: 256)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!4302, !493}
!4653 = !DILocalVariable(name: "_config", arg: 1, scope: !4636, file: !3, line: 914, type: !4639)
!4654 = !DILocation(line: 914, column: 68, scope: !4636)
!4655 = !DILocalVariable(name: "demod_address", arg: 2, scope: !4636, file: !3, line: 915, type: !418)
!4656 = !DILocation(line: 915, column: 13, scope: !4636)
!4657 = !DILocalVariable(name: "i2c", arg: 3, scope: !4636, file: !3, line: 916, type: !503)
!4658 = !DILocation(line: 916, column: 30, scope: !4636)
!4659 = !DILocalVariable(name: "client", scope: !4636, file: !3, line: 918, type: !493)
!4660 = !DILocation(line: 918, column: 21, scope: !4636)
!4661 = !DILocalVariable(name: "board_info", scope: !4636, file: !3, line: 919, type: !4223)
!4662 = !DILocation(line: 919, column: 24, scope: !4636)
!4663 = !DILocalVariable(name: "config", scope: !4636, file: !3, line: 920, type: !4641)
!4664 = !DILocation(line: 920, column: 25, scope: !4636)
!4665 = !DILocation(line: 920, column: 35, scope: !4636)
!4666 = !DILocation(line: 920, column: 34, scope: !4636)
!4667 = !DILocation(line: 922, column: 21, scope: !4636)
!4668 = !DILocation(line: 922, column: 10, scope: !4636)
!4669 = !DILocation(line: 922, column: 2, scope: !4636)
!4670 = !DILocation(line: 923, column: 20, scope: !4636)
!4671 = !DILocation(line: 923, column: 13, scope: !4636)
!4672 = !DILocation(line: 923, column: 18, scope: !4636)
!4673 = !DILocation(line: 924, column: 29, scope: !4636)
!4674 = !DILocation(line: 924, column: 13, scope: !4636)
!4675 = !DILocation(line: 924, column: 27, scope: !4636)
!4676 = !DILocation(line: 925, column: 33, scope: !4636)
!4677 = !DILocation(line: 925, column: 11, scope: !4636)
!4678 = !DILocation(line: 925, column: 9, scope: !4636)
!4679 = !DILocation(line: 926, column: 29, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 926, column: 6)
!4681 = !DILocation(line: 926, column: 7, scope: !4680)
!4682 = !DILocation(line: 926, column: 6, scope: !4636)
!4683 = !DILocation(line: 927, column: 3, scope: !4680)
!4684 = !DILocation(line: 929, column: 35, scope: !4636)
!4685 = !DILocation(line: 929, column: 9, scope: !4636)
!4686 = !DILocation(line: 929, column: 2, scope: !4636)
!4687 = !DILocation(line: 930, column: 1, scope: !4636)
!4688 = distinct !DISubprogram(name: "i2c_client_has_driver", scope: !299, file: !299, line: 857, type: !4689, scopeLine: 858, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!935, !493}
!4691 = !DILocalVariable(name: "client", arg: 1, scope: !4688, file: !299, line: 857, type: !493)
!4692 = !DILocation(line: 857, column: 61, scope: !4688)
!4693 = !DILocation(line: 859, column: 25, scope: !4688)
!4694 = !DILocation(line: 859, column: 10, scope: !4688)
!4695 = !DILocation(line: 859, column: 33, scope: !4688)
!4696 = !DILocation(line: 859, column: 36, scope: !4688)
!4697 = !DILocation(line: 859, column: 44, scope: !4688)
!4698 = !DILocation(line: 859, column: 48, scope: !4688)
!4699 = !DILocation(line: 0, scope: !4688)
!4700 = !DILocation(line: 859, column: 2, scope: !4688)
!4701 = distinct !DISubprogram(name: "lgdt330x_get_dvb_frontend", scope: !3, file: !3, line: 848, type: !4651, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4702 = !DILocalVariable(name: "client", arg: 1, scope: !4701, file: !3, line: 848, type: !493)
!4703 = !DILocation(line: 848, column: 74, scope: !4701)
!4704 = !DILocalVariable(name: "state", scope: !4701, file: !3, line: 850, type: !4705)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lgdt330x_state", file: !3, line: 47, size: 10880, elements: !4707)
!4707 = !{!4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !4706, file: !3, line: 48, baseType: !493, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4706, file: !3, line: 51, baseType: !4641, size: 320, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4706, file: !3, line: 53, baseType: !4303, size: 10240, offset: 384)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "current_modulation", scope: !4706, file: !3, line: 56, baseType: !57, size: 32, offset: 10624)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !4706, file: !3, line: 57, baseType: !545, size: 32, offset: 10656)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "ucblocks", scope: !4706, file: !3, line: 58, baseType: !410, size: 16, offset: 10688)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "last_stats_time", scope: !4706, file: !3, line: 59, baseType: !362, size: 64, offset: 10752)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "current_frequency", scope: !4706, file: !3, line: 62, baseType: !545, size: 32, offset: 10816)
!4716 = !DILocation(line: 850, column: 25, scope: !4701)
!4717 = !DILocation(line: 850, column: 52, scope: !4701)
!4718 = !DILocation(line: 850, column: 33, scope: !4701)
!4719 = !DILocation(line: 854, column: 10, scope: !4701)
!4720 = !DILocation(line: 854, column: 17, scope: !4701)
!4721 = !DILocation(line: 854, column: 2, scope: !4701)
!4722 = distinct !DISubprogram(name: "lgdt330x_driver_init", scope: !3, file: !3, line: 1004, type: !4723, scopeLine: 1004, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!377}
!4725 = !DILocation(line: 1004, column: 1, scope: !4722)
!4726 = distinct !DISubprogram(name: "lgdt330x_driver_exit", scope: !3, file: !3, line: 1004, type: !460, scopeLine: 1004, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4727 = !DILocation(line: 1004, column: 1, scope: !4726)
!4728 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !4729, file: !4729, line: 39, type: !4730, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4729 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!935, !2295}
!4732 = !DILocalVariable(name: "ptr", arg: 1, scope: !4728, file: !4729, line: 39, type: !2295)
!4733 = !DILocation(line: 39, column: 68, scope: !4728)
!4734 = !DILocation(line: 41, column: 9, scope: !4728)
!4735 = !DILocation(line: 41, column: 24, scope: !4728)
!4736 = !DILocation(line: 41, column: 27, scope: !4728)
!4737 = !DILocation(line: 41, column: 2, scope: !4728)
!4738 = distinct !DISubprogram(name: "i2c_get_clientdata", scope: !299, file: !299, line: 351, type: !4739, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!363, !4741}
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!4743 = !DILocalVariable(name: "client", arg: 1, scope: !4738, file: !299, line: 351, type: !4741)
!4744 = !DILocation(line: 351, column: 65, scope: !4738)
!4745 = !DILocation(line: 353, column: 26, scope: !4738)
!4746 = !DILocation(line: 353, column: 34, scope: !4738)
!4747 = !DILocation(line: 353, column: 9, scope: !4738)
!4748 = !DILocation(line: 353, column: 2, scope: !4738)
!4749 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !237, file: !237, line: 655, type: !4750, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!363, !3920}
!4752 = !DILocalVariable(name: "dev", arg: 1, scope: !4749, file: !237, line: 655, type: !3920)
!4753 = !DILocation(line: 655, column: 58, scope: !4749)
!4754 = !DILocation(line: 657, column: 9, scope: !4749)
!4755 = !DILocation(line: 657, column: 14, scope: !4749)
!4756 = !DILocation(line: 657, column: 2, scope: !4749)
!4757 = distinct !DISubprogram(name: "lgdt330x_probe", scope: !3, file: !3, line: 860, type: !491, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4758 = !DILocalVariable(name: "client", arg: 1, scope: !4757, file: !3, line: 860, type: !493)
!4759 = !DILocation(line: 860, column: 46, scope: !4757)
!4760 = !DILocalVariable(name: "id", arg: 2, scope: !4757, file: !3, line: 861, type: !4193)
!4761 = !DILocation(line: 861, column: 34, scope: !4757)
!4762 = !DILocalVariable(name: "state", scope: !4757, file: !3, line: 863, type: !4705)
!4763 = !DILocation(line: 863, column: 25, scope: !4757)
!4764 = !DILocalVariable(name: "buf", scope: !4757, file: !3, line: 864, type: !4765)
!4765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 8, elements: !763)
!4766 = !DILocation(line: 864, column: 5, scope: !4757)
!4767 = !DILocation(line: 867, column: 10, scope: !4757)
!4768 = !DILocation(line: 867, column: 8, scope: !4757)
!4769 = !DILocation(line: 868, column: 7, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 868, column: 6)
!4771 = !DILocation(line: 868, column: 6, scope: !4757)
!4772 = !DILocation(line: 869, column: 3, scope: !4770)
!4773 = !DILocation(line: 872, column: 10, scope: !4757)
!4774 = !DILocation(line: 872, column: 17, scope: !4757)
!4775 = !DILocation(line: 872, column: 2, scope: !4757)
!4776 = !DILocation(line: 872, column: 25, scope: !4757)
!4777 = !DILocation(line: 872, column: 33, scope: !4757)
!4778 = !DILocation(line: 872, column: 37, scope: !4757)
!4779 = !DILocation(line: 874, column: 21, scope: !4757)
!4780 = !DILocation(line: 874, column: 29, scope: !4757)
!4781 = !DILocation(line: 874, column: 2, scope: !4757)
!4782 = !DILocation(line: 875, column: 18, scope: !4757)
!4783 = !DILocation(line: 875, column: 2, scope: !4757)
!4784 = !DILocation(line: 875, column: 9, scope: !4757)
!4785 = !DILocation(line: 875, column: 16, scope: !4757)
!4786 = !DILocation(line: 878, column: 10, scope: !4757)
!4787 = !DILocation(line: 878, column: 17, scope: !4757)
!4788 = !DILocation(line: 878, column: 24, scope: !4757)
!4789 = !DILocation(line: 878, column: 2, scope: !4757)
!4790 = !DILocation(line: 880, column: 11, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 878, column: 36)
!4792 = !DILocation(line: 880, column: 18, scope: !4791)
!4793 = !DILocation(line: 880, column: 27, scope: !4791)
!4794 = !DILocation(line: 880, column: 3, scope: !4791)
!4795 = !DILocation(line: 882, column: 3, scope: !4791)
!4796 = !DILocation(line: 884, column: 11, scope: !4791)
!4797 = !DILocation(line: 884, column: 18, scope: !4791)
!4798 = !DILocation(line: 884, column: 27, scope: !4791)
!4799 = !DILocation(line: 884, column: 3, scope: !4791)
!4800 = !DILocation(line: 886, column: 3, scope: !4791)
!4801 = !DILocation(line: 888, column: 3, scope: !4791)
!4802 = !DILocation(line: 890, column: 37, scope: !4757)
!4803 = !DILocation(line: 890, column: 2, scope: !4757)
!4804 = !DILocation(line: 890, column: 9, scope: !4757)
!4805 = !DILocation(line: 890, column: 18, scope: !4757)
!4806 = !DILocation(line: 890, column: 35, scope: !4757)
!4807 = !DILocation(line: 893, column: 2, scope: !4757)
!4808 = !DILocation(line: 893, column: 9, scope: !4757)
!4809 = !DILocation(line: 893, column: 16, scope: !4757)
!4810 = !DILocation(line: 893, column: 33, scope: !4757)
!4811 = !DILocation(line: 896, column: 27, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 896, column: 6)
!4813 = !DILocation(line: 896, column: 37, scope: !4812)
!4814 = !DILocation(line: 896, column: 6, scope: !4812)
!4815 = !DILocation(line: 896, column: 6, scope: !4757)
!4816 = !DILocation(line: 897, column: 3, scope: !4812)
!4817 = !DILocation(line: 899, column: 2, scope: !4757)
!4818 = !DILocation(line: 899, column: 9, scope: !4757)
!4819 = !DILocation(line: 899, column: 27, scope: !4757)
!4820 = !DILocation(line: 900, column: 2, scope: !4757)
!4821 = !DILocation(line: 900, column: 9, scope: !4757)
!4822 = !DILocation(line: 900, column: 28, scope: !4757)
!4823 = !DILocation(line: 902, column: 2, scope: !4757)
!4824 = !DILocation(line: 906, column: 2, scope: !4757)
!4825 = !DILabel(scope: !4757, name: "error", file: !3, line: 908)
!4826 = !DILocation(line: 908, column: 1, scope: !4757)
!4827 = !DILocation(line: 909, column: 8, scope: !4757)
!4828 = !DILocation(line: 909, column: 2, scope: !4757)
!4829 = !DILocation(line: 910, column: 6, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 910, column: 6)
!4831 = !DILocation(line: 910, column: 6, scope: !4757)
!4832 = !DILocation(line: 911, column: 27, scope: !4830)
!4833 = !DILocation(line: 911, column: 35, scope: !4830)
!4834 = !DILocation(line: 911, column: 3, scope: !4830)
!4835 = !DILocation(line: 912, column: 2, scope: !4757)
!4836 = !DILocation(line: 913, column: 1, scope: !4757)
!4837 = distinct !DISubprogram(name: "lgdt330x_remove", scope: !3, file: !3, line: 977, type: !4201, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4838 = !DILocalVariable(name: "client", arg: 1, scope: !4837, file: !3, line: 977, type: !493)
!4839 = !DILocation(line: 977, column: 47, scope: !4837)
!4840 = !DILocalVariable(name: "state", scope: !4837, file: !3, line: 979, type: !4705)
!4841 = !DILocation(line: 979, column: 25, scope: !4837)
!4842 = !DILocation(line: 979, column: 52, scope: !4837)
!4843 = !DILocation(line: 979, column: 33, scope: !4837)
!4844 = !DILocation(line: 983, column: 8, scope: !4837)
!4845 = !DILocation(line: 983, column: 2, scope: !4837)
!4846 = !DILocation(line: 985, column: 2, scope: !4837)
!4847 = distinct !DISubprogram(name: "kzalloc", scope: !304, file: !304, line: 662, type: !4848, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!363, !1024, !367}
!4850 = !DILocalVariable(name: "s", arg: 1, scope: !4851, file: !304, line: 445, type: !1369)
!4851 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !304, file: !304, line: 445, type: !4852, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!363, !1369, !367, !1024}
!4854 = !DILocation(line: 445, column: 72, scope: !4851, inlinedAt: !4855)
!4855 = distinct !DILocation(line: 552, column: 10, scope: !4856, inlinedAt: !4859)
!4856 = distinct !DILexicalBlock(scope: !4857, file: !304, line: 540, column: 34)
!4857 = distinct !DILexicalBlock(scope: !4858, file: !304, line: 540, column: 6)
!4858 = distinct !DISubprogram(name: "kmalloc", scope: !304, file: !304, line: 538, type: !4848, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4859 = distinct !DILocation(line: 664, column: 9, scope: !4847)
!4860 = !DILocalVariable(name: "flags", arg: 2, scope: !4851, file: !304, line: 446, type: !367)
!4861 = !DILocation(line: 446, column: 9, scope: !4851, inlinedAt: !4855)
!4862 = !DILocalVariable(name: "size", arg: 3, scope: !4851, file: !304, line: 446, type: !1024)
!4863 = !DILocation(line: 446, column: 23, scope: !4851, inlinedAt: !4855)
!4864 = !DILocalVariable(name: "ret", scope: !4851, file: !304, line: 448, type: !363)
!4865 = !DILocation(line: 448, column: 8, scope: !4851, inlinedAt: !4855)
!4866 = !DILocalVariable(name: "flags", arg: 1, scope: !4867, file: !304, line: 318, type: !367)
!4867 = distinct !DISubprogram(name: "kmalloc_type", scope: !304, file: !304, line: 318, type: !4868, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!303, !367}
!4870 = !DILocation(line: 318, column: 67, scope: !4867, inlinedAt: !4871)
!4871 = distinct !DILocation(line: 553, column: 20, scope: !4856, inlinedAt: !4859)
!4872 = !DILocalVariable(name: "size", arg: 1, scope: !4873, file: !304, line: 346, type: !1024)
!4873 = distinct !DISubprogram(name: "kmalloc_index", scope: !304, file: !304, line: 346, type: !4874, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!7, !1024}
!4876 = !DILocation(line: 346, column: 58, scope: !4873, inlinedAt: !4877)
!4877 = distinct !DILocation(line: 547, column: 11, scope: !4856, inlinedAt: !4859)
!4878 = !DILocalVariable(name: "size", arg: 1, scope: !4879, file: !304, line: 472, type: !1024)
!4879 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !304, file: !304, line: 472, type: !4880, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!363, !1024, !367, !7}
!4882 = !DILocation(line: 472, column: 28, scope: !4879, inlinedAt: !4883)
!4883 = distinct !DILocation(line: 481, column: 9, scope: !4884, inlinedAt: !4885)
!4884 = distinct !DISubprogram(name: "kmalloc_large", scope: !304, file: !304, line: 478, type: !4848, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!4885 = distinct !DILocation(line: 545, column: 11, scope: !4886, inlinedAt: !4859)
!4886 = distinct !DILexicalBlock(scope: !4856, file: !304, line: 544, column: 7)
!4887 = !DILocalVariable(name: "flags", arg: 2, scope: !4879, file: !304, line: 472, type: !367)
!4888 = !DILocation(line: 472, column: 40, scope: !4879, inlinedAt: !4883)
!4889 = !DILocalVariable(name: "order", arg: 3, scope: !4879, file: !304, line: 472, type: !7)
!4890 = !DILocation(line: 472, column: 60, scope: !4879, inlinedAt: !4883)
!4891 = !DILocalVariable(name: "size", arg: 1, scope: !4884, file: !304, line: 478, type: !1024)
!4892 = !DILocation(line: 478, column: 51, scope: !4884, inlinedAt: !4885)
!4893 = !DILocalVariable(name: "flags", arg: 2, scope: !4884, file: !304, line: 478, type: !367)
!4894 = !DILocation(line: 478, column: 63, scope: !4884, inlinedAt: !4885)
!4895 = !DILocalVariable(name: "order", scope: !4884, file: !304, line: 480, type: !7)
!4896 = !DILocation(line: 480, column: 15, scope: !4884, inlinedAt: !4885)
!4897 = !DILocalVariable(name: "size", arg: 1, scope: !4858, file: !304, line: 538, type: !1024)
!4898 = !DILocation(line: 538, column: 45, scope: !4858, inlinedAt: !4859)
!4899 = !DILocalVariable(name: "flags", arg: 2, scope: !4858, file: !304, line: 538, type: !367)
!4900 = !DILocation(line: 538, column: 57, scope: !4858, inlinedAt: !4859)
!4901 = !DILocalVariable(name: "index", scope: !4856, file: !304, line: 542, type: !7)
!4902 = !DILocation(line: 542, column: 16, scope: !4856, inlinedAt: !4859)
!4903 = !DILocalVariable(name: "size", arg: 1, scope: !4847, file: !304, line: 662, type: !1024)
!4904 = !DILocation(line: 662, column: 36, scope: !4847)
!4905 = !DILocalVariable(name: "flags", arg: 2, scope: !4847, file: !304, line: 662, type: !367)
!4906 = !DILocation(line: 662, column: 48, scope: !4847)
!4907 = !DILocation(line: 664, column: 17, scope: !4847)
!4908 = !DILocation(line: 664, column: 23, scope: !4847)
!4909 = !DILocation(line: 664, column: 29, scope: !4847)
!4910 = !DILocation(line: 540, column: 27, scope: !4857, inlinedAt: !4859)
!4911 = !DILocation(line: 540, column: 6, scope: !4857, inlinedAt: !4859)
!4912 = !DILocation(line: 540, column: 6, scope: !4858, inlinedAt: !4859)
!4913 = !DILocation(line: 544, column: 7, scope: !4886, inlinedAt: !4859)
!4914 = !DILocation(line: 544, column: 12, scope: !4886, inlinedAt: !4859)
!4915 = !DILocation(line: 544, column: 7, scope: !4856, inlinedAt: !4859)
!4916 = !DILocation(line: 545, column: 25, scope: !4886, inlinedAt: !4859)
!4917 = !DILocation(line: 545, column: 31, scope: !4886, inlinedAt: !4859)
!4918 = !DILocation(line: 480, column: 33, scope: !4884, inlinedAt: !4885)
!4919 = !DILocation(line: 480, column: 23, scope: !4884, inlinedAt: !4885)
!4920 = !DILocation(line: 481, column: 29, scope: !4884, inlinedAt: !4885)
!4921 = !DILocation(line: 481, column: 35, scope: !4884, inlinedAt: !4885)
!4922 = !DILocation(line: 481, column: 42, scope: !4884, inlinedAt: !4885)
!4923 = !DILocation(line: 474, column: 23, scope: !4879, inlinedAt: !4883)
!4924 = !DILocation(line: 474, column: 29, scope: !4879, inlinedAt: !4883)
!4925 = !DILocation(line: 474, column: 36, scope: !4879, inlinedAt: !4883)
!4926 = !DILocation(line: 474, column: 9, scope: !4879, inlinedAt: !4883)
!4927 = !DILocation(line: 545, column: 4, scope: !4886, inlinedAt: !4859)
!4928 = !DILocation(line: 547, column: 25, scope: !4856, inlinedAt: !4859)
!4929 = !DILocation(line: 348, column: 7, scope: !4930, inlinedAt: !4877)
!4930 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 348, column: 6)
!4931 = !DILocation(line: 348, column: 6, scope: !4873, inlinedAt: !4877)
!4932 = !DILocation(line: 349, column: 3, scope: !4930, inlinedAt: !4877)
!4933 = !DILocation(line: 351, column: 6, scope: !4934, inlinedAt: !4877)
!4934 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 351, column: 6)
!4935 = !DILocation(line: 351, column: 11, scope: !4934, inlinedAt: !4877)
!4936 = !DILocation(line: 351, column: 6, scope: !4873, inlinedAt: !4877)
!4937 = !DILocation(line: 352, column: 3, scope: !4934, inlinedAt: !4877)
!4938 = !DILocation(line: 354, column: 32, scope: !4939, inlinedAt: !4877)
!4939 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 354, column: 6)
!4940 = !DILocation(line: 354, column: 37, scope: !4939, inlinedAt: !4877)
!4941 = !DILocation(line: 354, column: 42, scope: !4939, inlinedAt: !4877)
!4942 = !DILocation(line: 354, column: 45, scope: !4939, inlinedAt: !4877)
!4943 = !DILocation(line: 354, column: 50, scope: !4939, inlinedAt: !4877)
!4944 = !DILocation(line: 354, column: 6, scope: !4873, inlinedAt: !4877)
!4945 = !DILocation(line: 355, column: 3, scope: !4939, inlinedAt: !4877)
!4946 = !DILocation(line: 356, column: 32, scope: !4947, inlinedAt: !4877)
!4947 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 356, column: 6)
!4948 = !DILocation(line: 356, column: 37, scope: !4947, inlinedAt: !4877)
!4949 = !DILocation(line: 356, column: 43, scope: !4947, inlinedAt: !4877)
!4950 = !DILocation(line: 356, column: 46, scope: !4947, inlinedAt: !4877)
!4951 = !DILocation(line: 356, column: 51, scope: !4947, inlinedAt: !4877)
!4952 = !DILocation(line: 356, column: 6, scope: !4873, inlinedAt: !4877)
!4953 = !DILocation(line: 357, column: 3, scope: !4947, inlinedAt: !4877)
!4954 = !DILocation(line: 358, column: 6, scope: !4955, inlinedAt: !4877)
!4955 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 358, column: 6)
!4956 = !DILocation(line: 358, column: 11, scope: !4955, inlinedAt: !4877)
!4957 = !DILocation(line: 358, column: 6, scope: !4873, inlinedAt: !4877)
!4958 = !DILocation(line: 358, column: 26, scope: !4955, inlinedAt: !4877)
!4959 = !DILocation(line: 359, column: 6, scope: !4960, inlinedAt: !4877)
!4960 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 359, column: 6)
!4961 = !DILocation(line: 359, column: 11, scope: !4960, inlinedAt: !4877)
!4962 = !DILocation(line: 359, column: 6, scope: !4873, inlinedAt: !4877)
!4963 = !DILocation(line: 359, column: 26, scope: !4960, inlinedAt: !4877)
!4964 = !DILocation(line: 360, column: 6, scope: !4965, inlinedAt: !4877)
!4965 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 360, column: 6)
!4966 = !DILocation(line: 360, column: 11, scope: !4965, inlinedAt: !4877)
!4967 = !DILocation(line: 360, column: 6, scope: !4873, inlinedAt: !4877)
!4968 = !DILocation(line: 360, column: 26, scope: !4965, inlinedAt: !4877)
!4969 = !DILocation(line: 361, column: 6, scope: !4970, inlinedAt: !4877)
!4970 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 361, column: 6)
!4971 = !DILocation(line: 361, column: 11, scope: !4970, inlinedAt: !4877)
!4972 = !DILocation(line: 361, column: 6, scope: !4873, inlinedAt: !4877)
!4973 = !DILocation(line: 361, column: 26, scope: !4970, inlinedAt: !4877)
!4974 = !DILocation(line: 362, column: 6, scope: !4975, inlinedAt: !4877)
!4975 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 362, column: 6)
!4976 = !DILocation(line: 362, column: 11, scope: !4975, inlinedAt: !4877)
!4977 = !DILocation(line: 362, column: 6, scope: !4873, inlinedAt: !4877)
!4978 = !DILocation(line: 362, column: 26, scope: !4975, inlinedAt: !4877)
!4979 = !DILocation(line: 363, column: 6, scope: !4980, inlinedAt: !4877)
!4980 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 363, column: 6)
!4981 = !DILocation(line: 363, column: 11, scope: !4980, inlinedAt: !4877)
!4982 = !DILocation(line: 363, column: 6, scope: !4873, inlinedAt: !4877)
!4983 = !DILocation(line: 363, column: 26, scope: !4980, inlinedAt: !4877)
!4984 = !DILocation(line: 364, column: 6, scope: !4985, inlinedAt: !4877)
!4985 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 364, column: 6)
!4986 = !DILocation(line: 364, column: 11, scope: !4985, inlinedAt: !4877)
!4987 = !DILocation(line: 364, column: 6, scope: !4873, inlinedAt: !4877)
!4988 = !DILocation(line: 364, column: 26, scope: !4985, inlinedAt: !4877)
!4989 = !DILocation(line: 365, column: 6, scope: !4990, inlinedAt: !4877)
!4990 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 365, column: 6)
!4991 = !DILocation(line: 365, column: 11, scope: !4990, inlinedAt: !4877)
!4992 = !DILocation(line: 365, column: 6, scope: !4873, inlinedAt: !4877)
!4993 = !DILocation(line: 365, column: 26, scope: !4990, inlinedAt: !4877)
!4994 = !DILocation(line: 366, column: 6, scope: !4995, inlinedAt: !4877)
!4995 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 366, column: 6)
!4996 = !DILocation(line: 366, column: 11, scope: !4995, inlinedAt: !4877)
!4997 = !DILocation(line: 366, column: 6, scope: !4873, inlinedAt: !4877)
!4998 = !DILocation(line: 366, column: 26, scope: !4995, inlinedAt: !4877)
!4999 = !DILocation(line: 367, column: 6, scope: !5000, inlinedAt: !4877)
!5000 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 367, column: 6)
!5001 = !DILocation(line: 367, column: 11, scope: !5000, inlinedAt: !4877)
!5002 = !DILocation(line: 367, column: 6, scope: !4873, inlinedAt: !4877)
!5003 = !DILocation(line: 367, column: 26, scope: !5000, inlinedAt: !4877)
!5004 = !DILocation(line: 368, column: 6, scope: !5005, inlinedAt: !4877)
!5005 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 368, column: 6)
!5006 = !DILocation(line: 368, column: 11, scope: !5005, inlinedAt: !4877)
!5007 = !DILocation(line: 368, column: 6, scope: !4873, inlinedAt: !4877)
!5008 = !DILocation(line: 368, column: 26, scope: !5005, inlinedAt: !4877)
!5009 = !DILocation(line: 369, column: 6, scope: !5010, inlinedAt: !4877)
!5010 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 369, column: 6)
!5011 = !DILocation(line: 369, column: 11, scope: !5010, inlinedAt: !4877)
!5012 = !DILocation(line: 369, column: 6, scope: !4873, inlinedAt: !4877)
!5013 = !DILocation(line: 369, column: 26, scope: !5010, inlinedAt: !4877)
!5014 = !DILocation(line: 370, column: 6, scope: !5015, inlinedAt: !4877)
!5015 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 370, column: 6)
!5016 = !DILocation(line: 370, column: 11, scope: !5015, inlinedAt: !4877)
!5017 = !DILocation(line: 370, column: 6, scope: !4873, inlinedAt: !4877)
!5018 = !DILocation(line: 370, column: 26, scope: !5015, inlinedAt: !4877)
!5019 = !DILocation(line: 371, column: 6, scope: !5020, inlinedAt: !4877)
!5020 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 371, column: 6)
!5021 = !DILocation(line: 371, column: 11, scope: !5020, inlinedAt: !4877)
!5022 = !DILocation(line: 371, column: 6, scope: !4873, inlinedAt: !4877)
!5023 = !DILocation(line: 371, column: 26, scope: !5020, inlinedAt: !4877)
!5024 = !DILocation(line: 372, column: 6, scope: !5025, inlinedAt: !4877)
!5025 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 372, column: 6)
!5026 = !DILocation(line: 372, column: 11, scope: !5025, inlinedAt: !4877)
!5027 = !DILocation(line: 372, column: 6, scope: !4873, inlinedAt: !4877)
!5028 = !DILocation(line: 372, column: 26, scope: !5025, inlinedAt: !4877)
!5029 = !DILocation(line: 373, column: 6, scope: !5030, inlinedAt: !4877)
!5030 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 373, column: 6)
!5031 = !DILocation(line: 373, column: 11, scope: !5030, inlinedAt: !4877)
!5032 = !DILocation(line: 373, column: 6, scope: !4873, inlinedAt: !4877)
!5033 = !DILocation(line: 373, column: 26, scope: !5030, inlinedAt: !4877)
!5034 = !DILocation(line: 374, column: 6, scope: !5035, inlinedAt: !4877)
!5035 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 374, column: 6)
!5036 = !DILocation(line: 374, column: 11, scope: !5035, inlinedAt: !4877)
!5037 = !DILocation(line: 374, column: 6, scope: !4873, inlinedAt: !4877)
!5038 = !DILocation(line: 374, column: 26, scope: !5035, inlinedAt: !4877)
!5039 = !DILocation(line: 375, column: 6, scope: !5040, inlinedAt: !4877)
!5040 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 375, column: 6)
!5041 = !DILocation(line: 375, column: 11, scope: !5040, inlinedAt: !4877)
!5042 = !DILocation(line: 375, column: 6, scope: !4873, inlinedAt: !4877)
!5043 = !DILocation(line: 375, column: 27, scope: !5040, inlinedAt: !4877)
!5044 = !DILocation(line: 376, column: 6, scope: !5045, inlinedAt: !4877)
!5045 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 376, column: 6)
!5046 = !DILocation(line: 376, column: 11, scope: !5045, inlinedAt: !4877)
!5047 = !DILocation(line: 376, column: 6, scope: !4873, inlinedAt: !4877)
!5048 = !DILocation(line: 376, column: 32, scope: !5045, inlinedAt: !4877)
!5049 = !DILocation(line: 377, column: 6, scope: !5050, inlinedAt: !4877)
!5050 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 377, column: 6)
!5051 = !DILocation(line: 377, column: 11, scope: !5050, inlinedAt: !4877)
!5052 = !DILocation(line: 377, column: 6, scope: !4873, inlinedAt: !4877)
!5053 = !DILocation(line: 377, column: 32, scope: !5050, inlinedAt: !4877)
!5054 = !DILocation(line: 378, column: 6, scope: !5055, inlinedAt: !4877)
!5055 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 378, column: 6)
!5056 = !DILocation(line: 378, column: 11, scope: !5055, inlinedAt: !4877)
!5057 = !DILocation(line: 378, column: 6, scope: !4873, inlinedAt: !4877)
!5058 = !DILocation(line: 378, column: 32, scope: !5055, inlinedAt: !4877)
!5059 = !DILocation(line: 379, column: 6, scope: !5060, inlinedAt: !4877)
!5060 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 379, column: 6)
!5061 = !DILocation(line: 379, column: 11, scope: !5060, inlinedAt: !4877)
!5062 = !DILocation(line: 379, column: 6, scope: !4873, inlinedAt: !4877)
!5063 = !DILocation(line: 379, column: 33, scope: !5060, inlinedAt: !4877)
!5064 = !DILocation(line: 380, column: 6, scope: !5065, inlinedAt: !4877)
!5065 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 380, column: 6)
!5066 = !DILocation(line: 380, column: 11, scope: !5065, inlinedAt: !4877)
!5067 = !DILocation(line: 380, column: 6, scope: !4873, inlinedAt: !4877)
!5068 = !DILocation(line: 380, column: 33, scope: !5065, inlinedAt: !4877)
!5069 = !DILocation(line: 381, column: 6, scope: !5070, inlinedAt: !4877)
!5070 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 381, column: 6)
!5071 = !DILocation(line: 381, column: 11, scope: !5070, inlinedAt: !4877)
!5072 = !DILocation(line: 381, column: 6, scope: !4873, inlinedAt: !4877)
!5073 = !DILocation(line: 381, column: 33, scope: !5070, inlinedAt: !4877)
!5074 = !DILocation(line: 382, column: 2, scope: !5075, inlinedAt: !4877)
!5075 = distinct !DILexicalBlock(scope: !5076, file: !304, line: 382, column: 2)
!5076 = distinct !DILexicalBlock(scope: !4873, file: !304, line: 382, column: 2)
!5077 = !{i32 -2144217092, i32 -2144217063, i32 -2144217017, i32 -2144216959, i32 -2144216905, i32 -2144216851, i32 -2144216796, i32 -2144216765}
!5078 = !DILocation(line: 382, column: 2, scope: !5079, inlinedAt: !4877)
!5079 = distinct !DILexicalBlock(scope: !5080, file: !304, line: 382, column: 2)
!5080 = distinct !DILexicalBlock(scope: !5076, file: !304, line: 382, column: 2)
!5081 = !{i32 -2144216322, i32 -2144216315, i32 -2144216261, i32 -2144216230, i32 -2144216200}
!5082 = !DILocation(line: 382, column: 2, scope: !5080, inlinedAt: !4877)
!5083 = !DILocation(line: 386, column: 1, scope: !4873, inlinedAt: !4877)
!5084 = !DILocation(line: 547, column: 9, scope: !4856, inlinedAt: !4859)
!5085 = !DILocation(line: 549, column: 8, scope: !5086, inlinedAt: !4859)
!5086 = distinct !DILexicalBlock(scope: !4856, file: !304, line: 549, column: 7)
!5087 = !DILocation(line: 549, column: 7, scope: !4856, inlinedAt: !4859)
!5088 = !DILocation(line: 550, column: 4, scope: !5086, inlinedAt: !4859)
!5089 = !DILocation(line: 553, column: 33, scope: !4856, inlinedAt: !4859)
!5090 = !DILocation(line: 325, column: 6, scope: !5091, inlinedAt: !4871)
!5091 = distinct !DILexicalBlock(scope: !4867, file: !304, line: 325, column: 6)
!5092 = !DILocation(line: 325, column: 6, scope: !4867, inlinedAt: !4871)
!5093 = !DILocation(line: 326, column: 3, scope: !5091, inlinedAt: !4871)
!5094 = !DILocation(line: 332, column: 9, scope: !4867, inlinedAt: !4871)
!5095 = !DILocation(line: 332, column: 15, scope: !4867, inlinedAt: !4871)
!5096 = !DILocation(line: 332, column: 2, scope: !4867, inlinedAt: !4871)
!5097 = !DILocation(line: 336, column: 1, scope: !4867, inlinedAt: !4871)
!5098 = !DILocation(line: 553, column: 5, scope: !4856, inlinedAt: !4859)
!5099 = !DILocation(line: 553, column: 41, scope: !4856, inlinedAt: !4859)
!5100 = !DILocation(line: 554, column: 5, scope: !4856, inlinedAt: !4859)
!5101 = !DILocation(line: 554, column: 12, scope: !4856, inlinedAt: !4859)
!5102 = !DILocation(line: 448, column: 31, scope: !4851, inlinedAt: !4855)
!5103 = !DILocation(line: 448, column: 34, scope: !4851, inlinedAt: !4855)
!5104 = !DILocation(line: 448, column: 14, scope: !4851, inlinedAt: !4855)
!5105 = !DILocation(line: 450, column: 22, scope: !4851, inlinedAt: !4855)
!5106 = !DILocation(line: 450, column: 25, scope: !4851, inlinedAt: !4855)
!5107 = !DILocation(line: 450, column: 30, scope: !4851, inlinedAt: !4855)
!5108 = !DILocation(line: 450, column: 36, scope: !4851, inlinedAt: !4855)
!5109 = !DILocation(line: 450, column: 8, scope: !4851, inlinedAt: !4855)
!5110 = !DILocation(line: 450, column: 6, scope: !4851, inlinedAt: !4855)
!5111 = !DILocation(line: 451, column: 9, scope: !4851, inlinedAt: !4855)
!5112 = !DILocation(line: 552, column: 3, scope: !4856, inlinedAt: !4859)
!5113 = !DILocation(line: 557, column: 19, scope: !4858, inlinedAt: !4859)
!5114 = !DILocation(line: 557, column: 25, scope: !4858, inlinedAt: !4859)
!5115 = !DILocation(line: 557, column: 9, scope: !4858, inlinedAt: !4859)
!5116 = !DILocation(line: 557, column: 2, scope: !4858, inlinedAt: !4859)
!5117 = !DILocation(line: 558, column: 1, scope: !4858, inlinedAt: !4859)
!5118 = !DILocation(line: 664, column: 2, scope: !4847)
!5119 = distinct !DISubprogram(name: "i2c_set_clientdata", scope: !299, file: !299, line: 356, type: !5120, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{null, !493, !363}
!5122 = !DILocalVariable(name: "client", arg: 1, scope: !5119, file: !299, line: 356, type: !493)
!5123 = !DILocation(line: 356, column: 58, scope: !5119)
!5124 = !DILocalVariable(name: "data", arg: 2, scope: !5119, file: !299, line: 356, type: !363)
!5125 = !DILocation(line: 356, column: 72, scope: !5119)
!5126 = !DILocation(line: 358, column: 19, scope: !5119)
!5127 = !DILocation(line: 358, column: 27, scope: !5119)
!5128 = !DILocation(line: 358, column: 32, scope: !5119)
!5129 = !DILocation(line: 358, column: 2, scope: !5119)
!5130 = !DILocation(line: 359, column: 1, scope: !5119)
!5131 = distinct !DISubprogram(name: "i2c_read_demod_bytes", scope: !3, file: !3, line: 92, type: !5132, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!377, !4705, !316, !4578, !377}
!5134 = !DILocalVariable(name: "state", arg: 1, scope: !5131, file: !3, line: 92, type: !4705)
!5135 = !DILocation(line: 92, column: 56, scope: !5131)
!5136 = !DILocalVariable(name: "reg", arg: 2, scope: !5131, file: !3, line: 93, type: !316)
!5137 = !DILocation(line: 93, column: 18, scope: !5131)
!5138 = !DILocalVariable(name: "buf", arg: 3, scope: !5131, file: !3, line: 93, type: !4578)
!5139 = !DILocation(line: 93, column: 27, scope: !5131)
!5140 = !DILocalVariable(name: "len", arg: 4, scope: !5131, file: !3, line: 93, type: !377)
!5141 = !DILocation(line: 93, column: 36, scope: !5131)
!5142 = !DILocalVariable(name: "wr", scope: !5131, file: !3, line: 95, type: !4765)
!5143 = !DILocation(line: 95, column: 5, scope: !5131)
!5144 = !DILocation(line: 95, column: 12, scope: !5131)
!5145 = !DILocation(line: 95, column: 14, scope: !5131)
!5146 = !DILocalVariable(name: "msg", scope: !5131, file: !3, line: 96, type: !5147)
!5147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 256, elements: !2567)
!5148 = !DILocation(line: 96, column: 17, scope: !5131)
!5149 = !DILocation(line: 96, column: 25, scope: !5131)
!5150 = !DILocation(line: 97, column: 3, scope: !5131)
!5151 = !DILocation(line: 98, column: 12, scope: !5131)
!5152 = !DILocation(line: 98, column: 19, scope: !5131)
!5153 = !DILocation(line: 98, column: 27, scope: !5131)
!5154 = !DILocation(line: 100, column: 11, scope: !5131)
!5155 = !DILocation(line: 102, column: 6, scope: !5131)
!5156 = !DILocation(line: 103, column: 12, scope: !5131)
!5157 = !DILocation(line: 103, column: 19, scope: !5131)
!5158 = !DILocation(line: 103, column: 27, scope: !5131)
!5159 = !DILocation(line: 106, column: 11, scope: !5131)
!5160 = !DILocation(line: 105, column: 11, scope: !5131)
!5161 = !DILocalVariable(name: "ret", scope: !5131, file: !3, line: 109, type: !377)
!5162 = !DILocation(line: 109, column: 6, scope: !5131)
!5163 = !DILocation(line: 111, column: 21, scope: !5131)
!5164 = !DILocation(line: 111, column: 28, scope: !5131)
!5165 = !DILocation(line: 111, column: 36, scope: !5131)
!5166 = !DILocation(line: 111, column: 45, scope: !5131)
!5167 = !DILocation(line: 111, column: 8, scope: !5131)
!5168 = !DILocation(line: 111, column: 6, scope: !5131)
!5169 = !DILocation(line: 112, column: 6, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 112, column: 6)
!5171 = !DILocation(line: 112, column: 10, scope: !5170)
!5172 = !DILocation(line: 112, column: 6, scope: !5131)
!5173 = !DILocation(line: 113, column: 3, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 112, column: 16)
!5175 = !DILocation(line: 116, column: 7, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 116, column: 7)
!5177 = !DILocation(line: 116, column: 11, scope: !5176)
!5178 = !DILocation(line: 116, column: 7, scope: !5174)
!5179 = !DILocation(line: 117, column: 8, scope: !5176)
!5180 = !DILocation(line: 117, column: 4, scope: !5176)
!5181 = !DILocation(line: 118, column: 2, scope: !5174)
!5182 = !DILocation(line: 119, column: 7, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 118, column: 9)
!5184 = !DILocation(line: 121, column: 9, scope: !5131)
!5185 = !DILocation(line: 121, column: 2, scope: !5131)
!5186 = distinct !DISubprogram(name: "get_order", scope: !5187, file: !5187, line: 29, type: !5188, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5187 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5188 = !DISubroutineType(types: !5189)
!5189 = !{!377, !362}
!5190 = !DILocalVariable(name: "x", arg: 1, scope: !5191, file: !5192, line: 366, type: !374)
!5191 = distinct !DISubprogram(name: "fls64", scope: !5192, file: !5192, line: 366, type: !5193, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5192 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!377, !374}
!5195 = !DILocation(line: 366, column: 40, scope: !5191, inlinedAt: !5196)
!5196 = distinct !DILocation(line: 46, column: 9, scope: !5186)
!5197 = !DILocalVariable(name: "bitpos", scope: !5191, file: !5192, line: 368, type: !377)
!5198 = !DILocation(line: 368, column: 6, scope: !5191, inlinedAt: !5196)
!5199 = !DILocalVariable(name: "size", arg: 1, scope: !5186, file: !5187, line: 29, type: !362)
!5200 = !DILocation(line: 29, column: 63, scope: !5186)
!5201 = !DILocation(line: 31, column: 27, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5186, file: !5187, line: 31, column: 6)
!5203 = !DILocation(line: 31, column: 6, scope: !5202)
!5204 = !DILocation(line: 31, column: 6, scope: !5186)
!5205 = !DILocation(line: 32, column: 8, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5207, file: !5187, line: 32, column: 7)
!5207 = distinct !DILexicalBlock(scope: !5202, file: !5187, line: 31, column: 34)
!5208 = !DILocation(line: 32, column: 7, scope: !5207)
!5209 = !DILocation(line: 33, column: 4, scope: !5206)
!5210 = !DILocation(line: 35, column: 7, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5207, file: !5187, line: 35, column: 7)
!5212 = !DILocation(line: 35, column: 12, scope: !5211)
!5213 = !DILocation(line: 35, column: 7, scope: !5207)
!5214 = !DILocation(line: 36, column: 4, scope: !5211)
!5215 = !DILocation(line: 38, column: 10, scope: !5207)
!5216 = !DILocation(line: 38, column: 28, scope: !5207)
!5217 = !DILocation(line: 38, column: 41, scope: !5207)
!5218 = !DILocation(line: 38, column: 3, scope: !5207)
!5219 = !DILocation(line: 41, column: 6, scope: !5186)
!5220 = !DILocation(line: 42, column: 7, scope: !5186)
!5221 = !DILocation(line: 46, column: 15, scope: !5186)
!5222 = !DILocation(line: 374, column: 2, scope: !5191, inlinedAt: !5196)
!5223 = !DILocation(line: 376, column: 14, scope: !5191, inlinedAt: !5196)
!5224 = !{i32 265124}
!5225 = !DILocation(line: 377, column: 9, scope: !5191, inlinedAt: !5196)
!5226 = !DILocation(line: 377, column: 16, scope: !5191, inlinedAt: !5196)
!5227 = !DILocation(line: 46, column: 2, scope: !5186)
!5228 = !DILocation(line: 48, column: 1, scope: !5186)
!5229 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5230, file: !5230, line: 30, type: !5231, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5230 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!377, !372}
!5233 = !DILocation(line: 366, column: 40, scope: !5191, inlinedAt: !5234)
!5234 = distinct !DILocation(line: 32, column: 9, scope: !5229)
!5235 = !DILocation(line: 368, column: 6, scope: !5191, inlinedAt: !5234)
!5236 = !DILocalVariable(name: "n", arg: 1, scope: !5229, file: !5230, line: 30, type: !372)
!5237 = !DILocation(line: 30, column: 21, scope: !5229)
!5238 = !DILocation(line: 32, column: 15, scope: !5229)
!5239 = !DILocation(line: 374, column: 2, scope: !5191, inlinedAt: !5234)
!5240 = !DILocation(line: 376, column: 14, scope: !5191, inlinedAt: !5234)
!5241 = !DILocation(line: 377, column: 9, scope: !5191, inlinedAt: !5234)
!5242 = !DILocation(line: 377, column: 16, scope: !5191, inlinedAt: !5234)
!5243 = !DILocation(line: 32, column: 18, scope: !5229)
!5244 = !DILocation(line: 32, column: 2, scope: !5229)
!5245 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5246, file: !5246, line: 137, type: !5247, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5246 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5247 = !DISubroutineType(types: !5248)
!5248 = !{!363, !1369, !2295, !1024, !367}
!5249 = !DILocalVariable(name: "s", arg: 1, scope: !5245, file: !5246, line: 137, type: !1369)
!5250 = !DILocation(line: 137, column: 54, scope: !5245)
!5251 = !DILocalVariable(name: "object", arg: 2, scope: !5245, file: !5246, line: 137, type: !2295)
!5252 = !DILocation(line: 137, column: 69, scope: !5245)
!5253 = !DILocalVariable(name: "size", arg: 3, scope: !5245, file: !5246, line: 138, type: !1024)
!5254 = !DILocation(line: 138, column: 12, scope: !5245)
!5255 = !DILocalVariable(name: "flags", arg: 4, scope: !5245, file: !5246, line: 138, type: !367)
!5256 = !DILocation(line: 138, column: 24, scope: !5245)
!5257 = !DILocation(line: 140, column: 17, scope: !5245)
!5258 = !DILocation(line: 140, column: 2, scope: !5245)
!5259 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !237, file: !237, line: 660, type: !5260, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{null, !3590, !363}
!5262 = !DILocalVariable(name: "dev", arg: 1, scope: !5259, file: !237, line: 660, type: !3590)
!5263 = !DILocation(line: 660, column: 51, scope: !5259)
!5264 = !DILocalVariable(name: "data", arg: 2, scope: !5259, file: !237, line: 660, type: !363)
!5265 = !DILocation(line: 660, column: 62, scope: !5259)
!5266 = !DILocation(line: 662, column: 21, scope: !5259)
!5267 = !DILocation(line: 662, column: 2, scope: !5259)
!5268 = !DILocation(line: 662, column: 7, scope: !5259)
!5269 = !DILocation(line: 662, column: 19, scope: !5259)
!5270 = !DILocation(line: 663, column: 1, scope: !5259)
!5271 = distinct !DISubprogram(name: "lgdt330x_release", scope: !3, file: !3, line: 838, type: !4300, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5272 = !DILocalVariable(name: "fe", arg: 1, scope: !5271, file: !3, line: 838, type: !4302)
!5273 = !DILocation(line: 838, column: 51, scope: !5271)
!5274 = !DILocalVariable(name: "state", scope: !5271, file: !3, line: 840, type: !4705)
!5275 = !DILocation(line: 840, column: 25, scope: !5271)
!5276 = !DILocation(line: 840, column: 33, scope: !5271)
!5277 = !DILocation(line: 840, column: 37, scope: !5271)
!5278 = !DILocalVariable(name: "client", scope: !5271, file: !3, line: 841, type: !493)
!5279 = !DILocation(line: 841, column: 21, scope: !5271)
!5280 = !DILocation(line: 841, column: 30, scope: !5271)
!5281 = !DILocation(line: 841, column: 37, scope: !5271)
!5282 = !DILocation(line: 845, column: 24, scope: !5271)
!5283 = !DILocation(line: 845, column: 2, scope: !5271)
!5284 = !DILocation(line: 846, column: 1, scope: !5271)
!5285 = !DILocalVariable(name: "fe", arg: 1, scope: !4604, file: !3, line: 179, type: !4302)
!5286 = !DILocation(line: 179, column: 47, scope: !4604)
!5287 = !DILocalVariable(name: "state", scope: !4604, file: !3, line: 181, type: !4705)
!5288 = !DILocation(line: 181, column: 25, scope: !4604)
!5289 = !DILocation(line: 181, column: 33, scope: !4604)
!5290 = !DILocation(line: 181, column: 37, scope: !4604)
!5291 = !DILocalVariable(name: "p", scope: !4604, file: !3, line: 182, type: !4462)
!5292 = !DILocation(line: 182, column: 34, scope: !4604)
!5293 = !DILocation(line: 182, column: 39, scope: !4604)
!5294 = !DILocation(line: 182, column: 43, scope: !4604)
!5295 = !DILocalVariable(name: "chip_name", scope: !4604, file: !3, line: 183, type: !369)
!5296 = !DILocation(line: 183, column: 9, scope: !4604)
!5297 = !DILocalVariable(name: "err", scope: !4604, file: !3, line: 184, type: !377)
!5298 = !DILocation(line: 184, column: 9, scope: !4604)
!5299 = !DILocation(line: 254, column: 10, scope: !4604)
!5300 = !DILocation(line: 254, column: 17, scope: !4604)
!5301 = !DILocation(line: 254, column: 24, scope: !4604)
!5302 = !DILocation(line: 254, column: 2, scope: !4604)
!5303 = !DILocation(line: 256, column: 13, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 254, column: 36)
!5305 = !DILocation(line: 257, column: 31, scope: !5304)
!5306 = !DILocation(line: 257, column: 9, scope: !5304)
!5307 = !DILocation(line: 257, column: 7, scope: !5304)
!5308 = !DILocation(line: 259, column: 3, scope: !5304)
!5309 = !DILocation(line: 261, column: 13, scope: !5304)
!5310 = !DILocation(line: 262, column: 11, scope: !5304)
!5311 = !DILocation(line: 262, column: 18, scope: !5304)
!5312 = !DILocation(line: 262, column: 25, scope: !5304)
!5313 = !DILocation(line: 262, column: 3, scope: !5304)
!5314 = !DILocation(line: 264, column: 32, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 262, column: 46)
!5316 = !DILocation(line: 264, column: 10, scope: !5315)
!5317 = !DILocation(line: 264, column: 8, scope: !5315)
!5318 = !DILocation(line: 267, column: 4, scope: !5315)
!5319 = !DILocation(line: 269, column: 32, scope: !5315)
!5320 = !DILocation(line: 269, column: 10, scope: !5315)
!5321 = !DILocation(line: 269, column: 8, scope: !5315)
!5322 = !DILocation(line: 272, column: 4, scope: !5315)
!5323 = !DILocation(line: 275, column: 32, scope: !5315)
!5324 = !DILocation(line: 275, column: 10, scope: !5315)
!5325 = !DILocation(line: 275, column: 8, scope: !5315)
!5326 = !DILocation(line: 277, column: 3, scope: !5315)
!5327 = !DILocation(line: 278, column: 3, scope: !5304)
!5328 = !DILocation(line: 280, column: 13, scope: !5304)
!5329 = !DILocation(line: 281, column: 3, scope: !5304)
!5330 = !DILocation(line: 283, column: 7, scope: !5304)
!5331 = !DILocation(line: 284, column: 2, scope: !5304)
!5332 = !DILocation(line: 285, column: 2, scope: !4604)
!5333 = !DILocation(line: 285, column: 2, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 285, column: 2)
!5335 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 285, column: 2)
!5336 = !DILocation(line: 285, column: 2, scope: !5335)
!5337 = !DILocation(line: 286, column: 6, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 286, column: 6)
!5339 = !DILocation(line: 286, column: 10, scope: !5338)
!5340 = !DILocation(line: 286, column: 6, scope: !4604)
!5341 = !DILocation(line: 287, column: 10, scope: !5338)
!5342 = !DILocation(line: 287, column: 3, scope: !5338)
!5343 = !DILocation(line: 289, column: 2, scope: !4604)
!5344 = !DILocation(line: 289, column: 5, scope: !4604)
!5345 = !DILocation(line: 289, column: 9, scope: !4604)
!5346 = !DILocation(line: 289, column: 13, scope: !4604)
!5347 = !DILocation(line: 290, column: 2, scope: !4604)
!5348 = !DILocation(line: 290, column: 5, scope: !4604)
!5349 = !DILocation(line: 290, column: 9, scope: !4604)
!5350 = !DILocation(line: 290, column: 17, scope: !4604)
!5351 = !DILocation(line: 290, column: 23, scope: !4604)
!5352 = !DILocation(line: 291, column: 2, scope: !4604)
!5353 = !DILocation(line: 291, column: 5, scope: !4604)
!5354 = !DILocation(line: 291, column: 17, scope: !4604)
!5355 = !DILocation(line: 291, column: 21, scope: !4604)
!5356 = !DILocation(line: 292, column: 2, scope: !4604)
!5357 = !DILocation(line: 292, column: 5, scope: !4604)
!5358 = !DILocation(line: 292, column: 17, scope: !4604)
!5359 = !DILocation(line: 292, column: 25, scope: !4604)
!5360 = !DILocation(line: 292, column: 31, scope: !4604)
!5361 = !DILocation(line: 293, column: 2, scope: !4604)
!5362 = !DILocation(line: 293, column: 5, scope: !4604)
!5363 = !DILocation(line: 293, column: 17, scope: !4604)
!5364 = !DILocation(line: 293, column: 21, scope: !4604)
!5365 = !DILocation(line: 294, column: 2, scope: !4604)
!5366 = !DILocation(line: 294, column: 5, scope: !4604)
!5367 = !DILocation(line: 294, column: 17, scope: !4604)
!5368 = !DILocation(line: 294, column: 25, scope: !4604)
!5369 = !DILocation(line: 294, column: 31, scope: !4604)
!5370 = !DILocation(line: 295, column: 2, scope: !4604)
!5371 = !DILocation(line: 295, column: 9, scope: !4604)
!5372 = !DILocation(line: 295, column: 25, scope: !4604)
!5373 = !DILocation(line: 297, column: 27, scope: !4604)
!5374 = !DILocation(line: 297, column: 9, scope: !4604)
!5375 = !DILocation(line: 297, column: 2, scope: !4604)
!5376 = !DILocation(line: 298, column: 1, scope: !4604)
!5377 = !DILocalVariable(name: "fe", arg: 1, scope: !4616, file: !3, line: 309, type: !4302)
!5378 = !DILocation(line: 309, column: 57, scope: !4616)
!5379 = !DILocalVariable(name: "p", scope: !4616, file: !3, line: 311, type: !4462)
!5380 = !DILocation(line: 311, column: 34, scope: !4616)
!5381 = !DILocation(line: 311, column: 39, scope: !4616)
!5382 = !DILocation(line: 311, column: 43, scope: !4616)
!5383 = !DILocalVariable(name: "state", scope: !4616, file: !3, line: 312, type: !4705)
!5384 = !DILocation(line: 312, column: 25, scope: !4616)
!5385 = !DILocation(line: 312, column: 33, scope: !4616)
!5386 = !DILocation(line: 312, column: 37, scope: !4616)
!5387 = !DILocalVariable(name: "top_ctrl_cfg", scope: !4616, file: !3, line: 342, type: !5388)
!5388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 16, elements: !2567)
!5389 = !DILocation(line: 342, column: 5, scope: !4616)
!5390 = !DILocalVariable(name: "err", scope: !4616, file: !3, line: 344, type: !377)
!5391 = !DILocation(line: 344, column: 6, scope: !4616)
!5392 = !DILocation(line: 346, column: 6, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 346, column: 6)
!5394 = !DILocation(line: 346, column: 13, scope: !5393)
!5395 = !DILocation(line: 346, column: 35, scope: !5393)
!5396 = !DILocation(line: 346, column: 38, scope: !5393)
!5397 = !DILocation(line: 346, column: 32, scope: !5393)
!5398 = !DILocation(line: 346, column: 6, scope: !4616)
!5399 = !DILocation(line: 347, column: 11, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 346, column: 50)
!5401 = !DILocation(line: 347, column: 14, scope: !5400)
!5402 = !DILocation(line: 347, column: 3, scope: !5400)
!5403 = !DILocation(line: 349, column: 4, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 347, column: 26)
!5405 = !DILocation(line: 349, column: 4, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 349, column: 4)
!5407 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 349, column: 4)
!5408 = !DILocation(line: 349, column: 4, scope: !5407)
!5409 = !DILocation(line: 352, column: 4, scope: !5404)
!5410 = !DILocation(line: 352, column: 20, scope: !5404)
!5411 = !DILocation(line: 355, column: 8, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 355, column: 8)
!5413 = !DILocation(line: 355, column: 15, scope: !5412)
!5414 = !DILocation(line: 355, column: 22, scope: !5412)
!5415 = !DILocation(line: 355, column: 8, scope: !5404)
!5416 = !DILocation(line: 356, column: 5, scope: !5412)
!5417 = !DILocation(line: 356, column: 12, scope: !5412)
!5418 = !DILocation(line: 356, column: 19, scope: !5412)
!5419 = !DILocation(line: 356, column: 30, scope: !5412)
!5420 = !DILocation(line: 358, column: 8, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 358, column: 8)
!5422 = !DILocation(line: 358, column: 15, scope: !5421)
!5423 = !DILocation(line: 358, column: 22, scope: !5421)
!5424 = !DILocation(line: 358, column: 33, scope: !5421)
!5425 = !DILocation(line: 358, column: 8, scope: !5404)
!5426 = !DILocation(line: 359, column: 33, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 358, column: 46)
!5428 = !DILocation(line: 359, column: 11, scope: !5427)
!5429 = !DILocation(line: 359, column: 9, scope: !5427)
!5430 = !DILocation(line: 362, column: 4, scope: !5427)
!5431 = !DILocation(line: 363, column: 4, scope: !5404)
!5432 = !DILocation(line: 366, column: 4, scope: !5404)
!5433 = !DILocation(line: 366, column: 4, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 366, column: 4)
!5435 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 366, column: 4)
!5436 = !DILocation(line: 366, column: 4, scope: !5435)
!5437 = !DILocation(line: 369, column: 4, scope: !5404)
!5438 = !DILocation(line: 369, column: 20, scope: !5404)
!5439 = !DILocation(line: 372, column: 8, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 372, column: 8)
!5441 = !DILocation(line: 372, column: 15, scope: !5440)
!5442 = !DILocation(line: 372, column: 22, scope: !5440)
!5443 = !DILocation(line: 372, column: 8, scope: !5404)
!5444 = !DILocation(line: 373, column: 5, scope: !5440)
!5445 = !DILocation(line: 373, column: 12, scope: !5440)
!5446 = !DILocation(line: 373, column: 19, scope: !5440)
!5447 = !DILocation(line: 373, column: 30, scope: !5440)
!5448 = !DILocation(line: 375, column: 8, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 375, column: 8)
!5450 = !DILocation(line: 375, column: 15, scope: !5449)
!5451 = !DILocation(line: 375, column: 22, scope: !5449)
!5452 = !DILocation(line: 375, column: 33, scope: !5449)
!5453 = !DILocation(line: 375, column: 8, scope: !5404)
!5454 = !DILocation(line: 376, column: 33, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 375, column: 46)
!5456 = !DILocation(line: 376, column: 11, scope: !5455)
!5457 = !DILocation(line: 376, column: 9, scope: !5455)
!5458 = !DILocation(line: 379, column: 4, scope: !5455)
!5459 = !DILocation(line: 380, column: 4, scope: !5404)
!5460 = !DILocation(line: 383, column: 4, scope: !5404)
!5461 = !DILocation(line: 383, column: 4, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 383, column: 4)
!5463 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 383, column: 4)
!5464 = !DILocation(line: 383, column: 4, scope: !5463)
!5465 = !DILocation(line: 386, column: 4, scope: !5404)
!5466 = !DILocation(line: 386, column: 20, scope: !5404)
!5467 = !DILocation(line: 389, column: 8, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 389, column: 8)
!5469 = !DILocation(line: 389, column: 15, scope: !5468)
!5470 = !DILocation(line: 389, column: 22, scope: !5468)
!5471 = !DILocation(line: 389, column: 8, scope: !5404)
!5472 = !DILocation(line: 390, column: 5, scope: !5468)
!5473 = !DILocation(line: 390, column: 12, scope: !5468)
!5474 = !DILocation(line: 390, column: 19, scope: !5468)
!5475 = !DILocation(line: 390, column: 30, scope: !5468)
!5476 = !DILocation(line: 392, column: 8, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 392, column: 8)
!5478 = !DILocation(line: 392, column: 15, scope: !5477)
!5479 = !DILocation(line: 392, column: 22, scope: !5477)
!5480 = !DILocation(line: 392, column: 33, scope: !5477)
!5481 = !DILocation(line: 392, column: 8, scope: !5404)
!5482 = !DILocation(line: 393, column: 33, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 392, column: 46)
!5484 = !DILocation(line: 393, column: 11, scope: !5483)
!5485 = !DILocation(line: 393, column: 9, scope: !5483)
!5486 = !DILocation(line: 396, column: 4, scope: !5483)
!5487 = !DILocation(line: 397, column: 4, scope: !5404)
!5488 = !DILocation(line: 399, column: 4, scope: !5404)
!5489 = !DILocation(line: 402, column: 4, scope: !5404)
!5490 = !DILocation(line: 404, column: 7, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 404, column: 7)
!5492 = !DILocation(line: 404, column: 11, scope: !5491)
!5493 = !DILocation(line: 404, column: 7, scope: !5400)
!5494 = !DILocation(line: 405, column: 4, scope: !5491)
!5495 = !DILocation(line: 414, column: 22, scope: !5400)
!5496 = !DILocation(line: 414, column: 29, scope: !5400)
!5497 = !DILocation(line: 414, column: 36, scope: !5400)
!5498 = !DILocation(line: 414, column: 3, scope: !5400)
!5499 = !DILocation(line: 414, column: 19, scope: !5400)
!5500 = !DILocation(line: 417, column: 25, scope: !5400)
!5501 = !DILocation(line: 417, column: 32, scope: !5400)
!5502 = !DILocation(line: 417, column: 3, scope: !5400)
!5503 = !DILocation(line: 419, column: 7, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 419, column: 7)
!5505 = !DILocation(line: 419, column: 14, scope: !5504)
!5506 = !DILocation(line: 419, column: 21, scope: !5504)
!5507 = !DILocation(line: 419, column: 7, scope: !5400)
!5508 = !DILocation(line: 420, column: 4, scope: !5504)
!5509 = !DILocation(line: 420, column: 11, scope: !5504)
!5510 = !DILocation(line: 420, column: 18, scope: !5504)
!5511 = !DILocation(line: 420, column: 32, scope: !5504)
!5512 = !DILocation(line: 421, column: 31, scope: !5400)
!5513 = !DILocation(line: 421, column: 34, scope: !5400)
!5514 = !DILocation(line: 421, column: 3, scope: !5400)
!5515 = !DILocation(line: 421, column: 10, scope: !5400)
!5516 = !DILocation(line: 421, column: 29, scope: !5400)
!5517 = !DILocation(line: 422, column: 2, scope: !5400)
!5518 = !DILocation(line: 425, column: 6, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 425, column: 6)
!5520 = !DILocation(line: 425, column: 10, scope: !5519)
!5521 = !DILocation(line: 425, column: 14, scope: !5519)
!5522 = !DILocation(line: 425, column: 24, scope: !5519)
!5523 = !DILocation(line: 425, column: 6, scope: !4616)
!5524 = !DILocation(line: 426, column: 3, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 425, column: 36)
!5526 = !DILocation(line: 426, column: 7, scope: !5525)
!5527 = !DILocation(line: 426, column: 11, scope: !5525)
!5528 = !DILocation(line: 426, column: 21, scope: !5525)
!5529 = !DILocation(line: 426, column: 32, scope: !5525)
!5530 = !DILocation(line: 427, column: 7, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 427, column: 7)
!5532 = !DILocation(line: 427, column: 11, scope: !5531)
!5533 = !DILocation(line: 427, column: 15, scope: !5531)
!5534 = !DILocation(line: 427, column: 7, scope: !5525)
!5535 = !DILocation(line: 428, column: 4, scope: !5531)
!5536 = !DILocation(line: 428, column: 8, scope: !5531)
!5537 = !DILocation(line: 428, column: 12, scope: !5531)
!5538 = !DILocation(line: 428, column: 26, scope: !5531)
!5539 = !DILocation(line: 429, column: 2, scope: !5525)
!5540 = !DILocation(line: 436, column: 29, scope: !4616)
!5541 = !DILocation(line: 436, column: 32, scope: !4616)
!5542 = !DILocation(line: 436, column: 2, scope: !4616)
!5543 = !DILocation(line: 436, column: 9, scope: !4616)
!5544 = !DILocation(line: 436, column: 27, scope: !4616)
!5545 = !DILocation(line: 438, column: 20, scope: !4616)
!5546 = !DILocation(line: 438, column: 2, scope: !4616)
!5547 = !DILocation(line: 439, column: 2, scope: !4616)
!5548 = !DILocation(line: 440, column: 1, scope: !4616)
!5549 = distinct !DISubprogram(name: "lgdt330x_get_tune_settings", scope: !3, file: !3, line: 828, type: !4450, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5550 = !DILocalVariable(name: "fe", arg: 1, scope: !5549, file: !3, line: 828, type: !4302)
!5551 = !DILocation(line: 828, column: 49, scope: !5549)
!5552 = !DILocalVariable(name: "fe_tune_settings", arg: 2, scope: !5549, file: !3, line: 829, type: !4452)
!5553 = !DILocation(line: 829, column: 42, scope: !5549)
!5554 = !DILocation(line: 832, column: 2, scope: !5549)
!5555 = !DILocation(line: 832, column: 20, scope: !5549)
!5556 = !DILocation(line: 832, column: 33, scope: !5549)
!5557 = !DILocation(line: 833, column: 2, scope: !5549)
!5558 = !DILocation(line: 833, column: 20, scope: !5549)
!5559 = !DILocation(line: 833, column: 30, scope: !5549)
!5560 = !DILocation(line: 834, column: 2, scope: !5549)
!5561 = !DILocation(line: 834, column: 20, scope: !5549)
!5562 = !DILocation(line: 834, column: 30, scope: !5549)
!5563 = !DILocation(line: 835, column: 2, scope: !5549)
!5564 = distinct !DISubprogram(name: "lgdt330x_get_frontend", scope: !3, file: !3, line: 442, type: !4460, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5565 = !DILocalVariable(name: "fe", arg: 1, scope: !5564, file: !3, line: 442, type: !4302)
!5566 = !DILocation(line: 442, column: 55, scope: !5564)
!5567 = !DILocalVariable(name: "p", arg: 2, scope: !5564, file: !3, line: 443, type: !4462)
!5568 = !DILocation(line: 443, column: 38, scope: !5564)
!5569 = !DILocalVariable(name: "state", scope: !5564, file: !3, line: 445, type: !4705)
!5570 = !DILocation(line: 445, column: 25, scope: !5564)
!5571 = !DILocation(line: 445, column: 33, scope: !5564)
!5572 = !DILocation(line: 445, column: 37, scope: !5564)
!5573 = !DILocation(line: 447, column: 17, scope: !5564)
!5574 = !DILocation(line: 447, column: 24, scope: !5564)
!5575 = !DILocation(line: 447, column: 2, scope: !5564)
!5576 = !DILocation(line: 447, column: 5, scope: !5564)
!5577 = !DILocation(line: 447, column: 15, scope: !5564)
!5578 = !DILocation(line: 448, column: 2, scope: !5564)
!5579 = distinct !DISubprogram(name: "lgdt3302_read_status", scope: !3, file: !3, line: 618, type: !4465, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5580 = !DILocalVariable(name: "m", arg: 1, scope: !5581, file: !5582, line: 363, type: !1869)
!5581 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5582, file: !5582, line: 363, type: !5583, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5582 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!5583 = !DISubroutineType(types: !5584)
!5584 = !{!362, !1869}
!5585 = !DILocation(line: 363, column: 74, scope: !5581, inlinedAt: !5586)
!5586 = distinct !DILocation(line: 690, column: 37, scope: !5579)
!5587 = !DILocalVariable(name: "fe", arg: 1, scope: !5579, file: !3, line: 618, type: !4302)
!5588 = !DILocation(line: 618, column: 54, scope: !5579)
!5589 = !DILocalVariable(name: "status", arg: 2, scope: !5579, file: !3, line: 619, type: !4442)
!5590 = !DILocation(line: 619, column: 21, scope: !5579)
!5591 = !DILocalVariable(name: "state", scope: !5579, file: !3, line: 621, type: !4705)
!5592 = !DILocation(line: 621, column: 25, scope: !5579)
!5593 = !DILocation(line: 621, column: 33, scope: !5579)
!5594 = !DILocation(line: 621, column: 37, scope: !5579)
!5595 = !DILocalVariable(name: "p", scope: !5579, file: !3, line: 622, type: !4462)
!5596 = !DILocation(line: 622, column: 34, scope: !5579)
!5597 = !DILocation(line: 622, column: 39, scope: !5579)
!5598 = !DILocation(line: 622, column: 43, scope: !5579)
!5599 = !DILocalVariable(name: "buf", scope: !5579, file: !3, line: 623, type: !5600)
!5600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 24, elements: !1100)
!5601 = !DILocation(line: 623, column: 5, scope: !5579)
!5602 = !DILocalVariable(name: "err", scope: !5579, file: !3, line: 624, type: !377)
!5603 = !DILocation(line: 624, column: 6, scope: !5579)
!5604 = !DILocation(line: 626, column: 3, scope: !5579)
!5605 = !DILocation(line: 626, column: 10, scope: !5579)
!5606 = !DILocation(line: 629, column: 23, scope: !5579)
!5607 = !DILocation(line: 629, column: 42, scope: !5579)
!5608 = !DILocation(line: 629, column: 2, scope: !5579)
!5609 = !DILocation(line: 630, column: 2, scope: !5579)
!5610 = !DILocation(line: 630, column: 2, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 630, column: 2)
!5612 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 630, column: 2)
!5613 = !DILocation(line: 630, column: 2, scope: !5612)
!5614 = !DILocation(line: 631, column: 7, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 631, column: 6)
!5616 = !DILocation(line: 631, column: 14, scope: !5615)
!5617 = !DILocation(line: 631, column: 22, scope: !5615)
!5618 = !DILocation(line: 631, column: 6, scope: !5579)
!5619 = !DILocation(line: 636, column: 4, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 631, column: 30)
!5621 = !DILocation(line: 636, column: 11, scope: !5620)
!5622 = !DILocation(line: 637, column: 2, scope: !5620)
!5623 = !DILocation(line: 646, column: 23, scope: !5579)
!5624 = !DILocation(line: 646, column: 43, scope: !5579)
!5625 = !DILocation(line: 646, column: 2, scope: !5579)
!5626 = !DILocation(line: 647, column: 2, scope: !5579)
!5627 = !DILocation(line: 647, column: 2, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 647, column: 2)
!5629 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 647, column: 2)
!5630 = !DILocation(line: 647, column: 2, scope: !5629)
!5631 = !DILocation(line: 652, column: 7, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 652, column: 6)
!5633 = !DILocation(line: 652, column: 14, scope: !5632)
!5634 = !DILocation(line: 652, column: 22, scope: !5632)
!5635 = !DILocation(line: 652, column: 6, scope: !5579)
!5636 = !DILocation(line: 653, column: 4, scope: !5632)
!5637 = !DILocation(line: 653, column: 11, scope: !5632)
!5638 = !DILocation(line: 653, column: 3, scope: !5632)
!5639 = !DILocation(line: 656, column: 7, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 656, column: 6)
!5641 = !DILocation(line: 656, column: 14, scope: !5640)
!5642 = !DILocation(line: 656, column: 22, scope: !5640)
!5643 = !DILocation(line: 656, column: 6, scope: !5579)
!5644 = !DILocation(line: 657, column: 4, scope: !5640)
!5645 = !DILocation(line: 657, column: 11, scope: !5640)
!5646 = !DILocation(line: 657, column: 3, scope: !5640)
!5647 = !DILocation(line: 660, column: 23, scope: !5579)
!5648 = !DILocation(line: 660, column: 44, scope: !5579)
!5649 = !DILocation(line: 660, column: 2, scope: !5579)
!5650 = !DILocation(line: 661, column: 2, scope: !5579)
!5651 = !DILocation(line: 661, column: 2, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 661, column: 2)
!5653 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 661, column: 2)
!5654 = !DILocation(line: 661, column: 2, scope: !5653)
!5655 = !DILocation(line: 662, column: 10, scope: !5579)
!5656 = !DILocation(line: 662, column: 17, scope: !5579)
!5657 = !DILocation(line: 662, column: 2, scope: !5579)
!5658 = !DILocation(line: 666, column: 8, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 666, column: 7)
!5660 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 662, column: 37)
!5661 = !DILocation(line: 666, column: 15, scope: !5659)
!5662 = !DILocation(line: 666, column: 23, scope: !5659)
!5663 = !DILocation(line: 666, column: 7, scope: !5660)
!5664 = !DILocation(line: 667, column: 5, scope: !5659)
!5665 = !DILocation(line: 667, column: 12, scope: !5659)
!5666 = !DILocation(line: 667, column: 4, scope: !5659)
!5667 = !DILocation(line: 668, column: 3, scope: !5660)
!5668 = !DILocation(line: 670, column: 8, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 670, column: 7)
!5670 = !DILocation(line: 670, column: 15, scope: !5669)
!5671 = !DILocation(line: 670, column: 23, scope: !5669)
!5672 = !DILocation(line: 670, column: 7, scope: !5660)
!5673 = !DILocation(line: 671, column: 5, scope: !5669)
!5674 = !DILocation(line: 671, column: 12, scope: !5669)
!5675 = !DILocation(line: 671, column: 4, scope: !5669)
!5676 = !DILocation(line: 672, column: 3, scope: !5660)
!5677 = !DILocation(line: 674, column: 3, scope: !5660)
!5678 = !DILocation(line: 677, column: 2, scope: !5660)
!5679 = !DILocation(line: 679, column: 9, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 679, column: 6)
!5681 = !DILocation(line: 679, column: 8, scope: !5680)
!5682 = !DILocation(line: 679, column: 16, scope: !5680)
!5683 = !DILocation(line: 679, column: 6, scope: !5579)
!5684 = !DILocation(line: 680, column: 3, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 679, column: 32)
!5686 = !DILocation(line: 680, column: 6, scope: !5685)
!5687 = !DILocation(line: 680, column: 10, scope: !5685)
!5688 = !DILocation(line: 680, column: 18, scope: !5685)
!5689 = !DILocation(line: 680, column: 24, scope: !5685)
!5690 = !DILocation(line: 681, column: 3, scope: !5685)
!5691 = !DILocation(line: 681, column: 6, scope: !5685)
!5692 = !DILocation(line: 681, column: 18, scope: !5685)
!5693 = !DILocation(line: 681, column: 26, scope: !5685)
!5694 = !DILocation(line: 681, column: 32, scope: !5685)
!5695 = !DILocation(line: 682, column: 3, scope: !5685)
!5696 = !DILocation(line: 682, column: 6, scope: !5685)
!5697 = !DILocation(line: 682, column: 18, scope: !5685)
!5698 = !DILocation(line: 682, column: 26, scope: !5685)
!5699 = !DILocation(line: 682, column: 32, scope: !5685)
!5700 = !DILocation(line: 683, column: 3, scope: !5685)
!5701 = !DILocation(line: 686, column: 6, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 686, column: 6)
!5703 = !DILocation(line: 686, column: 13, scope: !5702)
!5704 = !DILocation(line: 686, column: 29, scope: !5702)
!5705 = !DILocation(line: 687, column: 6, scope: !5702)
!5706 = !DILocation(line: 686, column: 6, scope: !5579)
!5707 = !DILocation(line: 688, column: 3, scope: !5702)
!5708 = !DILocation(line: 690, column: 27, scope: !5579)
!5709 = !DILocation(line: 365, column: 27, scope: !5710, inlinedAt: !5586)
!5710 = distinct !DILexicalBlock(scope: !5581, file: !5582, line: 365, column: 6)
!5711 = !DILocation(line: 365, column: 6, scope: !5710, inlinedAt: !5586)
!5712 = !DILocation(line: 365, column: 6, scope: !5581, inlinedAt: !5586)
!5713 = !DILocation(line: 366, column: 12, scope: !5714, inlinedAt: !5586)
!5714 = distinct !DILexicalBlock(scope: !5715, file: !5582, line: 366, column: 7)
!5715 = distinct !DILexicalBlock(scope: !5710, file: !5582, line: 365, column: 31)
!5716 = !DILocation(line: 366, column: 14, scope: !5714, inlinedAt: !5586)
!5717 = !DILocation(line: 366, column: 7, scope: !5715, inlinedAt: !5586)
!5718 = !DILocation(line: 367, column: 4, scope: !5714, inlinedAt: !5586)
!5719 = !DILocation(line: 368, column: 28, scope: !5715, inlinedAt: !5586)
!5720 = !DILocation(line: 368, column: 10, scope: !5715, inlinedAt: !5586)
!5721 = !DILocation(line: 368, column: 3, scope: !5715, inlinedAt: !5586)
!5722 = !DILocation(line: 370, column: 29, scope: !5723, inlinedAt: !5586)
!5723 = distinct !DILexicalBlock(scope: !5710, file: !5582, line: 369, column: 9)
!5724 = !DILocation(line: 370, column: 10, scope: !5723, inlinedAt: !5586)
!5725 = !DILocation(line: 370, column: 3, scope: !5723, inlinedAt: !5586)
!5726 = !DILocation(line: 372, column: 1, scope: !5581, inlinedAt: !5586)
!5727 = !DILocation(line: 690, column: 35, scope: !5579)
!5728 = !DILocation(line: 690, column: 2, scope: !5579)
!5729 = !DILocation(line: 690, column: 9, scope: !5579)
!5730 = !DILocation(line: 690, column: 25, scope: !5579)
!5731 = !DILocation(line: 692, column: 26, scope: !5579)
!5732 = !DILocation(line: 692, column: 8, scope: !5579)
!5733 = !DILocation(line: 692, column: 6, scope: !5579)
!5734 = !DILocation(line: 693, column: 7, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 693, column: 6)
!5736 = !DILocation(line: 693, column: 6, scope: !5579)
!5737 = !DILocation(line: 694, column: 3, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 693, column: 12)
!5739 = !DILocation(line: 694, column: 6, scope: !5738)
!5740 = !DILocation(line: 694, column: 10, scope: !5738)
!5741 = !DILocation(line: 694, column: 18, scope: !5738)
!5742 = !DILocation(line: 694, column: 24, scope: !5738)
!5743 = !DILocation(line: 695, column: 34, scope: !5738)
!5744 = !DILocation(line: 695, column: 41, scope: !5738)
!5745 = !DILocation(line: 695, column: 29, scope: !5738)
!5746 = !DILocation(line: 695, column: 46, scope: !5738)
!5747 = !DILocation(line: 695, column: 54, scope: !5738)
!5748 = !DILocation(line: 695, column: 3, scope: !5738)
!5749 = !DILocation(line: 695, column: 6, scope: !5738)
!5750 = !DILocation(line: 695, column: 10, scope: !5738)
!5751 = !DILocation(line: 695, column: 18, scope: !5738)
!5752 = !DILocation(line: 695, column: 25, scope: !5738)
!5753 = !DILocation(line: 696, column: 2, scope: !5738)
!5754 = !DILocation(line: 697, column: 3, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 696, column: 9)
!5756 = !DILocation(line: 697, column: 6, scope: !5755)
!5757 = !DILocation(line: 697, column: 10, scope: !5755)
!5758 = !DILocation(line: 697, column: 18, scope: !5755)
!5759 = !DILocation(line: 697, column: 24, scope: !5755)
!5760 = !DILocation(line: 700, column: 29, scope: !5579)
!5761 = !DILocation(line: 701, column: 9, scope: !5579)
!5762 = !DILocation(line: 700, column: 8, scope: !5579)
!5763 = !DILocation(line: 700, column: 6, scope: !5579)
!5764 = !DILocation(line: 702, column: 7, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 702, column: 6)
!5766 = !DILocation(line: 702, column: 6, scope: !5579)
!5767 = !DILocation(line: 703, column: 22, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 702, column: 12)
!5769 = !DILocation(line: 703, column: 29, scope: !5768)
!5770 = !DILocation(line: 703, column: 37, scope: !5768)
!5771 = !DILocation(line: 703, column: 35, scope: !5768)
!5772 = !DILocation(line: 703, column: 21, scope: !5768)
!5773 = !DILocation(line: 703, column: 3, scope: !5768)
!5774 = !DILocation(line: 703, column: 10, scope: !5768)
!5775 = !DILocation(line: 703, column: 19, scope: !5768)
!5776 = !DILocation(line: 705, column: 3, scope: !5768)
!5777 = !DILocation(line: 705, column: 3, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5779, file: !3, line: 705, column: 3)
!5779 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 705, column: 3)
!5780 = !DILocation(line: 705, column: 3, scope: !5779)
!5781 = !DILocation(line: 707, column: 36, scope: !5768)
!5782 = !DILocation(line: 707, column: 43, scope: !5768)
!5783 = !DILocation(line: 707, column: 3, scope: !5768)
!5784 = !DILocation(line: 707, column: 6, scope: !5768)
!5785 = !DILocation(line: 707, column: 18, scope: !5768)
!5786 = !DILocation(line: 707, column: 26, scope: !5768)
!5787 = !DILocation(line: 707, column: 33, scope: !5768)
!5788 = !DILocation(line: 709, column: 3, scope: !5768)
!5789 = !DILocation(line: 709, column: 6, scope: !5768)
!5790 = !DILocation(line: 709, column: 18, scope: !5768)
!5791 = !DILocation(line: 709, column: 26, scope: !5768)
!5792 = !DILocation(line: 709, column: 33, scope: !5768)
!5793 = !DILocation(line: 711, column: 3, scope: !5768)
!5794 = !DILocation(line: 711, column: 6, scope: !5768)
!5795 = !DILocation(line: 711, column: 18, scope: !5768)
!5796 = !DILocation(line: 711, column: 26, scope: !5768)
!5797 = !DILocation(line: 711, column: 32, scope: !5768)
!5798 = !DILocation(line: 712, column: 3, scope: !5768)
!5799 = !DILocation(line: 712, column: 6, scope: !5768)
!5800 = !DILocation(line: 712, column: 18, scope: !5768)
!5801 = !DILocation(line: 712, column: 26, scope: !5768)
!5802 = !DILocation(line: 712, column: 32, scope: !5768)
!5803 = !DILocation(line: 713, column: 2, scope: !5768)
!5804 = !DILocation(line: 714, column: 3, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 713, column: 9)
!5806 = !DILocation(line: 714, column: 6, scope: !5805)
!5807 = !DILocation(line: 714, column: 18, scope: !5805)
!5808 = !DILocation(line: 714, column: 26, scope: !5805)
!5809 = !DILocation(line: 714, column: 32, scope: !5805)
!5810 = !DILocation(line: 715, column: 3, scope: !5805)
!5811 = !DILocation(line: 715, column: 6, scope: !5805)
!5812 = !DILocation(line: 715, column: 18, scope: !5805)
!5813 = !DILocation(line: 715, column: 26, scope: !5805)
!5814 = !DILocation(line: 715, column: 32, scope: !5805)
!5815 = !DILocation(line: 718, column: 2, scope: !5579)
!5816 = !DILocation(line: 719, column: 1, scope: !5579)
!5817 = distinct !DISubprogram(name: "lgdt330x_read_signal_strength", scope: !3, file: !3, line: 593, type: !4473, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5818 = !DILocalVariable(name: "fe", arg: 1, scope: !5817, file: !3, line: 593, type: !4302)
!5819 = !DILocation(line: 593, column: 63, scope: !5817)
!5820 = !DILocalVariable(name: "strength", arg: 2, scope: !5817, file: !3, line: 593, type: !4475)
!5821 = !DILocation(line: 593, column: 72, scope: !5817)
!5822 = !DILocalVariable(name: "state", scope: !5817, file: !3, line: 600, type: !4705)
!5823 = !DILocation(line: 600, column: 25, scope: !5817)
!5824 = !DILocation(line: 600, column: 33, scope: !5817)
!5825 = !DILocation(line: 600, column: 37, scope: !5817)
!5826 = !DILocalVariable(name: "snr", scope: !5817, file: !3, line: 601, type: !410)
!5827 = !DILocation(line: 601, column: 6, scope: !5817)
!5828 = !DILocalVariable(name: "ret", scope: !5817, file: !3, line: 602, type: !377)
!5829 = !DILocation(line: 602, column: 6, scope: !5817)
!5830 = !DILocation(line: 604, column: 8, scope: !5817)
!5831 = !DILocation(line: 604, column: 12, scope: !5817)
!5832 = !DILocation(line: 604, column: 16, scope: !5817)
!5833 = !DILocation(line: 604, column: 25, scope: !5817)
!5834 = !DILocation(line: 604, column: 6, scope: !5817)
!5835 = !DILocation(line: 605, column: 6, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 605, column: 6)
!5837 = !DILocation(line: 605, column: 10, scope: !5836)
!5838 = !DILocation(line: 605, column: 6, scope: !5817)
!5839 = !DILocation(line: 606, column: 10, scope: !5836)
!5840 = !DILocation(line: 606, column: 3, scope: !5836)
!5841 = !DILocation(line: 609, column: 6, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 609, column: 6)
!5843 = !DILocation(line: 609, column: 13, scope: !5842)
!5844 = !DILocation(line: 609, column: 17, scope: !5842)
!5845 = !DILocation(line: 609, column: 6, scope: !5817)
!5846 = !DILocation(line: 610, column: 4, scope: !5842)
!5847 = !DILocation(line: 610, column: 13, scope: !5842)
!5848 = !DILocation(line: 610, column: 3, scope: !5842)
!5849 = !DILocation(line: 612, column: 15, scope: !5842)
!5850 = !DILocation(line: 612, column: 22, scope: !5842)
!5851 = !DILocation(line: 612, column: 26, scope: !5842)
!5852 = !DILocation(line: 612, column: 4, scope: !5842)
!5853 = !DILocation(line: 612, column: 13, scope: !5842)
!5854 = !DILocation(line: 614, column: 2, scope: !5817)
!5855 = !DILocation(line: 615, column: 1, scope: !5817)
!5856 = distinct !DISubprogram(name: "lgdt330x_read_snr", scope: !3, file: !3, line: 584, type: !4473, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5857 = !DILocalVariable(name: "fe", arg: 1, scope: !5856, file: !3, line: 584, type: !4302)
!5858 = !DILocation(line: 584, column: 51, scope: !5856)
!5859 = !DILocalVariable(name: "snr", arg: 2, scope: !5856, file: !3, line: 584, type: !4475)
!5860 = !DILocation(line: 584, column: 60, scope: !5856)
!5861 = !DILocalVariable(name: "state", scope: !5856, file: !3, line: 586, type: !4705)
!5862 = !DILocation(line: 586, column: 25, scope: !5856)
!5863 = !DILocation(line: 586, column: 33, scope: !5856)
!5864 = !DILocation(line: 586, column: 37, scope: !5856)
!5865 = !DILocation(line: 588, column: 10, scope: !5856)
!5866 = !DILocation(line: 588, column: 17, scope: !5856)
!5867 = !DILocation(line: 588, column: 22, scope: !5856)
!5868 = !DILocation(line: 588, column: 9, scope: !5856)
!5869 = !DILocation(line: 588, column: 3, scope: !5856)
!5870 = !DILocation(line: 588, column: 7, scope: !5856)
!5871 = !DILocation(line: 590, column: 2, scope: !5856)
!5872 = distinct !DISubprogram(name: "lgdt330x_read_ucblocks", scope: !3, file: !3, line: 300, type: !4469, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5873 = !DILocalVariable(name: "fe", arg: 1, scope: !5872, file: !3, line: 300, type: !4302)
!5874 = !DILocation(line: 300, column: 56, scope: !5872)
!5875 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5872, file: !3, line: 300, type: !2925)
!5876 = !DILocation(line: 300, column: 65, scope: !5872)
!5877 = !DILocalVariable(name: "state", scope: !5872, file: !3, line: 302, type: !4705)
!5878 = !DILocation(line: 302, column: 25, scope: !5872)
!5879 = !DILocation(line: 302, column: 33, scope: !5872)
!5880 = !DILocation(line: 302, column: 37, scope: !5872)
!5881 = !DILocation(line: 304, column: 14, scope: !5872)
!5882 = !DILocation(line: 304, column: 21, scope: !5872)
!5883 = !DILocation(line: 304, column: 3, scope: !5872)
!5884 = !DILocation(line: 304, column: 12, scope: !5872)
!5885 = !DILocation(line: 306, column: 2, scope: !5872)
!5886 = distinct !DISubprogram(name: "i2c_write_demod_bytes", scope: !3, file: !3, line: 65, type: !5887, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5887 = !DISubroutineType(types: !5888)
!5888 = !{!377, !4705, !4436, !377}
!5889 = !DILocalVariable(name: "state", arg: 1, scope: !5886, file: !3, line: 65, type: !4705)
!5890 = !DILocation(line: 65, column: 57, scope: !5886)
!5891 = !DILocalVariable(name: "buf", arg: 2, scope: !5886, file: !3, line: 66, type: !4436)
!5892 = !DILocation(line: 66, column: 16, scope: !5886)
!5893 = !DILocalVariable(name: "len", arg: 3, scope: !5886, file: !3, line: 67, type: !377)
!5894 = !DILocation(line: 67, column: 10, scope: !5886)
!5895 = !DILocalVariable(name: "i", scope: !5886, file: !3, line: 69, type: !377)
!5896 = !DILocation(line: 69, column: 6, scope: !5886)
!5897 = !DILocalVariable(name: "err", scope: !5886, file: !3, line: 70, type: !377)
!5898 = !DILocation(line: 70, column: 6, scope: !5886)
!5899 = !DILocation(line: 72, column: 9, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 72, column: 2)
!5901 = !DILocation(line: 72, column: 7, scope: !5900)
!5902 = !DILocation(line: 72, column: 14, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5900, file: !3, line: 72, column: 2)
!5904 = !DILocation(line: 72, column: 18, scope: !5903)
!5905 = !DILocation(line: 72, column: 22, scope: !5903)
!5906 = !DILocation(line: 72, column: 16, scope: !5903)
!5907 = !DILocation(line: 72, column: 2, scope: !5900)
!5908 = !DILocation(line: 73, column: 25, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5903, file: !3, line: 72, column: 35)
!5910 = !DILocation(line: 73, column: 32, scope: !5909)
!5911 = !DILocation(line: 73, column: 40, scope: !5909)
!5912 = !DILocation(line: 73, column: 9, scope: !5909)
!5913 = !DILocation(line: 73, column: 7, scope: !5909)
!5914 = !DILocation(line: 74, column: 7, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 74, column: 7)
!5916 = !DILocation(line: 74, column: 11, scope: !5915)
!5917 = !DILocation(line: 74, column: 7, scope: !5909)
!5918 = !DILocation(line: 75, column: 4, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5915, file: !3, line: 74, column: 17)
!5920 = !DILocation(line: 78, column: 8, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 78, column: 8)
!5922 = !DILocation(line: 78, column: 12, scope: !5921)
!5923 = !DILocation(line: 78, column: 8, scope: !5919)
!5924 = !DILocation(line: 79, column: 12, scope: !5921)
!5925 = !DILocation(line: 79, column: 5, scope: !5921)
!5926 = !DILocation(line: 81, column: 5, scope: !5921)
!5927 = !DILocation(line: 83, column: 7, scope: !5909)
!5928 = !DILocation(line: 84, column: 2, scope: !5909)
!5929 = !DILocation(line: 72, column: 29, scope: !5903)
!5930 = !DILocation(line: 72, column: 2, scope: !5903)
!5931 = distinct !{!5931, !5907, !5932}
!5932 = !DILocation(line: 84, column: 2, scope: !5900)
!5933 = !DILocation(line: 85, column: 2, scope: !5886)
!5934 = !DILocation(line: 86, column: 1, scope: !5886)
!5935 = distinct !DISubprogram(name: "lgdt330x_sw_reset", scope: !3, file: !3, line: 167, type: !5936, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5936 = !DISubroutineType(types: !5937)
!5937 = !{!377, !4705}
!5938 = !DILocalVariable(name: "state", arg: 1, scope: !5935, file: !3, line: 167, type: !4705)
!5939 = !DILocation(line: 167, column: 53, scope: !5935)
!5940 = !DILocation(line: 169, column: 10, scope: !5935)
!5941 = !DILocation(line: 169, column: 17, scope: !5935)
!5942 = !DILocation(line: 169, column: 24, scope: !5935)
!5943 = !DILocation(line: 169, column: 2, scope: !5935)
!5944 = !DILocation(line: 171, column: 28, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 169, column: 36)
!5946 = !DILocation(line: 171, column: 10, scope: !5945)
!5947 = !DILocation(line: 171, column: 3, scope: !5945)
!5948 = !DILocation(line: 173, column: 28, scope: !5945)
!5949 = !DILocation(line: 173, column: 10, scope: !5945)
!5950 = !DILocation(line: 173, column: 3, scope: !5945)
!5951 = !DILocation(line: 175, column: 3, scope: !5945)
!5952 = !DILocation(line: 177, column: 1, scope: !5935)
!5953 = distinct !DISubprogram(name: "i2c_master_send", scope: !299, file: !299, line: 102, type: !5954, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5954 = !DISubroutineType(types: !5955)
!5955 = !{!377, !4741, !386, !377}
!5956 = !DILocalVariable(name: "client", arg: 1, scope: !5953, file: !299, line: 102, type: !4741)
!5957 = !DILocation(line: 102, column: 60, scope: !5953)
!5958 = !DILocalVariable(name: "buf", arg: 2, scope: !5953, file: !299, line: 103, type: !386)
!5959 = !DILocation(line: 103, column: 19, scope: !5953)
!5960 = !DILocalVariable(name: "count", arg: 3, scope: !5953, file: !299, line: 103, type: !377)
!5961 = !DILocation(line: 103, column: 28, scope: !5953)
!5962 = !DILocation(line: 105, column: 35, scope: !5953)
!5963 = !DILocation(line: 105, column: 51, scope: !5953)
!5964 = !DILocation(line: 105, column: 56, scope: !5953)
!5965 = !DILocation(line: 105, column: 9, scope: !5953)
!5966 = !DILocation(line: 105, column: 2, scope: !5953)
!5967 = distinct !DISubprogram(name: "lgdt3302_sw_reset", scope: !3, file: !3, line: 125, type: !5936, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5968 = !DILocalVariable(name: "state", arg: 1, scope: !5967, file: !3, line: 125, type: !4705)
!5969 = !DILocation(line: 125, column: 53, scope: !5967)
!5970 = !DILocalVariable(name: "ret", scope: !5967, file: !3, line: 127, type: !418)
!5971 = !DILocation(line: 127, column: 5, scope: !5967)
!5972 = !DILocalVariable(name: "reset", scope: !5967, file: !3, line: 128, type: !5388)
!5973 = !DILocation(line: 128, column: 5, scope: !5967)
!5974 = !DILocation(line: 137, column: 30, scope: !5967)
!5975 = !DILocation(line: 138, column: 9, scope: !5967)
!5976 = !DILocation(line: 137, column: 8, scope: !5967)
!5977 = !DILocation(line: 137, column: 6, scope: !5967)
!5978 = !DILocation(line: 139, column: 6, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 139, column: 6)
!5980 = !DILocation(line: 139, column: 10, scope: !5979)
!5981 = !DILocation(line: 139, column: 6, scope: !5967)
!5982 = !DILocation(line: 141, column: 3, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 139, column: 16)
!5984 = !DILocation(line: 141, column: 12, scope: !5983)
!5985 = !DILocation(line: 142, column: 31, scope: !5983)
!5986 = !DILocation(line: 143, column: 10, scope: !5983)
!5987 = !DILocation(line: 142, column: 9, scope: !5983)
!5988 = !DILocation(line: 142, column: 7, scope: !5983)
!5989 = !DILocation(line: 144, column: 2, scope: !5983)
!5990 = !DILocation(line: 145, column: 9, scope: !5967)
!5991 = !DILocation(line: 145, column: 2, scope: !5967)
!5992 = distinct !DISubprogram(name: "lgdt3303_sw_reset", scope: !3, file: !3, line: 148, type: !5936, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!5993 = !DILocalVariable(name: "state", arg: 1, scope: !5992, file: !3, line: 148, type: !4705)
!5994 = !DILocation(line: 148, column: 53, scope: !5992)
!5995 = !DILocalVariable(name: "ret", scope: !5992, file: !3, line: 150, type: !418)
!5996 = !DILocation(line: 150, column: 5, scope: !5992)
!5997 = !DILocalVariable(name: "reset", scope: !5992, file: !3, line: 151, type: !5388)
!5998 = !DILocation(line: 151, column: 5, scope: !5992)
!5999 = !DILocation(line: 156, column: 30, scope: !5992)
!6000 = !DILocation(line: 157, column: 9, scope: !5992)
!6001 = !DILocation(line: 156, column: 8, scope: !5992)
!6002 = !DILocation(line: 156, column: 6, scope: !5992)
!6003 = !DILocation(line: 158, column: 6, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5992, file: !3, line: 158, column: 6)
!6005 = !DILocation(line: 158, column: 10, scope: !6004)
!6006 = !DILocation(line: 158, column: 6, scope: !5992)
!6007 = !DILocation(line: 160, column: 3, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 158, column: 16)
!6009 = !DILocation(line: 160, column: 12, scope: !6008)
!6010 = !DILocation(line: 161, column: 31, scope: !6008)
!6011 = !DILocation(line: 162, column: 10, scope: !6008)
!6012 = !DILocation(line: 161, column: 9, scope: !6008)
!6013 = !DILocation(line: 161, column: 7, scope: !6008)
!6014 = !DILocation(line: 163, column: 2, scope: !6008)
!6015 = !DILocation(line: 164, column: 9, scope: !5992)
!6016 = !DILocation(line: 164, column: 2, scope: !5992)
!6017 = distinct !DISubprogram(name: "lgdt3302_read_snr", scope: !3, file: !3, line: 492, type: !4429, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!6018 = !DILocalVariable(name: "fe", arg: 1, scope: !6017, file: !3, line: 492, type: !4302)
!6019 = !DILocation(line: 492, column: 51, scope: !6017)
!6020 = !DILocalVariable(name: "state", scope: !6017, file: !3, line: 494, type: !4705)
!6021 = !DILocation(line: 494, column: 25, scope: !6017)
!6022 = !DILocation(line: 494, column: 33, scope: !6017)
!6023 = !DILocation(line: 494, column: 37, scope: !6017)
!6024 = !DILocalVariable(name: "buf", scope: !6017, file: !3, line: 495, type: !6025)
!6025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 40, elements: !6026)
!6026 = !{!6027}
!6027 = !DISubrange(count: 5)
!6028 = !DILocation(line: 495, column: 5, scope: !6017)
!6029 = !DILocalVariable(name: "noise", scope: !6017, file: !3, line: 496, type: !545)
!6030 = !DILocation(line: 496, column: 6, scope: !6017)
!6031 = !DILocalVariable(name: "c", scope: !6017, file: !3, line: 497, type: !545)
!6032 = !DILocation(line: 497, column: 6, scope: !6017)
!6033 = !DILocation(line: 499, column: 10, scope: !6017)
!6034 = !DILocation(line: 499, column: 17, scope: !6017)
!6035 = !DILocation(line: 499, column: 2, scope: !6017)
!6036 = !DILocation(line: 501, column: 24, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 499, column: 37)
!6038 = !DILocation(line: 501, column: 51, scope: !6037)
!6039 = !DILocation(line: 501, column: 3, scope: !6037)
!6040 = !DILocation(line: 510, column: 13, scope: !6037)
!6041 = !DILocation(line: 510, column: 20, scope: !6037)
!6042 = !DILocation(line: 510, column: 30, scope: !6037)
!6043 = !DILocation(line: 510, column: 40, scope: !6037)
!6044 = !DILocation(line: 510, column: 47, scope: !6037)
!6045 = !DILocation(line: 510, column: 37, scope: !6037)
!6046 = !DILocation(line: 510, column: 55, scope: !6037)
!6047 = !DILocation(line: 510, column: 53, scope: !6037)
!6048 = !DILocation(line: 510, column: 9, scope: !6037)
!6049 = !DILocation(line: 511, column: 5, scope: !6037)
!6050 = !DILocation(line: 513, column: 3, scope: !6037)
!6051 = !DILocation(line: 516, column: 24, scope: !6037)
!6052 = !DILocation(line: 516, column: 48, scope: !6037)
!6053 = !DILocation(line: 516, column: 3, scope: !6037)
!6054 = !DILocation(line: 517, column: 13, scope: !6037)
!6055 = !DILocation(line: 517, column: 20, scope: !6037)
!6056 = !DILocation(line: 517, column: 25, scope: !6037)
!6057 = !DILocation(line: 517, column: 33, scope: !6037)
!6058 = !DILocation(line: 517, column: 31, scope: !6037)
!6059 = !DILocation(line: 517, column: 9, scope: !6037)
!6060 = !DILocation(line: 518, column: 7, scope: !6037)
!6061 = !DILocation(line: 518, column: 14, scope: !6037)
!6062 = !DILocation(line: 518, column: 33, scope: !6037)
!6063 = !DILocation(line: 518, column: 5, scope: !6037)
!6064 = !DILocation(line: 520, column: 3, scope: !6037)
!6065 = !DILocation(line: 522, column: 3, scope: !6037)
!6066 = !DILocation(line: 526, column: 3, scope: !6037)
!6067 = !DILocation(line: 526, column: 10, scope: !6037)
!6068 = !DILocation(line: 526, column: 14, scope: !6037)
!6069 = !DILocation(line: 528, column: 3, scope: !6037)
!6070 = !DILocation(line: 531, column: 29, scope: !6017)
!6071 = !DILocation(line: 531, column: 36, scope: !6017)
!6072 = !DILocation(line: 531, column: 15, scope: !6017)
!6073 = !DILocation(line: 531, column: 2, scope: !6017)
!6074 = !DILocation(line: 531, column: 9, scope: !6017)
!6075 = !DILocation(line: 531, column: 13, scope: !6017)
!6076 = !DILocation(line: 533, column: 2, scope: !6017)
!6077 = !DILocation(line: 533, column: 2, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 533, column: 2)
!6079 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 533, column: 2)
!6080 = !DILocation(line: 533, column: 2, scope: !6079)
!6081 = !DILocation(line: 536, column: 2, scope: !6017)
!6082 = !DILocation(line: 537, column: 1, scope: !6017)
!6083 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5582, file: !5582, line: 308, type: !5583, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!6084 = !DILocalVariable(name: "m", arg: 1, scope: !6083, file: !5582, line: 308, type: !1869)
!6085 = !DILocation(line: 308, column: 66, scope: !6083)
!6086 = !DILocation(line: 310, column: 10, scope: !6083)
!6087 = !DILocation(line: 310, column: 12, scope: !6083)
!6088 = !DILocation(line: 310, column: 34, scope: !6083)
!6089 = !DILocation(line: 310, column: 39, scope: !6083)
!6090 = !DILocation(line: 310, column: 2, scope: !6083)
!6091 = distinct !DISubprogram(name: "calculate_snr", scope: !3, file: !3, line: 475, type: !6092, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!6092 = !DISubroutineType(types: !6093)
!6093 = !{!545, !545, !545}
!6094 = !DILocalVariable(name: "mse", arg: 1, scope: !6091, file: !3, line: 475, type: !545)
!6095 = !DILocation(line: 475, column: 30, scope: !6091)
!6096 = !DILocalVariable(name: "c", arg: 2, scope: !6091, file: !3, line: 475, type: !545)
!6097 = !DILocation(line: 475, column: 39, scope: !6091)
!6098 = !DILocation(line: 477, column: 6, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6091, file: !3, line: 477, column: 6)
!6100 = !DILocation(line: 477, column: 10, scope: !6099)
!6101 = !DILocation(line: 477, column: 6, scope: !6091)
!6102 = !DILocation(line: 478, column: 3, scope: !6099)
!6103 = !DILocation(line: 480, column: 17, scope: !6091)
!6104 = !DILocation(line: 480, column: 8, scope: !6091)
!6105 = !DILocation(line: 480, column: 6, scope: !6091)
!6106 = !DILocation(line: 481, column: 6, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6091, file: !3, line: 481, column: 6)
!6108 = !DILocation(line: 481, column: 12, scope: !6107)
!6109 = !DILocation(line: 481, column: 10, scope: !6107)
!6110 = !DILocation(line: 481, column: 6, scope: !6091)
!6111 = !DILocation(line: 487, column: 3, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 481, column: 15)
!6113 = !DILocation(line: 489, column: 15, scope: !6091)
!6114 = !DILocation(line: 489, column: 19, scope: !6091)
!6115 = !DILocation(line: 489, column: 17, scope: !6091)
!6116 = !DILocation(line: 489, column: 12, scope: !6091)
!6117 = !DILocation(line: 489, column: 2, scope: !6091)
!6118 = !DILocation(line: 490, column: 1, scope: !6091)
!6119 = distinct !DISubprogram(name: "lgdt3303_read_status", scope: !3, file: !3, line: 721, type: !4465, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!6120 = !DILocation(line: 363, column: 74, scope: !5581, inlinedAt: !6121)
!6121 = distinct !DILocation(line: 796, column: 37, scope: !6119)
!6122 = !DILocalVariable(name: "fe", arg: 1, scope: !6119, file: !3, line: 721, type: !4302)
!6123 = !DILocation(line: 721, column: 54, scope: !6119)
!6124 = !DILocalVariable(name: "status", arg: 2, scope: !6119, file: !3, line: 722, type: !4442)
!6125 = !DILocation(line: 722, column: 21, scope: !6119)
!6126 = !DILocalVariable(name: "state", scope: !6119, file: !3, line: 724, type: !4705)
!6127 = !DILocation(line: 724, column: 25, scope: !6119)
!6128 = !DILocation(line: 724, column: 33, scope: !6119)
!6129 = !DILocation(line: 724, column: 37, scope: !6119)
!6130 = !DILocalVariable(name: "p", scope: !6119, file: !3, line: 725, type: !4462)
!6131 = !DILocation(line: 725, column: 34, scope: !6119)
!6132 = !DILocation(line: 725, column: 39, scope: !6119)
!6133 = !DILocation(line: 725, column: 43, scope: !6119)
!6134 = !DILocalVariable(name: "buf", scope: !6119, file: !3, line: 726, type: !5600)
!6135 = !DILocation(line: 726, column: 5, scope: !6119)
!6136 = !DILocalVariable(name: "err", scope: !6119, file: !3, line: 727, type: !377)
!6137 = !DILocation(line: 727, column: 6, scope: !6119)
!6138 = !DILocation(line: 729, column: 3, scope: !6119)
!6139 = !DILocation(line: 729, column: 10, scope: !6119)
!6140 = !DILocation(line: 732, column: 29, scope: !6119)
!6141 = !DILocation(line: 732, column: 42, scope: !6119)
!6142 = !DILocation(line: 732, column: 8, scope: !6119)
!6143 = !DILocation(line: 732, column: 6, scope: !6119)
!6144 = !DILocation(line: 733, column: 6, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 733, column: 6)
!6146 = !DILocation(line: 733, column: 10, scope: !6145)
!6147 = !DILocation(line: 733, column: 6, scope: !6119)
!6148 = !DILocation(line: 734, column: 10, scope: !6145)
!6149 = !DILocation(line: 734, column: 3, scope: !6145)
!6150 = !DILocation(line: 736, column: 2, scope: !6119)
!6151 = !DILocation(line: 736, column: 2, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6153, file: !3, line: 736, column: 2)
!6153 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 736, column: 2)
!6154 = !DILocation(line: 736, column: 2, scope: !6153)
!6155 = !DILocation(line: 737, column: 7, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 737, column: 6)
!6157 = !DILocation(line: 737, column: 14, scope: !6156)
!6158 = !DILocation(line: 737, column: 22, scope: !6156)
!6159 = !DILocation(line: 737, column: 6, scope: !6119)
!6160 = !DILocation(line: 742, column: 4, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 737, column: 31)
!6162 = !DILocation(line: 742, column: 11, scope: !6161)
!6163 = !DILocation(line: 743, column: 2, scope: !6161)
!6164 = !DILocation(line: 746, column: 23, scope: !6119)
!6165 = !DILocation(line: 746, column: 44, scope: !6119)
!6166 = !DILocation(line: 746, column: 2, scope: !6119)
!6167 = !DILocation(line: 747, column: 2, scope: !6119)
!6168 = !DILocation(line: 747, column: 2, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 747, column: 2)
!6170 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 747, column: 2)
!6171 = !DILocation(line: 747, column: 2, scope: !6170)
!6172 = !DILocation(line: 748, column: 10, scope: !6119)
!6173 = !DILocation(line: 748, column: 17, scope: !6119)
!6174 = !DILocation(line: 748, column: 2, scope: !6119)
!6175 = !DILocation(line: 752, column: 8, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 752, column: 7)
!6177 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 748, column: 37)
!6178 = !DILocation(line: 752, column: 15, scope: !6176)
!6179 = !DILocation(line: 752, column: 23, scope: !6176)
!6180 = !DILocation(line: 752, column: 7, scope: !6177)
!6181 = !DILocation(line: 753, column: 5, scope: !6176)
!6182 = !DILocation(line: 753, column: 12, scope: !6176)
!6183 = !DILocation(line: 753, column: 4, scope: !6176)
!6184 = !DILocation(line: 755, column: 4, scope: !6176)
!6185 = !DILocation(line: 756, column: 24, scope: !6177)
!6186 = !DILocation(line: 756, column: 37, scope: !6177)
!6187 = !DILocation(line: 756, column: 3, scope: !6177)
!6188 = !DILocation(line: 757, column: 3, scope: !6177)
!6189 = !DILocation(line: 757, column: 3, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6191, file: !3, line: 757, column: 3)
!6191 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 757, column: 3)
!6192 = !DILocation(line: 757, column: 3, scope: !6191)
!6193 = !DILocation(line: 759, column: 8, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 759, column: 7)
!6195 = !DILocation(line: 759, column: 15, scope: !6194)
!6196 = !DILocation(line: 759, column: 23, scope: !6194)
!6197 = !DILocation(line: 759, column: 7, scope: !6177)
!6198 = !DILocation(line: 760, column: 5, scope: !6194)
!6199 = !DILocation(line: 760, column: 12, scope: !6194)
!6200 = !DILocation(line: 760, column: 4, scope: !6194)
!6201 = !DILocation(line: 761, column: 8, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 761, column: 7)
!6203 = !DILocation(line: 761, column: 15, scope: !6202)
!6204 = !DILocation(line: 761, column: 23, scope: !6202)
!6205 = !DILocation(line: 761, column: 7, scope: !6177)
!6206 = !DILocation(line: 762, column: 5, scope: !6202)
!6207 = !DILocation(line: 762, column: 12, scope: !6202)
!6208 = !DILocation(line: 762, column: 4, scope: !6202)
!6209 = !DILocation(line: 763, column: 8, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 763, column: 7)
!6211 = !DILocation(line: 763, column: 15, scope: !6210)
!6212 = !DILocation(line: 763, column: 23, scope: !6210)
!6213 = !DILocation(line: 763, column: 7, scope: !6177)
!6214 = !DILocation(line: 764, column: 5, scope: !6210)
!6215 = !DILocation(line: 764, column: 12, scope: !6210)
!6216 = !DILocation(line: 764, column: 4, scope: !6210)
!6217 = !DILocation(line: 765, column: 3, scope: !6177)
!6218 = !DILocation(line: 767, column: 8, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 767, column: 7)
!6220 = !DILocation(line: 767, column: 15, scope: !6219)
!6221 = !DILocation(line: 767, column: 23, scope: !6219)
!6222 = !DILocation(line: 767, column: 7, scope: !6177)
!6223 = !DILocation(line: 768, column: 5, scope: !6219)
!6224 = !DILocation(line: 768, column: 12, scope: !6219)
!6225 = !DILocation(line: 768, column: 4, scope: !6219)
!6226 = !DILocation(line: 770, column: 4, scope: !6219)
!6227 = !DILocation(line: 771, column: 24, scope: !6177)
!6228 = !DILocation(line: 771, column: 37, scope: !6177)
!6229 = !DILocation(line: 771, column: 3, scope: !6177)
!6230 = !DILocation(line: 772, column: 3, scope: !6177)
!6231 = !DILocation(line: 772, column: 3, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 772, column: 3)
!6233 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 772, column: 3)
!6234 = !DILocation(line: 772, column: 3, scope: !6233)
!6235 = !DILocation(line: 774, column: 8, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 774, column: 7)
!6237 = !DILocation(line: 774, column: 15, scope: !6236)
!6238 = !DILocation(line: 774, column: 23, scope: !6236)
!6239 = !DILocation(line: 774, column: 7, scope: !6177)
!6240 = !DILocation(line: 775, column: 5, scope: !6236)
!6241 = !DILocation(line: 775, column: 12, scope: !6236)
!6242 = !DILocation(line: 775, column: 4, scope: !6236)
!6243 = !DILocation(line: 776, column: 8, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 776, column: 7)
!6245 = !DILocation(line: 776, column: 15, scope: !6244)
!6246 = !DILocation(line: 776, column: 23, scope: !6244)
!6247 = !DILocation(line: 776, column: 7, scope: !6177)
!6248 = !DILocation(line: 777, column: 5, scope: !6244)
!6249 = !DILocation(line: 777, column: 12, scope: !6244)
!6250 = !DILocation(line: 777, column: 4, scope: !6244)
!6251 = !DILocation(line: 778, column: 3, scope: !6177)
!6252 = !DILocation(line: 780, column: 3, scope: !6177)
!6253 = !DILocation(line: 783, column: 2, scope: !6177)
!6254 = !DILocation(line: 785, column: 9, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 785, column: 6)
!6256 = !DILocation(line: 785, column: 8, scope: !6255)
!6257 = !DILocation(line: 785, column: 16, scope: !6255)
!6258 = !DILocation(line: 785, column: 6, scope: !6119)
!6259 = !DILocation(line: 786, column: 3, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 785, column: 32)
!6261 = !DILocation(line: 786, column: 6, scope: !6260)
!6262 = !DILocation(line: 786, column: 10, scope: !6260)
!6263 = !DILocation(line: 786, column: 18, scope: !6260)
!6264 = !DILocation(line: 786, column: 24, scope: !6260)
!6265 = !DILocation(line: 787, column: 3, scope: !6260)
!6266 = !DILocation(line: 787, column: 6, scope: !6260)
!6267 = !DILocation(line: 787, column: 18, scope: !6260)
!6268 = !DILocation(line: 787, column: 26, scope: !6260)
!6269 = !DILocation(line: 787, column: 32, scope: !6260)
!6270 = !DILocation(line: 788, column: 3, scope: !6260)
!6271 = !DILocation(line: 788, column: 6, scope: !6260)
!6272 = !DILocation(line: 788, column: 18, scope: !6260)
!6273 = !DILocation(line: 788, column: 26, scope: !6260)
!6274 = !DILocation(line: 788, column: 32, scope: !6260)
!6275 = !DILocation(line: 789, column: 3, scope: !6260)
!6276 = !DILocation(line: 792, column: 6, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 792, column: 6)
!6278 = !DILocation(line: 792, column: 13, scope: !6277)
!6279 = !DILocation(line: 792, column: 29, scope: !6277)
!6280 = !DILocation(line: 793, column: 6, scope: !6277)
!6281 = !DILocation(line: 792, column: 6, scope: !6119)
!6282 = !DILocation(line: 794, column: 3, scope: !6277)
!6283 = !DILocation(line: 796, column: 27, scope: !6119)
!6284 = !DILocation(line: 365, column: 27, scope: !5710, inlinedAt: !6121)
!6285 = !DILocation(line: 365, column: 6, scope: !5710, inlinedAt: !6121)
!6286 = !DILocation(line: 365, column: 6, scope: !5581, inlinedAt: !6121)
!6287 = !DILocation(line: 366, column: 12, scope: !5714, inlinedAt: !6121)
!6288 = !DILocation(line: 366, column: 14, scope: !5714, inlinedAt: !6121)
!6289 = !DILocation(line: 366, column: 7, scope: !5715, inlinedAt: !6121)
!6290 = !DILocation(line: 367, column: 4, scope: !5714, inlinedAt: !6121)
!6291 = !DILocation(line: 368, column: 28, scope: !5715, inlinedAt: !6121)
!6292 = !DILocation(line: 368, column: 10, scope: !5715, inlinedAt: !6121)
!6293 = !DILocation(line: 368, column: 3, scope: !5715, inlinedAt: !6121)
!6294 = !DILocation(line: 370, column: 29, scope: !5723, inlinedAt: !6121)
!6295 = !DILocation(line: 370, column: 10, scope: !5723, inlinedAt: !6121)
!6296 = !DILocation(line: 370, column: 3, scope: !5723, inlinedAt: !6121)
!6297 = !DILocation(line: 372, column: 1, scope: !5581, inlinedAt: !6121)
!6298 = !DILocation(line: 796, column: 35, scope: !6119)
!6299 = !DILocation(line: 796, column: 2, scope: !6119)
!6300 = !DILocation(line: 796, column: 9, scope: !6119)
!6301 = !DILocation(line: 796, column: 25, scope: !6119)
!6302 = !DILocation(line: 798, column: 26, scope: !6119)
!6303 = !DILocation(line: 798, column: 8, scope: !6119)
!6304 = !DILocation(line: 798, column: 6, scope: !6119)
!6305 = !DILocation(line: 799, column: 7, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 799, column: 6)
!6307 = !DILocation(line: 799, column: 6, scope: !6119)
!6308 = !DILocation(line: 800, column: 3, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 799, column: 12)
!6310 = !DILocation(line: 800, column: 6, scope: !6309)
!6311 = !DILocation(line: 800, column: 10, scope: !6309)
!6312 = !DILocation(line: 800, column: 18, scope: !6309)
!6313 = !DILocation(line: 800, column: 24, scope: !6309)
!6314 = !DILocation(line: 801, column: 34, scope: !6309)
!6315 = !DILocation(line: 801, column: 41, scope: !6309)
!6316 = !DILocation(line: 801, column: 29, scope: !6309)
!6317 = !DILocation(line: 801, column: 46, scope: !6309)
!6318 = !DILocation(line: 801, column: 54, scope: !6309)
!6319 = !DILocation(line: 801, column: 3, scope: !6309)
!6320 = !DILocation(line: 801, column: 6, scope: !6309)
!6321 = !DILocation(line: 801, column: 10, scope: !6309)
!6322 = !DILocation(line: 801, column: 18, scope: !6309)
!6323 = !DILocation(line: 801, column: 25, scope: !6309)
!6324 = !DILocation(line: 802, column: 2, scope: !6309)
!6325 = !DILocation(line: 803, column: 3, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 802, column: 9)
!6327 = !DILocation(line: 803, column: 6, scope: !6326)
!6328 = !DILocation(line: 803, column: 10, scope: !6326)
!6329 = !DILocation(line: 803, column: 18, scope: !6326)
!6330 = !DILocation(line: 803, column: 24, scope: !6326)
!6331 = !DILocation(line: 806, column: 29, scope: !6119)
!6332 = !DILocation(line: 807, column: 9, scope: !6119)
!6333 = !DILocation(line: 806, column: 8, scope: !6119)
!6334 = !DILocation(line: 806, column: 6, scope: !6119)
!6335 = !DILocation(line: 808, column: 7, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 808, column: 6)
!6337 = !DILocation(line: 808, column: 6, scope: !6119)
!6338 = !DILocation(line: 809, column: 22, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6336, file: !3, line: 808, column: 12)
!6340 = !DILocation(line: 809, column: 29, scope: !6339)
!6341 = !DILocation(line: 809, column: 37, scope: !6339)
!6342 = !DILocation(line: 809, column: 35, scope: !6339)
!6343 = !DILocation(line: 809, column: 21, scope: !6339)
!6344 = !DILocation(line: 809, column: 3, scope: !6339)
!6345 = !DILocation(line: 809, column: 10, scope: !6339)
!6346 = !DILocation(line: 809, column: 19, scope: !6339)
!6347 = !DILocation(line: 811, column: 3, scope: !6339)
!6348 = !DILocation(line: 811, column: 3, scope: !6349)
!6349 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 811, column: 3)
!6350 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 811, column: 3)
!6351 = !DILocation(line: 811, column: 3, scope: !6350)
!6352 = !DILocation(line: 813, column: 36, scope: !6339)
!6353 = !DILocation(line: 813, column: 43, scope: !6339)
!6354 = !DILocation(line: 813, column: 3, scope: !6339)
!6355 = !DILocation(line: 813, column: 6, scope: !6339)
!6356 = !DILocation(line: 813, column: 18, scope: !6339)
!6357 = !DILocation(line: 813, column: 26, scope: !6339)
!6358 = !DILocation(line: 813, column: 33, scope: !6339)
!6359 = !DILocation(line: 815, column: 3, scope: !6339)
!6360 = !DILocation(line: 815, column: 6, scope: !6339)
!6361 = !DILocation(line: 815, column: 18, scope: !6339)
!6362 = !DILocation(line: 815, column: 26, scope: !6339)
!6363 = !DILocation(line: 815, column: 33, scope: !6339)
!6364 = !DILocation(line: 817, column: 3, scope: !6339)
!6365 = !DILocation(line: 817, column: 6, scope: !6339)
!6366 = !DILocation(line: 817, column: 18, scope: !6339)
!6367 = !DILocation(line: 817, column: 26, scope: !6339)
!6368 = !DILocation(line: 817, column: 32, scope: !6339)
!6369 = !DILocation(line: 818, column: 3, scope: !6339)
!6370 = !DILocation(line: 818, column: 6, scope: !6339)
!6371 = !DILocation(line: 818, column: 18, scope: !6339)
!6372 = !DILocation(line: 818, column: 26, scope: !6339)
!6373 = !DILocation(line: 818, column: 32, scope: !6339)
!6374 = !DILocation(line: 819, column: 2, scope: !6339)
!6375 = !DILocation(line: 820, column: 3, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6336, file: !3, line: 819, column: 9)
!6377 = !DILocation(line: 820, column: 6, scope: !6376)
!6378 = !DILocation(line: 820, column: 18, scope: !6376)
!6379 = !DILocation(line: 820, column: 26, scope: !6376)
!6380 = !DILocation(line: 820, column: 32, scope: !6376)
!6381 = !DILocation(line: 821, column: 3, scope: !6376)
!6382 = !DILocation(line: 821, column: 6, scope: !6376)
!6383 = !DILocation(line: 821, column: 18, scope: !6376)
!6384 = !DILocation(line: 821, column: 26, scope: !6376)
!6385 = !DILocation(line: 821, column: 32, scope: !6376)
!6386 = !DILocation(line: 824, column: 2, scope: !6119)
!6387 = !DILocation(line: 825, column: 1, scope: !6119)
!6388 = distinct !DISubprogram(name: "lgdt3303_read_snr", scope: !3, file: !3, line: 539, type: !4429, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !575)
!6389 = !DILocalVariable(name: "fe", arg: 1, scope: !6388, file: !3, line: 539, type: !4302)
!6390 = !DILocation(line: 539, column: 51, scope: !6388)
!6391 = !DILocalVariable(name: "state", scope: !6388, file: !3, line: 541, type: !4705)
!6392 = !DILocation(line: 541, column: 25, scope: !6388)
!6393 = !DILocation(line: 541, column: 33, scope: !6388)
!6394 = !DILocation(line: 541, column: 37, scope: !6388)
!6395 = !DILocalVariable(name: "buf", scope: !6388, file: !3, line: 542, type: !6025)
!6396 = !DILocation(line: 542, column: 5, scope: !6388)
!6397 = !DILocalVariable(name: "noise", scope: !6388, file: !3, line: 543, type: !545)
!6398 = !DILocation(line: 543, column: 6, scope: !6388)
!6399 = !DILocalVariable(name: "c", scope: !6388, file: !3, line: 544, type: !545)
!6400 = !DILocation(line: 544, column: 6, scope: !6388)
!6401 = !DILocation(line: 546, column: 10, scope: !6388)
!6402 = !DILocation(line: 546, column: 17, scope: !6388)
!6403 = !DILocation(line: 546, column: 2, scope: !6388)
!6404 = !DILocation(line: 548, column: 24, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6388, file: !3, line: 546, column: 37)
!6406 = !DILocation(line: 548, column: 51, scope: !6405)
!6407 = !DILocation(line: 548, column: 3, scope: !6405)
!6408 = !DILocation(line: 557, column: 13, scope: !6405)
!6409 = !DILocation(line: 557, column: 20, scope: !6405)
!6410 = !DILocation(line: 557, column: 25, scope: !6405)
!6411 = !DILocation(line: 557, column: 35, scope: !6405)
!6412 = !DILocation(line: 557, column: 42, scope: !6405)
!6413 = !DILocation(line: 557, column: 32, scope: !6405)
!6414 = !DILocation(line: 557, column: 50, scope: !6405)
!6415 = !DILocation(line: 557, column: 48, scope: !6405)
!6416 = !DILocation(line: 557, column: 9, scope: !6405)
!6417 = !DILocation(line: 558, column: 5, scope: !6405)
!6418 = !DILocation(line: 560, column: 3, scope: !6405)
!6419 = !DILocation(line: 563, column: 24, scope: !6405)
!6420 = !DILocation(line: 563, column: 48, scope: !6405)
!6421 = !DILocation(line: 563, column: 3, scope: !6405)
!6422 = !DILocation(line: 564, column: 12, scope: !6405)
!6423 = !DILocation(line: 564, column: 19, scope: !6405)
!6424 = !DILocation(line: 564, column: 27, scope: !6405)
!6425 = !DILocation(line: 564, column: 25, scope: !6405)
!6426 = !DILocation(line: 564, column: 9, scope: !6405)
!6427 = !DILocation(line: 565, column: 7, scope: !6405)
!6428 = !DILocation(line: 565, column: 14, scope: !6405)
!6429 = !DILocation(line: 565, column: 33, scope: !6405)
!6430 = !DILocation(line: 565, column: 5, scope: !6405)
!6431 = !DILocation(line: 567, column: 3, scope: !6405)
!6432 = !DILocation(line: 569, column: 3, scope: !6405)
!6433 = !DILocation(line: 572, column: 3, scope: !6405)
!6434 = !DILocation(line: 572, column: 10, scope: !6405)
!6435 = !DILocation(line: 572, column: 14, scope: !6405)
!6436 = !DILocation(line: 573, column: 3, scope: !6405)
!6437 = !DILocation(line: 576, column: 29, scope: !6388)
!6438 = !DILocation(line: 576, column: 36, scope: !6388)
!6439 = !DILocation(line: 576, column: 15, scope: !6388)
!6440 = !DILocation(line: 576, column: 2, scope: !6388)
!6441 = !DILocation(line: 576, column: 9, scope: !6388)
!6442 = !DILocation(line: 576, column: 13, scope: !6388)
!6443 = !DILocation(line: 578, column: 2, scope: !6388)
!6444 = !DILocation(line: 578, column: 2, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6446, file: !3, line: 578, column: 2)
!6446 = distinct !DILexicalBlock(scope: !6388, file: !3, line: 578, column: 2)
!6447 = !DILocation(line: 578, column: 2, scope: !6446)
!6448 = !DILocation(line: 581, column: 2, scope: !6388)
!6449 = !DILocation(line: 582, column: 1, scope: !6388)
