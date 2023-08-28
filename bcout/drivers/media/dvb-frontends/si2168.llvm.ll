; ModuleID = '../bcout/drivers/media/dvb-frontends/si2168.llvm.bc'
source_filename = "drivers/media/dvb-frontends/si2168.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_si2168_driver_init6:\09\09\09"
module asm ".long\09si2168_driver_init - .\09\09\09"
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
%struct.si2168_config = type { %struct.dvb_frontend**, %struct.i2c_adapter**, i8, i8 }
%struct.si2168_dev = type { %struct.mutex, %struct.i2c_mux_core*, %struct.dvb_frontend, i32, i32, i32, i32, i8*, i8, i8 }
%struct.i2c_mux_core = type { %struct.i2c_adapter*, %struct.device*, i8, i8*, i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)*, i32, i32, [0 x %struct.i2c_adapter*] }
%struct.si2168_cmd = type { [30 x i8], i32, i32 }
%struct.firmware = type { i64, i8*, i8* }

@__UNIQUE_ID___addressable_si2168_driver_init224 = internal global i8* bitcast (i32 ()* @si2168_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@si2168_driver = internal global %struct.i2c_driver { i32 0, i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si2168_probe, i32 (%struct.i2c_client*)* @si2168_remove, i32 (%struct.i2c_client*)* null, void (%struct.i2c_client*)* null, void (%struct.i2c_client*, i32, i32)* null, i32 (%struct.i2c_client*, i32, i8*)* null, %struct.device_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 1, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.i2c_device_id* getelementptr inbounds ([2 x %struct.i2c_device_id], [2 x %struct.i2c_device_id]* @si2168_id_table, i32 0, i32 0), i32 (%struct.i2c_client*, %struct.i2c_board_info*)* null, i16* null, %struct.list_head zeroinitializer }, align 8, !dbg !366
@__exitcall_si2168_driver_exit = internal global void ()* @si2168_driver_exit, section ".exitcall.exit", align 8, !dbg !327
@__UNIQUE_ID_author225 = internal constant [45 x i8] c"si2168.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1, !dbg !334
@__UNIQUE_ID_description226 = internal constant [69 x i8] c"si2168.description=Silicon Labs Si2168 DVB-T/T2/C demodulator driver\00", section ".modinfo", align 1, !dbg !340
@__UNIQUE_ID_file227 = internal constant [47 x i8] c"si2168.file=drivers/media/dvb-frontends/si2168\00", section ".modinfo", align 1, !dbg !345
@__UNIQUE_ID_license228 = internal constant [19 x i8] c"si2168.license=GPL\00", section ".modinfo", align 1, !dbg !350
@__UNIQUE_ID_firmware229 = internal constant [43 x i8] c"si2168.firmware=dvb-demod-si2168-a20-01.fw\00", section ".modinfo", align 1, !dbg !355
@__UNIQUE_ID_firmware230 = internal constant [43 x i8] c"si2168.firmware=dvb-demod-si2168-a30-01.fw\00", section ".modinfo", align 1, !dbg !360
@__UNIQUE_ID_firmware231 = internal constant [43 x i8] c"si2168.firmware=dvb-demod-si2168-b40-01.fw\00", section ".modinfo", align 1, !dbg !362
@__UNIQUE_ID_firmware232 = internal constant [43 x i8] c"si2168.firmware=dvb-demod-si2168-d60-01.fw\00", section ".modinfo", align 1, !dbg !364
@.str = private unnamed_addr constant [7 x i8] c"si2168\00", align 1
@si2168_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si2168\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.i2c_device_id zeroinitializer], align 16, !dbg !4505
@si2168_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4180
@.str.1 = private unnamed_addr constant [16 x i8] c"&dev->i2c_mutex\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\C0\12\00\0C\00\0D\16\00\00\00\00\00\00\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\C0\06\01\0F\00  \01\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\02\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"dvb-demod-si2168-a20-01.fw\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"dvb-demod-si2168-a30-01.fw\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"dvb-demod-si2168-b40-01.fw\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"dvb-demod-si2168-d60-01.fw\00", align 1
@si2168_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Silicon Labs Si2168\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 870000000, i32 62500, i32 0, i32 1000000, i32 7200000, i32 0, i32 -1810104658 }, [8 x i8] c"\03\10\01\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @si2168_init, i32 (%struct.dvb_frontend*)* @si2168_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @si2168_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @si2168_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* null, i32 (%struct.dvb_frontend*, i32*)* @si2168_read_status, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i16*)* null, i32 (%struct.dvb_frontend*, i16*)* null, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !4183
@.str.9 = private unnamed_addr constant [52 x i8] c"Silicon Labs Si2168-%c%d%d successfully identified\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"firmware version: %c %d.%d.%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"probe failed = %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"\C0\0D\01\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\C0\0D\00\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"\C0\06\08\0F\00 !\01\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\85\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"dvb-demod-si2168-02.fw\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"please install firmware file '%s'\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"firmware file '%s' not found\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\11\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\14\00\0D\10\E8\03\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"\14\00\01\10\10\00\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\13\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"\88\02\02\02\02\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"\89!\06\11\FF\98\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\89!\06\11\89\F0\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"\89!\06\11\89 \00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"Q\03\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"\12\08\04\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"\14\00\0C\10\12\00\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"\14\00\06\10$\00\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"\14\00\07\10\00$\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"\14\00\0A\10\00\00\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"\14\00\02\11\00\00\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"\14\00\0F\10\10\00\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"\14\00\09\10\E3\08\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"\14\00\08\10\D7\05\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"\14\00\01\12\00\00\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"\14\00\01\03\0C\00\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"\A0\01\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"\90\01\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"P\01\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"\82\00\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"\84\01\00", align 1
@llvm.used = appending global [11 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_si2168_driver_init224 to i8*), i8* bitcast (void ()* @si2168_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_si2168_driver_exit to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_author225, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__UNIQUE_ID_description226, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_file227, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license228, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_firmware229, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_firmware230, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_firmware231, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_firmware232, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @si2168_driver_init() #0 section ".init.text" !dbg !4513 {
entry:
  %call = call i32 @i2c_register_driver(%struct.module* null, %struct.i2c_driver* @si2168_driver) #9, !dbg !4516
  ret i32 %call, !dbg !4516
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @si2168_driver_exit() #0 section ".exit.text" !dbg !4517 {
entry:
  call void @i2c_del_driver(%struct.i2c_driver* @si2168_driver) #9, !dbg !4518
  ret void, !dbg !4518
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_driver(%struct.i2c_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @i2c_register_driver(%struct.module*, %struct.i2c_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si2168_probe(%struct.i2c_client* %client, %struct.i2c_device_id* %id) #2 !dbg !4182 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %id.addr = alloca %struct.i2c_device_id*, align 8
  %config = alloca %struct.si2168_config*, align 8
  %dev1 = alloca %struct.si2168_dev*, align 8
  %ret = alloca i32, align 4
  %cmd = alloca %struct.si2168_cmd, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4519, metadata !DIExpression()), !dbg !4520
  store %struct.i2c_device_id* %id, %struct.i2c_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_device_id** %id.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.declare(metadata %struct.si2168_config** %config, metadata !4523, metadata !DIExpression()), !dbg !4536
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4537
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !4538
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 7, !dbg !4539
  %1 = load i8*, i8** %platform_data, align 8, !dbg !4539
  %2 = bitcast i8* %1 to %struct.si2168_config*, !dbg !4537
  store %struct.si2168_config* %2, %struct.si2168_config** %config, align 8, !dbg !4536
  call void @llvm.dbg.declare(metadata %struct.si2168_dev** %dev1, metadata !4540, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4579, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.declare(metadata %struct.si2168_cmd* %cmd, metadata !4581, metadata !DIExpression()), !dbg !4590
  %call = call i8* @kzalloc(i64 1344, i32 3264) #9, !dbg !4591
  %3 = bitcast i8* %call to %struct.si2168_dev*, !dbg !4591
  store %struct.si2168_dev* %3, %struct.si2168_dev** %dev1, align 8, !dbg !4592
  %4 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4593
  %tobool = icmp ne %struct.si2168_dev* %4, null, !dbg !4593
  br i1 %tobool, label %if.end, label %if.then, !dbg !4595

if.then:                                          ; preds = %entry
  store i32 -12, i32* %ret, align 4, !dbg !4596
  br label %err, !dbg !4598

if.end:                                           ; preds = %entry
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4599
  %6 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4600
  %7 = bitcast %struct.si2168_dev* %6 to i8*, !dbg !4600
  call void @i2c_set_clientdata(%struct.i2c_client* %5, i8* %7) #9, !dbg !4601
  br label %do.body, !dbg !4602

do.body:                                          ; preds = %if.end
  %8 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4603
  %i2c_mutex = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %8, i32 0, i32 0, !dbg !4603
  call void @__mutex_init(%struct.mutex* %i2c_mutex, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* @si2168_probe.__key) #9, !dbg !4603
  br label %do.end, !dbg !4603

do.end:                                           ; preds = %do.body
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 13, i32 0) #9, !dbg !4605
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4606
  %call2 = call i32 @si2168_cmd_execute(%struct.i2c_client* %9, %struct.si2168_cmd* %cmd) #9, !dbg !4607
  store i32 %call2, i32* %ret, align 4, !dbg !4608
  %10 = load i32, i32* %ret, align 4, !dbg !4609
  %tobool3 = icmp ne i32 %10, 0, !dbg !4609
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4611

if.then4:                                         ; preds = %do.end
  br label %err_kfree, !dbg !4612

if.end5:                                          ; preds = %do.end
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8, i32 1) #9, !dbg !4613
  %11 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4614
  %call6 = call i32 @si2168_cmd_execute(%struct.i2c_client* %11, %struct.si2168_cmd* %cmd) #9, !dbg !4615
  store i32 %call6, i32* %ret, align 4, !dbg !4616
  %12 = load i32, i32* %ret, align 4, !dbg !4617
  %tobool7 = icmp ne i32 %12, 0, !dbg !4617
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4619

if.then8:                                         ; preds = %if.end5
  br label %err_kfree, !dbg !4620

if.end9:                                          ; preds = %if.end5
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 13) #9, !dbg !4621
  %13 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4622
  %call10 = call i32 @si2168_cmd_execute(%struct.i2c_client* %13, %struct.si2168_cmd* %cmd) #9, !dbg !4623
  store i32 %call10, i32* %ret, align 4, !dbg !4624
  %14 = load i32, i32* %ret, align 4, !dbg !4625
  %tobool11 = icmp ne i32 %14, 0, !dbg !4625
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4627

if.then12:                                        ; preds = %if.end9
  br label %err_kfree, !dbg !4628

if.end13:                                         ; preds = %if.end9
  %args = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !4629
  %arrayidx = getelementptr [30 x i8], [30 x i8]* %args, i64 0, i64 1, !dbg !4630
  %15 = load i8, i8* %arrayidx, align 1, !dbg !4630
  %conv = zext i8 %15 to i32, !dbg !4630
  %shl = shl i32 %conv, 24, !dbg !4631
  %args14 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !4632
  %arrayidx15 = getelementptr [30 x i8], [30 x i8]* %args14, i64 0, i64 2, !dbg !4633
  %16 = load i8, i8* %arrayidx15, align 2, !dbg !4633
  %conv16 = zext i8 %16 to i32, !dbg !4633
  %shl17 = shl i32 %conv16, 16, !dbg !4634
  %or = or i32 %shl, %shl17, !dbg !4635
  %args18 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !4636
  %arrayidx19 = getelementptr [30 x i8], [30 x i8]* %args18, i64 0, i64 3, !dbg !4637
  %17 = load i8, i8* %arrayidx19, align 1, !dbg !4637
  %conv20 = zext i8 %17 to i32, !dbg !4637
  %shl21 = shl i32 %conv20, 8, !dbg !4638
  %or22 = or i32 %or, %shl21, !dbg !4639
  %args23 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !4640
  %arrayidx24 = getelementptr [30 x i8], [30 x i8]* %args23, i64 0, i64 4, !dbg !4641
  %18 = load i8, i8* %arrayidx24, align 4, !dbg !4641
  %conv25 = zext i8 %18 to i32, !dbg !4641
  %shl26 = shl i32 %conv25, 0, !dbg !4642
  %or27 = or i32 %or22, %shl26, !dbg !4643
  %19 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4644
  %chip_id = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %19, i32 0, i32 5, !dbg !4645
  store i32 %or27, i32* %chip_id, align 8, !dbg !4646
  %20 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4647
  %chip_id28 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %20, i32 0, i32 5, !dbg !4648
  %21 = load i32, i32* %chip_id28, align 8, !dbg !4648
  switch i32 %21, label %sw.default [
    i32 1094988336, label %sw.bb
    i32 1094988592, label %sw.bb29
    i32 1111766064, label %sw.bb31
    i32 1145321008, label %sw.bb33
  ], !dbg !4649

sw.bb:                                            ; preds = %if.end13
  %22 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4650
  %firmware_name = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %22, i32 0, i32 7, !dbg !4652
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %firmware_name, align 8, !dbg !4653
  br label %sw.epilog, !dbg !4654

sw.bb29:                                          ; preds = %if.end13
  %23 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4655
  %firmware_name30 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %23, i32 0, i32 7, !dbg !4656
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8** %firmware_name30, align 8, !dbg !4657
  br label %sw.epilog, !dbg !4658

sw.bb31:                                          ; preds = %if.end13
  %24 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4659
  %firmware_name32 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %24, i32 0, i32 7, !dbg !4660
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8** %firmware_name32, align 8, !dbg !4661
  br label %sw.epilog, !dbg !4662

sw.bb33:                                          ; preds = %if.end13
  %25 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4663
  %firmware_name34 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %25, i32 0, i32 7, !dbg !4664
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8** %firmware_name34, align 8, !dbg !4665
  br label %sw.epilog, !dbg !4666

sw.default:                                       ; preds = %if.end13
  store i32 -19, i32* %ret, align 4, !dbg !4667
  br label %err_kfree, !dbg !4668

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb
  %args35 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !4669
  %arrayidx36 = getelementptr [30 x i8], [30 x i8]* %args35, i64 0, i64 1, !dbg !4670
  %26 = load i8, i8* %arrayidx36, align 1, !dbg !4670
  %conv37 = zext i8 %26 to i32, !dbg !4671
  %shl38 = shl i32 %conv37, 24, !dbg !4672
  %args39 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !4673
  %arrayidx40 = getelementptr [30 x i8], [30 x i8]* %args39, i64 0, i64 3, !dbg !4674
  %27 = load i8, i8* %arrayidx40, align 1, !dbg !4674
  %conv41 = zext i8 %27 to i32, !dbg !4674
  %sub = sub i32 %conv41, 48, !dbg !4675
  %shl42 = shl i32 %sub, 16, !dbg !4676
  %or43 = or i32 %shl38, %shl42, !dbg !4677
  %args44 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !4678
  %arrayidx45 = getelementptr [30 x i8], [30 x i8]* %args44, i64 0, i64 4, !dbg !4679
  %28 = load i8, i8* %arrayidx45, align 4, !dbg !4679
  %conv46 = zext i8 %28 to i32, !dbg !4679
  %sub47 = sub i32 %conv46, 48, !dbg !4680
  %shl48 = shl i32 %sub47, 8, !dbg !4681
  %or49 = or i32 %or43, %shl48, !dbg !4682
  %args50 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !4683
  %arrayidx51 = getelementptr [30 x i8], [30 x i8]* %args50, i64 0, i64 5, !dbg !4684
  %29 = load i8, i8* %arrayidx51, align 1, !dbg !4684
  %conv52 = zext i8 %29 to i32, !dbg !4685
  %shl53 = shl i32 %conv52, 0, !dbg !4686
  %or54 = or i32 %or49, %shl53, !dbg !4687
  %30 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4688
  %version = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %30, i32 0, i32 6, !dbg !4689
  store i32 %or54, i32* %version, align 4, !dbg !4690
  %31 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4691
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 3, !dbg !4692
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !4692
  %33 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4693
  %dev55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 4, !dbg !4694
  %call56 = call %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter* %32, %struct.device* %dev55, i32 1, i32 0, i32 1, i32 (%struct.i2c_mux_core*, i32)* @si2168_select, i32 (%struct.i2c_mux_core*, i32)* @si2168_deselect) #9, !dbg !4695
  %34 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4696
  %muxc = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %34, i32 0, i32 1, !dbg !4697
  store %struct.i2c_mux_core* %call56, %struct.i2c_mux_core** %muxc, align 8, !dbg !4698
  %35 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4699
  %muxc57 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %35, i32 0, i32 1, !dbg !4701
  %36 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc57, align 8, !dbg !4701
  %tobool58 = icmp ne %struct.i2c_mux_core* %36, null, !dbg !4699
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !4702

if.then59:                                        ; preds = %sw.epilog
  store i32 -12, i32* %ret, align 4, !dbg !4703
  br label %err_kfree, !dbg !4705

if.end60:                                         ; preds = %sw.epilog
  %37 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4706
  %38 = bitcast %struct.i2c_client* %37 to i8*, !dbg !4706
  %39 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4707
  %muxc61 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %39, i32 0, i32 1, !dbg !4708
  %40 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc61, align 8, !dbg !4708
  %priv = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %40, i32 0, i32 3, !dbg !4709
  store i8* %38, i8** %priv, align 8, !dbg !4710
  %41 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4711
  %muxc62 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %41, i32 0, i32 1, !dbg !4712
  %42 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc62, align 8, !dbg !4712
  %call63 = call i32 @i2c_mux_add_adapter(%struct.i2c_mux_core* %42, i32 0, i32 0, i32 0) #9, !dbg !4713
  store i32 %call63, i32* %ret, align 4, !dbg !4714
  %43 = load i32, i32* %ret, align 4, !dbg !4715
  %tobool64 = icmp ne i32 %43, 0, !dbg !4715
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !4717

if.then65:                                        ; preds = %if.end60
  br label %err_kfree, !dbg !4718

if.end66:                                         ; preds = %if.end60
  %44 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4719
  %fe = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %44, i32 0, i32 2, !dbg !4720
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe, i32 0, i32 1, !dbg !4721
  %45 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @si2168_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4722
  %46 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4723
  %47 = bitcast %struct.i2c_client* %46 to i8*, !dbg !4723
  %48 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4724
  %fe67 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %48, i32 0, i32 2, !dbg !4725
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe67, i32 0, i32 3, !dbg !4726
  store i8* %47, i8** %demodulator_priv, align 8, !dbg !4727
  %49 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4728
  %muxc68 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %49, i32 0, i32 1, !dbg !4729
  %50 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc68, align 8, !dbg !4729
  %adapter69 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %50, i32 0, i32 8, !dbg !4730
  %arrayidx70 = getelementptr [0 x %struct.i2c_adapter*], [0 x %struct.i2c_adapter*]* %adapter69, i64 0, i64 0, !dbg !4728
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %arrayidx70, align 8, !dbg !4728
  %52 = load %struct.si2168_config*, %struct.si2168_config** %config, align 8, !dbg !4731
  %i2c_adapter = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %52, i32 0, i32 1, !dbg !4732
  %53 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %i2c_adapter, align 8, !dbg !4732
  store %struct.i2c_adapter* %51, %struct.i2c_adapter** %53, align 8, !dbg !4733
  %54 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4734
  %fe71 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %54, i32 0, i32 2, !dbg !4735
  %55 = load %struct.si2168_config*, %struct.si2168_config** %config, align 8, !dbg !4736
  %fe72 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %55, i32 0, i32 0, !dbg !4737
  %56 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %fe72, align 8, !dbg !4737
  store %struct.dvb_frontend* %fe71, %struct.dvb_frontend** %56, align 8, !dbg !4738
  %57 = load %struct.si2168_config*, %struct.si2168_config** %config, align 8, !dbg !4739
  %ts_mode = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %57, i32 0, i32 2, !dbg !4740
  %58 = load i8, i8* %ts_mode, align 8, !dbg !4740
  %59 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4741
  %ts_mode73 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %59, i32 0, i32 8, !dbg !4742
  store i8 %58, i8* %ts_mode73, align 8, !dbg !4743
  %60 = load %struct.si2168_config*, %struct.si2168_config** %config, align 8, !dbg !4744
  %ts_clock_inv = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %60, i32 0, i32 3, !dbg !4745
  %bf.load = load i8, i8* %ts_clock_inv, align 1, !dbg !4745
  %bf.clear = and i8 %bf.load, 1, !dbg !4745
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4745
  %61 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4746
  %ts_clock_inv74 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %61, i32 0, i32 9, !dbg !4747
  %62 = trunc i32 %bf.cast to i8, !dbg !4748
  %bf.load75 = load i8, i8* %ts_clock_inv74, align 1, !dbg !4748
  %bf.value = and i8 %62, 1, !dbg !4748
  %bf.shl = shl i8 %bf.value, 2, !dbg !4748
  %bf.clear76 = and i8 %bf.load75, -5, !dbg !4748
  %bf.set = or i8 %bf.clear76, %bf.shl, !dbg !4748
  store i8 %bf.set, i8* %ts_clock_inv74, align 1, !dbg !4748
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !4748
  %63 = load %struct.si2168_config*, %struct.si2168_config** %config, align 8, !dbg !4749
  %ts_clock_gapped = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %63, i32 0, i32 3, !dbg !4750
  %bf.load77 = load i8, i8* %ts_clock_gapped, align 1, !dbg !4750
  %bf.lshr = lshr i8 %bf.load77, 1, !dbg !4750
  %bf.clear78 = and i8 %bf.lshr, 1, !dbg !4750
  %bf.cast79 = zext i8 %bf.clear78 to i32, !dbg !4750
  %64 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4751
  %ts_clock_gapped80 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %64, i32 0, i32 9, !dbg !4752
  %65 = trunc i32 %bf.cast79 to i8, !dbg !4753
  %bf.load81 = load i8, i8* %ts_clock_gapped80, align 1, !dbg !4753
  %bf.value82 = and i8 %65, 1, !dbg !4753
  %bf.shl83 = shl i8 %bf.value82, 3, !dbg !4753
  %bf.clear84 = and i8 %bf.load81, -9, !dbg !4753
  %bf.set85 = or i8 %bf.clear84, %bf.shl83, !dbg !4753
  store i8 %bf.set85, i8* %ts_clock_gapped80, align 1, !dbg !4753
  %bf.result.cast86 = zext i8 %bf.value82 to i32, !dbg !4753
  %66 = load %struct.si2168_config*, %struct.si2168_config** %config, align 8, !dbg !4754
  %spectral_inversion = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %66, i32 0, i32 3, !dbg !4755
  %bf.load87 = load i8, i8* %spectral_inversion, align 1, !dbg !4755
  %bf.lshr88 = lshr i8 %bf.load87, 2, !dbg !4755
  %bf.clear89 = and i8 %bf.lshr88, 1, !dbg !4755
  %bf.cast90 = zext i8 %bf.clear89 to i32, !dbg !4755
  %67 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4756
  %spectral_inversion91 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %67, i32 0, i32 9, !dbg !4757
  %68 = trunc i32 %bf.cast90 to i8, !dbg !4758
  %bf.load92 = load i8, i8* %spectral_inversion91, align 1, !dbg !4758
  %bf.value93 = and i8 %68, 1, !dbg !4758
  %bf.shl94 = shl i8 %bf.value93, 4, !dbg !4758
  %bf.clear95 = and i8 %bf.load92, -17, !dbg !4758
  %bf.set96 = or i8 %bf.clear95, %bf.shl94, !dbg !4758
  store i8 %bf.set96, i8* %spectral_inversion91, align 1, !dbg !4758
  %bf.result.cast97 = zext i8 %bf.value93 to i32, !dbg !4758
  %69 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4759
  %dev98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 4, !dbg !4759
  %70 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4759
  %version99 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %70, i32 0, i32 6, !dbg !4759
  %71 = load i32, i32* %version99, align 4, !dbg !4759
  %shr = lshr i32 %71, 24, !dbg !4759
  %and = and i32 %shr, 255, !dbg !4759
  %72 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4759
  %version100 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %72, i32 0, i32 6, !dbg !4759
  %73 = load i32, i32* %version100, align 4, !dbg !4759
  %shr101 = lshr i32 %73, 16, !dbg !4759
  %and102 = and i32 %shr101, 255, !dbg !4759
  %74 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4759
  %version103 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %74, i32 0, i32 6, !dbg !4759
  %75 = load i32, i32* %version103, align 4, !dbg !4759
  %shr104 = lshr i32 %75, 8, !dbg !4759
  %and105 = and i32 %shr104, 255, !dbg !4759
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev98, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %and, i32 %and102, i32 %and105) #10, !dbg !4759
  %76 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4760
  %dev106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 4, !dbg !4760
  %77 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4760
  %version107 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %77, i32 0, i32 6, !dbg !4760
  %78 = load i32, i32* %version107, align 4, !dbg !4760
  %shr108 = lshr i32 %78, 24, !dbg !4760
  %and109 = and i32 %shr108, 255, !dbg !4760
  %79 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4760
  %version110 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %79, i32 0, i32 6, !dbg !4760
  %80 = load i32, i32* %version110, align 4, !dbg !4760
  %shr111 = lshr i32 %80, 16, !dbg !4760
  %and112 = and i32 %shr111, 255, !dbg !4760
  %81 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4760
  %version113 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %81, i32 0, i32 6, !dbg !4760
  %82 = load i32, i32* %version113, align 4, !dbg !4760
  %shr114 = lshr i32 %82, 8, !dbg !4760
  %and115 = and i32 %shr114, 255, !dbg !4760
  %83 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4760
  %version116 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %83, i32 0, i32 6, !dbg !4760
  %84 = load i32, i32* %version116, align 4, !dbg !4760
  %shr117 = lshr i32 %84, 0, !dbg !4760
  %and118 = and i32 %shr117, 255, !dbg !4760
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %and109, i32 %and112, i32 %and115, i32 %and118) #10, !dbg !4760
  store i32 0, i32* %retval, align 4, !dbg !4761
  br label %return, !dbg !4761

err_kfree:                                        ; preds = %if.then65, %if.then59, %sw.default, %if.then12, %if.then8, %if.then4
  call void @llvm.dbg.label(metadata !4762), !dbg !4763
  %85 = load %struct.si2168_dev*, %struct.si2168_dev** %dev1, align 8, !dbg !4764
  %86 = bitcast %struct.si2168_dev* %85 to i8*, !dbg !4764
  call void @kfree(i8* %86) #9, !dbg !4765
  br label %err, !dbg !4765

err:                                              ; preds = %err_kfree, %if.then
  call void @llvm.dbg.label(metadata !4766), !dbg !4767
  %87 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4768
  %dev119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 4, !dbg !4768
  %88 = load i32, i32* %ret, align 4, !dbg !4768
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %88) #10, !dbg !4768
  %89 = load i32, i32* %ret, align 4, !dbg !4769
  store i32 %89, i32* %retval, align 4, !dbg !4770
  br label %return, !dbg !4770

return:                                           ; preds = %err, %if.end66
  %90 = load i32, i32* %retval, align 4, !dbg !4771
  ret i32 %90, !dbg !4771
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si2168_remove(%struct.i2c_client* %client) #2 !dbg !4772 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.si2168_dev*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4773, metadata !DIExpression()), !dbg !4774
  call void @llvm.dbg.declare(metadata %struct.si2168_dev** %dev, metadata !4775, metadata !DIExpression()), !dbg !4776
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4777
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !4778
  %1 = bitcast i8* %call to %struct.si2168_dev*, !dbg !4778
  store %struct.si2168_dev* %1, %struct.si2168_dev** %dev, align 8, !dbg !4776
  %2 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !4779
  %muxc = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %2, i32 0, i32 1, !dbg !4780
  %3 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !4780
  call void @i2c_mux_del_adapters(%struct.i2c_mux_core* %3) #9, !dbg !4781
  %4 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !4782
  %fe = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %4, i32 0, i32 2, !dbg !4783
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe, i32 0, i32 1, !dbg !4784
  %release = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 3, !dbg !4785
  store void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)** %release, align 8, !dbg !4786
  %5 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !4787
  %fe1 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %5, i32 0, i32 2, !dbg !4788
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %fe1, i32 0, i32 3, !dbg !4789
  store i8* null, i8** %demodulator_priv, align 8, !dbg !4790
  %6 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !4791
  %7 = bitcast %struct.si2168_dev* %6 to i8*, !dbg !4791
  call void @kfree(i8* %7) #9, !dbg !4792
  ret i32 0, !dbg !4793
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4794 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4797, metadata !DIExpression()), !dbg !4801
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4807, metadata !DIExpression()), !dbg !4808
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4809, metadata !DIExpression()), !dbg !4810
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4811, metadata !DIExpression()), !dbg !4812
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4813, metadata !DIExpression()), !dbg !4817
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4819, metadata !DIExpression()), !dbg !4823
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4825, metadata !DIExpression()), !dbg !4829
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4834, metadata !DIExpression()), !dbg !4835
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4836, metadata !DIExpression()), !dbg !4837
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4838, metadata !DIExpression()), !dbg !4839
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4840, metadata !DIExpression()), !dbg !4841
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4842, metadata !DIExpression()), !dbg !4843
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4844, metadata !DIExpression()), !dbg !4845
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4846, metadata !DIExpression()), !dbg !4847
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4848, metadata !DIExpression()), !dbg !4849
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4850, metadata !DIExpression()), !dbg !4851
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4852, metadata !DIExpression()), !dbg !4853
  %0 = load i64, i64* %size.addr, align 8, !dbg !4854
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4855
  %or = or i32 %1, 256, !dbg !4856
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4857
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4858
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4859

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4860
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4861
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4862

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4863
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4864
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4865
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4866
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4843
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4867
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4868
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4869
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4870
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4871
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4872
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4873
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4873
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4873
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4873
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4873
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4874
  br label %kmalloc.exit, !dbg !4874

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4875
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4876
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4876
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4878

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4879
  br label %kmalloc_index.exit.i, !dbg !4879

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4880
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4882
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4883

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4884
  br label %kmalloc_index.exit.i, !dbg !4884

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4885
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4887
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4888

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4889
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4890
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4891

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4892
  br label %kmalloc_index.exit.i, !dbg !4892

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4893
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4895
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4896

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4897
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4898
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4899

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4900
  br label %kmalloc_index.exit.i, !dbg !4900

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4901
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4903
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4904

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4905
  br label %kmalloc_index.exit.i, !dbg !4905

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4906
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4908
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4909

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4910
  br label %kmalloc_index.exit.i, !dbg !4910

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4911
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4913
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4914

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4915
  br label %kmalloc_index.exit.i, !dbg !4915

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4916
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4918
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4919

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4920
  br label %kmalloc_index.exit.i, !dbg !4920

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4921
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4923
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4924

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4925
  br label %kmalloc_index.exit.i, !dbg !4925

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4926
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4928
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4929

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4930
  br label %kmalloc_index.exit.i, !dbg !4930

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4931
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4933
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4934

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4935
  br label %kmalloc_index.exit.i, !dbg !4935

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4936
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4938
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4939

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4940
  br label %kmalloc_index.exit.i, !dbg !4940

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4941
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4943
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4944

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4945
  br label %kmalloc_index.exit.i, !dbg !4945

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4946
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4948
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4949

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4950
  br label %kmalloc_index.exit.i, !dbg !4950

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4951
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4953
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4954

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4955
  br label %kmalloc_index.exit.i, !dbg !4955

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4956
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4958
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4959

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4960
  br label %kmalloc_index.exit.i, !dbg !4960

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4961
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4963
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4964

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4965
  br label %kmalloc_index.exit.i, !dbg !4965

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4966
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4968
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4969

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4970
  br label %kmalloc_index.exit.i, !dbg !4970

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4971
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4973
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4974

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4975
  br label %kmalloc_index.exit.i, !dbg !4975

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4976
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4978
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4979

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4980
  br label %kmalloc_index.exit.i, !dbg !4980

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4981
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4983
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4984

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4985
  br label %kmalloc_index.exit.i, !dbg !4985

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4986
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4988
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4989

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4990
  br label %kmalloc_index.exit.i, !dbg !4990

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4991
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4993
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4994

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4995
  br label %kmalloc_index.exit.i, !dbg !4995

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4996
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4998
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4999

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5000
  br label %kmalloc_index.exit.i, !dbg !5000

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5001
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5003
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5004

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5005
  br label %kmalloc_index.exit.i, !dbg !5005

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5006
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5008
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5009

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5010
  br label %kmalloc_index.exit.i, !dbg !5010

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5011
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5013
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5014

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5015
  br label %kmalloc_index.exit.i, !dbg !5015

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5016
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5018
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5019

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5020
  br label %kmalloc_index.exit.i, !dbg !5020

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5021, !srcloc !5024
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #11, !dbg !5025, !srcloc !5028
  unreachable, !dbg !5029

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5030
  store i32 %45, i32* %index.i, align 4, !dbg !5031
  %46 = load i32, i32* %index.i, align 4, !dbg !5032
  %tobool.i = icmp ne i32 %46, 0, !dbg !5032
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5034

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5035
  br label %kmalloc.exit, !dbg !5035

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5036
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5037
  %and.i.i = and i32 %48, 17, !dbg !5037
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5037
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5037
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5037
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5037
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5039

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5040
  br label %kmalloc_type.exit.i, !dbg !5040

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5041
  %and2.i.i = and i32 %49, 1, !dbg !5042
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5041
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5041
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5041
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5043
  br label %kmalloc_type.exit.i, !dbg !5043

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5044
  %idxprom.i = zext i32 %51 to i64, !dbg !5045
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5045
  %52 = load i32, i32* %index.i, align 4, !dbg !5046
  %idxprom6.i = zext i32 %52 to i64, !dbg !5045
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5045
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5045
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5047
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5048
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5049
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5050
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5051
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5051
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5051
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5051
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5051
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4812
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5052
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5053
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5054
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5055
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5056
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5057
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5058
  store i8* %62, i8** %retval.i, align 8, !dbg !5059
  br label %kmalloc.exit, !dbg !5059

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5060
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5061
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5062
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5062
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5062
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5062
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5062
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5063
  br label %kmalloc.exit, !dbg !5063

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5064
  ret i8* %65, !dbg !5065
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_clientdata(%struct.i2c_client* %client, i8* %data) #2 !dbg !5066 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5069, metadata !DIExpression()), !dbg !5070
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5071, metadata !DIExpression()), !dbg !5072
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5073
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !5074
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5075
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !5076
  ret void, !dbg !5077
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cmd_init(%struct.si2168_cmd* %cmd, i8* %buf, i32 %wlen, i32 %rlen) #2 !dbg !5078 {
entry:
  %cmd.addr = alloca %struct.si2168_cmd*, align 8
  %buf.addr = alloca i8*, align 8
  %wlen.addr = alloca i32, align 4
  %rlen.addr = alloca i32, align 4
  store %struct.si2168_cmd* %cmd, %struct.si2168_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si2168_cmd** %cmd.addr, metadata !5082, metadata !DIExpression()), !dbg !5083
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5084, metadata !DIExpression()), !dbg !5085
  store i32 %wlen, i32* %wlen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wlen.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  store i32 %rlen, i32* %rlen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rlen.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  %0 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5090
  %args = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %0, i32 0, i32 0, !dbg !5091
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %args, i64 0, i64 0, !dbg !5092
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5093
  %2 = load i32, i32* %wlen.addr, align 4, !dbg !5094
  %conv = sext i32 %2 to i64, !dbg !5094
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay, i8* align 1 %1, i64 %conv, i1 false), !dbg !5092
  %3 = load i32, i32* %wlen.addr, align 4, !dbg !5095
  %4 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5096
  %wlen1 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %4, i32 0, i32 1, !dbg !5097
  store i32 %3, i32* %wlen1, align 4, !dbg !5098
  %5 = load i32, i32* %rlen.addr, align 4, !dbg !5099
  %6 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5100
  %rlen2 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %6, i32 0, i32 2, !dbg !5101
  store i32 %5, i32* %rlen2, align 4, !dbg !5102
  ret void, !dbg !5103
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si2168_cmd_execute(%struct.i2c_client* %client, %struct.si2168_cmd* %cmd) #2 !dbg !5104 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5107, metadata !DIExpression()), !dbg !5112
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %cmd.addr = alloca %struct.si2168_cmd*, align 8
  %dev = alloca %struct.si2168_dev*, align 8
  %ret = alloca i32, align 4
  %timeout = alloca i64, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5116, metadata !DIExpression()), !dbg !5117
  store %struct.si2168_cmd* %cmd, %struct.si2168_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.si2168_cmd** %cmd.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.declare(metadata %struct.si2168_dev** %dev, metadata !5120, metadata !DIExpression()), !dbg !5121
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5122
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !5123
  %1 = bitcast i8* %call to %struct.si2168_dev*, !dbg !5123
  store %struct.si2168_dev* %1, %struct.si2168_dev** %dev, align 8, !dbg !5121
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5124, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !5126, metadata !DIExpression()), !dbg !5127
  %2 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5128
  %i2c_mutex = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %2, i32 0, i32 0, !dbg !5129
  call void @mutex_lock(%struct.mutex* %i2c_mutex) #9, !dbg !5130
  %3 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5131
  %wlen = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %3, i32 0, i32 1, !dbg !5133
  %4 = load i32, i32* %wlen, align 4, !dbg !5133
  %tobool = icmp ne i32 %4, 0, !dbg !5131
  br i1 %tobool, label %if.then, label %if.end8, !dbg !5134

if.then:                                          ; preds = %entry
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5135
  %6 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5137
  %args = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %6, i32 0, i32 0, !dbg !5138
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %args, i64 0, i64 0, !dbg !5137
  %7 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5139
  %wlen1 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %7, i32 0, i32 1, !dbg !5140
  %8 = load i32, i32* %wlen1, align 4, !dbg !5140
  %call2 = call i32 @i2c_master_send(%struct.i2c_client* %5, i8* %arraydecay, i32 %8) #9, !dbg !5141
  store i32 %call2, i32* %ret, align 4, !dbg !5142
  %9 = load i32, i32* %ret, align 4, !dbg !5143
  %cmp = icmp slt i32 %9, 0, !dbg !5145
  br i1 %cmp, label %if.then3, label %if.else, !dbg !5146

if.then3:                                         ; preds = %if.then
  br label %err_mutex_unlock, !dbg !5147

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* %ret, align 4, !dbg !5149
  %11 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5151
  %wlen4 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %11, i32 0, i32 1, !dbg !5152
  %12 = load i32, i32* %wlen4, align 4, !dbg !5152
  %cmp5 = icmp ne i32 %10, %12, !dbg !5153
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !5154

if.then6:                                         ; preds = %if.else
  store i32 -121, i32* %ret, align 4, !dbg !5155
  br label %err_mutex_unlock, !dbg !5157

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  br label %if.end8, !dbg !5158

if.end8:                                          ; preds = %if.end7, %entry
  %13 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5159
  %rlen = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %13, i32 0, i32 2, !dbg !5160
  %14 = load i32, i32* %rlen, align 4, !dbg !5160
  %tobool9 = icmp ne i32 %14, 0, !dbg !5159
  br i1 %tobool9, label %if.then10, label %if.end45, !dbg !5161

if.then10:                                        ; preds = %if.end8
  %15 = load volatile i64, i64* @jiffies, align 8, !dbg !5162
  store i32 70, i32* %m.addr.i, align 4
  %16 = load i32, i32* %m.addr.i, align 4, !dbg !5163
  %17 = call i1 @llvm.is.constant.i32(i32 %16) #11, !dbg !5165
  br i1 %17, label %if.then.i, label %if.else.i, !dbg !5166

if.then.i:                                        ; preds = %if.then10
  %18 = load i32, i32* %m.addr.i, align 4, !dbg !5167
  %cmp.i = icmp slt i32 %18, 0, !dbg !5170
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5171

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5172
  br label %msecs_to_jiffies.exit, !dbg !5172

if.end.i:                                         ; preds = %if.then.i
  %19 = load i32, i32* %m.addr.i, align 4, !dbg !5173
  %call.i = call i64 @_msecs_to_jiffies(i32 %19) #13, !dbg !5174
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5175
  br label %msecs_to_jiffies.exit, !dbg !5175

if.else.i:                                        ; preds = %if.then10
  %20 = load i32, i32* %m.addr.i, align 4, !dbg !5176
  %call2.i = call i64 @__msecs_to_jiffies(i32 %20) #13, !dbg !5178
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5179
  br label %msecs_to_jiffies.exit, !dbg !5179

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %21 = load i64, i64* %retval.i, align 8, !dbg !5180
  %add = add i64 %15, %21, !dbg !5181
  store i64 %add, i64* %timeout, align 8, !dbg !5182
  br label %while.cond, !dbg !5183

while.cond:                                       ; preds = %if.end28, %msecs_to_jiffies.exit
  %22 = load i64, i64* %timeout, align 8, !dbg !5184
  %23 = load volatile i64, i64* @jiffies, align 8, !dbg !5184
  %sub = sub i64 %22, %23, !dbg !5184
  %cmp12 = icmp slt i64 %sub, 0, !dbg !5184
  %lnot = xor i1 %cmp12, true, !dbg !5185
  br i1 %lnot, label %while.body, label %while.end, !dbg !5183

while.body:                                       ; preds = %while.cond
  %24 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5186
  %25 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5188
  %args13 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %25, i32 0, i32 0, !dbg !5189
  %arraydecay14 = getelementptr inbounds [30 x i8], [30 x i8]* %args13, i64 0, i64 0, !dbg !5188
  %26 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5190
  %rlen15 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %26, i32 0, i32 2, !dbg !5191
  %27 = load i32, i32* %rlen15, align 4, !dbg !5191
  %call16 = call i32 @i2c_master_recv(%struct.i2c_client* %24, i8* %arraydecay14, i32 %27) #9, !dbg !5192
  store i32 %call16, i32* %ret, align 4, !dbg !5193
  %28 = load i32, i32* %ret, align 4, !dbg !5194
  %cmp17 = icmp slt i32 %28, 0, !dbg !5196
  br i1 %cmp17, label %if.then18, label %if.else19, !dbg !5197

if.then18:                                        ; preds = %while.body
  br label %err_mutex_unlock, !dbg !5198

if.else19:                                        ; preds = %while.body
  %29 = load i32, i32* %ret, align 4, !dbg !5200
  %30 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5202
  %rlen20 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %30, i32 0, i32 2, !dbg !5203
  %31 = load i32, i32* %rlen20, align 4, !dbg !5203
  %cmp21 = icmp ne i32 %29, %31, !dbg !5204
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5205

if.then22:                                        ; preds = %if.else19
  store i32 -121, i32* %ret, align 4, !dbg !5206
  br label %err_mutex_unlock, !dbg !5208

if.end23:                                         ; preds = %if.else19
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  %32 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5209
  %args25 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %32, i32 0, i32 0, !dbg !5211
  %arrayidx = getelementptr [30 x i8], [30 x i8]* %args25, i64 0, i64 0, !dbg !5209
  %33 = load i8, i8* %arrayidx, align 4, !dbg !5209
  %conv = zext i8 %33 to i32, !dbg !5209
  %shr = ashr i32 %conv, 7, !dbg !5212
  %and = and i32 %shr, 1, !dbg !5213
  %tobool26 = icmp ne i32 %and, 0, !dbg !5213
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5214

if.then27:                                        ; preds = %if.end24
  br label %while.end, !dbg !5215

if.end28:                                         ; preds = %if.end24
  br label %while.cond, !dbg !5183, !llvm.loop !5216

while.end:                                        ; preds = %if.then27, %while.cond
  %34 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5218
  %args29 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %34, i32 0, i32 0, !dbg !5220
  %arrayidx30 = getelementptr [30 x i8], [30 x i8]* %args29, i64 0, i64 0, !dbg !5218
  %35 = load i8, i8* %arrayidx30, align 4, !dbg !5218
  %conv31 = zext i8 %35 to i32, !dbg !5218
  %shr32 = ashr i32 %conv31, 6, !dbg !5221
  %and33 = and i32 %shr32, 1, !dbg !5222
  %tobool34 = icmp ne i32 %and33, 0, !dbg !5222
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5223

if.then35:                                        ; preds = %while.end
  store i32 -121, i32* %ret, align 4, !dbg !5224
  br label %err_mutex_unlock, !dbg !5226

if.end36:                                         ; preds = %while.end
  %36 = load %struct.si2168_cmd*, %struct.si2168_cmd** %cmd.addr, align 8, !dbg !5227
  %args37 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %36, i32 0, i32 0, !dbg !5229
  %arrayidx38 = getelementptr [30 x i8], [30 x i8]* %args37, i64 0, i64 0, !dbg !5227
  %37 = load i8, i8* %arrayidx38, align 4, !dbg !5227
  %conv39 = zext i8 %37 to i32, !dbg !5227
  %shr40 = ashr i32 %conv39, 7, !dbg !5230
  %and41 = and i32 %shr40, 1, !dbg !5231
  %tobool42 = icmp ne i32 %and41, 0, !dbg !5231
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !5232

if.then43:                                        ; preds = %if.end36
  store i32 -110, i32* %ret, align 4, !dbg !5233
  br label %err_mutex_unlock, !dbg !5235

if.end44:                                         ; preds = %if.end36
  br label %if.end45, !dbg !5236

if.end45:                                         ; preds = %if.end44, %if.end8
  %38 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5237
  %i2c_mutex46 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %38, i32 0, i32 0, !dbg !5238
  call void @mutex_unlock(%struct.mutex* %i2c_mutex46) #9, !dbg !5239
  store i32 0, i32* %retval, align 4, !dbg !5240
  br label %return, !dbg !5240

err_mutex_unlock:                                 ; preds = %if.then43, %if.then35, %if.then22, %if.then18, %if.then6, %if.then3
  call void @llvm.dbg.label(metadata !5241), !dbg !5242
  %39 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5243
  %i2c_mutex47 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %39, i32 0, i32 0, !dbg !5244
  call void @mutex_unlock(%struct.mutex* %i2c_mutex47) #9, !dbg !5245
  %40 = load i32, i32* %ret, align 4, !dbg !5246
  store i32 %40, i32* %retval, align 4, !dbg !5247
  br label %return, !dbg !5247

return:                                           ; preds = %err_mutex_unlock, %if.end45
  %41 = load i32, i32* %retval, align 4, !dbg !5248
  ret i32 %41, !dbg !5248
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter*, %struct.device*, i32, i32, i32, i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si2168_select(%struct.i2c_mux_core* %muxc, i32 %chan) #2 !dbg !5249 {
entry:
  %retval = alloca i32, align 4
  %muxc.addr = alloca %struct.i2c_mux_core*, align 8
  %chan.addr = alloca i32, align 4
  %client = alloca %struct.i2c_client*, align 8
  %ret = alloca i32, align 4
  %cmd = alloca %struct.si2168_cmd, align 4
  store %struct.i2c_mux_core* %muxc, %struct.i2c_mux_core** %muxc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_core** %muxc.addr, metadata !5250, metadata !DIExpression()), !dbg !5251
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !5252, metadata !DIExpression()), !dbg !5253
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5254, metadata !DIExpression()), !dbg !5255
  %0 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !5256
  %call = call i8* @i2c_mux_priv(%struct.i2c_mux_core* %0) #9, !dbg !5257
  %1 = bitcast i8* %call to %struct.i2c_client*, !dbg !5257
  store %struct.i2c_client* %1, %struct.i2c_client** %client, align 8, !dbg !5255
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5258, metadata !DIExpression()), !dbg !5259
  call void @llvm.dbg.declare(metadata %struct.si2168_cmd* %cmd, metadata !5260, metadata !DIExpression()), !dbg !5261
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3, i32 0) #9, !dbg !5262
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5263
  %call1 = call i32 @si2168_cmd_execute(%struct.i2c_client* %2, %struct.si2168_cmd* %cmd) #9, !dbg !5264
  store i32 %call1, i32* %ret, align 4, !dbg !5265
  %3 = load i32, i32* %ret, align 4, !dbg !5266
  %tobool = icmp ne i32 %3, 0, !dbg !5266
  br i1 %tobool, label %if.then, label %if.end, !dbg !5268

if.then:                                          ; preds = %entry
  br label %err, !dbg !5269

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5270
  br label %return, !dbg !5270

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !5271), !dbg !5272
  %4 = load i32, i32* %ret, align 4, !dbg !5273
  store i32 %4, i32* %retval, align 4, !dbg !5274
  br label %return, !dbg !5274

return:                                           ; preds = %err, %if.end
  %5 = load i32, i32* %retval, align 4, !dbg !5275
  ret i32 %5, !dbg !5275
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si2168_deselect(%struct.i2c_mux_core* %muxc, i32 %chan) #2 !dbg !5276 {
entry:
  %retval = alloca i32, align 4
  %muxc.addr = alloca %struct.i2c_mux_core*, align 8
  %chan.addr = alloca i32, align 4
  %client = alloca %struct.i2c_client*, align 8
  %ret = alloca i32, align 4
  %cmd = alloca %struct.si2168_cmd, align 4
  store %struct.i2c_mux_core* %muxc, %struct.i2c_mux_core** %muxc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_core** %muxc.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !5279, metadata !DIExpression()), !dbg !5280
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5281, metadata !DIExpression()), !dbg !5282
  %0 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !5283
  %call = call i8* @i2c_mux_priv(%struct.i2c_mux_core* %0) #9, !dbg !5284
  %1 = bitcast i8* %call to %struct.i2c_client*, !dbg !5284
  store %struct.i2c_client* %1, %struct.i2c_client** %client, align 8, !dbg !5282
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5285, metadata !DIExpression()), !dbg !5286
  call void @llvm.dbg.declare(metadata %struct.si2168_cmd* %cmd, metadata !5287, metadata !DIExpression()), !dbg !5288
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 3, i32 0) #9, !dbg !5289
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5290
  %call1 = call i32 @si2168_cmd_execute(%struct.i2c_client* %2, %struct.si2168_cmd* %cmd) #9, !dbg !5291
  store i32 %call1, i32* %ret, align 4, !dbg !5292
  %3 = load i32, i32* %ret, align 4, !dbg !5293
  %tobool = icmp ne i32 %3, 0, !dbg !5293
  br i1 %tobool, label %if.then, label %if.end, !dbg !5295

if.then:                                          ; preds = %entry
  br label %err, !dbg !5296

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5297
  br label %return, !dbg !5297

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !5298), !dbg !5299
  %4 = load i32, i32* %ret, align 4, !dbg !5300
  store i32 %4, i32* %retval, align 4, !dbg !5301
  br label %return, !dbg !5301

return:                                           ; preds = %err, %if.end
  %5 = load i32, i32* %retval, align 4, !dbg !5302
  ret i32 %5, !dbg !5302
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_mux_add_adapter(%struct.i2c_mux_core*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #5

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5303 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5307, metadata !DIExpression()), !dbg !5312
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5314, metadata !DIExpression()), !dbg !5315
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5316, metadata !DIExpression()), !dbg !5317
  %0 = load i64, i64* %size.addr, align 8, !dbg !5318
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5320
  br i1 %1, label %if.then, label %if.end447, !dbg !5321

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5322
  %tobool = icmp ne i64 %2, 0, !dbg !5322
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5325

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5326
  br label %return, !dbg !5326

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5327
  %cmp = icmp ult i64 %3, 4096, !dbg !5329
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5330

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5331
  br label %return, !dbg !5331

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub = sub i64 %4, 1, !dbg !5332
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5332
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5332

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub4 = sub i64 %6, 1, !dbg !5332
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5332
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5332

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub6 = sub i64 %8, 1, !dbg !5332
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5332
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5332

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5332

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub9 = sub i64 %9, 1, !dbg !5332
  %and = and i64 %sub9, -9223372036854775808, !dbg !5332
  %tobool10 = icmp ne i64 %and, 0, !dbg !5332
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5332

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5332

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub13 = sub i64 %10, 1, !dbg !5332
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5332
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5332
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5332

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5332

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub18 = sub i64 %11, 1, !dbg !5332
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5332
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5332
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5332

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5332

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub23 = sub i64 %12, 1, !dbg !5332
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5332
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5332
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5332

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5332

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub28 = sub i64 %13, 1, !dbg !5332
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5332
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5332
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5332

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5332

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub33 = sub i64 %14, 1, !dbg !5332
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5332
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5332
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5332

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5332

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub38 = sub i64 %15, 1, !dbg !5332
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5332
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5332
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5332

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5332

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub43 = sub i64 %16, 1, !dbg !5332
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5332
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5332
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5332

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5332

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub48 = sub i64 %17, 1, !dbg !5332
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5332
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5332
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5332

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5332

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub53 = sub i64 %18, 1, !dbg !5332
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5332
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5332
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5332

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5332

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub58 = sub i64 %19, 1, !dbg !5332
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5332
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5332
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5332

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5332

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub63 = sub i64 %20, 1, !dbg !5332
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5332
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5332
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5332

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5332

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub68 = sub i64 %21, 1, !dbg !5332
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5332
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5332
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5332

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5332

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub73 = sub i64 %22, 1, !dbg !5332
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5332
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5332
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5332

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5332

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub78 = sub i64 %23, 1, !dbg !5332
  %and79 = and i64 %sub78, 562949953421312, !dbg !5332
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5332
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5332

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5332

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub83 = sub i64 %24, 1, !dbg !5332
  %and84 = and i64 %sub83, 281474976710656, !dbg !5332
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5332
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5332

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5332

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub88 = sub i64 %25, 1, !dbg !5332
  %and89 = and i64 %sub88, 140737488355328, !dbg !5332
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5332
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5332

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5332

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub93 = sub i64 %26, 1, !dbg !5332
  %and94 = and i64 %sub93, 70368744177664, !dbg !5332
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5332
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5332

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5332

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub98 = sub i64 %27, 1, !dbg !5332
  %and99 = and i64 %sub98, 35184372088832, !dbg !5332
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5332
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5332

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5332

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub103 = sub i64 %28, 1, !dbg !5332
  %and104 = and i64 %sub103, 17592186044416, !dbg !5332
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5332
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5332

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5332

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub108 = sub i64 %29, 1, !dbg !5332
  %and109 = and i64 %sub108, 8796093022208, !dbg !5332
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5332
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5332

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5332

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub113 = sub i64 %30, 1, !dbg !5332
  %and114 = and i64 %sub113, 4398046511104, !dbg !5332
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5332
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5332

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5332

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub118 = sub i64 %31, 1, !dbg !5332
  %and119 = and i64 %sub118, 2199023255552, !dbg !5332
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5332
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5332

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5332

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub123 = sub i64 %32, 1, !dbg !5332
  %and124 = and i64 %sub123, 1099511627776, !dbg !5332
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5332
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5332

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5332

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub128 = sub i64 %33, 1, !dbg !5332
  %and129 = and i64 %sub128, 549755813888, !dbg !5332
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5332
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5332

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5332

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub133 = sub i64 %34, 1, !dbg !5332
  %and134 = and i64 %sub133, 274877906944, !dbg !5332
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5332
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5332

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5332

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub138 = sub i64 %35, 1, !dbg !5332
  %and139 = and i64 %sub138, 137438953472, !dbg !5332
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5332
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5332

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5332

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub143 = sub i64 %36, 1, !dbg !5332
  %and144 = and i64 %sub143, 68719476736, !dbg !5332
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5332
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5332

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5332

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub148 = sub i64 %37, 1, !dbg !5332
  %and149 = and i64 %sub148, 34359738368, !dbg !5332
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5332
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5332

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5332

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub153 = sub i64 %38, 1, !dbg !5332
  %and154 = and i64 %sub153, 17179869184, !dbg !5332
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5332
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5332

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5332

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub158 = sub i64 %39, 1, !dbg !5332
  %and159 = and i64 %sub158, 8589934592, !dbg !5332
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5332
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5332

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5332

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub163 = sub i64 %40, 1, !dbg !5332
  %and164 = and i64 %sub163, 4294967296, !dbg !5332
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5332
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5332

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5332

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub168 = sub i64 %41, 1, !dbg !5332
  %and169 = and i64 %sub168, 2147483648, !dbg !5332
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5332
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5332

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5332

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub173 = sub i64 %42, 1, !dbg !5332
  %and174 = and i64 %sub173, 1073741824, !dbg !5332
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5332
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5332

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5332

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub178 = sub i64 %43, 1, !dbg !5332
  %and179 = and i64 %sub178, 536870912, !dbg !5332
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5332
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5332

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5332

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub183 = sub i64 %44, 1, !dbg !5332
  %and184 = and i64 %sub183, 268435456, !dbg !5332
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5332
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5332

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5332

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub188 = sub i64 %45, 1, !dbg !5332
  %and189 = and i64 %sub188, 134217728, !dbg !5332
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5332
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5332

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5332

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub193 = sub i64 %46, 1, !dbg !5332
  %and194 = and i64 %sub193, 67108864, !dbg !5332
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5332
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5332

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5332

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub198 = sub i64 %47, 1, !dbg !5332
  %and199 = and i64 %sub198, 33554432, !dbg !5332
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5332
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5332

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5332

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub203 = sub i64 %48, 1, !dbg !5332
  %and204 = and i64 %sub203, 16777216, !dbg !5332
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5332
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5332

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5332

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub208 = sub i64 %49, 1, !dbg !5332
  %and209 = and i64 %sub208, 8388608, !dbg !5332
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5332
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5332

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5332

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub213 = sub i64 %50, 1, !dbg !5332
  %and214 = and i64 %sub213, 4194304, !dbg !5332
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5332
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5332

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5332

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub218 = sub i64 %51, 1, !dbg !5332
  %and219 = and i64 %sub218, 2097152, !dbg !5332
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5332
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5332

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5332

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub223 = sub i64 %52, 1, !dbg !5332
  %and224 = and i64 %sub223, 1048576, !dbg !5332
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5332
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5332

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5332

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub228 = sub i64 %53, 1, !dbg !5332
  %and229 = and i64 %sub228, 524288, !dbg !5332
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5332
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5332

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5332

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub233 = sub i64 %54, 1, !dbg !5332
  %and234 = and i64 %sub233, 262144, !dbg !5332
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5332
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5332

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5332

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub238 = sub i64 %55, 1, !dbg !5332
  %and239 = and i64 %sub238, 131072, !dbg !5332
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5332
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5332

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5332

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub243 = sub i64 %56, 1, !dbg !5332
  %and244 = and i64 %sub243, 65536, !dbg !5332
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5332
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5332

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5332

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub248 = sub i64 %57, 1, !dbg !5332
  %and249 = and i64 %sub248, 32768, !dbg !5332
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5332
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5332

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5332

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub253 = sub i64 %58, 1, !dbg !5332
  %and254 = and i64 %sub253, 16384, !dbg !5332
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5332
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5332

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5332

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub258 = sub i64 %59, 1, !dbg !5332
  %and259 = and i64 %sub258, 8192, !dbg !5332
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5332
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5332

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5332

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub263 = sub i64 %60, 1, !dbg !5332
  %and264 = and i64 %sub263, 4096, !dbg !5332
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5332
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5332

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5332

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub268 = sub i64 %61, 1, !dbg !5332
  %and269 = and i64 %sub268, 2048, !dbg !5332
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5332
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5332

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5332

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub273 = sub i64 %62, 1, !dbg !5332
  %and274 = and i64 %sub273, 1024, !dbg !5332
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5332
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5332

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5332

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub278 = sub i64 %63, 1, !dbg !5332
  %and279 = and i64 %sub278, 512, !dbg !5332
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5332
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5332

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5332

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub283 = sub i64 %64, 1, !dbg !5332
  %and284 = and i64 %sub283, 256, !dbg !5332
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5332
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5332

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5332

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub288 = sub i64 %65, 1, !dbg !5332
  %and289 = and i64 %sub288, 128, !dbg !5332
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5332
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5332

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5332

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub293 = sub i64 %66, 1, !dbg !5332
  %and294 = and i64 %sub293, 64, !dbg !5332
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5332
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5332

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5332

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub298 = sub i64 %67, 1, !dbg !5332
  %and299 = and i64 %sub298, 32, !dbg !5332
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5332
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5332

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5332

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub303 = sub i64 %68, 1, !dbg !5332
  %and304 = and i64 %sub303, 16, !dbg !5332
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5332
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5332

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5332

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub308 = sub i64 %69, 1, !dbg !5332
  %and309 = and i64 %sub308, 8, !dbg !5332
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5332
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5332

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5332

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub313 = sub i64 %70, 1, !dbg !5332
  %and314 = and i64 %sub313, 4, !dbg !5332
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5332
  %71 = zext i1 %tobool315 to i64, !dbg !5332
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5332
  br label %cond.end, !dbg !5332

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5332
  br label %cond.end317, !dbg !5332

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5332
  br label %cond.end319, !dbg !5332

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5332
  br label %cond.end321, !dbg !5332

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5332
  br label %cond.end323, !dbg !5332

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5332
  br label %cond.end325, !dbg !5332

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5332
  br label %cond.end327, !dbg !5332

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5332
  br label %cond.end329, !dbg !5332

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5332
  br label %cond.end331, !dbg !5332

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5332
  br label %cond.end333, !dbg !5332

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5332
  br label %cond.end335, !dbg !5332

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5332
  br label %cond.end337, !dbg !5332

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5332
  br label %cond.end339, !dbg !5332

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5332
  br label %cond.end341, !dbg !5332

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5332
  br label %cond.end343, !dbg !5332

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5332
  br label %cond.end345, !dbg !5332

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5332
  br label %cond.end347, !dbg !5332

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5332
  br label %cond.end349, !dbg !5332

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5332
  br label %cond.end351, !dbg !5332

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5332
  br label %cond.end353, !dbg !5332

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5332
  br label %cond.end355, !dbg !5332

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5332
  br label %cond.end357, !dbg !5332

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5332
  br label %cond.end359, !dbg !5332

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5332
  br label %cond.end361, !dbg !5332

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5332
  br label %cond.end363, !dbg !5332

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5332
  br label %cond.end365, !dbg !5332

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5332
  br label %cond.end367, !dbg !5332

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5332
  br label %cond.end369, !dbg !5332

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5332
  br label %cond.end371, !dbg !5332

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5332
  br label %cond.end373, !dbg !5332

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5332
  br label %cond.end375, !dbg !5332

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5332
  br label %cond.end377, !dbg !5332

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5332
  br label %cond.end379, !dbg !5332

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5332
  br label %cond.end381, !dbg !5332

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5332
  br label %cond.end383, !dbg !5332

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5332
  br label %cond.end385, !dbg !5332

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5332
  br label %cond.end387, !dbg !5332

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5332
  br label %cond.end389, !dbg !5332

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5332
  br label %cond.end391, !dbg !5332

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5332
  br label %cond.end393, !dbg !5332

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5332
  br label %cond.end395, !dbg !5332

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5332
  br label %cond.end397, !dbg !5332

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5332
  br label %cond.end399, !dbg !5332

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5332
  br label %cond.end401, !dbg !5332

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5332
  br label %cond.end403, !dbg !5332

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5332
  br label %cond.end405, !dbg !5332

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5332
  br label %cond.end407, !dbg !5332

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5332
  br label %cond.end409, !dbg !5332

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5332
  br label %cond.end411, !dbg !5332

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5332
  br label %cond.end413, !dbg !5332

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5332
  br label %cond.end415, !dbg !5332

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5332
  br label %cond.end417, !dbg !5332

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5332
  br label %cond.end419, !dbg !5332

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5332
  br label %cond.end421, !dbg !5332

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5332
  br label %cond.end423, !dbg !5332

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5332
  br label %cond.end425, !dbg !5332

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5332
  br label %cond.end427, !dbg !5332

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5332
  br label %cond.end429, !dbg !5332

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5332
  br label %cond.end431, !dbg !5332

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5332
  br label %cond.end433, !dbg !5332

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5332
  br label %cond.end435, !dbg !5332

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5332
  br label %cond.end437, !dbg !5332

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5332
  br label %cond.end440, !dbg !5332

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5332

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5332
  br label %cond.end444, !dbg !5332

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5332
  %sub443 = sub i64 %72, 1, !dbg !5332
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5332
  br label %cond.end444, !dbg !5332

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5332
  %sub446 = sub i32 %cond445, 12, !dbg !5333
  %add = add i32 %sub446, 1, !dbg !5334
  store i32 %add, i32* %retval, align 4, !dbg !5335
  br label %return, !dbg !5335

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5336
  %dec = add i64 %73, -1, !dbg !5336
  store i64 %dec, i64* %size.addr, align 8, !dbg !5336
  %74 = load i64, i64* %size.addr, align 8, !dbg !5337
  %shr = lshr i64 %74, 12, !dbg !5337
  store i64 %shr, i64* %size.addr, align 8, !dbg !5337
  %75 = load i64, i64* %size.addr, align 8, !dbg !5338
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5315
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5339
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5340
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5339, !srcloc !5341
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5339
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5342
  %add.i = add i32 %79, 1, !dbg !5343
  store i32 %add.i, i32* %retval, align 4, !dbg !5344
  br label %return, !dbg !5344

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5345
  ret i32 %80, !dbg !5345
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5346 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5307, metadata !DIExpression()), !dbg !5350
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5314, metadata !DIExpression()), !dbg !5352
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  %0 = load i64, i64* %n.addr, align 8, !dbg !5355
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5352
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5356
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5357
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5356, !srcloc !5341
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5356
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5358
  %add.i = add i32 %4, 1, !dbg !5359
  %sub = sub i32 %add.i, 1, !dbg !5360
  ret i32 %sub, !dbg !5361
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5362 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5368, metadata !DIExpression()), !dbg !5369
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5370, metadata !DIExpression()), !dbg !5371
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5374
  ret i8* %0, !dbg !5375
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5376 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5381, metadata !DIExpression()), !dbg !5382
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5383
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5384
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5385
  store i8* %0, i8** %driver_data, align 8, !dbg !5386
  ret void, !dbg !5387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_clientdata(%struct.i2c_client* %client) #2 !dbg !5388 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5395
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !5396
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !5397
  ret i8* %call, !dbg !5398
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_master_send(%struct.i2c_client* %client, i8* %buf, i32 %count) #2 !dbg !5399 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5402, metadata !DIExpression()), !dbg !5403
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5404, metadata !DIExpression()), !dbg !5405
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5408
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5409
  %2 = load i32, i32* %count.addr, align 4, !dbg !5410
  %call = call i32 @i2c_transfer_buffer_flags(%struct.i2c_client* %0, i8* %1, i32 %2, i16 zeroext 0) #9, !dbg !5411
  ret i32 %call, !dbg !5412
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_master_recv(%struct.i2c_client* %client, i8* %buf, i32 %count) #2 !dbg !5413 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5418, metadata !DIExpression()), !dbg !5419
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5420, metadata !DIExpression()), !dbg !5421
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5422
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5423
  %2 = load i32, i32* %count.addr, align 4, !dbg !5424
  %call = call i32 @i2c_transfer_buffer_flags(%struct.i2c_client* %0, i8* %1, i32 %2, i16 zeroext 1) #9, !dbg !5425
  ret i32 %call, !dbg !5426
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5427 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5430, metadata !DIExpression()), !dbg !5431
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5432
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5433
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5433
  ret i8* %1, !dbg !5434
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer_buffer_flags(%struct.i2c_client*, i8*, i32, i16 zeroext) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #2 !dbg !5435 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5436, metadata !DIExpression()), !dbg !5437
  %0 = load i32, i32* %m.addr, align 4, !dbg !5438
  %conv = zext i32 %0 to i64, !dbg !5438
  %add = add i64 %conv, 4, !dbg !5439
  %sub = sub i64 %add, 1, !dbg !5440
  %div = sdiv i64 %sub, 4, !dbg !5441
  ret i64 %div, !dbg !5442
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_mux_priv(%struct.i2c_mux_core* %muxc) #2 !dbg !5443 {
entry:
  %muxc.addr = alloca %struct.i2c_mux_core*, align 8
  store %struct.i2c_mux_core* %muxc, %struct.i2c_mux_core** %muxc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_core** %muxc.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  %0 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !5448
  %priv = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %0, i32 0, i32 3, !dbg !5449
  %1 = load i8*, i8** %priv, align 8, !dbg !5449
  ret i8* %1, !dbg !5450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si2168_init(%struct.dvb_frontend* %fe) #2 !dbg !5451 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.si2168_dev*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %remaining = alloca i32, align 4
  %fw = alloca %struct.firmware*, align 8
  %cmd = alloca %struct.si2168_cmd, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5454, metadata !DIExpression()), !dbg !5455
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5456
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5457
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5457
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !5456
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !5455
  call void @llvm.dbg.declare(metadata %struct.si2168_dev** %dev, metadata !5458, metadata !DIExpression()), !dbg !5459
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5460
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %3) #9, !dbg !5461
  %4 = bitcast i8* %call to %struct.si2168_dev*, !dbg !5461
  store %struct.si2168_dev* %4, %struct.si2168_dev** %dev, align 8, !dbg !5459
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5462, metadata !DIExpression()), !dbg !5463
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5464
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !5465
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5463
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5466, metadata !DIExpression()), !dbg !5467
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5468, metadata !DIExpression()), !dbg !5469
  call void @llvm.dbg.declare(metadata i32* %remaining, metadata !5470, metadata !DIExpression()), !dbg !5471
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !5472, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.declare(metadata %struct.si2168_cmd* %cmd, metadata !5482, metadata !DIExpression()), !dbg !5483
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 13, i32 0) #9, !dbg !5484
  %6 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5485
  %call1 = call i32 @si2168_cmd_execute(%struct.i2c_client* %6, %struct.si2168_cmd* %cmd) #9, !dbg !5486
  store i32 %call1, i32* %ret, align 4, !dbg !5487
  %7 = load i32, i32* %ret, align 4, !dbg !5488
  %tobool = icmp ne i32 %7, 0, !dbg !5488
  br i1 %tobool, label %if.then, label %if.end, !dbg !5490

if.then:                                          ; preds = %entry
  br label %err, !dbg !5491

if.end:                                           ; preds = %entry
  %8 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5492
  %warm = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %8, i32 0, i32 9, !dbg !5494
  %bf.load = load i8, i8* %warm, align 1, !dbg !5494
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5494
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5494
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5494
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !5492
  br i1 %tobool2, label %if.then3, label %if.end12, !dbg !5495

if.then3:                                         ; preds = %if.end
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 8, i32 1) #9, !dbg !5496
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5498
  %call4 = call i32 @si2168_cmd_execute(%struct.i2c_client* %9, %struct.si2168_cmd* %cmd) #9, !dbg !5499
  store i32 %call4, i32* %ret, align 4, !dbg !5500
  %10 = load i32, i32* %ret, align 4, !dbg !5501
  %tobool5 = icmp ne i32 %10, 0, !dbg !5501
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5503

if.then6:                                         ; preds = %if.then3
  br label %err, !dbg !5504

if.end7:                                          ; preds = %if.then3
  call void @__const_udelay(i64 429500) #9, !dbg !5505
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 1, i32 1) #9, !dbg !5510
  %11 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5511
  %call8 = call i32 @si2168_cmd_execute(%struct.i2c_client* %11, %struct.si2168_cmd* %cmd) #9, !dbg !5512
  store i32 %call8, i32* %ret, align 4, !dbg !5513
  %12 = load i32, i32* %ret, align 4, !dbg !5514
  %tobool9 = icmp ne i32 %12, 0, !dbg !5514
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5516

if.then10:                                        ; preds = %if.end7
  br label %err, !dbg !5517

if.end11:                                         ; preds = %if.end7
  br label %warm139, !dbg !5518

if.end12:                                         ; preds = %if.end
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8, i32 1) #9, !dbg !5519
  %13 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5520
  %call13 = call i32 @si2168_cmd_execute(%struct.i2c_client* %13, %struct.si2168_cmd* %cmd) #9, !dbg !5521
  store i32 %call13, i32* %ret, align 4, !dbg !5522
  %14 = load i32, i32* %ret, align 4, !dbg !5523
  %tobool14 = icmp ne i32 %14, 0, !dbg !5523
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5525

if.then15:                                        ; preds = %if.end12
  br label %err, !dbg !5526

if.end16:                                         ; preds = %if.end12
  %15 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5527
  %firmware_name = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %15, i32 0, i32 7, !dbg !5528
  %16 = load i8*, i8** %firmware_name, align 8, !dbg !5528
  %17 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5529
  %dev17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 4, !dbg !5530
  %call18 = call i32 @request_firmware(%struct.firmware** %fw, i8* %16, %struct.device* %dev17) #9, !dbg !5531
  store i32 %call18, i32* %ret, align 4, !dbg !5532
  %18 = load i32, i32* %ret, align 4, !dbg !5533
  %tobool19 = icmp ne i32 %18, 0, !dbg !5533
  br i1 %tobool19, label %if.then20, label %if.end33, !dbg !5535

if.then20:                                        ; preds = %if.end16
  %19 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5536
  %chip_id = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %19, i32 0, i32 5, !dbg !5539
  %20 = load i32, i32* %chip_id, align 8, !dbg !5539
  %cmp = icmp eq i32 %20, 1111766064, !dbg !5540
  br i1 %cmp, label %if.then21, label %if.end26, !dbg !5541

if.then21:                                        ; preds = %if.then20
  %21 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5542
  %firmware_name22 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %21, i32 0, i32 7, !dbg !5544
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8** %firmware_name22, align 8, !dbg !5545
  %22 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5546
  %firmware_name23 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %22, i32 0, i32 7, !dbg !5547
  %23 = load i8*, i8** %firmware_name23, align 8, !dbg !5547
  %24 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5548
  %dev24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 4, !dbg !5549
  %call25 = call i32 @request_firmware(%struct.firmware** %fw, i8* %23, %struct.device* %dev24) #9, !dbg !5550
  store i32 %call25, i32* %ret, align 4, !dbg !5551
  br label %if.end26, !dbg !5552

if.end26:                                         ; preds = %if.then21, %if.then20
  %25 = load i32, i32* %ret, align 4, !dbg !5553
  %cmp27 = icmp eq i32 %25, 0, !dbg !5555
  br i1 %cmp27, label %if.then28, label %if.else, !dbg !5556

if.then28:                                        ; preds = %if.end26
  %26 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5557
  %dev29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 4, !dbg !5557
  call void (%struct.device*, i8*, ...) @_dev_notice(%struct.device* %dev29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !5557
  br label %if.end32, !dbg !5559

if.else:                                          ; preds = %if.end26
  %27 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5560
  %dev30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 4, !dbg !5560
  %28 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5560
  %firmware_name31 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %28, i32 0, i32 7, !dbg !5560
  %29 = load i8*, i8** %firmware_name31, align 8, !dbg !5560
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i8* %29) #10, !dbg !5560
  br label %err_release_firmware, !dbg !5562

if.end32:                                         ; preds = %if.then28
  br label %if.end33, !dbg !5563

if.end33:                                         ; preds = %if.end32, %if.end16
  %30 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5564
  %dev34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 4, !dbg !5564
  %31 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5564
  %firmware_name35 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %31, i32 0, i32 7, !dbg !5564
  %32 = load i8*, i8** %firmware_name35, align 8, !dbg !5564
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i8* %32) #10, !dbg !5564
  %33 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5565
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0, !dbg !5567
  %34 = load i64, i64* %size, align 8, !dbg !5567
  %rem = urem i64 %34, 17, !dbg !5568
  %cmp36 = icmp eq i64 %rem, 0, !dbg !5569
  br i1 %cmp36, label %land.lhs.true, label %if.else63, !dbg !5570

land.lhs.true:                                    ; preds = %if.end33
  %35 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5571
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %35, i32 0, i32 1, !dbg !5572
  %36 = load i8*, i8** %data, align 8, !dbg !5572
  %arrayidx = getelementptr i8, i8* %36, i64 0, !dbg !5571
  %37 = load i8, i8* %arrayidx, align 1, !dbg !5571
  %conv = zext i8 %37 to i32, !dbg !5571
  %cmp37 = icmp sgt i32 %conv, 5, !dbg !5573
  br i1 %cmp37, label %if.then39, label %if.else63, !dbg !5574

if.then39:                                        ; preds = %land.lhs.true
  %38 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5575
  %size40 = getelementptr inbounds %struct.firmware, %struct.firmware* %38, i32 0, i32 0, !dbg !5578
  %39 = load i64, i64* %size40, align 8, !dbg !5578
  %conv41 = trunc i64 %39 to i32, !dbg !5575
  store i32 %conv41, i32* %remaining, align 4, !dbg !5579
  br label %for.cond, !dbg !5580

for.cond:                                         ; preds = %for.inc, %if.then39
  %40 = load i32, i32* %remaining, align 4, !dbg !5581
  %cmp42 = icmp sgt i32 %40, 0, !dbg !5583
  br i1 %cmp42, label %for.body, label %for.end, !dbg !5584

for.body:                                         ; preds = %for.cond
  %41 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5585
  %data44 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1, !dbg !5587
  %42 = load i8*, i8** %data44, align 8, !dbg !5587
  %43 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5588
  %size45 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 0, !dbg !5589
  %44 = load i64, i64* %size45, align 8, !dbg !5589
  %45 = load i32, i32* %remaining, align 4, !dbg !5590
  %conv46 = sext i32 %45 to i64, !dbg !5590
  %sub = sub i64 %44, %conv46, !dbg !5591
  %arrayidx47 = getelementptr i8, i8* %42, i64 %sub, !dbg !5585
  %46 = load i8, i8* %arrayidx47, align 1, !dbg !5585
  %conv48 = zext i8 %46 to i32, !dbg !5585
  store i32 %conv48, i32* %len, align 4, !dbg !5592
  %47 = load i32, i32* %len, align 4, !dbg !5593
  %cmp49 = icmp sgt i32 %47, 30, !dbg !5595
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !5596

if.then51:                                        ; preds = %for.body
  store i32 -22, i32* %ret, align 4, !dbg !5597
  br label %for.end, !dbg !5599

if.end52:                                         ; preds = %for.body
  %48 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5600
  %data53 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 1, !dbg !5601
  %49 = load i8*, i8** %data53, align 8, !dbg !5601
  %50 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5602
  %size54 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 0, !dbg !5603
  %51 = load i64, i64* %size54, align 8, !dbg !5603
  %52 = load i32, i32* %remaining, align 4, !dbg !5604
  %conv55 = sext i32 %52 to i64, !dbg !5604
  %sub56 = sub i64 %51, %conv55, !dbg !5605
  %add = add i64 %sub56, 1, !dbg !5606
  %arrayidx57 = getelementptr i8, i8* %49, i64 %add, !dbg !5600
  %53 = load i32, i32* %len, align 4, !dbg !5607
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* %arrayidx57, i32 %53, i32 1) #9, !dbg !5608
  %54 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5609
  %call58 = call i32 @si2168_cmd_execute(%struct.i2c_client* %54, %struct.si2168_cmd* %cmd) #9, !dbg !5610
  store i32 %call58, i32* %ret, align 4, !dbg !5611
  %55 = load i32, i32* %ret, align 4, !dbg !5612
  %tobool59 = icmp ne i32 %55, 0, !dbg !5612
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !5614

if.then60:                                        ; preds = %if.end52
  br label %for.end, !dbg !5615

if.end61:                                         ; preds = %if.end52
  br label %for.inc, !dbg !5616

for.inc:                                          ; preds = %if.end61
  %56 = load i32, i32* %remaining, align 4, !dbg !5617
  %sub62 = sub i32 %56, 17, !dbg !5617
  store i32 %sub62, i32* %remaining, align 4, !dbg !5617
  br label %for.cond, !dbg !5618, !llvm.loop !5619

for.end:                                          ; preds = %if.then60, %if.then51, %for.cond
  br label %if.end89, !dbg !5621

if.else63:                                        ; preds = %land.lhs.true, %if.end33
  %57 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5622
  %size64 = getelementptr inbounds %struct.firmware, %struct.firmware* %57, i32 0, i32 0, !dbg !5624
  %58 = load i64, i64* %size64, align 8, !dbg !5624
  %rem65 = urem i64 %58, 8, !dbg !5625
  %cmp66 = icmp eq i64 %rem65, 0, !dbg !5626
  br i1 %cmp66, label %if.then68, label %if.else87, !dbg !5627

if.then68:                                        ; preds = %if.else63
  %59 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5628
  %size69 = getelementptr inbounds %struct.firmware, %struct.firmware* %59, i32 0, i32 0, !dbg !5631
  %60 = load i64, i64* %size69, align 8, !dbg !5631
  %conv70 = trunc i64 %60 to i32, !dbg !5628
  store i32 %conv70, i32* %remaining, align 4, !dbg !5632
  br label %for.cond71, !dbg !5633

for.cond71:                                       ; preds = %for.inc84, %if.then68
  %61 = load i32, i32* %remaining, align 4, !dbg !5634
  %cmp72 = icmp sgt i32 %61, 0, !dbg !5636
  br i1 %cmp72, label %for.body74, label %for.end86, !dbg !5637

for.body74:                                       ; preds = %for.cond71
  %62 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5638
  %data75 = getelementptr inbounds %struct.firmware, %struct.firmware* %62, i32 0, i32 1, !dbg !5640
  %63 = load i8*, i8** %data75, align 8, !dbg !5640
  %64 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5641
  %size76 = getelementptr inbounds %struct.firmware, %struct.firmware* %64, i32 0, i32 0, !dbg !5642
  %65 = load i64, i64* %size76, align 8, !dbg !5642
  %66 = load i32, i32* %remaining, align 4, !dbg !5643
  %conv77 = sext i32 %66 to i64, !dbg !5643
  %sub78 = sub i64 %65, %conv77, !dbg !5644
  %arrayidx79 = getelementptr i8, i8* %63, i64 %sub78, !dbg !5638
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* %arrayidx79, i32 8, i32 1) #9, !dbg !5645
  %67 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5646
  %call80 = call i32 @si2168_cmd_execute(%struct.i2c_client* %67, %struct.si2168_cmd* %cmd) #9, !dbg !5647
  store i32 %call80, i32* %ret, align 4, !dbg !5648
  %68 = load i32, i32* %ret, align 4, !dbg !5649
  %tobool81 = icmp ne i32 %68, 0, !dbg !5649
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !5651

if.then82:                                        ; preds = %for.body74
  br label %for.end86, !dbg !5652

if.end83:                                         ; preds = %for.body74
  br label %for.inc84, !dbg !5653

for.inc84:                                        ; preds = %if.end83
  %69 = load i32, i32* %remaining, align 4, !dbg !5654
  %sub85 = sub i32 %69, 8, !dbg !5654
  store i32 %sub85, i32* %remaining, align 4, !dbg !5654
  br label %for.cond71, !dbg !5655, !llvm.loop !5656

for.end86:                                        ; preds = %if.then82, %for.cond71
  br label %if.end88, !dbg !5658

if.else87:                                        ; preds = %if.else63
  store i32 -22, i32* %ret, align 4, !dbg !5659
  br label %if.end88

if.end88:                                         ; preds = %if.else87, %for.end86
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %for.end
  %70 = load i32, i32* %ret, align 4, !dbg !5661
  %tobool90 = icmp ne i32 %70, 0, !dbg !5661
  br i1 %tobool90, label %if.then91, label %if.end93, !dbg !5663

if.then91:                                        ; preds = %if.end89
  %71 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5664
  %dev92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 4, !dbg !5664
  %72 = load i32, i32* %ret, align 4, !dbg !5664
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %72) #10, !dbg !5664
  br label %err_release_firmware, !dbg !5666

if.end93:                                         ; preds = %if.end89
  %73 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5667
  call void @release_firmware(%struct.firmware* %73) #9, !dbg !5668
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 2, i32 1) #9, !dbg !5669
  %74 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5670
  %call94 = call i32 @si2168_cmd_execute(%struct.i2c_client* %74, %struct.si2168_cmd* %cmd) #9, !dbg !5671
  store i32 %call94, i32* %ret, align 4, !dbg !5672
  %75 = load i32, i32* %ret, align 4, !dbg !5673
  %tobool95 = icmp ne i32 %75, 0, !dbg !5673
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !5675

if.then96:                                        ; preds = %if.end93
  br label %err, !dbg !5676

if.end97:                                         ; preds = %if.end93
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32 1, i32 10) #9, !dbg !5677
  %76 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5678
  %call98 = call i32 @si2168_cmd_execute(%struct.i2c_client* %76, %struct.si2168_cmd* %cmd) #9, !dbg !5679
  store i32 %call98, i32* %ret, align 4, !dbg !5680
  %77 = load i32, i32* %ret, align 4, !dbg !5681
  %tobool99 = icmp ne i32 %77, 0, !dbg !5681
  br i1 %tobool99, label %if.then100, label %if.end101, !dbg !5683

if.then100:                                       ; preds = %if.end97
  br label %err, !dbg !5684

if.end101:                                        ; preds = %if.end97
  %args = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !5685
  %arrayidx102 = getelementptr [30 x i8], [30 x i8]* %args, i64 0, i64 9, !dbg !5686
  %78 = load i8, i8* %arrayidx102, align 1, !dbg !5686
  %conv103 = zext i8 %78 to i32, !dbg !5686
  %add104 = add i32 %conv103, 64, !dbg !5687
  %shl = shl i32 %add104, 24, !dbg !5688
  %args105 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !5689
  %arrayidx106 = getelementptr [30 x i8], [30 x i8]* %args105, i64 0, i64 6, !dbg !5690
  %79 = load i8, i8* %arrayidx106, align 2, !dbg !5690
  %conv107 = zext i8 %79 to i32, !dbg !5690
  %sub108 = sub i32 %conv107, 48, !dbg !5691
  %shl109 = shl i32 %sub108, 16, !dbg !5692
  %or = or i32 %shl, %shl109, !dbg !5693
  %args110 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !5694
  %arrayidx111 = getelementptr [30 x i8], [30 x i8]* %args110, i64 0, i64 7, !dbg !5695
  %80 = load i8, i8* %arrayidx111, align 1, !dbg !5695
  %conv112 = zext i8 %80 to i32, !dbg !5695
  %sub113 = sub i32 %conv112, 48, !dbg !5696
  %shl114 = shl i32 %sub113, 8, !dbg !5697
  %or115 = or i32 %or, %shl114, !dbg !5698
  %args116 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !5699
  %arrayidx117 = getelementptr [30 x i8], [30 x i8]* %args116, i64 0, i64 8, !dbg !5700
  %81 = load i8, i8* %arrayidx117, align 4, !dbg !5700
  %conv118 = zext i8 %81 to i32, !dbg !5701
  %shl119 = shl i32 %conv118, 0, !dbg !5702
  %or120 = or i32 %or115, %shl119, !dbg !5703
  %82 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5704
  %version = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %82, i32 0, i32 6, !dbg !5705
  store i32 %or120, i32* %version, align 4, !dbg !5706
  %83 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5707
  %dev121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 4, !dbg !5707
  %84 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5707
  %version122 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %84, i32 0, i32 6, !dbg !5707
  %85 = load i32, i32* %version122, align 4, !dbg !5707
  %shr = lshr i32 %85, 24, !dbg !5707
  %and = and i32 %shr, 255, !dbg !5707
  %86 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5707
  %version123 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %86, i32 0, i32 6, !dbg !5707
  %87 = load i32, i32* %version123, align 4, !dbg !5707
  %shr124 = lshr i32 %87, 16, !dbg !5707
  %and125 = and i32 %shr124, 255, !dbg !5707
  %88 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5707
  %version126 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %88, i32 0, i32 6, !dbg !5707
  %89 = load i32, i32* %version126, align 4, !dbg !5707
  %shr127 = lshr i32 %89, 8, !dbg !5707
  %and128 = and i32 %shr127, 255, !dbg !5707
  %90 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5707
  %version129 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %90, i32 0, i32 6, !dbg !5707
  %91 = load i32, i32* %version129, align 4, !dbg !5707
  %shr130 = lshr i32 %91, 0, !dbg !5707
  %and131 = and i32 %shr130, 255, !dbg !5707
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %and, i32 %and125, i32 %and128, i32 %and131) #10, !dbg !5707
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5708
  %call132 = call i32 @si2168_ts_bus_ctrl(%struct.dvb_frontend* %92, i32 1) #9, !dbg !5709
  store i32 %call132, i32* %ret, align 4, !dbg !5710
  %93 = load i32, i32* %ret, align 4, !dbg !5711
  %tobool133 = icmp ne i32 %93, 0, !dbg !5711
  br i1 %tobool133, label %if.then134, label %if.end135, !dbg !5713

if.then134:                                       ; preds = %if.end101
  br label %err, !dbg !5714

if.end135:                                        ; preds = %if.end101
  %94 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5715
  %warm136 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %94, i32 0, i32 9, !dbg !5716
  %bf.load137 = load i8, i8* %warm136, align 1, !dbg !5717
  %bf.clear138 = and i8 %bf.load137, -3, !dbg !5717
  %bf.set = or i8 %bf.clear138, 2, !dbg !5717
  store i8 %bf.set, i8* %warm136, align 1, !dbg !5717
  br label %warm139, !dbg !5715

warm139:                                          ; preds = %if.end135, %if.end11
  call void @llvm.dbg.label(metadata !5718), !dbg !5719
  %95 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5720
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %95, i32 0, i32 43, !dbg !5721
  %len140 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr, i32 0, i32 0, !dbg !5722
  store i8 1, i8* %len140, align 1, !dbg !5723
  %96 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5724
  %cnr141 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %96, i32 0, i32 43, !dbg !5725
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr141, i32 0, i32 1, !dbg !5726
  %arrayidx142 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !5724
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx142, i32 0, i32 0, !dbg !5727
  store i8 0, i8* %scale, align 1, !dbg !5728
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5729
  %post_bit_error = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 46, !dbg !5730
  %len143 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_error, i32 0, i32 0, !dbg !5731
  store i8 1, i8* %len143, align 4, !dbg !5732
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5733
  %post_bit_error144 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %98, i32 0, i32 46, !dbg !5734
  %stat145 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_error144, i32 0, i32 1, !dbg !5735
  %arrayidx146 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat145, i64 0, i64 0, !dbg !5733
  %scale147 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx146, i32 0, i32 0, !dbg !5736
  store i8 0, i8* %scale147, align 1, !dbg !5737
  %99 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5738
  %post_bit_count = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %99, i32 0, i32 47, !dbg !5739
  %len148 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_count, i32 0, i32 0, !dbg !5740
  store i8 1, i8* %len148, align 1, !dbg !5741
  %100 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5742
  %post_bit_count149 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %100, i32 0, i32 47, !dbg !5743
  %stat150 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_count149, i32 0, i32 1, !dbg !5744
  %arrayidx151 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat150, i64 0, i64 0, !dbg !5742
  %scale152 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx151, i32 0, i32 0, !dbg !5745
  store i8 0, i8* %scale152, align 1, !dbg !5746
  %101 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5747
  %block_error = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %101, i32 0, i32 48, !dbg !5748
  %len153 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error, i32 0, i32 0, !dbg !5749
  store i8 1, i8* %len153, align 2, !dbg !5750
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5751
  %block_error154 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 48, !dbg !5752
  %stat155 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error154, i32 0, i32 1, !dbg !5753
  %arrayidx156 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat155, i64 0, i64 0, !dbg !5751
  %scale157 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx156, i32 0, i32 0, !dbg !5754
  store i8 0, i8* %scale157, align 1, !dbg !5755
  %103 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5756
  %active = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %103, i32 0, i32 9, !dbg !5757
  %bf.load158 = load i8, i8* %active, align 1, !dbg !5758
  %bf.clear159 = and i8 %bf.load158, -2, !dbg !5758
  %bf.set160 = or i8 %bf.clear159, 1, !dbg !5758
  store i8 %bf.set160, i8* %active, align 1, !dbg !5758
  store i32 0, i32* %retval, align 4, !dbg !5759
  br label %return, !dbg !5759

err_release_firmware:                             ; preds = %if.then91, %if.else
  call void @llvm.dbg.label(metadata !5760), !dbg !5761
  %104 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5762
  call void @release_firmware(%struct.firmware* %104) #9, !dbg !5763
  br label %err, !dbg !5763

err:                                              ; preds = %err_release_firmware, %if.then134, %if.then100, %if.then96, %if.then15, %if.then10, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !5764), !dbg !5765
  %105 = load i32, i32* %ret, align 4, !dbg !5766
  store i32 %105, i32* %retval, align 4, !dbg !5767
  br label %return, !dbg !5767

return:                                           ; preds = %err, %warm139
  %106 = load i32, i32* %retval, align 4, !dbg !5768
  ret i32 %106, !dbg !5768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si2168_sleep(%struct.dvb_frontend* %fe) #2 !dbg !5769 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.si2168_dev*, align 8
  %ret = alloca i32, align 4
  %cmd = alloca %struct.si2168_cmd, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5770, metadata !DIExpression()), !dbg !5771
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5772, metadata !DIExpression()), !dbg !5773
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5774
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5775
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5775
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !5774
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !5773
  call void @llvm.dbg.declare(metadata %struct.si2168_dev** %dev, metadata !5776, metadata !DIExpression()), !dbg !5777
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5778
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %3) #9, !dbg !5779
  %4 = bitcast i8* %call to %struct.si2168_dev*, !dbg !5779
  store %struct.si2168_dev* %4, %struct.si2168_dev** %dev, align 8, !dbg !5777
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5780, metadata !DIExpression()), !dbg !5781
  call void @llvm.dbg.declare(metadata %struct.si2168_cmd* %cmd, metadata !5782, metadata !DIExpression()), !dbg !5783
  %5 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5784
  %active = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %5, i32 0, i32 9, !dbg !5785
  %bf.load = load i8, i8* %active, align 1, !dbg !5786
  %bf.clear = and i8 %bf.load, -2, !dbg !5786
  store i8 %bf.clear, i8* %active, align 1, !dbg !5786
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5787
  %call1 = call i32 @si2168_ts_bus_ctrl(%struct.dvb_frontend* %6, i32 0) #9, !dbg !5788
  store i32 %call1, i32* %ret, align 4, !dbg !5789
  %7 = load i32, i32* %ret, align 4, !dbg !5790
  %tobool = icmp ne i32 %7, 0, !dbg !5790
  br i1 %tobool, label %if.then, label %if.end, !dbg !5792

if.then:                                          ; preds = %entry
  br label %err, !dbg !5793

if.end:                                           ; preds = %entry
  %8 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5794
  %version = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %8, i32 0, i32 6, !dbg !5796
  %9 = load i32, i32* %version, align 4, !dbg !5796
  %cmp = icmp ugt i32 %9, 1107558411, !dbg !5797
  br i1 %cmp, label %if.then2, label %if.end5, !dbg !5798

if.then2:                                         ; preds = %if.end
  %10 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5799
  %warm = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %10, i32 0, i32 9, !dbg !5800
  %bf.load3 = load i8, i8* %warm, align 1, !dbg !5801
  %bf.clear4 = and i8 %bf.load3, -3, !dbg !5801
  store i8 %bf.clear4, i8* %warm, align 1, !dbg !5801
  br label %if.end5, !dbg !5799

if.end5:                                          ; preds = %if.then2, %if.end
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 1, i32 0) #9, !dbg !5802
  %11 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5803
  %call6 = call i32 @si2168_cmd_execute(%struct.i2c_client* %11, %struct.si2168_cmd* %cmd) #9, !dbg !5804
  store i32 %call6, i32* %ret, align 4, !dbg !5805
  %12 = load i32, i32* %ret, align 4, !dbg !5806
  %tobool7 = icmp ne i32 %12, 0, !dbg !5806
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5808

if.then8:                                         ; preds = %if.end5
  br label %err, !dbg !5809

if.end9:                                          ; preds = %if.end5
  store i32 0, i32* %retval, align 4, !dbg !5810
  br label %return, !dbg !5810

err:                                              ; preds = %if.then8, %if.then
  call void @llvm.dbg.label(metadata !5811), !dbg !5812
  %13 = load i32, i32* %ret, align 4, !dbg !5813
  store i32 %13, i32* %retval, align 4, !dbg !5814
  br label %return, !dbg !5814

return:                                           ; preds = %err, %if.end9
  %14 = load i32, i32* %retval, align 4, !dbg !5815
  ret i32 %14, !dbg !5815
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si2168_set_frontend(%struct.dvb_frontend* %fe) #2 !dbg !5816 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.si2168_dev*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  %cmd = alloca %struct.si2168_cmd, align 4
  %bandwidth = alloca i8, align 1
  %delivery_system = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5817, metadata !DIExpression()), !dbg !5818
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5819, metadata !DIExpression()), !dbg !5820
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5821
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5822
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5822
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !5821
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !5820
  call void @llvm.dbg.declare(metadata %struct.si2168_dev** %dev, metadata !5823, metadata !DIExpression()), !dbg !5824
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5825
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %3) #9, !dbg !5826
  %4 = bitcast i8* %call to %struct.si2168_dev*, !dbg !5826
  store %struct.si2168_dev* %4, %struct.si2168_dev** %dev, align 8, !dbg !5824
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5827, metadata !DIExpression()), !dbg !5828
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5829
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !5830
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5828
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5831, metadata !DIExpression()), !dbg !5832
  call void @llvm.dbg.declare(metadata %struct.si2168_cmd* %cmd, metadata !5833, metadata !DIExpression()), !dbg !5834
  call void @llvm.dbg.declare(metadata i8* %bandwidth, metadata !5835, metadata !DIExpression()), !dbg !5836
  call void @llvm.dbg.declare(metadata i8* %delivery_system, metadata !5837, metadata !DIExpression()), !dbg !5838
  %6 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !5839
  %active = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %6, i32 0, i32 9, !dbg !5841
  %bf.load = load i8, i8* %active, align 1, !dbg !5841
  %bf.clear = and i8 %bf.load, 1, !dbg !5841
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5841
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5839
  br i1 %tobool, label %if.end, label %if.then, !dbg !5842

if.then:                                          ; preds = %entry
  store i32 -11, i32* %ret, align 4, !dbg !5843
  br label %err, !dbg !5845

if.end:                                           ; preds = %entry
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5846
  %delivery_system1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 15, !dbg !5847
  %8 = load i32, i32* %delivery_system1, align 4, !dbg !5847
  switch i32 %8, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb2
    i32 16, label %sw.bb3
  ], !dbg !5848

sw.bb:                                            ; preds = %if.end
  store i8 32, i8* %delivery_system, align 1, !dbg !5849
  br label %sw.epilog, !dbg !5851

sw.bb2:                                           ; preds = %if.end
  store i8 48, i8* %delivery_system, align 1, !dbg !5852
  br label %sw.epilog, !dbg !5853

sw.bb3:                                           ; preds = %if.end
  store i8 112, i8* %delivery_system, align 1, !dbg !5854
  br label %sw.epilog, !dbg !5855

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !5856
  br label %err, !dbg !5857

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5858
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 7, !dbg !5860
  %10 = load i32, i32* %bandwidth_hz, align 4, !dbg !5860
  %cmp = icmp eq i32 %10, 0, !dbg !5861
  br i1 %cmp, label %if.then4, label %if.else, !dbg !5862

if.then4:                                         ; preds = %sw.epilog
  store i32 -22, i32* %ret, align 4, !dbg !5863
  br label %err, !dbg !5865

if.else:                                          ; preds = %sw.epilog
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5866
  %bandwidth_hz5 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 7, !dbg !5868
  %12 = load i32, i32* %bandwidth_hz5, align 4, !dbg !5868
  %cmp6 = icmp ule i32 %12, 2000000, !dbg !5869
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !5870

if.then7:                                         ; preds = %if.else
  store i8 2, i8* %bandwidth, align 1, !dbg !5871
  br label %if.end39, !dbg !5872

if.else8:                                         ; preds = %if.else
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5873
  %bandwidth_hz9 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 7, !dbg !5875
  %14 = load i32, i32* %bandwidth_hz9, align 4, !dbg !5875
  %cmp10 = icmp ule i32 %14, 5000000, !dbg !5876
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !5877

if.then11:                                        ; preds = %if.else8
  store i8 5, i8* %bandwidth, align 1, !dbg !5878
  br label %if.end38, !dbg !5879

if.else12:                                        ; preds = %if.else8
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5880
  %bandwidth_hz13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 7, !dbg !5882
  %16 = load i32, i32* %bandwidth_hz13, align 4, !dbg !5882
  %cmp14 = icmp ule i32 %16, 6000000, !dbg !5883
  br i1 %cmp14, label %if.then15, label %if.else16, !dbg !5884

if.then15:                                        ; preds = %if.else12
  store i8 6, i8* %bandwidth, align 1, !dbg !5885
  br label %if.end37, !dbg !5886

if.else16:                                        ; preds = %if.else12
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5887
  %bandwidth_hz17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 7, !dbg !5889
  %18 = load i32, i32* %bandwidth_hz17, align 4, !dbg !5889
  %cmp18 = icmp ule i32 %18, 7000000, !dbg !5890
  br i1 %cmp18, label %if.then19, label %if.else20, !dbg !5891

if.then19:                                        ; preds = %if.else16
  store i8 7, i8* %bandwidth, align 1, !dbg !5892
  br label %if.end36, !dbg !5893

if.else20:                                        ; preds = %if.else16
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5894
  %bandwidth_hz21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 7, !dbg !5896
  %20 = load i32, i32* %bandwidth_hz21, align 4, !dbg !5896
  %cmp22 = icmp ule i32 %20, 8000000, !dbg !5897
  br i1 %cmp22, label %if.then23, label %if.else24, !dbg !5898

if.then23:                                        ; preds = %if.else20
  store i8 8, i8* %bandwidth, align 1, !dbg !5899
  br label %if.end35, !dbg !5900

if.else24:                                        ; preds = %if.else20
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5901
  %bandwidth_hz25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 7, !dbg !5903
  %22 = load i32, i32* %bandwidth_hz25, align 4, !dbg !5903
  %cmp26 = icmp ule i32 %22, 9000000, !dbg !5904
  br i1 %cmp26, label %if.then27, label %if.else28, !dbg !5905

if.then27:                                        ; preds = %if.else24
  store i8 9, i8* %bandwidth, align 1, !dbg !5906
  br label %if.end34, !dbg !5907

if.else28:                                        ; preds = %if.else24
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5908
  %bandwidth_hz29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 7, !dbg !5910
  %24 = load i32, i32* %bandwidth_hz29, align 4, !dbg !5910
  %cmp30 = icmp ule i32 %24, 10000000, !dbg !5911
  br i1 %cmp30, label %if.then31, label %if.else32, !dbg !5912

if.then31:                                        ; preds = %if.else28
  store i8 10, i8* %bandwidth, align 1, !dbg !5913
  br label %if.end33, !dbg !5914

if.else32:                                        ; preds = %if.else28
  store i8 15, i8* %bandwidth, align 1, !dbg !5915
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then31
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then27
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then23
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then19
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then15
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then11
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then7
  br label %if.end40

if.end40:                                         ; preds = %if.end39
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5916
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 1, !dbg !5918
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5919
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5920
  %26 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5920
  %tobool41 = icmp ne i32 (%struct.dvb_frontend*)* %26, null, !dbg !5916
  br i1 %tobool41, label %if.then42, label %if.end50, !dbg !5921

if.then42:                                        ; preds = %if.end40
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5922
  %ops43 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 1, !dbg !5924
  %tuner_ops44 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops43, i32 0, i32 30, !dbg !5925
  %set_params45 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops44, i32 0, i32 6, !dbg !5926
  %28 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params45, align 8, !dbg !5926
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5927
  %call46 = call i32 %28(%struct.dvb_frontend* %29) #9, !dbg !5922
  store i32 %call46, i32* %ret, align 4, !dbg !5928
  %30 = load i32, i32* %ret, align 4, !dbg !5929
  %tobool47 = icmp ne i32 %30, 0, !dbg !5929
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !5931

if.then48:                                        ; preds = %if.then42
  br label %err, !dbg !5932

if.end49:                                         ; preds = %if.then42
  br label %if.end50, !dbg !5933

if.end50:                                         ; preds = %if.end49, %if.end40
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32 5, i32 5) #9, !dbg !5934
  %31 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5935
  %call51 = call i32 @si2168_cmd_execute(%struct.i2c_client* %31, %struct.si2168_cmd* %cmd) #9, !dbg !5936
  store i32 %call51, i32* %ret, align 4, !dbg !5937
  %32 = load i32, i32* %ret, align 4, !dbg !5938
  %tobool52 = icmp ne i32 %32, 0, !dbg !5938
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !5940

if.then53:                                        ; preds = %if.end50
  br label %err, !dbg !5941

if.end54:                                         ; preds = %if.end50
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5942
  %delivery_system55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 15, !dbg !5944
  %34 = load i32, i32* %delivery_system55, align 4, !dbg !5944
  %cmp56 = icmp eq i32 %34, 3, !dbg !5945
  br i1 %cmp56, label %if.then57, label %if.else58, !dbg !5946

if.then57:                                        ; preds = %if.end54
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i32 6, i32 3) #9, !dbg !5947
  br label %if.end68, !dbg !5947

if.else58:                                        ; preds = %if.end54
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5948
  %delivery_system59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 15, !dbg !5950
  %36 = load i32, i32* %delivery_system59, align 4, !dbg !5950
  %cmp60 = icmp eq i32 %36, 1, !dbg !5951
  br i1 %cmp60, label %if.then61, label %if.else62, !dbg !5952

if.then61:                                        ; preds = %if.else58
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i32 6, i32 3) #9, !dbg !5953
  br label %if.end67, !dbg !5953

if.else62:                                        ; preds = %if.else58
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5954
  %delivery_system63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 15, !dbg !5956
  %38 = load i32, i32* %delivery_system63, align 4, !dbg !5956
  %cmp64 = icmp eq i32 %38, 16, !dbg !5957
  br i1 %cmp64, label %if.then65, label %if.end66, !dbg !5958

if.then65:                                        ; preds = %if.else62
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 6, i32 3) #9, !dbg !5959
  br label %if.end66, !dbg !5959

if.end66:                                         ; preds = %if.then65, %if.else62
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then61
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then57
  %39 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5960
  %call69 = call i32 @si2168_cmd_execute(%struct.i2c_client* %39, %struct.si2168_cmd* %cmd) #9, !dbg !5961
  store i32 %call69, i32* %ret, align 4, !dbg !5962
  %40 = load i32, i32* %ret, align 4, !dbg !5963
  %tobool70 = icmp ne i32 %40, 0, !dbg !5963
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !5965

if.then71:                                        ; preds = %if.end68
  br label %err, !dbg !5966

if.end72:                                         ; preds = %if.end68
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5967
  %delivery_system73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 15, !dbg !5969
  %42 = load i32, i32* %delivery_system73, align 4, !dbg !5969
  %cmp74 = icmp eq i32 %42, 16, !dbg !5970
  br i1 %cmp74, label %if.then75, label %if.end88, !dbg !5971

if.then75:                                        ; preds = %if.end72
  %args = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !5972
  %arrayidx = getelementptr [30 x i8], [30 x i8]* %args, i64 0, i64 0, !dbg !5974
  store i8 82, i8* %arrayidx, align 4, !dbg !5975
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5976
  %stream_id = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 24, !dbg !5977
  %44 = load i32, i32* %stream_id, align 4, !dbg !5977
  %and = and i32 %44, 255, !dbg !5978
  %conv = trunc i32 %and to i8, !dbg !5976
  %args76 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !5979
  %arrayidx77 = getelementptr [30 x i8], [30 x i8]* %args76, i64 0, i64 1, !dbg !5980
  store i8 %conv, i8* %arrayidx77, align 1, !dbg !5981
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5982
  %stream_id78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 24, !dbg !5983
  %46 = load i32, i32* %stream_id78, align 4, !dbg !5983
  %cmp79 = icmp eq i32 %46, -1, !dbg !5984
  %47 = zext i1 %cmp79 to i64, !dbg !5982
  %cond = select i1 %cmp79, i32 0, i32 1, !dbg !5982
  %conv81 = trunc i32 %cond to i8, !dbg !5982
  %args82 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !5985
  %arrayidx83 = getelementptr [30 x i8], [30 x i8]* %args82, i64 0, i64 2, !dbg !5986
  store i8 %conv81, i8* %arrayidx83, align 2, !dbg !5987
  %wlen = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 1, !dbg !5988
  store i32 3, i32* %wlen, align 4, !dbg !5989
  %rlen = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 2, !dbg !5990
  store i32 1, i32* %rlen, align 4, !dbg !5991
  %48 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5992
  %call84 = call i32 @si2168_cmd_execute(%struct.i2c_client* %48, %struct.si2168_cmd* %cmd) #9, !dbg !5993
  store i32 %call84, i32* %ret, align 4, !dbg !5994
  %49 = load i32, i32* %ret, align 4, !dbg !5995
  %tobool85 = icmp ne i32 %49, 0, !dbg !5995
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !5997

if.then86:                                        ; preds = %if.then75
  br label %err, !dbg !5998

if.end87:                                         ; preds = %if.then75
  br label %if.end88, !dbg !5999

if.end88:                                         ; preds = %if.end87, %if.end72
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i32 2, i32 12) #9, !dbg !6000
  %50 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6001
  %call89 = call i32 @si2168_cmd_execute(%struct.i2c_client* %50, %struct.si2168_cmd* %cmd) #9, !dbg !6002
  store i32 %call89, i32* %ret, align 4, !dbg !6003
  %51 = load i32, i32* %ret, align 4, !dbg !6004
  %tobool90 = icmp ne i32 %51, 0, !dbg !6004
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !6006

if.then91:                                        ; preds = %if.end88
  br label %err, !dbg !6007

if.end92:                                         ; preds = %if.end88
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 3, i32 3) #9, !dbg !6008
  %52 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6009
  %call93 = call i32 @si2168_cmd_execute(%struct.i2c_client* %52, %struct.si2168_cmd* %cmd) #9, !dbg !6010
  store i32 %call93, i32* %ret, align 4, !dbg !6011
  %53 = load i32, i32* %ret, align 4, !dbg !6012
  %tobool94 = icmp ne i32 %53, 0, !dbg !6012
  br i1 %tobool94, label %if.then95, label %if.end96, !dbg !6014

if.then95:                                        ; preds = %if.end92
  br label %err, !dbg !6015

if.end96:                                         ; preds = %if.end92
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i32 6, i32 4) #9, !dbg !6016
  %54 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6017
  %call97 = call i32 @si2168_cmd_execute(%struct.i2c_client* %54, %struct.si2168_cmd* %cmd) #9, !dbg !6018
  store i32 %call97, i32* %ret, align 4, !dbg !6019
  %55 = load i32, i32* %ret, align 4, !dbg !6020
  %tobool98 = icmp ne i32 %55, 0, !dbg !6020
  br i1 %tobool98, label %if.then99, label %if.end100, !dbg !6022

if.then99:                                        ; preds = %if.end96
  br label %err, !dbg !6023

if.end100:                                        ; preds = %if.end96
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i32 6, i32 4) #9, !dbg !6024
  %56 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6025
  %call101 = call i32 @si2168_cmd_execute(%struct.i2c_client* %56, %struct.si2168_cmd* %cmd) #9, !dbg !6026
  store i32 %call101, i32* %ret, align 4, !dbg !6027
  %57 = load i32, i32* %ret, align 4, !dbg !6028
  %tobool102 = icmp ne i32 %57, 0, !dbg !6028
  br i1 %tobool102, label %if.then103, label %if.end104, !dbg !6030

if.then103:                                       ; preds = %if.end100
  br label %err, !dbg !6031

if.end104:                                        ; preds = %if.end100
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i32 6, i32 4) #9, !dbg !6032
  %58 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6033
  %call105 = call i32 @si2168_cmd_execute(%struct.i2c_client* %58, %struct.si2168_cmd* %cmd) #9, !dbg !6034
  store i32 %call105, i32* %ret, align 4, !dbg !6035
  %59 = load i32, i32* %ret, align 4, !dbg !6036
  %tobool106 = icmp ne i32 %59, 0, !dbg !6036
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !6038

if.then107:                                       ; preds = %if.end104
  br label %err, !dbg !6039

if.end108:                                        ; preds = %if.end104
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i32 6, i32 4) #9, !dbg !6040
  %60 = load i8, i8* %delivery_system, align 1, !dbg !6041
  %conv109 = zext i8 %60 to i32, !dbg !6041
  %61 = load i8, i8* %bandwidth, align 1, !dbg !6042
  %conv110 = zext i8 %61 to i32, !dbg !6042
  %or = or i32 %conv109, %conv110, !dbg !6043
  %conv111 = trunc i32 %or to i8, !dbg !6041
  %args112 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6044
  %arrayidx113 = getelementptr [30 x i8], [30 x i8]* %args112, i64 0, i64 4, !dbg !6045
  store i8 %conv111, i8* %arrayidx113, align 4, !dbg !6046
  %62 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !6047
  %spectral_inversion = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %62, i32 0, i32 9, !dbg !6049
  %bf.load114 = load i8, i8* %spectral_inversion, align 1, !dbg !6049
  %bf.lshr = lshr i8 %bf.load114, 4, !dbg !6049
  %bf.clear115 = and i8 %bf.lshr, 1, !dbg !6049
  %bf.cast116 = zext i8 %bf.clear115 to i32, !dbg !6049
  %tobool117 = icmp ne i32 %bf.cast116, 0, !dbg !6047
  br i1 %tobool117, label %if.then118, label %if.end124, !dbg !6050

if.then118:                                       ; preds = %if.end108
  %args119 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6051
  %arrayidx120 = getelementptr [30 x i8], [30 x i8]* %args119, i64 0, i64 5, !dbg !6052
  %63 = load i8, i8* %arrayidx120, align 1, !dbg !6053
  %conv121 = zext i8 %63 to i32, !dbg !6053
  %or122 = or i32 %conv121, 1, !dbg !6053
  %conv123 = trunc i32 %or122 to i8, !dbg !6053
  store i8 %conv123, i8* %arrayidx120, align 1, !dbg !6053
  br label %if.end124, !dbg !6052

if.end124:                                        ; preds = %if.then118, %if.end108
  %64 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6054
  %call125 = call i32 @si2168_cmd_execute(%struct.i2c_client* %64, %struct.si2168_cmd* %cmd) #9, !dbg !6055
  store i32 %call125, i32* %ret, align 4, !dbg !6056
  %65 = load i32, i32* %ret, align 4, !dbg !6057
  %tobool126 = icmp ne i32 %65, 0, !dbg !6057
  br i1 %tobool126, label %if.then127, label %if.end128, !dbg !6059

if.then127:                                       ; preds = %if.end124
  br label %err, !dbg !6060

if.end128:                                        ; preds = %if.end124
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6061
  %delivery_system129 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 15, !dbg !6063
  %67 = load i32, i32* %delivery_system129, align 4, !dbg !6063
  %cmp130 = icmp eq i32 %67, 1, !dbg !6064
  br i1 %cmp130, label %if.then132, label %if.end148, !dbg !6065

if.then132:                                       ; preds = %if.end128
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32 6, i32 4) #9, !dbg !6066
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6068
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 10, !dbg !6069
  %69 = load i32, i32* %symbol_rate, align 4, !dbg !6069
  %div = udiv i32 %69, 1000, !dbg !6070
  %shr = lshr i32 %div, 0, !dbg !6071
  %and133 = and i32 %shr, 255, !dbg !6072
  %conv134 = trunc i32 %and133 to i8, !dbg !6073
  %args135 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6074
  %arrayidx136 = getelementptr [30 x i8], [30 x i8]* %args135, i64 0, i64 4, !dbg !6075
  store i8 %conv134, i8* %arrayidx136, align 4, !dbg !6076
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6077
  %symbol_rate137 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 10, !dbg !6078
  %71 = load i32, i32* %symbol_rate137, align 4, !dbg !6078
  %div138 = udiv i32 %71, 1000, !dbg !6079
  %shr139 = lshr i32 %div138, 8, !dbg !6080
  %and140 = and i32 %shr139, 255, !dbg !6081
  %conv141 = trunc i32 %and140 to i8, !dbg !6082
  %args142 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6083
  %arrayidx143 = getelementptr [30 x i8], [30 x i8]* %args142, i64 0, i64 5, !dbg !6084
  store i8 %conv141, i8* %arrayidx143, align 1, !dbg !6085
  %72 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6086
  %call144 = call i32 @si2168_cmd_execute(%struct.i2c_client* %72, %struct.si2168_cmd* %cmd) #9, !dbg !6087
  store i32 %call144, i32* %ret, align 4, !dbg !6088
  %73 = load i32, i32* %ret, align 4, !dbg !6089
  %tobool145 = icmp ne i32 %73, 0, !dbg !6089
  br i1 %tobool145, label %if.then146, label %if.end147, !dbg !6091

if.then146:                                       ; preds = %if.then132
  br label %err, !dbg !6092

if.end147:                                        ; preds = %if.then132
  br label %if.end148, !dbg !6093

if.end148:                                        ; preds = %if.end147, %if.end128
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i32 6, i32 4) #9, !dbg !6094
  %74 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6095
  %call149 = call i32 @si2168_cmd_execute(%struct.i2c_client* %74, %struct.si2168_cmd* %cmd) #9, !dbg !6096
  store i32 %call149, i32* %ret, align 4, !dbg !6097
  %75 = load i32, i32* %ret, align 4, !dbg !6098
  %tobool150 = icmp ne i32 %75, 0, !dbg !6098
  br i1 %tobool150, label %if.then151, label %if.end152, !dbg !6100

if.then151:                                       ; preds = %if.end148
  br label %err, !dbg !6101

if.end152:                                        ; preds = %if.end148
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i32 6, i32 4) #9, !dbg !6102
  %76 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !6103
  %ts_clock_inv = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %76, i32 0, i32 9, !dbg !6104
  %bf.load153 = load i8, i8* %ts_clock_inv, align 1, !dbg !6104
  %bf.lshr154 = lshr i8 %bf.load153, 2, !dbg !6104
  %bf.clear155 = and i8 %bf.lshr154, 1, !dbg !6104
  %bf.cast156 = zext i8 %bf.clear155 to i32, !dbg !6104
  %tobool157 = icmp ne i32 %bf.cast156, 0, !dbg !6103
  %77 = zext i1 %tobool157 to i64, !dbg !6103
  %cond158 = select i1 %tobool157, i32 0, i32 16, !dbg !6103
  %args159 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6105
  %arrayidx160 = getelementptr [30 x i8], [30 x i8]* %args159, i64 0, i64 5, !dbg !6106
  %78 = load i8, i8* %arrayidx160, align 1, !dbg !6107
  %conv161 = zext i8 %78 to i32, !dbg !6107
  %or162 = or i32 %conv161, %cond158, !dbg !6107
  %conv163 = trunc i32 %or162 to i8, !dbg !6107
  store i8 %conv163, i8* %arrayidx160, align 1, !dbg !6107
  %79 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6108
  %call164 = call i32 @si2168_cmd_execute(%struct.i2c_client* %79, %struct.si2168_cmd* %cmd) #9, !dbg !6109
  store i32 %call164, i32* %ret, align 4, !dbg !6110
  %80 = load i32, i32* %ret, align 4, !dbg !6111
  %tobool165 = icmp ne i32 %80, 0, !dbg !6111
  br i1 %tobool165, label %if.then166, label %if.end167, !dbg !6113

if.then166:                                       ; preds = %if.end152
  br label %err, !dbg !6114

if.end167:                                        ; preds = %if.end152
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i32 6, i32 4) #9, !dbg !6115
  %81 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !6116
  %ts_clock_inv168 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %81, i32 0, i32 9, !dbg !6117
  %bf.load169 = load i8, i8* %ts_clock_inv168, align 1, !dbg !6117
  %bf.lshr170 = lshr i8 %bf.load169, 2, !dbg !6117
  %bf.clear171 = and i8 %bf.lshr170, 1, !dbg !6117
  %bf.cast172 = zext i8 %bf.clear171 to i32, !dbg !6117
  %tobool173 = icmp ne i32 %bf.cast172, 0, !dbg !6116
  %82 = zext i1 %tobool173 to i64, !dbg !6116
  %cond174 = select i1 %tobool173, i32 0, i32 16, !dbg !6116
  %args175 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6118
  %arrayidx176 = getelementptr [30 x i8], [30 x i8]* %args175, i64 0, i64 5, !dbg !6119
  %83 = load i8, i8* %arrayidx176, align 1, !dbg !6120
  %conv177 = zext i8 %83 to i32, !dbg !6120
  %or178 = or i32 %conv177, %cond174, !dbg !6120
  %conv179 = trunc i32 %or178 to i8, !dbg !6120
  store i8 %conv179, i8* %arrayidx176, align 1, !dbg !6120
  %84 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6121
  %call180 = call i32 @si2168_cmd_execute(%struct.i2c_client* %84, %struct.si2168_cmd* %cmd) #9, !dbg !6122
  store i32 %call180, i32* %ret, align 4, !dbg !6123
  %85 = load i32, i32* %ret, align 4, !dbg !6124
  %tobool181 = icmp ne i32 %85, 0, !dbg !6124
  br i1 %tobool181, label %if.then182, label %if.end183, !dbg !6126

if.then182:                                       ; preds = %if.end167
  br label %err, !dbg !6127

if.end183:                                        ; preds = %if.end167
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i32 6, i32 4) #9, !dbg !6128
  %86 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6129
  %call184 = call i32 @si2168_cmd_execute(%struct.i2c_client* %86, %struct.si2168_cmd* %cmd) #9, !dbg !6130
  store i32 %call184, i32* %ret, align 4, !dbg !6131
  %87 = load i32, i32* %ret, align 4, !dbg !6132
  %tobool185 = icmp ne i32 %87, 0, !dbg !6132
  br i1 %tobool185, label %if.then186, label %if.end187, !dbg !6134

if.then186:                                       ; preds = %if.end183
  br label %err, !dbg !6135

if.end187:                                        ; preds = %if.end183
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i32 6, i32 4) #9, !dbg !6136
  %88 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6137
  %call188 = call i32 @si2168_cmd_execute(%struct.i2c_client* %88, %struct.si2168_cmd* %cmd) #9, !dbg !6138
  store i32 %call188, i32* %ret, align 4, !dbg !6139
  %89 = load i32, i32* %ret, align 4, !dbg !6140
  %tobool189 = icmp ne i32 %89, 0, !dbg !6140
  br i1 %tobool189, label %if.then190, label %if.end191, !dbg !6142

if.then190:                                       ; preds = %if.end187
  br label %err, !dbg !6143

if.end191:                                        ; preds = %if.end187
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 1, i32 1) #9, !dbg !6144
  %90 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6145
  %call192 = call i32 @si2168_cmd_execute(%struct.i2c_client* %90, %struct.si2168_cmd* %cmd) #9, !dbg !6146
  store i32 %call192, i32* %ret, align 4, !dbg !6147
  %91 = load i32, i32* %ret, align 4, !dbg !6148
  %tobool193 = icmp ne i32 %91, 0, !dbg !6148
  br i1 %tobool193, label %if.then194, label %if.end195, !dbg !6150

if.then194:                                       ; preds = %if.end191
  br label %err, !dbg !6151

if.end195:                                        ; preds = %if.end191
  %92 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6152
  %delivery_system196 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %92, i32 0, i32 15, !dbg !6153
  %93 = load i32, i32* %delivery_system196, align 4, !dbg !6153
  %94 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !6154
  %delivery_system197 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %94, i32 0, i32 3, !dbg !6155
  store i32 %93, i32* %delivery_system197, align 8, !dbg !6156
  %95 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6157
  %call198 = call i32 @si2168_ts_bus_ctrl(%struct.dvb_frontend* %95, i32 1) #9, !dbg !6158
  store i32 %call198, i32* %ret, align 4, !dbg !6159
  %96 = load i32, i32* %ret, align 4, !dbg !6160
  %tobool199 = icmp ne i32 %96, 0, !dbg !6160
  br i1 %tobool199, label %if.then200, label %if.end201, !dbg !6162

if.then200:                                       ; preds = %if.end195
  br label %err, !dbg !6163

if.end201:                                        ; preds = %if.end195
  store i32 0, i32* %retval, align 4, !dbg !6164
  br label %return, !dbg !6164

err:                                              ; preds = %if.then200, %if.then194, %if.then190, %if.then186, %if.then182, %if.then166, %if.then151, %if.then146, %if.then127, %if.then107, %if.then103, %if.then99, %if.then95, %if.then91, %if.then86, %if.then71, %if.then53, %if.then48, %if.then4, %sw.default, %if.then
  call void @llvm.dbg.label(metadata !6165), !dbg !6166
  %97 = load i32, i32* %ret, align 4, !dbg !6167
  store i32 %97, i32* %retval, align 4, !dbg !6168
  br label %return, !dbg !6168

return:                                           ; preds = %err, %if.end201
  %98 = load i32, i32* %retval, align 4, !dbg !6169
  ret i32 %98, !dbg !6169
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si2168_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %s) #2 !dbg !6170 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %s.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6171, metadata !DIExpression()), !dbg !6172
  store %struct.dvb_frontend_tune_settings* %s, %struct.dvb_frontend_tune_settings** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %s.addr, metadata !6173, metadata !DIExpression()), !dbg !6174
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %s.addr, align 8, !dbg !6175
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !6176
  store i32 900, i32* %min_delay_ms, align 4, !dbg !6177
  ret i32 0, !dbg !6178
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si2168_read_status(%struct.dvb_frontend* %fe, i32* %status) #2 !dbg !6179 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.si2168_dev*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %utmp = alloca i32, align 4
  %utmp1 = alloca i32, align 4
  %utmp2 = alloca i32, align 4
  %cmd = alloca %struct.si2168_cmd, align 4
  %__UNIQUE_ID___x222 = alloca i32, align 4
  %__UNIQUE_ID___x220 = alloca i32, align 4
  %__UNIQUE_ID___y221 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y223 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6180, metadata !DIExpression()), !dbg !6181
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !6182, metadata !DIExpression()), !dbg !6183
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6184, metadata !DIExpression()), !dbg !6185
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6186
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6187
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6187
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !6186
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !6185
  call void @llvm.dbg.declare(metadata %struct.si2168_dev** %dev, metadata !6188, metadata !DIExpression()), !dbg !6189
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6190
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %3) #9, !dbg !6191
  %4 = bitcast i8* %call to %struct.si2168_dev*, !dbg !6191
  store %struct.si2168_dev* %4, %struct.si2168_dev** %dev, align 8, !dbg !6189
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !6192, metadata !DIExpression()), !dbg !6193
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6194
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 8, !dbg !6195
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !6193
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6196, metadata !DIExpression()), !dbg !6197
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6198, metadata !DIExpression()), !dbg !6199
  call void @llvm.dbg.declare(metadata i32* %utmp, metadata !6200, metadata !DIExpression()), !dbg !6201
  call void @llvm.dbg.declare(metadata i32* %utmp1, metadata !6202, metadata !DIExpression()), !dbg !6203
  call void @llvm.dbg.declare(metadata i32* %utmp2, metadata !6204, metadata !DIExpression()), !dbg !6205
  call void @llvm.dbg.declare(metadata %struct.si2168_cmd* %cmd, metadata !6206, metadata !DIExpression()), !dbg !6207
  %6 = load i32*, i32** %status.addr, align 8, !dbg !6208
  store i32 0, i32* %6, align 4, !dbg !6209
  %7 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !6210
  %active = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %7, i32 0, i32 9, !dbg !6212
  %bf.load = load i8, i8* %active, align 1, !dbg !6212
  %bf.clear = and i8 %bf.load, 1, !dbg !6212
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6212
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6210
  br i1 %tobool, label %if.end, label %if.then, !dbg !6213

if.then:                                          ; preds = %entry
  store i32 -11, i32* %ret, align 4, !dbg !6214
  br label %err, !dbg !6216

if.end:                                           ; preds = %entry
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6217
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 15, !dbg !6218
  %9 = load i32, i32* %delivery_system, align 4, !dbg !6218
  switch i32 %9, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
    i32 16, label %sw.bb2
  ], !dbg !6219

sw.bb:                                            ; preds = %if.end
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i32 2, i32 13) #9, !dbg !6220
  br label %sw.epilog, !dbg !6222

sw.bb1:                                           ; preds = %if.end
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i32 2, i32 9) #9, !dbg !6223
  br label %sw.epilog, !dbg !6224

sw.bb2:                                           ; preds = %if.end
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i32 2, i32 14) #9, !dbg !6225
  br label %sw.epilog, !dbg !6226

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !6227
  br label %err, !dbg !6228

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %10 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6229
  %call3 = call i32 @si2168_cmd_execute(%struct.i2c_client* %10, %struct.si2168_cmd* %cmd) #9, !dbg !6230
  store i32 %call3, i32* %ret, align 4, !dbg !6231
  %11 = load i32, i32* %ret, align 4, !dbg !6232
  %tobool4 = icmp ne i32 %11, 0, !dbg !6232
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6234

if.then5:                                         ; preds = %sw.epilog
  br label %err, !dbg !6235

if.end6:                                          ; preds = %sw.epilog
  %args = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6236
  %arrayidx = getelementptr [30 x i8], [30 x i8]* %args, i64 0, i64 2, !dbg !6237
  %12 = load i8, i8* %arrayidx, align 2, !dbg !6237
  %conv = zext i8 %12 to i32, !dbg !6237
  %shr = ashr i32 %conv, 1, !dbg !6238
  %and = and i32 %shr, 3, !dbg !6239
  switch i32 %and, label %sw.epilog9 [
    i32 1, label %sw.bb7
    i32 3, label %sw.bb8
  ], !dbg !6240

sw.bb7:                                           ; preds = %if.end6
  %13 = load i32*, i32** %status.addr, align 8, !dbg !6241
  store i32 3, i32* %13, align 4, !dbg !6243
  br label %sw.epilog9, !dbg !6244

sw.bb8:                                           ; preds = %if.end6
  %14 = load i32*, i32** %status.addr, align 8, !dbg !6245
  store i32 31, i32* %14, align 4, !dbg !6246
  br label %sw.epilog9, !dbg !6247

sw.epilog9:                                       ; preds = %if.end6, %sw.bb8, %sw.bb7
  %15 = load i32*, i32** %status.addr, align 8, !dbg !6248
  %16 = load i32, i32* %15, align 4, !dbg !6249
  %17 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !6250
  %fe_status = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %17, i32 0, i32 4, !dbg !6251
  store i32 %16, i32* %fe_status, align 4, !dbg !6252
  %18 = load i32*, i32** %status.addr, align 8, !dbg !6253
  %19 = load i32, i32* %18, align 4, !dbg !6255
  %and10 = and i32 %19, 16, !dbg !6256
  %tobool11 = icmp ne i32 %and10, 0, !dbg !6256
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !6257

if.then12:                                        ; preds = %sw.epilog9
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6258
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 43, !dbg !6260
  %len = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr, i32 0, i32 0, !dbg !6261
  store i8 1, i8* %len, align 1, !dbg !6262
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6263
  %cnr13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 43, !dbg !6264
  %stat = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr13, i32 0, i32 1, !dbg !6265
  %arrayidx14 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat, i64 0, i64 0, !dbg !6263
  %scale = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx14, i32 0, i32 0, !dbg !6266
  store i8 1, i8* %scale, align 1, !dbg !6267
  %args15 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6268
  %arrayidx16 = getelementptr [30 x i8], [30 x i8]* %args15, i64 0, i64 3, !dbg !6269
  %22 = load i8, i8* %arrayidx16, align 1, !dbg !6269
  %conv17 = zext i8 %22 to i32, !dbg !6269
  %mul = mul i32 %conv17, 1000, !dbg !6270
  %div = sdiv i32 %mul, 4, !dbg !6271
  %conv18 = sext i32 %div to i64, !dbg !6269
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6272
  %cnr19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 43, !dbg !6273
  %stat20 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr19, i32 0, i32 1, !dbg !6274
  %arrayidx21 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat20, i64 0, i64 0, !dbg !6272
  %24 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx21, i32 0, i32 1, !dbg !6275
  %svalue = bitcast %union.anon.67* %24 to i64*, !dbg !6275
  store i64 %conv18, i64* %svalue, align 1, !dbg !6276
  br label %if.end28, !dbg !6277

if.else:                                          ; preds = %sw.epilog9
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6278
  %cnr22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 43, !dbg !6280
  %len23 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr22, i32 0, i32 0, !dbg !6281
  store i8 1, i8* %len23, align 1, !dbg !6282
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6283
  %cnr24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 43, !dbg !6284
  %stat25 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %cnr24, i32 0, i32 1, !dbg !6285
  %arrayidx26 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat25, i64 0, i64 0, !dbg !6283
  %scale27 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx26, i32 0, i32 0, !dbg !6286
  store i8 0, i8* %scale27, align 1, !dbg !6287
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then12
  %27 = load i32*, i32** %status.addr, align 8, !dbg !6288
  %28 = load i32, i32* %27, align 4, !dbg !6290
  %and29 = and i32 %28, 4, !dbg !6291
  %tobool30 = icmp ne i32 %and29, 0, !dbg !6291
  br i1 %tobool30, label %if.then31, label %if.else70, !dbg !6292

if.then31:                                        ; preds = %if.end28
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), i32 2, i32 3) #9, !dbg !6293
  %29 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6295
  %call32 = call i32 @si2168_cmd_execute(%struct.i2c_client* %29, %struct.si2168_cmd* %cmd) #9, !dbg !6296
  store i32 %call32, i32* %ret, align 4, !dbg !6297
  %30 = load i32, i32* %ret, align 4, !dbg !6298
  %tobool33 = icmp ne i32 %30, 0, !dbg !6298
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !6300

if.then34:                                        ; preds = %if.then31
  br label %err, !dbg !6301

if.end35:                                         ; preds = %if.then31
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x222, metadata !6302, metadata !DIExpression()), !dbg !6304
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x220, metadata !6305, metadata !DIExpression()), !dbg !6307
  %args36 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6307
  %arrayidx37 = getelementptr [30 x i8], [30 x i8]* %args36, i64 0, i64 1, !dbg !6307
  %31 = load i8, i8* %arrayidx37, align 1, !dbg !6307
  %conv38 = zext i8 %31 to i32, !dbg !6307
  %sub = sub i32 8, %conv38, !dbg !6307
  store i32 %sub, i32* %__UNIQUE_ID___x220, align 4, !dbg !6307
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y221, metadata !6308, metadata !DIExpression()), !dbg !6307
  store i32 0, i32* %__UNIQUE_ID___y221, align 4, !dbg !6307
  %32 = load i32, i32* %__UNIQUE_ID___x220, align 4, !dbg !6307
  %33 = load i32, i32* %__UNIQUE_ID___y221, align 4, !dbg !6307
  %cmp = icmp sgt i32 %32, %33, !dbg !6307
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6307

cond.true:                                        ; preds = %if.end35
  %34 = load i32, i32* %__UNIQUE_ID___x220, align 4, !dbg !6307
  br label %cond.end, !dbg !6307

cond.false:                                       ; preds = %if.end35
  %35 = load i32, i32* %__UNIQUE_ID___y221, align 4, !dbg !6307
  br label %cond.end, !dbg !6307

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %34, %cond.true ], [ %35, %cond.false ], !dbg !6307
  store i32 %cond, i32* %tmp, align 4, !dbg !6307
  %36 = load i32, i32* %tmp, align 4, !dbg !6307
  store i32 %36, i32* %__UNIQUE_ID___x222, align 4, !dbg !6304
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y223, metadata !6309, metadata !DIExpression()), !dbg !6304
  store i32 8, i32* %__UNIQUE_ID___y223, align 4, !dbg !6304
  %37 = load i32, i32* %__UNIQUE_ID___x222, align 4, !dbg !6304
  %38 = load i32, i32* %__UNIQUE_ID___y223, align 4, !dbg !6304
  %cmp41 = icmp slt i32 %37, %38, !dbg !6304
  br i1 %cmp41, label %cond.true43, label %cond.false44, !dbg !6304

cond.true43:                                      ; preds = %cond.end
  %39 = load i32, i32* %__UNIQUE_ID___x222, align 4, !dbg !6304
  br label %cond.end45, !dbg !6304

cond.false44:                                     ; preds = %cond.end
  %40 = load i32, i32* %__UNIQUE_ID___y223, align 4, !dbg !6304
  br label %cond.end45, !dbg !6304

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi i32 [ %39, %cond.true43 ], [ %40, %cond.false44 ], !dbg !6304
  store i32 %cond46, i32* %tmp40, align 4, !dbg !6304
  %41 = load i32, i32* %tmp40, align 4, !dbg !6304
  store i32 %41, i32* %utmp, align 4, !dbg !6310
  store i32 0, i32* %i, align 4, !dbg !6311
  store i32 1, i32* %utmp1, align 4, !dbg !6313
  br label %for.cond, !dbg !6314

for.cond:                                         ; preds = %for.inc, %cond.end45
  %42 = load i32, i32* %i, align 4, !dbg !6315
  %43 = load i32, i32* %utmp, align 4, !dbg !6317
  %cmp47 = icmp ult i32 %42, %43, !dbg !6318
  br i1 %cmp47, label %for.body, label %for.end, !dbg !6319

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %utmp1, align 4, !dbg !6320
  %mul49 = mul i32 %44, 10, !dbg !6321
  store i32 %mul49, i32* %utmp1, align 4, !dbg !6322
  br label %for.inc, !dbg !6323

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4, !dbg !6324
  %inc = add i32 %45, 1, !dbg !6324
  store i32 %inc, i32* %i, align 4, !dbg !6324
  br label %for.cond, !dbg !6325, !llvm.loop !6326

for.end:                                          ; preds = %for.cond
  %args50 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6328
  %arrayidx51 = getelementptr [30 x i8], [30 x i8]* %args50, i64 0, i64 2, !dbg !6329
  %46 = load i8, i8* %arrayidx51, align 2, !dbg !6329
  %conv52 = zext i8 %46 to i32, !dbg !6329
  %47 = load i32, i32* %utmp1, align 4, !dbg !6330
  %mul53 = mul i32 %conv52, %47, !dbg !6331
  store i32 %mul53, i32* %utmp1, align 4, !dbg !6332
  store i32 100000000, i32* %utmp2, align 4, !dbg !6333
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6334
  %post_bit_error = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 46, !dbg !6335
  %stat54 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_error, i32 0, i32 1, !dbg !6336
  %arrayidx55 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat54, i64 0, i64 0, !dbg !6334
  %scale56 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx55, i32 0, i32 0, !dbg !6337
  store i8 3, i8* %scale56, align 1, !dbg !6338
  %49 = load i32, i32* %utmp1, align 4, !dbg !6339
  %conv57 = zext i32 %49 to i64, !dbg !6339
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6340
  %post_bit_error58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 46, !dbg !6341
  %stat59 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_error58, i32 0, i32 1, !dbg !6342
  %arrayidx60 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat59, i64 0, i64 0, !dbg !6340
  %51 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx60, i32 0, i32 1, !dbg !6343
  %uvalue = bitcast %union.anon.67* %51 to i64*, !dbg !6343
  %52 = load i64, i64* %uvalue, align 1, !dbg !6344
  %add = add i64 %52, %conv57, !dbg !6344
  store i64 %add, i64* %uvalue, align 1, !dbg !6344
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6345
  %post_bit_count = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 47, !dbg !6346
  %stat61 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_count, i32 0, i32 1, !dbg !6347
  %arrayidx62 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat61, i64 0, i64 0, !dbg !6345
  %scale63 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx62, i32 0, i32 0, !dbg !6348
  store i8 3, i8* %scale63, align 1, !dbg !6349
  %54 = load i32, i32* %utmp2, align 4, !dbg !6350
  %conv64 = zext i32 %54 to i64, !dbg !6350
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6351
  %post_bit_count65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 47, !dbg !6352
  %stat66 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_count65, i32 0, i32 1, !dbg !6353
  %arrayidx67 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat66, i64 0, i64 0, !dbg !6351
  %56 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx67, i32 0, i32 1, !dbg !6354
  %uvalue68 = bitcast %union.anon.67* %56 to i64*, !dbg !6354
  %57 = load i64, i64* %uvalue68, align 1, !dbg !6355
  %add69 = add i64 %57, %conv64, !dbg !6355
  store i64 %add69, i64* %uvalue68, align 1, !dbg !6355
  br label %if.end79, !dbg !6356

if.else70:                                        ; preds = %if.end28
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6357
  %post_bit_error71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 46, !dbg !6359
  %stat72 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_error71, i32 0, i32 1, !dbg !6360
  %arrayidx73 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat72, i64 0, i64 0, !dbg !6357
  %scale74 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx73, i32 0, i32 0, !dbg !6361
  store i8 0, i8* %scale74, align 1, !dbg !6362
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6363
  %post_bit_count75 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 47, !dbg !6364
  %stat76 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %post_bit_count75, i32 0, i32 1, !dbg !6365
  %arrayidx77 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat76, i64 0, i64 0, !dbg !6363
  %scale78 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx77, i32 0, i32 0, !dbg !6366
  store i8 0, i8* %scale78, align 1, !dbg !6367
  br label %if.end79

if.end79:                                         ; preds = %if.else70, %for.end
  %60 = load i32*, i32** %status.addr, align 8, !dbg !6368
  %61 = load i32, i32* %60, align 4, !dbg !6370
  %and80 = and i32 %61, 8, !dbg !6371
  %tobool81 = icmp ne i32 %and80, 0, !dbg !6371
  br i1 %tobool81, label %if.then82, label %if.else107, !dbg !6372

if.then82:                                        ; preds = %if.end79
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i32 2, i32 3) #9, !dbg !6373
  %62 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6375
  %call83 = call i32 @si2168_cmd_execute(%struct.i2c_client* %62, %struct.si2168_cmd* %cmd) #9, !dbg !6376
  store i32 %call83, i32* %ret, align 4, !dbg !6377
  %63 = load i32, i32* %ret, align 4, !dbg !6378
  %tobool84 = icmp ne i32 %63, 0, !dbg !6378
  br i1 %tobool84, label %if.then85, label %if.end86, !dbg !6380

if.then85:                                        ; preds = %if.then82
  br label %err, !dbg !6381

if.end86:                                         ; preds = %if.then82
  %args87 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6382
  %arrayidx88 = getelementptr [30 x i8], [30 x i8]* %args87, i64 0, i64 2, !dbg !6383
  %64 = load i8, i8* %arrayidx88, align 2, !dbg !6383
  %conv89 = zext i8 %64 to i32, !dbg !6383
  %shl = shl i32 %conv89, 8, !dbg !6384
  %args90 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6385
  %arrayidx91 = getelementptr [30 x i8], [30 x i8]* %args90, i64 0, i64 1, !dbg !6386
  %65 = load i8, i8* %arrayidx91, align 1, !dbg !6386
  %conv92 = zext i8 %65 to i32, !dbg !6386
  %shl93 = shl i32 %conv92, 0, !dbg !6387
  %or = or i32 %shl, %shl93, !dbg !6388
  store i32 %or, i32* %utmp1, align 4, !dbg !6389
  %66 = load i32, i32* %utmp1, align 4, !dbg !6390
  %cmp94 = icmp eq i32 %66, 65535, !dbg !6392
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !6393

if.then96:                                        ; preds = %if.end86
  store i32 0, i32* %utmp1, align 4, !dbg !6394
  br label %if.end97, !dbg !6395

if.end97:                                         ; preds = %if.then96, %if.end86
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6396
  %block_error = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 48, !dbg !6397
  %stat98 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error, i32 0, i32 1, !dbg !6398
  %arrayidx99 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat98, i64 0, i64 0, !dbg !6396
  %scale100 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx99, i32 0, i32 0, !dbg !6399
  store i8 3, i8* %scale100, align 1, !dbg !6400
  %68 = load i32, i32* %utmp1, align 4, !dbg !6401
  %conv101 = zext i32 %68 to i64, !dbg !6401
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6402
  %block_error102 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 48, !dbg !6403
  %stat103 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error102, i32 0, i32 1, !dbg !6404
  %arrayidx104 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat103, i64 0, i64 0, !dbg !6402
  %70 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx104, i32 0, i32 1, !dbg !6405
  %uvalue105 = bitcast %union.anon.67* %70 to i64*, !dbg !6405
  %71 = load i64, i64* %uvalue105, align 1, !dbg !6406
  %add106 = add i64 %71, %conv101, !dbg !6406
  store i64 %add106, i64* %uvalue105, align 1, !dbg !6406
  br label %if.end112, !dbg !6407

if.else107:                                       ; preds = %if.end79
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !6408
  %block_error108 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 48, !dbg !6410
  %stat109 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %block_error108, i32 0, i32 1, !dbg !6411
  %arrayidx110 = getelementptr [4 x %struct.dtv_stats], [4 x %struct.dtv_stats]* %stat109, i64 0, i64 0, !dbg !6408
  %scale111 = getelementptr inbounds %struct.dtv_stats, %struct.dtv_stats* %arrayidx110, i32 0, i32 0, !dbg !6412
  store i8 0, i8* %scale111, align 1, !dbg !6413
  br label %if.end112

if.end112:                                        ; preds = %if.else107, %if.end97
  store i32 0, i32* %retval, align 4, !dbg !6414
  br label %return, !dbg !6414

err:                                              ; preds = %if.then85, %if.then34, %if.then5, %sw.default, %if.then
  call void @llvm.dbg.label(metadata !6415), !dbg !6416
  %73 = load i32, i32* %ret, align 4, !dbg !6417
  store i32 %73, i32* %retval, align 4, !dbg !6418
  br label %return, !dbg !6418

return:                                           ; preds = %err, %if.end112
  %74 = load i32, i32* %retval, align 4, !dbg !6419
  ret i32 %74, !dbg !6419
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noredzone
declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_notice(%struct.device*, i8*, ...) #5

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noredzone
declare dso_local void @release_firmware(%struct.firmware*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @si2168_ts_bus_ctrl(%struct.dvb_frontend* %fe, i32 %acquire) #2 !dbg !6420 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %acquire.addr = alloca i32, align 4
  %client = alloca %struct.i2c_client*, align 8
  %dev = alloca %struct.si2168_dev*, align 8
  %cmd = alloca %struct.si2168_cmd, align 4
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6421, metadata !DIExpression()), !dbg !6422
  store i32 %acquire, i32* %acquire.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %acquire.addr, metadata !6423, metadata !DIExpression()), !dbg !6424
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6425, metadata !DIExpression()), !dbg !6426
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6427
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6428
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6428
  %2 = bitcast i8* %1 to %struct.i2c_client*, !dbg !6427
  store %struct.i2c_client* %2, %struct.i2c_client** %client, align 8, !dbg !6426
  call void @llvm.dbg.declare(metadata %struct.si2168_dev** %dev, metadata !6429, metadata !DIExpression()), !dbg !6430
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6431
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %3) #9, !dbg !6432
  %4 = bitcast i8* %call to %struct.si2168_dev*, !dbg !6432
  store %struct.si2168_dev* %4, %struct.si2168_dev** %dev, align 8, !dbg !6430
  call void @llvm.dbg.declare(metadata %struct.si2168_cmd* %cmd, metadata !6433, metadata !DIExpression()), !dbg !6434
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6435, metadata !DIExpression()), !dbg !6436
  store i32 0, i32* %ret, align 4, !dbg !6436
  %5 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !6437
  %ts_mode = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %5, i32 0, i32 8, !dbg !6439
  %6 = load i8, i8* %ts_mode, align 8, !dbg !6439
  %conv = zext i8 %6 to i32, !dbg !6437
  %and = and i32 %conv, 32, !dbg !6440
  %tobool = icmp ne i32 %and, 0, !dbg !6440
  br i1 %tobool, label %if.then, label %if.end4, !dbg !6441

if.then:                                          ; preds = %entry
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 6, i32 4) #9, !dbg !6442
  %7 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6444
  %call1 = call i32 @si2168_cmd_execute(%struct.i2c_client* %7, %struct.si2168_cmd* %cmd) #9, !dbg !6445
  store i32 %call1, i32* %ret, align 4, !dbg !6446
  %8 = load i32, i32* %ret, align 4, !dbg !6447
  %tobool2 = icmp ne i32 %8, 0, !dbg !6447
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !6449

if.then3:                                         ; preds = %if.then
  %9 = load i32, i32* %ret, align 4, !dbg !6450
  store i32 %9, i32* %retval, align 4, !dbg !6451
  br label %return, !dbg !6451

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !6452

if.end4:                                          ; preds = %if.end, %entry
  call void @cmd_init(%struct.si2168_cmd* %cmd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 6, i32 4) #9, !dbg !6453
  %10 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !6454
  %ts_mode5 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %10, i32 0, i32 8, !dbg !6456
  %11 = load i8, i8* %ts_mode5, align 8, !dbg !6456
  %conv6 = zext i8 %11 to i32, !dbg !6454
  %and7 = and i32 %conv6, 32, !dbg !6457
  %tobool8 = icmp ne i32 %and7, 0, !dbg !6457
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6458

if.then9:                                         ; preds = %if.end4
  %args = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6459
  %arrayidx = getelementptr [30 x i8], [30 x i8]* %args, i64 0, i64 4, !dbg !6460
  store i8 32, i8* %arrayidx, align 4, !dbg !6461
  br label %if.end10, !dbg !6460

if.end10:                                         ; preds = %if.then9, %if.end4
  %12 = load i32, i32* %acquire.addr, align 4, !dbg !6462
  %tobool11 = icmp ne i32 %12, 0, !dbg !6462
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !6464

if.then12:                                        ; preds = %if.end10
  %13 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !6465
  %ts_mode13 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %13, i32 0, i32 8, !dbg !6466
  %14 = load i8, i8* %ts_mode13, align 8, !dbg !6466
  %conv14 = zext i8 %14 to i32, !dbg !6465
  %args15 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6467
  %arrayidx16 = getelementptr [30 x i8], [30 x i8]* %args15, i64 0, i64 4, !dbg !6468
  %15 = load i8, i8* %arrayidx16, align 4, !dbg !6469
  %conv17 = zext i8 %15 to i32, !dbg !6469
  %or = or i32 %conv17, %conv14, !dbg !6469
  %conv18 = trunc i32 %or to i8, !dbg !6469
  store i8 %conv18, i8* %arrayidx16, align 4, !dbg !6469
  br label %if.end23, !dbg !6468

if.else:                                          ; preds = %if.end10
  %args19 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6470
  %arrayidx20 = getelementptr [30 x i8], [30 x i8]* %args19, i64 0, i64 4, !dbg !6471
  %16 = load i8, i8* %arrayidx20, align 4, !dbg !6472
  %conv21 = zext i8 %16 to i32, !dbg !6472
  %conv22 = trunc i32 %conv21 to i8, !dbg !6472
  store i8 %conv22, i8* %arrayidx20, align 4, !dbg !6472
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then12
  %17 = load %struct.si2168_dev*, %struct.si2168_dev** %dev, align 8, !dbg !6473
  %ts_clock_gapped = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %17, i32 0, i32 9, !dbg !6475
  %bf.load = load i8, i8* %ts_clock_gapped, align 1, !dbg !6475
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !6475
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6475
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6475
  %tobool24 = icmp ne i32 %bf.cast, 0, !dbg !6473
  br i1 %tobool24, label %if.then25, label %if.end31, !dbg !6476

if.then25:                                        ; preds = %if.end23
  %args26 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %cmd, i32 0, i32 0, !dbg !6477
  %arrayidx27 = getelementptr [30 x i8], [30 x i8]* %args26, i64 0, i64 4, !dbg !6478
  %18 = load i8, i8* %arrayidx27, align 4, !dbg !6479
  %conv28 = zext i8 %18 to i32, !dbg !6479
  %or29 = or i32 %conv28, 64, !dbg !6479
  %conv30 = trunc i32 %or29 to i8, !dbg !6479
  store i8 %conv30, i8* %arrayidx27, align 4, !dbg !6479
  br label %if.end31, !dbg !6478

if.end31:                                         ; preds = %if.then25, %if.end23
  %19 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6480
  %call32 = call i32 @si2168_cmd_execute(%struct.i2c_client* %19, %struct.si2168_cmd* %cmd) #9, !dbg !6481
  store i32 %call32, i32* %ret, align 4, !dbg !6482
  %20 = load i32, i32* %ret, align 4, !dbg !6483
  store i32 %20, i32* %retval, align 4, !dbg !6484
  br label %return, !dbg !6484

return:                                           ; preds = %if.end31, %if.then3
  %21 = load i32, i32* %retval, align 4, !dbg !6485
  ret i32 %21, !dbg !6485
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
!llvm.module.flags = !{!4508, !4509, !4510, !4511}
!llvm.ident = !{!4512}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_si2168_driver_init224", scope: !2, file: !3, line: 800, type: !321, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !315, globals: !326, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/si2168.c", directory: "/home/lizy2001/genbc/linux")
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
!315 = !{!316, !319, !321, !322, !323, !325}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !318, line: 76, flags: DIFlagFwdDecl)
!318 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !320, line: 148, baseType: !7)
!320 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!322 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!325 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!326 = !{!0, !327, !334, !340, !345, !350, !355, !360, !362, !364, !366, !4180, !4183, !4505}
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "__exitcall_si2168_driver_exit", scope: !2, file: !3, line: 800, type: !329, isLocal: true, isDefinition: true)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !330, line: 117, baseType: !331)
!330 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{null}
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author225", scope: !2, file: !3, line: 802, type: !336, isLocal: true, isDefinition: true, align: 8)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 360, elements: !338)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!338 = !{!339}
!339 = !DISubrange(count: 45)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description226", scope: !2, file: !3, line: 803, type: !342, isLocal: true, isDefinition: true, align: 8)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 552, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 69)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file227", scope: !2, file: !3, line: 804, type: !347, isLocal: true, isDefinition: true, align: 8)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 376, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 47)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license228", scope: !2, file: !3, line: 804, type: !352, isLocal: true, isDefinition: true, align: 8)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 152, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 19)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware229", scope: !2, file: !3, line: 805, type: !357, isLocal: true, isDefinition: true, align: 8)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 344, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 43)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware230", scope: !2, file: !3, line: 806, type: !357, isLocal: true, isDefinition: true, align: 8)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware231", scope: !2, file: !3, line: 807, type: !357, isLocal: true, isDefinition: true, align: 8)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware232", scope: !2, file: !3, line: 808, type: !357, isLocal: true, isDefinition: true, align: 8)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "si2168_driver", scope: !2, file: !3, line: 790, type: !368, isLocal: true, isDefinition: true)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_driver", file: !95, line: 255, size: 1920, elements: !369)
!369 = !{!370, !371, !4099, !4103, !4104, !4108, !4112, !4116, !4117, !4118, !4176, !4179}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !368, file: !95, line: 256, baseType: !7, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !368, file: !95, line: 259, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!325, !375, !4093}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !95, line: 314, size: 6016, elements: !377)
!377 = !{!378, !380, !381, !385, !4089, !4090, !4091, !4092}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !95, line: 315, baseType: !379, size: 16)
!379 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !376, file: !95, line: 325, baseType: !379, size: 16, offset: 16)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !95, line: 328, baseType: !382, size: 160, offset: 32)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 160, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 20)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !376, file: !95, line: 329, baseType: !386, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !95, line: 695, size: 7552, elements: !388)
!388 = !{!389, !390, !391, !437, !438, !452, !3482, !3483, !3484, !3485, !4036, !4037, !4038, !4042, !4043, !4044, !4045, !4077, !4088}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !387, file: !95, line: 696, baseType: !316, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !387, file: !95, line: 697, baseType: !7, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !387, file: !95, line: 698, baseType: !392, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !95, line: 519, size: 320, elements: !395)
!395 = !{!396, !413, !414, !430, !431}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !394, file: !95, line: 529, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!325, !386, !400, !325}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !402, line: 69, size: 128, elements: !403)
!402 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !407, !408, !409}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !401, file: !402, line: 70, baseType: !405, size: 16)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !406, line: 24, baseType: !379)
!406 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !402, line: 71, baseType: !405, size: 16, offset: 16)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !401, file: !402, line: 84, baseType: !405, size: 16, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !401, file: !402, line: 85, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !406, line: 21, baseType: !412)
!412 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !394, file: !95, line: 531, baseType: !397, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !394, file: !95, line: 533, baseType: !415, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!325, !386, !418, !379, !324, !420, !325, !421}
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !419, line: 19, baseType: !405)
!419 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !419, line: 17, baseType: !411)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !402, line: 135, size: 272, elements: !423)
!423 = !{!424, !425, !426}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !422, file: !402, line: 136, baseType: !411, size: 8)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !422, file: !402, line: 137, baseType: !405, size: 16)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !422, file: !402, line: 138, baseType: !427, size: 272)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 272, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 34)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !394, file: !95, line: 536, baseType: !415, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !394, file: !95, line: 541, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!435, !386}
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !419, line: 21, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !406, line: 27, baseType: !7)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !387, file: !95, line: 699, baseType: !321, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !387, file: !95, line: 702, baseType: !439, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !95, line: 557, size: 192, elements: !442)
!442 = !{!443, !447, !451}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !441, file: !95, line: 558, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !386, !7}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !441, file: !95, line: 559, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!325, !386, !7}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !441, file: !95, line: 560, baseType: !444, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !387, file: !95, line: 703, baseType: !453, size: 192, offset: 320)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !454, line: 30, size: 192, elements: !455)
!454 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!455 = !{!456, !466, !482}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !453, file: !454, line: 31, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !458, line: 29, baseType: !459)
!458 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !458, line: 20, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !459, file: !458, line: 21, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !463, line: 25, baseType: !464)
!463 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 25, elements: !465)
!465 = !{}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !453, file: !454, line: 32, baseType: !467, size: 128)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !468, line: 125, size: 128, elements: !469)
!468 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!469 = !{!470, !481}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !467, file: !468, line: 126, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !468, line: 31, size: 64, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !471, file: !468, line: 32, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !468, line: 24, size: 192, align: 64, elements: !476)
!476 = !{!477, !479, !480}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !475, file: !468, line: 25, baseType: !478, size: 64)
!478 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !475, file: !468, line: 26, baseType: !474, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !475, file: !468, line: 27, baseType: !474, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !467, file: !468, line: 127, baseType: !474, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !453, file: !454, line: 33, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !485, line: 640, size: 48640, elements: !486)
!485 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!486 = !{!487, !493, !495, !496, !506, !507, !508, !509, !510, !511, !512, !513, !517, !543, !554, !646, !647, !648, !659, !660, !662, !663, !2789, !2790, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2872, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2887, !2888, !2889, !2891, !2892, !2893, !2894, !2895, !2896, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2920, !2925, !2926, !2927, !2928, !2929, !2931, !2934, !2937, !2940, !2943, !2946, !3047, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3091, !3092, !3093, !3094, !3095, !3100, !3101, !3102, !3105, !3106, !3109, !3112, !3115, !3116, !3148, !3151, !3152, !3231, !3232, !3235, !3236, !3239, !3240, !3241, !3245, !3246, !3247, !3260, !3261, !3262, !3272, !3277, !3278, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !484, file: !485, line: 646, baseType: !488, size: 128)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !489, line: 56, size: 128, elements: !490)
!489 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !489, line: 57, baseType: !478, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !488, file: !489, line: 58, baseType: !435, size: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !484, file: !485, line: 649, baseType: !494, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !322)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !484, file: !485, line: 657, baseType: !321, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !484, file: !485, line: 658, baseType: !497, size: 32, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !498, line: 113, baseType: !499)
!498 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !498, line: 111, size: 32, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !499, file: !498, line: 112, baseType: !502, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !320, line: 168, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 166, size: 32, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !503, file: !320, line: 167, baseType: !325, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !485, line: 660, baseType: !7, size: 32, offset: 288)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !484, file: !485, line: 661, baseType: !7, size: 32, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !484, file: !485, line: 684, baseType: !325, size: 32, offset: 352)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !484, file: !485, line: 686, baseType: !325, size: 32, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !484, file: !485, line: 687, baseType: !325, size: 32, offset: 416)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !484, file: !485, line: 688, baseType: !325, size: 32, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !484, file: !485, line: 689, baseType: !7, size: 32, offset: 480)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !484, file: !485, line: 691, baseType: !514, size: 64, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !485, line: 691, flags: DIFlagFwdDecl)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !484, file: !485, line: 692, baseType: !518, size: 832, offset: 576)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !485, line: 451, size: 832, elements: !519)
!519 = !{!520, !525, !526, !532, !533, !537, !538, !539, !540, !541}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !518, file: !485, line: 453, baseType: !521, size: 128)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !485, line: 325, size: 128, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !521, file: !485, line: 326, baseType: !478, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !521, file: !485, line: 327, baseType: !435, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !518, file: !485, line: 454, baseType: !475, size: 192, align: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !518, file: !485, line: 455, baseType: !527, size: 128, offset: 320)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !320, line: 178, size: 128, elements: !528)
!528 = !{!529, !531}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !320, line: 179, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !527, file: !320, line: 179, baseType: !530, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !518, file: !485, line: 456, baseType: !7, size: 32, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !518, file: !485, line: 458, baseType: !534, size: 64, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !419, line: 23, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !406, line: 31, baseType: !536)
!536 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !518, file: !485, line: 459, baseType: !534, size: 64, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !518, file: !485, line: 460, baseType: !534, size: 64, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !518, file: !485, line: 461, baseType: !534, size: 64, offset: 704)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !518, file: !485, line: 463, baseType: !534, size: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !518, file: !485, line: 465, baseType: !542, offset: 832)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !485, line: 415, elements: !465)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !484, file: !485, line: 693, baseType: !544, size: 384, offset: 1408)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !485, line: 489, size: 384, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551, !552}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !544, file: !485, line: 490, baseType: !527, size: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !544, file: !485, line: 491, baseType: !478, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !544, file: !485, line: 492, baseType: !478, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !544, file: !485, line: 493, baseType: !7, size: 32, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !544, file: !485, line: 494, baseType: !379, size: 16, offset: 288)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !544, file: !485, line: 495, baseType: !379, size: 16, offset: 304)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !544, file: !485, line: 497, baseType: !553, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !484, file: !485, line: 697, baseType: !555, size: 1792, offset: 1792)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !485, line: 507, size: 1792, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !567, !568, !569, !570, !571, !572, !573, !643, !644}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !555, file: !485, line: 508, baseType: !475, size: 192, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !555, file: !485, line: 515, baseType: !534, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !555, file: !485, line: 516, baseType: !534, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !555, file: !485, line: 517, baseType: !534, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !555, file: !485, line: 518, baseType: !534, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !555, file: !485, line: 519, baseType: !534, size: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !555, file: !485, line: 526, baseType: !564, size: 64, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !419, line: 22, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !406, line: 30, baseType: !566)
!566 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !555, file: !485, line: 527, baseType: !534, size: 64, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !485, line: 528, baseType: !7, size: 32, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !555, file: !485, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !555, file: !485, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !555, file: !485, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !555, file: !485, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !555, file: !485, line: 563, baseType: !574, size: 512, offset: 704)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !575)
!575 = !{!576, !584, !585, !590, !639, !640, !641, !642}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !574, file: !6, line: 119, baseType: !577, size: 256)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !578, line: 9, size: 256, elements: !579)
!578 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !577, file: !578, line: 10, baseType: !475, size: 192, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !577, file: !578, line: 11, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !583, line: 29, baseType: !564)
!583 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !574, file: !6, line: 120, baseType: !582, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !574, file: !6, line: 121, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!5, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !574, file: !6, line: 122, baseType: !591, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !593)
!593 = !{!594, !614, !615, !619, !629, !630, !634, !638}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !592, file: !6, line: 160, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !596, file: !6, line: 215, baseType: !457)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !596, file: !6, line: 216, baseType: !7, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !596, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !596, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !596, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !596, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !596, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !596, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !596, file: !6, line: 233, baseType: !582, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !596, file: !6, line: 234, baseType: !589, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !596, file: !6, line: 235, baseType: !582, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !596, file: !6, line: 236, baseType: !589, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !596, file: !6, line: 237, baseType: !611, size: 4096, offset: 512)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 4096, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 8)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !592, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !592, file: !6, line: 162, baseType: !616, size: 32, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !320, line: 27, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !618, line: 96, baseType: !325)
!618 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!619 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !592, file: !6, line: 163, baseType: !620, size: 32, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !621, line: 276, baseType: !622)
!621 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !621, line: 276, size: 32, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !622, file: !621, line: 276, baseType: !625, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !621, line: 70, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !621, line: 65, size: 32, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !626, file: !621, line: 66, baseType: !7, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !592, file: !6, line: 164, baseType: !589, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !592, file: !6, line: 165, baseType: !631, size: 128, offset: 256)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !578, line: 14, size: 128, elements: !632)
!632 = !{!633}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !631, file: !578, line: 15, baseType: !467, size: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !592, file: !6, line: 166, baseType: !635, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!582}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !592, file: !6, line: 167, baseType: !582, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !574, file: !6, line: 123, baseType: !420, size: 8, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !574, file: !6, line: 124, baseType: !420, size: 8, offset: 456)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !574, file: !6, line: 125, baseType: !420, size: 8, offset: 464)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !574, file: !6, line: 126, baseType: !420, size: 8, offset: 472)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !555, file: !485, line: 572, baseType: !574, size: 512, offset: 1216)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !555, file: !485, line: 580, baseType: !645, size: 64, offset: 1728)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !484, file: !485, line: 721, baseType: !7, size: 32, offset: 3584)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !484, file: !485, line: 722, baseType: !325, size: 32, offset: 3616)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !484, file: !485, line: 723, baseType: !649, size: 64, offset: 3648)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !652, line: 17, baseType: !653)
!652 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !652, line: 17, size: 64, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !653, file: !652, line: 17, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 64, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 1)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !484, file: !485, line: 724, baseType: !651, size: 64, offset: 3712)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !484, file: !485, line: 749, baseType: !661, offset: 3776)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !485, line: 290, elements: !465)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !484, file: !485, line: 751, baseType: !527, size: 128, offset: 3776)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !484, file: !485, line: 757, baseType: !664, size: 64, offset: 3904)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !666, line: 388, size: 7296, elements: !667)
!666 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!667 = !{!668, !2785}
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !666, line: 389, baseType: !669, size: 7296)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !666, line: 389, size: 7296, elements: !670)
!670 = !{!671, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2698, !2704, !2707, !2746, !2747, !2769, !2770, !2773, !2774, !2775, !2778, !2779, !2780, !2783, !2784}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !669, file: !666, line: 390, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !666, line: 305, size: 1472, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !690, !691, !696, !697, !700, !704, !705, !2646, !2647, !2648}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !673, file: !666, line: 308, baseType: !478, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !673, file: !666, line: 309, baseType: !478, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !673, file: !666, line: 313, baseType: !672, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !673, file: !666, line: 313, baseType: !672, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !673, file: !666, line: 315, baseType: !475, size: 192, align: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !673, file: !666, line: 323, baseType: !478, size: 64, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !673, file: !666, line: 327, baseType: !664, size: 64, offset: 512)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !673, file: !666, line: 333, baseType: !683, size: 64, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !684, line: 284, baseType: !685)
!684 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !684, line: 284, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !685, file: !684, line: 284, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !689, line: 19, baseType: !478)
!689 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !673, file: !666, line: 334, baseType: !478, size: 64, offset: 640)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !673, file: !666, line: 343, baseType: !692, size: 256, offset: 704)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !666, line: 340, size: 256, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !692, file: !666, line: 341, baseType: !475, size: 192, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !692, file: !666, line: 342, baseType: !478, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !673, file: !666, line: 351, baseType: !527, size: 128, offset: 960)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !673, file: !666, line: 353, baseType: !698, size: 64, offset: 1088)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !666, line: 353, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !673, file: !666, line: 356, baseType: !701, size: 64, offset: 1152)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !666, line: 356, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !673, file: !666, line: 359, baseType: !478, size: 64, offset: 1216)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !673, file: !666, line: 361, baseType: !706, size: 64, offset: 1280)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !708)
!708 = !{!709, !727, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2445, !2630, !2639, !2640, !2641, !2642, !2643, !2644, !2645}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !707, file: !31, line: 920, baseType: !710, size: 128)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !707, file: !31, line: 917, size: 128, elements: !711)
!711 = !{!712, !718}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !710, file: !31, line: 918, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !714, line: 58, size: 64, elements: !715)
!714 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !714, line: 59, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !710, file: !31, line: 919, baseType: !719, size: 128, align: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !320, line: 216, size: 128, align: 64, elements: !720)
!720 = !{!721, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !320, line: 217, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !719, file: !320, line: 218, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !722}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !707, file: !31, line: 921, baseType: !728, size: 128, offset: 128)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !729, line: 8, size: 128, elements: !730)
!729 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!730 = !{!731, !735}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !728, file: !729, line: 9, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !734, line: 18, flags: DIFlagFwdDecl)
!734 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !728, file: !729, line: 10, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !734, line: 89, size: 1536, elements: !738)
!738 = !{!739, !740, !745, !753, !754, !769, !2375, !2377, !2389, !2390, !2391, !2392, !2393, !2398, !2399, !2400}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !737, file: !734, line: 91, baseType: !7, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !737, file: !734, line: 92, baseType: !741, size: 32, offset: 32)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !621, line: 277, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !621, line: 277, size: 32, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !742, file: !621, line: 277, baseType: !625, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !737, file: !734, line: 93, baseType: !746, size: 128, offset: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !747, line: 38, size: 128, elements: !748)
!747 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!748 = !{!749, !751}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !746, file: !747, line: 39, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !746, file: !747, line: 39, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !737, file: !734, line: 94, baseType: !736, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !737, file: !734, line: 95, baseType: !755, size: 128, offset: 256)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !734, line: 47, size: 128, elements: !756)
!756 = !{!757, !766}
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !734, line: 48, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !734, line: 48, size: 64, elements: !759)
!759 = !{!760, !765}
!760 = !DIDerivedType(tag: DW_TAG_member, scope: !758, file: !734, line: 49, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !758, file: !734, line: 49, size: 64, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !761, file: !734, line: 50, baseType: !435, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !761, file: !734, line: 50, baseType: !435, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !758, file: !734, line: 52, baseType: !534, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !755, file: !734, line: 54, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !737, file: !734, line: 96, baseType: !770, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !772)
!772 = !{!773, !775, !776, !784, !791, !792, !945, !1764, !1765, !1766, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !2043, !2051, !2052, !2053, !2371, !2372, !2373, !2374}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !771, file: !31, line: 611, baseType: !774, size: 16)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !320, line: 19, baseType: !379)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !771, file: !31, line: 612, baseType: !379, size: 16, offset: 16)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !771, file: !31, line: 613, baseType: !777, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !778, line: 23, baseType: !779)
!778 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !778, line: 21, size: 32, elements: !780)
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !779, file: !778, line: 22, baseType: !782, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !320, line: 32, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !618, line: 49, baseType: !7)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !771, file: !31, line: 614, baseType: !785, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !778, line: 28, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !778, line: 26, size: 32, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !786, file: !778, line: 27, baseType: !789, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !320, line: 33, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !618, line: 50, baseType: !7)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !771, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !771, file: !31, line: 622, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !796)
!796 = !{!797, !801, !815, !819, !825, !829, !835, !839, !843, !847, !851, !852, !858, !862, !886, !915, !925, !931, !936, !940, !941}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !795, file: !31, line: 1865, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!736, !770, !736, !7}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !795, file: !31, line: 1866, baseType: !802, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!805, !736, !770, !806}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !808, line: 10, size: 128, elements: !809)
!808 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !814}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !807, file: !808, line: 11, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !321}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !807, file: !808, line: 12, baseType: !321, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !795, file: !31, line: 1867, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!325, !770, !325}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !795, file: !31, line: 1868, baseType: !820, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!823, !770, !325}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !795, file: !31, line: 1870, baseType: !826, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!325, !736, !323, !325}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !795, file: !31, line: 1872, baseType: !830, size: 64, offset: 320)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!325, !770, !736, !774, !833}
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !320, line: 30, baseType: !834)
!834 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !795, file: !31, line: 1873, baseType: !836, size: 64, offset: 384)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!325, !736, !770, !736}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !795, file: !31, line: 1874, baseType: !840, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!325, !770, !736}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !795, file: !31, line: 1875, baseType: !844, size: 64, offset: 512)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!325, !770, !736, !805}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !795, file: !31, line: 1876, baseType: !848, size: 64, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!325, !770, !736, !774}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !795, file: !31, line: 1877, baseType: !840, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !795, file: !31, line: 1878, baseType: !853, size: 64, offset: 704)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!325, !770, !736, !774, !856}
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !320, line: 16, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !320, line: 13, baseType: !435)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !795, file: !31, line: 1879, baseType: !859, size: 64, offset: 768)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!325, !770, !736, !770, !736, !7}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !795, file: !31, line: 1881, baseType: !863, size: 64, offset: 832)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!325, !736, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !868)
!868 = !{!869, !870, !871, !872, !873, !876, !883, !884, !885}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !867, file: !31, line: 220, baseType: !7, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !867, file: !31, line: 221, baseType: !774, size: 16, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !867, file: !31, line: 222, baseType: !777, size: 32, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !867, file: !31, line: 223, baseType: !785, size: 32, offset: 96)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !867, file: !31, line: 224, baseType: !874, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !320, line: 46, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !618, line: 88, baseType: !566)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !867, file: !31, line: 225, baseType: !877, size: 128, offset: 192)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !878, line: 13, size: 128, elements: !879)
!878 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!879 = !{!880, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !877, file: !878, line: 14, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !878, line: 8, baseType: !565)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !877, file: !878, line: 15, baseType: !322, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !867, file: !31, line: 226, baseType: !877, size: 128, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !867, file: !31, line: 227, baseType: !877, size: 128, offset: 448)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !867, file: !31, line: 234, baseType: !706, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !795, file: !31, line: 1882, baseType: !887, size: 64, offset: 896)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!325, !890, !892, !435, !7}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !894, line: 22, size: 1152, elements: !895)
!894 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!895 = !{!896, !897, !898, !899, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !893, file: !894, line: 23, baseType: !435, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !893, file: !894, line: 24, baseType: !774, size: 16, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !893, file: !894, line: 25, baseType: !7, size: 32, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !893, file: !894, line: 26, baseType: !900, size: 32, offset: 96)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !320, line: 104, baseType: !435)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !893, file: !894, line: 27, baseType: !534, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !893, file: !894, line: 28, baseType: !534, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !893, file: !894, line: 37, baseType: !534, size: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !893, file: !894, line: 38, baseType: !856, size: 32, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !893, file: !894, line: 39, baseType: !856, size: 32, offset: 352)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !893, file: !894, line: 40, baseType: !777, size: 32, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !893, file: !894, line: 41, baseType: !785, size: 32, offset: 416)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !893, file: !894, line: 42, baseType: !874, size: 64, offset: 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !893, file: !894, line: 43, baseType: !877, size: 128, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !893, file: !894, line: 44, baseType: !877, size: 128, offset: 640)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !893, file: !894, line: 45, baseType: !877, size: 128, offset: 768)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !893, file: !894, line: 46, baseType: !877, size: 128, offset: 896)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !893, file: !894, line: 47, baseType: !534, size: 64, offset: 1024)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !893, file: !894, line: 48, baseType: !534, size: 64, offset: 1088)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !795, file: !31, line: 1883, baseType: !916, size: 64, offset: 960)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!919, !736, !323, !922}
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !320, line: 60, baseType: !920)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !618, line: 73, baseType: !921)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !618, line: 15, baseType: !322)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !320, line: 55, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !618, line: 72, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !618, line: 16, baseType: !478)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !795, file: !31, line: 1884, baseType: !926, size: 64, offset: 1024)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!325, !770, !929, !534, !534}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !795, file: !31, line: 1886, baseType: !932, size: 64, offset: 1088)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!325, !770, !935, !325}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !795, file: !31, line: 1887, baseType: !937, size: 64, offset: 1152)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!325, !770, !736, !706, !7, !774}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !795, file: !31, line: 1890, baseType: !848, size: 64, offset: 1216)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !795, file: !31, line: 1891, baseType: !942, size: 64, offset: 1280)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!325, !770, !823, !325}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !771, file: !31, line: 623, baseType: !946, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !948)
!948 = !{!949, !950, !951, !952, !953, !954, !1003, !1340, !1428, !1511, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1527, !1531, !1532, !1535, !1538, !1541, !1542, !1543, !1584, !1617, !1618, !1619, !1620, !1621, !1622, !1625, !1629, !1638, !1639, !1641, !1642, !1643, !1702, !1703, !1718, !1719, !1720, !1721, !1722, !1726, !1727, !1730, !1745, !1746, !1747, !1758, !1759, !1760, !1761, !1762, !1763}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !947, file: !31, line: 1417, baseType: !527, size: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !947, file: !31, line: 1418, baseType: !856, size: 32, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !947, file: !31, line: 1419, baseType: !412, size: 8, offset: 160)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !947, file: !31, line: 1420, baseType: !478, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !947, file: !31, line: 1421, baseType: !874, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !947, file: !31, line: 1422, baseType: !955, size: 64, offset: 320)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !957)
!957 = !{!958, !959, !960, !967, !971, !975, !979, !980, !981, !991, !994, !995, !996, !1000, !1001, !1002}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !956, file: !31, line: 2229, baseType: !805, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !956, file: !31, line: 2230, baseType: !325, size: 32, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !956, file: !31, line: 2238, baseType: !961, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!325, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !966, line: 28, flags: DIFlagFwdDecl)
!966 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!967 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !956, file: !31, line: 2239, baseType: !968, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !970)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !956, file: !31, line: 2240, baseType: !972, size: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!736, !955, !325, !805, !321}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !956, file: !31, line: 2242, baseType: !976, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !946}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !956, file: !31, line: 2243, baseType: !316, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !956, file: !31, line: 2244, baseType: !955, size: 64, offset: 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !956, file: !31, line: 2245, baseType: !982, size: 64, offset: 512)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !320, line: 182, size: 64, elements: !983)
!983 = !{!984}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !982, file: !320, line: 183, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !320, line: 186, size: 128, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !986, file: !320, line: 187, baseType: !985, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !986, file: !320, line: 187, baseType: !990, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !956, file: !31, line: 2247, baseType: !992, offset: 576)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !993, line: 187, elements: !465)
!993 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!994 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !956, file: !31, line: 2248, baseType: !992, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !956, file: !31, line: 2249, baseType: !992, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !956, file: !31, line: 2250, baseType: !997, offset: 576)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, elements: !998)
!998 = !{!999}
!999 = !DISubrange(count: 3)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !956, file: !31, line: 2252, baseType: !992, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !956, file: !31, line: 2253, baseType: !992, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !956, file: !31, line: 2254, baseType: !992, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !947, file: !31, line: 1423, baseType: !1004, size: 64, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !1007)
!1007 = !{!1008, !1012, !1016, !1017, !1021, !1027, !1031, !1032, !1033, !1037, !1041, !1042, !1043, !1044, !1050, !1055, !1056, !1062, !1063, !1064, !1065, !1324, !1339}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1006, file: !31, line: 1936, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!770, !946}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1006, file: !31, line: 1937, baseType: !1013, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !770}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1006, file: !31, line: 1938, baseType: !1013, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1006, file: !31, line: 1940, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !770, !325}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1006, file: !31, line: 1941, baseType: !1022, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!325, !770, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1006, file: !31, line: 1942, baseType: !1028, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!325, !770}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1006, file: !31, line: 1943, baseType: !1013, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1006, file: !31, line: 1944, baseType: !976, size: 64, offset: 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1006, file: !31, line: 1945, baseType: !1034, size: 64, offset: 512)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!325, !946, !325}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1006, file: !31, line: 1946, baseType: !1038, size: 64, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!325, !946}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1006, file: !31, line: 1947, baseType: !1038, size: 64, offset: 640)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1006, file: !31, line: 1948, baseType: !1038, size: 64, offset: 704)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1006, file: !31, line: 1949, baseType: !1038, size: 64, offset: 768)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1006, file: !31, line: 1950, baseType: !1045, size: 64, offset: 832)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!325, !736, !1048}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1006, file: !31, line: 1951, baseType: !1051, size: 64, offset: 896)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!325, !946, !1054, !323}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1006, file: !31, line: 1952, baseType: !976, size: 64, offset: 960)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1006, file: !31, line: 1954, baseType: !1057, size: 64, offset: 1024)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!325, !1060, !736}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !684, line: 539, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1006, file: !31, line: 1955, baseType: !1057, size: 64, offset: 1088)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1006, file: !31, line: 1956, baseType: !1057, size: 64, offset: 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1006, file: !31, line: 1957, baseType: !1057, size: 64, offset: 1216)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1006, file: !31, line: 1963, baseType: !1066, size: 64, offset: 1280)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!325, !946, !1069, !319}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !666, line: 68, size: 512, align: 128, elements: !1071)
!1071 = !{!1072, !1073, !1316, !1323}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !666, line: 69, baseType: !478, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !666, line: 77, baseType: !1074, size: 320, offset: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !666, line: 77, size: 320, elements: !1075)
!1075 = !{!1076, !1248, !1253, !1281, !1289, !1295, !1308, !1315}
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !666, line: 78, baseType: !1077, size: 320)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !666, line: 78, size: 320, elements: !1078)
!1078 = !{!1079, !1080, !1246, !1247}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1077, file: !666, line: 84, baseType: !527, size: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1077, file: !666, line: 86, baseType: !1081, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !1083)
!1083 = !{!1084, !1085, !1099, !1100, !1101, !1102, !1116, !1117, !1118, !1119, !1239, !1240, !1243, !1244, !1245}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1082, file: !31, line: 452, baseType: !770, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1082, file: !31, line: 453, baseType: !1086, size: 128, offset: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1087, line: 292, size: 128, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1088 = !{!1089, !1097, !1098}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1086, file: !1087, line: 293, baseType: !1090)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !458, line: 83, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !458, line: 71, elements: !1092)
!1092 = !{!1093}
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !458, line: 72, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !458, line: 72, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1094, file: !458, line: 73, baseType: !459)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1086, file: !1087, line: 295, baseType: !319, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1086, file: !1087, line: 296, baseType: !321, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1082, file: !31, line: 454, baseType: !319, size: 32, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1082, file: !31, line: 455, baseType: !502, size: 32, offset: 224)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1082, file: !31, line: 460, baseType: !467, size: 128, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1082, file: !31, line: 461, baseType: !1103, size: 256, offset: 384)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1104, line: 35, size: 256, elements: !1105)
!1104 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1105 = !{!1106, !1113, !1114, !1115}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1103, file: !1104, line: 36, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1108, line: 13, baseType: !1109)
!1108 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !320, line: 175, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 173, size: 64, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1110, file: !320, line: 174, baseType: !564, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1103, file: !1104, line: 42, baseType: !1107, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1103, file: !1104, line: 46, baseType: !457, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1103, file: !1104, line: 47, baseType: !527, size: 128, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1082, file: !31, line: 462, baseType: !478, size: 64, offset: 640)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1082, file: !31, line: 463, baseType: !478, size: 64, offset: 704)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1082, file: !31, line: 464, baseType: !478, size: 64, offset: 768)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1082, file: !31, line: 465, baseType: !1120, size: 64, offset: 832)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !1123)
!1123 = !{!1124, !1128, !1132, !1136, !1140, !1144, !1150, !1156, !1160, !1165, !1169, !1173, !1177, !1203, !1207, !1213, !1214, !1215, !1219, !1224, !1228, !1235}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1122, file: !31, line: 368, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!325, !1069, !1025}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1122, file: !31, line: 369, baseType: !1129, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!325, !706, !1069}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1122, file: !31, line: 372, baseType: !1133, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!325, !1081, !1025}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1122, file: !31, line: 375, baseType: !1137, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!325, !1069}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1122, file: !31, line: 381, baseType: !1141, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!325, !706, !1081, !530, !7}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1122, file: !31, line: 383, baseType: !1145, size: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1122, file: !31, line: 385, baseType: !1151, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!325, !706, !1081, !874, !7, !7, !1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1122, file: !31, line: 388, baseType: !1157, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!325, !706, !1081, !874, !7, !7, !1069, !321}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1122, file: !31, line: 393, baseType: !1161, size: 64, offset: 512)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!1164, !1081, !1164}
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !320, line: 125, baseType: !534)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1122, file: !31, line: 394, baseType: !1166, size: 64, offset: 576)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !1069, !7, !7}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1122, file: !31, line: 395, baseType: !1170, size: 64, offset: 640)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!325, !1069, !319}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1122, file: !31, line: 396, baseType: !1174, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !1069}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1122, file: !31, line: 397, baseType: !1178, size: 64, offset: 768)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!919, !1181, !1201}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1190, !1191, !1192, !1193, !1194}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1182, file: !31, line: 321, baseType: !706, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1182, file: !31, line: 326, baseType: !874, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1182, file: !31, line: 327, baseType: !1187, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !1181, !322, !322}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1182, file: !31, line: 328, baseType: !321, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1182, file: !31, line: 329, baseType: !325, size: 32, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1182, file: !31, line: 330, baseType: !418, size: 16, offset: 288)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1182, file: !31, line: 331, baseType: !418, size: 16, offset: 304)
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !31, line: 332, baseType: !1195, size: 64, offset: 320)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1182, file: !31, line: 332, size: 64, elements: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1195, file: !31, line: 333, baseType: !7, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1195, file: !31, line: 334, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1122, file: !31, line: 402, baseType: !1204, size: 64, offset: 832)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!325, !1081, !1069, !1069, !11}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1122, file: !31, line: 404, baseType: !1208, size: 64, offset: 896)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!833, !1069, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1212, line: 305, baseType: !7)
!1212 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1122, file: !31, line: 405, baseType: !1174, size: 64, offset: 960)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1122, file: !31, line: 406, baseType: !1137, size: 64, offset: 1024)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1122, file: !31, line: 407, baseType: !1216, size: 64, offset: 1088)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!325, !1069, !478, !478}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1122, file: !31, line: 409, baseType: !1220, size: 64, offset: 1152)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !1069, !1223, !1223}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1122, file: !31, line: 410, baseType: !1225, size: 64, offset: 1216)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!325, !1081, !1069}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1122, file: !31, line: 413, baseType: !1229, size: 64, offset: 1280)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!325, !1232, !706, !1234}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1122, file: !31, line: 415, baseType: !1236, size: 64, offset: 1344)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !706}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1082, file: !31, line: 466, baseType: !478, size: 64, offset: 896)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1082, file: !31, line: 467, baseType: !1241, size: 32, offset: 960)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1242, line: 8, baseType: !435)
!1242 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1082, file: !31, line: 468, baseType: !1090, offset: 992)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1082, file: !31, line: 469, baseType: !527, size: 128, offset: 1024)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1082, file: !31, line: 470, baseType: !321, size: 64, offset: 1152)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1077, file: !666, line: 87, baseType: !478, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1077, file: !666, line: 94, baseType: !478, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !666, line: 96, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !666, line: 96, size: 64, elements: !1250)
!1250 = !{!1251}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1249, file: !666, line: 101, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !320, line: 143, baseType: !534)
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !666, line: 103, baseType: !1254, size: 320)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !666, line: 103, size: 320, elements: !1255)
!1255 = !{!1256, !1266, !1269, !1270}
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !666, line: 104, baseType: !1257, size: 128)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1254, file: !666, line: 104, size: 128, elements: !1258)
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1257, file: !666, line: 105, baseType: !527, size: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !666, line: 106, baseType: !1261, size: 128)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !666, line: 106, size: 128, elements: !1262)
!1262 = !{!1263, !1264, !1265}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1261, file: !666, line: 107, baseType: !1069, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1261, file: !666, line: 109, baseType: !325, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1261, file: !666, line: 110, baseType: !325, size: 32, offset: 96)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1254, file: !666, line: 117, baseType: !1267, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !666, line: 117, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1254, file: !666, line: 119, baseType: !321, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !666, line: 120, baseType: !1271, size: 64, offset: 256)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1254, file: !666, line: 120, size: 64, elements: !1272)
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1271, file: !666, line: 121, baseType: !321, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1271, file: !666, line: 122, baseType: !478, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !666, line: 123, baseType: !1276, size: 32)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1271, file: !666, line: 123, size: 32, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1276, file: !666, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1276, file: !666, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1276, file: !666, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !666, line: 130, baseType: !1282, size: 192)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !666, line: 130, size: 192, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1282, file: !666, line: 131, baseType: !478, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1282, file: !666, line: 134, baseType: !412, size: 8, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1282, file: !666, line: 135, baseType: !412, size: 8, offset: 72)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1282, file: !666, line: 136, baseType: !502, size: 32, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1282, file: !666, line: 137, baseType: !7, size: 32, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !666, line: 139, baseType: !1290, size: 256)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !666, line: 139, size: 256, elements: !1291)
!1291 = !{!1292, !1293, !1294}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1290, file: !666, line: 140, baseType: !478, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1290, file: !666, line: 141, baseType: !502, size: 32, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1290, file: !666, line: 143, baseType: !527, size: 128, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !666, line: 145, baseType: !1296, size: 256)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !666, line: 145, size: 256, elements: !1297)
!1297 = !{!1298, !1299, !1301, !1302, !1307}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1296, file: !666, line: 146, baseType: !478, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1296, file: !666, line: 147, baseType: !1300, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !684, line: 509, baseType: !1069)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1296, file: !666, line: 148, baseType: !478, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !666, line: 149, baseType: !1303, size: 64, offset: 192)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1296, file: !666, line: 149, size: 64, elements: !1304)
!1304 = !{!1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1303, file: !666, line: 150, baseType: !664, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1303, file: !666, line: 151, baseType: !502, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1296, file: !666, line: 156, baseType: !1090, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !666, line: 159, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !666, line: 159, size: 128, elements: !1310)
!1310 = !{!1311, !1314}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1309, file: !666, line: 161, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !666, line: 161, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1309, file: !666, line: 162, baseType: !321, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1074, file: !666, line: 176, baseType: !719, size: 128, align: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !666, line: 179, baseType: !1317, size: 32, offset: 384)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !666, line: 179, size: 32, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1317, file: !666, line: 184, baseType: !502, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1317, file: !666, line: 192, baseType: !7, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1317, file: !666, line: 194, baseType: !7, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1317, file: !666, line: 195, baseType: !325, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1070, file: !666, line: 199, baseType: !502, size: 32, offset: 416)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1006, file: !31, line: 1964, baseType: !1325, size: 64, offset: 1344)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!322, !946, !1328}
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1330, line: 12, size: 256, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1331 = !{!1332, !1333, !1334, !1335, !1336}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1329, file: !1330, line: 13, baseType: !319, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1329, file: !1330, line: 16, baseType: !325, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1329, file: !1330, line: 23, baseType: !478, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1329, file: !1330, line: 30, baseType: !478, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1329, file: !1330, line: 33, baseType: !1337, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !666, line: 27, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1006, file: !31, line: 1966, baseType: !1325, size: 64, offset: 1408)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !947, file: !31, line: 1424, baseType: !1341, size: 64, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1343)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 322, size: 704, elements: !1344)
!1344 = !{!1345, !1397, !1401, !1405, !1406, !1407, !1408, !1409, !1414, !1419, !1423}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1343, file: !19, line: 323, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!325, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 294, size: 1600, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1363, !1364, !1365, !1366, !1382, !1383, !1384}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1350, file: !19, line: 295, baseType: !986, size: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1350, file: !19, line: 296, baseType: !527, size: 128, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1350, file: !19, line: 297, baseType: !527, size: 128, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1350, file: !19, line: 298, baseType: !527, size: 128, offset: 384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1350, file: !19, line: 299, baseType: !1357, size: 192, offset: 512)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1358, line: 53, size: 192, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1359 = !{!1360, !1361, !1362}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1357, file: !1358, line: 54, baseType: !1107, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1357, file: !1358, line: 55, baseType: !1090, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1357, file: !1358, line: 59, baseType: !527, size: 128, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1350, file: !19, line: 300, baseType: !1090, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1350, file: !19, line: 301, baseType: !502, size: 32, offset: 704)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1350, file: !19, line: 302, baseType: !946, size: 64, offset: 768)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1350, file: !19, line: 303, baseType: !1367, size: 64, offset: 832)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1368)
!1368 = !{!1369, !1381}
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !19, line: 69, baseType: !1370, size: 32)
!1370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !19, line: 69, size: 32, elements: !1371)
!1371 = !{!1372, !1373, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1370, file: !19, line: 70, baseType: !777, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1370, file: !19, line: 71, baseType: !785, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1370, file: !19, line: 72, baseType: !1375, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1376, line: 24, baseType: !1377)
!1376 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1376, line: 22, size: 32, elements: !1378)
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1377, file: !1376, line: 23, baseType: !1380, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1376, line: 20, baseType: !783)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1367, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1350, file: !19, line: 304, baseType: !874, size: 64, offset: 896)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1350, file: !19, line: 305, baseType: !478, size: 64, offset: 960)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1350, file: !19, line: 306, baseType: !1385, size: 576, offset: 1024)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1386)
!1386 = !{!1387, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1385, file: !19, line: 206, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !566)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1385, file: !19, line: 207, baseType: !1388, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1385, file: !19, line: 208, baseType: !1388, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1385, file: !19, line: 209, baseType: !1388, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1385, file: !19, line: 210, baseType: !1388, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1385, file: !19, line: 211, baseType: !1388, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1385, file: !19, line: 212, baseType: !1388, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1385, file: !19, line: 213, baseType: !881, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1385, file: !19, line: 214, baseType: !881, size: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1343, file: !19, line: 324, baseType: !1398, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!1349, !946, !325}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1343, file: !19, line: 325, baseType: !1402, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !1349}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1343, file: !19, line: 326, baseType: !1346, size: 64, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1343, file: !19, line: 327, baseType: !1346, size: 64, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1343, file: !19, line: 328, baseType: !1346, size: 64, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1343, file: !19, line: 329, baseType: !1034, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1343, file: !19, line: 332, baseType: !1410, size: 64, offset: 448)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1413, !770}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1343, file: !19, line: 333, baseType: !1415, size: 64, offset: 512)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!325, !770, !1418}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1343, file: !19, line: 335, baseType: !1420, size: 64, offset: 576)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!325, !770, !1413}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1343, file: !19, line: 337, baseType: !1424, size: 64, offset: 640)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!325, !946, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !947, file: !31, line: 1425, baseType: !1429, size: 64, offset: 512)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1431)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 428, size: 704, elements: !1432)
!1432 = !{!1433, !1437, !1438, !1442, !1443, !1444, !1459, !1482, !1486, !1487, !1510}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1431, file: !19, line: 429, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!325, !946, !325, !325, !890}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1431, file: !19, line: 430, baseType: !1034, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1431, file: !19, line: 431, baseType: !1439, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!325, !946, !7}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1431, file: !19, line: 432, baseType: !1439, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1431, file: !19, line: 433, baseType: !1034, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1431, file: !19, line: 434, baseType: !1445, size: 64, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!325, !946, !325, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 415, size: 256, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1449, file: !19, line: 416, baseType: !325, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1449, file: !19, line: 417, baseType: !7, size: 32, offset: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1449, file: !19, line: 418, baseType: !7, size: 32, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1449, file: !19, line: 420, baseType: !7, size: 32, offset: 96)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1449, file: !19, line: 421, baseType: !7, size: 32, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1449, file: !19, line: 422, baseType: !7, size: 32, offset: 160)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1449, file: !19, line: 423, baseType: !7, size: 32, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1449, file: !19, line: 424, baseType: !7, size: 32, offset: 224)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1431, file: !19, line: 435, baseType: !1460, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!325, !946, !1367, !1463}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 343, size: 960, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1464, file: !19, line: 344, baseType: !325, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1464, file: !19, line: 345, baseType: !534, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1464, file: !19, line: 346, baseType: !534, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1464, file: !19, line: 347, baseType: !534, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1464, file: !19, line: 348, baseType: !534, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1464, file: !19, line: 349, baseType: !534, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1464, file: !19, line: 350, baseType: !534, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1464, file: !19, line: 351, baseType: !564, size: 64, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1464, file: !19, line: 353, baseType: !564, size: 64, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1464, file: !19, line: 354, baseType: !325, size: 32, offset: 576)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1464, file: !19, line: 355, baseType: !325, size: 32, offset: 608)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1464, file: !19, line: 356, baseType: !534, size: 64, offset: 640)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1464, file: !19, line: 357, baseType: !534, size: 64, offset: 704)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1464, file: !19, line: 358, baseType: !534, size: 64, offset: 768)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1464, file: !19, line: 359, baseType: !564, size: 64, offset: 832)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1464, file: !19, line: 360, baseType: !325, size: 32, offset: 896)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1431, file: !19, line: 436, baseType: !1483, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!325, !946, !1427, !1463}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1431, file: !19, line: 438, baseType: !1460, size: 64, offset: 512)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1431, file: !19, line: 439, baseType: !1488, size: 64, offset: 576)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!325, !946, !1491}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 409, size: 1408, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1492, file: !19, line: 410, baseType: !7, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1492, file: !19, line: 411, baseType: !1496, size: 1344, offset: 64)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1497, size: 1344, elements: !998)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 395, size: 448, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1509}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1497, file: !19, line: 396, baseType: !7, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1497, file: !19, line: 397, baseType: !7, size: 32, offset: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1497, file: !19, line: 399, baseType: !7, size: 32, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1497, file: !19, line: 400, baseType: !7, size: 32, offset: 96)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1497, file: !19, line: 401, baseType: !7, size: 32, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1497, file: !19, line: 402, baseType: !7, size: 32, offset: 160)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1497, file: !19, line: 403, baseType: !7, size: 32, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1497, file: !19, line: 404, baseType: !536, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1497, file: !19, line: 405, baseType: !1508, size: 64, offset: 320)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !320, line: 126, baseType: !534)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1497, file: !19, line: 406, baseType: !1508, size: 64, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1431, file: !19, line: 440, baseType: !1439, size: 64, offset: 640)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !947, file: !31, line: 1426, baseType: !1512, size: 64, offset: 576)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1514)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !947, file: !31, line: 1427, baseType: !478, size: 64, offset: 640)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !947, file: !31, line: 1428, baseType: !478, size: 64, offset: 704)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !947, file: !31, line: 1429, baseType: !478, size: 64, offset: 768)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !947, file: !31, line: 1430, baseType: !736, size: 64, offset: 832)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !947, file: !31, line: 1431, baseType: !1103, size: 256, offset: 896)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !947, file: !31, line: 1432, baseType: !325, size: 32, offset: 1152)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !947, file: !31, line: 1433, baseType: !502, size: 32, offset: 1184)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !947, file: !31, line: 1437, baseType: !1523, size: 64, offset: 1216)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !947, file: !31, line: 1449, baseType: !1528, size: 64, offset: 1280)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !747, line: 34, size: 64, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1528, file: !747, line: 35, baseType: !750, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !947, file: !31, line: 1450, baseType: !527, size: 128, offset: 1344)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !947, file: !31, line: 1451, baseType: !1533, size: 64, offset: 1472)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !947, file: !31, line: 1452, baseType: !1536, size: 64, offset: 1536)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !485, line: 40, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !947, file: !31, line: 1453, baseType: !1539, size: 64, offset: 1600)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !947, file: !31, line: 1454, baseType: !986, size: 128, offset: 1664)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !947, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !947, file: !31, line: 1456, baseType: !1544, size: 2432, offset: 1856)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 518, size: 2432, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1550, !1582}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1544, file: !19, line: 519, baseType: !7, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1544, file: !19, line: 520, baseType: !1103, size: 256, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1544, file: !19, line: 521, baseType: !1549, size: 192, offset: 320)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 192, elements: !998)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1544, file: !19, line: 522, baseType: !1551, size: 1728, offset: 512)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1552, size: 1728, elements: !998)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1553)
!1553 = !{!1554, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1552, file: !19, line: 223, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 443, size: 256, elements: !1557)
!1557 = !{!1558, !1559, !1572, !1573}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1556, file: !19, line: 444, baseType: !325, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1556, file: !19, line: 445, baseType: !1560, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1562)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 310, size: 512, elements: !1563)
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1562, file: !19, line: 311, baseType: !1034, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1562, file: !19, line: 312, baseType: !1034, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1562, file: !19, line: 313, baseType: !1034, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1562, file: !19, line: 314, baseType: !1034, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1562, file: !19, line: 315, baseType: !1346, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1562, file: !19, line: 316, baseType: !1346, size: 64, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1562, file: !19, line: 317, baseType: !1346, size: 64, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1562, file: !19, line: 318, baseType: !1424, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1556, file: !19, line: 446, baseType: !316, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1556, file: !19, line: 447, baseType: !1555, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1552, file: !19, line: 224, baseType: !325, size: 32, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1552, file: !19, line: 226, baseType: !527, size: 128, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1552, file: !19, line: 227, baseType: !478, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1552, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1552, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1552, file: !19, line: 230, baseType: !1388, size: 64, offset: 384)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1552, file: !19, line: 231, baseType: !1388, size: 64, offset: 448)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1552, file: !19, line: 232, baseType: !321, size: 64, offset: 512)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1544, file: !19, line: 523, baseType: !1583, size: 192, offset: 2240)
!1583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1560, size: 192, elements: !998)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !947, file: !31, line: 1458, baseType: !1585, size: 2112, offset: 4288)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !1586)
!1586 = !{!1587, !1588, !1595}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1585, file: !31, line: 1411, baseType: !325, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1585, file: !31, line: 1412, baseType: !1589, size: 128, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1590, line: 40, baseType: !1591)
!1590 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1590, line: 36, size: 128, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1591, file: !1590, line: 37, baseType: !1090)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1591, file: !1590, line: 38, baseType: !527, size: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1585, file: !31, line: 1413, baseType: !1596, size: 1920, offset: 192)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1597, size: 1920, elements: !998)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1598, line: 12, size: 640, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !{!1600, !1608, !1610, !1615, !1616}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1597, file: !1598, line: 13, baseType: !1601, size: 320)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1602, line: 17, size: 320, elements: !1603)
!1602 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1603 = !{!1604, !1605, !1606, !1607}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1601, file: !1602, line: 18, baseType: !325, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1601, file: !1602, line: 19, baseType: !325, size: 32, offset: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1601, file: !1602, line: 20, baseType: !1589, size: 128, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1601, file: !1602, line: 22, baseType: !719, size: 128, align: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1597, file: !1598, line: 14, baseType: !1609, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1597, file: !1598, line: 15, baseType: !1611, size: 64, offset: 384)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1612, line: 16, size: 64, elements: !1613)
!1612 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1613 = !{!1614}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1611, file: !1612, line: 17, baseType: !483, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1597, file: !1598, line: 16, baseType: !1589, size: 128, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1597, file: !1598, line: 17, baseType: !502, size: 32, offset: 576)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !947, file: !31, line: 1465, baseType: !321, size: 64, offset: 6400)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !947, file: !31, line: 1468, baseType: !435, size: 32, offset: 6464)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !947, file: !31, line: 1470, baseType: !881, size: 64, offset: 6528)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !947, file: !31, line: 1471, baseType: !881, size: 64, offset: 6592)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !947, file: !31, line: 1473, baseType: !436, size: 32, offset: 6656)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !947, file: !31, line: 1474, baseType: !1623, size: 64, offset: 6720)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !947, file: !31, line: 1477, baseType: !1626, size: 256, offset: 6784)
!1626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !1627)
!1627 = !{!1628}
!1628 = !DISubrange(count: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !947, file: !31, line: 1478, baseType: !1630, size: 128, offset: 7040)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1631, line: 18, baseType: !1632)
!1631 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1631, line: 16, size: 128, elements: !1633)
!1633 = !{!1634}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1632, file: !1631, line: 17, baseType: !1635, size: 128)
!1635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 128, elements: !1636)
!1636 = !{!1637}
!1637 = !DISubrange(count: 16)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !947, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !947, file: !31, line: 1481, baseType: !1640, size: 32, offset: 7200)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !320, line: 150, baseType: !7)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !947, file: !31, line: 1487, baseType: !1357, size: 192, offset: 7232)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !947, file: !31, line: 1493, baseType: !805, size: 64, offset: 7424)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !947, file: !31, line: 1495, baseType: !1644, size: 64, offset: 7488)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !734, line: 135, size: 1024, align: 512, elements: !1647)
!1647 = !{!1648, !1652, !1653, !1660, !1666, !1670, !1674, !1678, !1679, !1683, !1687, !1692, !1696}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1646, file: !734, line: 136, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!325, !736, !7}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1646, file: !734, line: 137, baseType: !1649, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1646, file: !734, line: 138, baseType: !1654, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!325, !1657, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1646, file: !734, line: 139, baseType: !1661, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!325, !1657, !7, !805, !1664}
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1646, file: !734, line: 141, baseType: !1667, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!325, !1657}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1646, file: !734, line: 142, baseType: !1671, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!325, !736}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1646, file: !734, line: 143, baseType: !1675, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !736}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1646, file: !734, line: 144, baseType: !1675, size: 64, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1646, file: !734, line: 145, baseType: !1680, size: 64, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{null, !736, !770}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1646, file: !734, line: 146, baseType: !1684, size: 64, offset: 576)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!323, !736, !323, !325}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1646, file: !734, line: 147, baseType: !1688, size: 64, offset: 640)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!732, !1691}
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1646, file: !734, line: 148, baseType: !1693, size: 64, offset: 704)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!325, !890, !833}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1646, file: !734, line: 149, baseType: !1697, size: 64, offset: 768)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!736, !736, !1700}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !947, file: !31, line: 1500, baseType: !325, size: 32, offset: 7552)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !947, file: !31, line: 1502, baseType: !1704, size: 448, offset: 7616)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1330, line: 60, size: 448, elements: !1705)
!1705 = !{!1706, !1711, !1712, !1713, !1714, !1715, !1716}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1704, file: !1330, line: 61, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!478, !1710, !1328}
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1704, file: !1330, line: 63, baseType: !1707, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1704, file: !1330, line: 66, baseType: !322, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1704, file: !1330, line: 67, baseType: !325, size: 32, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1704, file: !1330, line: 68, baseType: !7, size: 32, offset: 224)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1704, file: !1330, line: 71, baseType: !527, size: 128, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1704, file: !1330, line: 77, baseType: !1717, size: 64, offset: 384)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !947, file: !31, line: 1505, baseType: !1107, size: 64, offset: 8064)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !947, file: !31, line: 1508, baseType: !1107, size: 64, offset: 8128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !947, file: !31, line: 1511, baseType: !325, size: 32, offset: 8192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !947, file: !31, line: 1514, baseType: !1241, size: 32, offset: 8224)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !947, file: !31, line: 1517, baseType: !1723, size: 64, offset: 8256)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1725, line: 18, flags: DIFlagFwdDecl)
!1725 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !947, file: !31, line: 1518, baseType: !982, size: 64, offset: 8320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !947, file: !31, line: 1525, baseType: !1728, size: 64, offset: 8384)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !778, line: 18, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !947, file: !31, line: 1532, baseType: !1731, size: 64, offset: 8448)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1732, line: 52, size: 64, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1731, file: !1732, line: 53, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1732, line: 40, size: 256, elements: !1737)
!1737 = !{!1738, !1739, !1744}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1736, file: !1732, line: 42, baseType: !1090)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1736, file: !1732, line: 44, baseType: !1740, size: 192)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1732, line: 28, size: 192, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1740, file: !1732, line: 29, baseType: !527, size: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1740, file: !1732, line: 31, baseType: !322, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1736, file: !1732, line: 49, baseType: !322, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !947, file: !31, line: 1533, baseType: !1731, size: 64, offset: 8512)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !947, file: !31, line: 1534, baseType: !719, size: 128, align: 64, offset: 8576)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !947, file: !31, line: 1535, baseType: !1748, size: 256, offset: 8704)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1725, line: 102, size: 256, elements: !1749)
!1749 = !{!1750, !1751, !1752}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1748, file: !1725, line: 103, baseType: !1107, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1748, file: !1725, line: 104, baseType: !527, size: 128, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1748, file: !1725, line: 105, baseType: !1753, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1725, line: 21, baseType: !1754)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !947, file: !31, line: 1537, baseType: !1357, size: 192, offset: 8960)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !947, file: !31, line: 1542, baseType: !325, size: 32, offset: 9152)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !947, file: !31, line: 1545, baseType: !1090, offset: 9184)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !947, file: !31, line: 1546, baseType: !527, size: 128, offset: 9216)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !947, file: !31, line: 1548, baseType: !1090, offset: 9344)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !947, file: !31, line: 1549, baseType: !527, size: 128, offset: 9344)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !771, file: !31, line: 624, baseType: !1081, size: 64, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !771, file: !31, line: 631, baseType: !478, size: 64, offset: 320)
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !31, line: 639, baseType: !1767, size: 32, offset: 384)
!1767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !771, file: !31, line: 639, size: 32, elements: !1768)
!1768 = !{!1769, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1767, file: !31, line: 640, baseType: !1770, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1767, file: !31, line: 641, baseType: !7, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !771, file: !31, line: 643, baseType: !856, size: 32, offset: 416)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !771, file: !31, line: 644, baseType: !874, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !771, file: !31, line: 645, baseType: !877, size: 128, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !771, file: !31, line: 646, baseType: !877, size: 128, offset: 640)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !771, file: !31, line: 647, baseType: !877, size: 128, offset: 768)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !771, file: !31, line: 648, baseType: !1090, offset: 896)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !771, file: !31, line: 649, baseType: !379, size: 16, offset: 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !771, file: !31, line: 650, baseType: !420, size: 8, offset: 912)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !771, file: !31, line: 651, baseType: !420, size: 8, offset: 920)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !771, file: !31, line: 652, baseType: !1508, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !771, file: !31, line: 659, baseType: !478, size: 64, offset: 1024)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !771, file: !31, line: 660, baseType: !1103, size: 256, offset: 1088)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !771, file: !31, line: 662, baseType: !478, size: 64, offset: 1344)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !771, file: !31, line: 663, baseType: !478, size: 64, offset: 1408)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !771, file: !31, line: 665, baseType: !986, size: 128, offset: 1472)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !771, file: !31, line: 666, baseType: !527, size: 128, offset: 1600)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !771, file: !31, line: 675, baseType: !527, size: 128, offset: 1728)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !771, file: !31, line: 676, baseType: !527, size: 128, offset: 1856)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !771, file: !31, line: 677, baseType: !527, size: 128, offset: 1984)
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !31, line: 678, baseType: !1792, size: 128, offset: 2112)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !771, file: !31, line: 678, size: 128, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1792, file: !31, line: 679, baseType: !982, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1792, file: !31, line: 680, baseType: !719, size: 128, align: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !771, file: !31, line: 682, baseType: !1109, size: 64, offset: 2240)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !771, file: !31, line: 683, baseType: !1109, size: 64, offset: 2304)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !771, file: !31, line: 684, baseType: !502, size: 32, offset: 2368)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !771, file: !31, line: 685, baseType: !502, size: 32, offset: 2400)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !771, file: !31, line: 686, baseType: !502, size: 32, offset: 2432)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !771, file: !31, line: 688, baseType: !502, size: 32, offset: 2464)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !31, line: 690, baseType: !1803, size: 64, offset: 2496)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !771, file: !31, line: 690, size: 64, elements: !1804)
!1804 = !{!1805, !2042}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1803, file: !31, line: 691, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !1809)
!1809 = !{!1810, !1811, !1815, !1820, !1824, !1825, !1826, !1830, !1843, !1844, !1861, !1865, !1866, !1870, !1871, !1875, !1880, !1881, !1885, !1889, !1997, !2001, !2005, !2009, !2010, !2016, !2020, !2025, !2029, !2033, !2037, !2041}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1808, file: !31, line: 1823, baseType: !316, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1808, file: !31, line: 1824, baseType: !1812, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!874, !706, !874, !325}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1808, file: !31, line: 1825, baseType: !1816, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!919, !706, !323, !922, !1819}
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1808, file: !31, line: 1826, baseType: !1821, size: 64, offset: 192)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!919, !706, !805, !922, !1819}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1808, file: !31, line: 1827, baseType: !1178, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1808, file: !31, line: 1828, baseType: !1178, size: 64, offset: 320)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1808, file: !31, line: 1829, baseType: !1827, size: 64, offset: 384)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!325, !1181, !833}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1808, file: !31, line: 1830, baseType: !1831, size: 64, offset: 448)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!325, !706, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !1836)
!1836 = !{!1837, !1842}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1835, file: !31, line: 1777, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !1839)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!325, !1834, !805, !325, !874, !534, !7}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1835, file: !31, line: 1778, baseType: !874, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1808, file: !31, line: 1831, baseType: !1831, size: 64, offset: 512)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1808, file: !31, line: 1832, baseType: !1845, size: 64, offset: 576)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!1848, !706, !1850}
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1849, line: 52, baseType: !7)
!1849 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1852, line: 43, size: 128, elements: !1853)
!1852 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1853 = !{!1854, !1860}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1851, file: !1852, line: 44, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1852, line: 37, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !706, !1859, !1850}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1851, file: !1852, line: 45, baseType: !1848, size: 32, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1808, file: !31, line: 1833, baseType: !1862, size: 64, offset: 640)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!322, !706, !7, !478}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1808, file: !31, line: 1834, baseType: !1862, size: 64, offset: 704)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1808, file: !31, line: 1835, baseType: !1867, size: 64, offset: 768)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!325, !706, !672}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1808, file: !31, line: 1836, baseType: !478, size: 64, offset: 832)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1808, file: !31, line: 1837, baseType: !1872, size: 64, offset: 896)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!325, !770, !706}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1808, file: !31, line: 1838, baseType: !1876, size: 64, offset: 960)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!325, !706, !1879}
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !321)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1808, file: !31, line: 1839, baseType: !1872, size: 64, offset: 1024)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1808, file: !31, line: 1840, baseType: !1882, size: 64, offset: 1088)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!325, !706, !874, !874, !325}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1808, file: !31, line: 1841, baseType: !1886, size: 64, offset: 1152)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!325, !325, !706, !325}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1808, file: !31, line: 1842, baseType: !1890, size: 64, offset: 1216)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!325, !706, !325, !1893}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1927, !1928, !1929, !1942, !1973}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1894, file: !31, line: 1063, baseType: !1893, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1894, file: !31, line: 1064, baseType: !527, size: 128, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1894, file: !31, line: 1065, baseType: !986, size: 128, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1894, file: !31, line: 1066, baseType: !527, size: 128, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1894, file: !31, line: 1069, baseType: !527, size: 128, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1894, file: !31, line: 1072, baseType: !1879, size: 64, offset: 576)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1894, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1894, file: !31, line: 1074, baseType: !412, size: 8, offset: 672)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1894, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1894, file: !31, line: 1076, baseType: !325, size: 32, offset: 736)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1894, file: !31, line: 1077, baseType: !1589, size: 128, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1894, file: !31, line: 1078, baseType: !706, size: 64, offset: 896)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1894, file: !31, line: 1079, baseType: !874, size: 64, offset: 960)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1894, file: !31, line: 1080, baseType: !874, size: 64, offset: 1024)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1894, file: !31, line: 1082, baseType: !1911, size: 64, offset: 1088)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !1913)
!1913 = !{!1914, !1922, !1923, !1924, !1925, !1926}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1912, file: !31, line: 1315, baseType: !1915)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1916, line: 20, baseType: !1917)
!1916 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1916, line: 11, elements: !1918)
!1918 = !{!1919}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1917, file: !1916, line: 12, baseType: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !463, line: 33, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 31, elements: !465)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1912, file: !31, line: 1316, baseType: !325, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1912, file: !31, line: 1317, baseType: !325, size: 32, offset: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1912, file: !31, line: 1318, baseType: !1911, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1912, file: !31, line: 1319, baseType: !706, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1912, file: !31, line: 1320, baseType: !719, size: 128, align: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1894, file: !31, line: 1084, baseType: !478, size: 64, offset: 1152)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1894, file: !31, line: 1085, baseType: !478, size: 64, offset: 1216)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1894, file: !31, line: 1087, baseType: !1930, size: 64, offset: 1280)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !1933)
!1933 = !{!1934, !1938}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1932, file: !31, line: 1012, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !1893, !1893}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1932, file: !31, line: 1013, baseType: !1939, size: 64, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !1893}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1894, file: !31, line: 1088, baseType: !1943, size: 64, offset: 1344)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !1946)
!1946 = !{!1947, !1951, !1955, !1956, !1960, !1964, !1968, !1972}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1945, file: !31, line: 1017, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1879, !1879}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1945, file: !31, line: 1018, baseType: !1952, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !1879}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1945, file: !31, line: 1019, baseType: !1939, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1945, file: !31, line: 1020, baseType: !1957, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!325, !1893, !325}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1945, file: !31, line: 1021, baseType: !1961, size: 64, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!833, !1893}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1945, file: !31, line: 1022, baseType: !1965, size: 64, offset: 320)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!325, !1893, !325, !530}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1945, file: !31, line: 1023, baseType: !1969, size: 64, offset: 384)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !1893, !1155}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1945, file: !31, line: 1024, baseType: !1961, size: 64, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1894, file: !31, line: 1097, baseType: !1974, size: 256, offset: 1408)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1894, file: !31, line: 1089, size: 256, elements: !1975)
!1975 = !{!1976, !1985, !1991}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1974, file: !31, line: 1090, baseType: !1977, size: 256)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1978, line: 10, size: 256, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1979 = !{!1980, !1981, !1984}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1977, file: !1978, line: 11, baseType: !435, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1977, file: !1978, line: 12, baseType: !1982, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1978, line: 5, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1977, file: !1978, line: 13, baseType: !527, size: 128, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1974, file: !31, line: 1091, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1978, line: 17, size: 64, elements: !1987)
!1987 = !{!1988}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1986, file: !1978, line: 18, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1978, line: 16, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1974, file: !31, line: 1096, baseType: !1992, size: 192)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1974, file: !31, line: 1092, size: 192, elements: !1993)
!1993 = !{!1994, !1995, !1996}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1992, file: !31, line: 1093, baseType: !527, size: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1992, file: !31, line: 1094, baseType: !325, size: 32, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1992, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1808, file: !31, line: 1843, baseType: !1998, size: 64, offset: 1280)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!919, !706, !1069, !325, !922, !1819, !325}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1808, file: !31, line: 1844, baseType: !2002, size: 64, offset: 1344)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!478, !706, !478, !478, !478, !478}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1808, file: !31, line: 1845, baseType: !2006, size: 64, offset: 1408)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!325, !325}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1808, file: !31, line: 1846, baseType: !1890, size: 64, offset: 1472)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1808, file: !31, line: 1847, baseType: !2011, size: 64, offset: 1536)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!919, !2014, !706, !1819, !922, !7}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !485, line: 53, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1808, file: !31, line: 1848, baseType: !2017, size: 64, offset: 1600)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!919, !706, !1819, !2014, !922, !7}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1808, file: !31, line: 1849, baseType: !2021, size: 64, offset: 1664)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!325, !706, !322, !2024, !1155}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1808, file: !31, line: 1850, baseType: !2026, size: 64, offset: 1728)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!322, !706, !325, !874, !874}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1808, file: !31, line: 1852, baseType: !2030, size: 64, offset: 1792)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !1060, !706}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1808, file: !31, line: 1856, baseType: !2034, size: 64, offset: 1856)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!919, !706, !874, !706, !874, !922, !7}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1808, file: !31, line: 1858, baseType: !2038, size: 64, offset: 1920)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!874, !706, !874, !706, !874, !874, !7}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1808, file: !31, line: 1861, baseType: !1882, size: 64, offset: 1984)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1803, file: !31, line: 692, baseType: !1013, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !771, file: !31, line: 694, baseType: !2044, size: 64, offset: 2560)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2046)
!2046 = !{!2047, !2048, !2049, !2050}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2045, file: !31, line: 1101, baseType: !1090)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2045, file: !31, line: 1102, baseType: !527, size: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2045, file: !31, line: 1103, baseType: !527, size: 128, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2045, file: !31, line: 1104, baseType: !527, size: 128, offset: 256)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !771, file: !31, line: 695, baseType: !1082, size: 1216, align: 64, offset: 2624)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !771, file: !31, line: 696, baseType: !527, size: 128, offset: 3840)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !31, line: 697, baseType: !2054, size: 64, offset: 3968)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !771, file: !31, line: 697, size: 64, elements: !2055)
!2055 = !{!2056, !2057, !2058, !2369, !2370}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2054, file: !31, line: 698, baseType: !2014, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2054, file: !31, line: 699, baseType: !1533, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2054, file: !31, line: 700, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2061, line: 14, size: 832, elements: !2062)
!2061 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2062 = !{!2063, !2364, !2365, !2366, !2367, !2368}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2060, file: !2061, line: 15, baseType: !2064, size: 512)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2065, line: 64, size: 512, elements: !2066)
!2065 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2066 = !{!2067, !2068, !2069, !2071, !2113, !2215, !2354, !2359, !2360, !2361, !2362, !2363}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2064, file: !2065, line: 65, baseType: !805, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2064, file: !2065, line: 66, baseType: !527, size: 128, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2064, file: !2065, line: 67, baseType: !2070, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2064, file: !2065, line: 68, baseType: !2072, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2065, line: 192, size: 704, elements: !2074)
!2074 = !{!2075, !2076, !2077, !2078}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2073, file: !2065, line: 193, baseType: !527, size: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2073, file: !2065, line: 194, baseType: !1090, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2073, file: !2065, line: 195, baseType: !2064, size: 512, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2073, file: !2065, line: 196, baseType: !2079, size: 64, offset: 640)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2081)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2065, line: 156, size: 192, elements: !2082)
!2082 = !{!2083, !2088, !2093}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2081, file: !2065, line: 157, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2085)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!325, !2072, !2070}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2081, file: !2065, line: 158, baseType: !2089, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2090)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!805, !2072, !2070}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2081, file: !2065, line: 159, baseType: !2094, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2095)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!325, !2072, !2070, !2098}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2065, line: 148, size: 20736, elements: !2100)
!2100 = !{!2101, !2103, !2107, !2108, !2112}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2099, file: !2065, line: 149, baseType: !2102, size: 192)
!2102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 192, elements: !998)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2099, file: !2065, line: 150, baseType: !2104, size: 4096, offset: 192)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 4096, elements: !2105)
!2105 = !{!2106}
!2106 = !DISubrange(count: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2099, file: !2065, line: 151, baseType: !325, size: 32, offset: 4288)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2099, file: !2065, line: 152, baseType: !2109, size: 16384, offset: 4320)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 16384, elements: !2110)
!2110 = !{!2111}
!2111 = !DISubrange(count: 2048)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2099, file: !2065, line: 153, baseType: !325, size: 32, offset: 20704)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2064, file: !2065, line: 69, baseType: !2114, size: 64, offset: 320)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2065, line: 138, size: 448, elements: !2116)
!2116 = !{!2117, !2121, !2140, !2142, !2175, !2205, !2209}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2115, file: !2065, line: 139, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !2070}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2115, file: !2065, line: 140, baseType: !2122, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2125, line: 230, size: 128, elements: !2126)
!2125 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2126 = !{!2127, !2136}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2124, file: !2125, line: 231, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!919, !2070, !2131, !323}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2125, line: 30, size: 128, elements: !2133)
!2133 = !{!2134, !2135}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2132, file: !2125, line: 31, baseType: !805, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2132, file: !2125, line: 32, baseType: !774, size: 16, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2124, file: !2125, line: 232, baseType: !2137, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!919, !2070, !2131, !805, !922}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2115, file: !2065, line: 141, baseType: !2141, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2115, file: !2065, line: 142, baseType: !2143, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2146)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2125, line: 84, size: 320, elements: !2147)
!2147 = !{!2148, !2149, !2153, !2172, !2173}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2146, file: !2125, line: 85, baseType: !805, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2146, file: !2125, line: 86, baseType: !2150, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!774, !2070, !2131, !325}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2146, file: !2125, line: 88, baseType: !2154, size: 64, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!774, !2070, !2157, !325}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2125, line: 168, size: 448, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2167, !2168}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2158, file: !2125, line: 169, baseType: !2132, size: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2158, file: !2125, line: 170, baseType: !922, size: 64, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2158, file: !2125, line: 171, baseType: !321, size: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2158, file: !2125, line: 172, baseType: !2164, size: 64, offset: 256)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!919, !706, !2070, !2157, !323, !874, !922}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2158, file: !2125, line: 174, baseType: !2164, size: 64, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2158, file: !2125, line: 176, baseType: !2169, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!325, !706, !2070, !2157, !672}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2146, file: !2125, line: 90, baseType: !2141, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2146, file: !2125, line: 91, baseType: !2174, size: 64, offset: 256)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2115, file: !2065, line: 143, baseType: !2176, size: 64, offset: 256)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!2179, !2070}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2181)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !25, line: 39, size: 384, elements: !2182)
!2182 = !{!2183, !2184, !2188, !2192, !2200, !2204}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2181, file: !25, line: 40, baseType: !24, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2181, file: !25, line: 41, baseType: !2185, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!833}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2181, file: !25, line: 42, baseType: !2189, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!321}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2181, file: !25, line: 43, baseType: !2193, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!2196, !2198}
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !25, line: 19, flags: DIFlagFwdDecl)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2181, file: !25, line: 44, baseType: !2201, size: 64, offset: 256)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!2196}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2181, file: !25, line: 45, baseType: !811, size: 64, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2115, file: !2065, line: 144, baseType: !2206, size: 64, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!2196, !2070}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2115, file: !2065, line: 145, baseType: !2210, size: 64, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null, !2070, !2213, !2214}
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2064, file: !2065, line: 70, baseType: !2216, size: 64, offset: 384)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !966, line: 123, size: 1024, elements: !2218)
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2347, !2348, !2349, !2350, !2351}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2217, file: !966, line: 124, baseType: !502, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2217, file: !966, line: 125, baseType: !502, size: 32, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2217, file: !966, line: 135, baseType: !2216, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2217, file: !966, line: 136, baseType: !805, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2217, file: !966, line: 138, baseType: !475, size: 192, align: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2217, file: !966, line: 140, baseType: !2196, size: 64, offset: 384)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2217, file: !966, line: 141, baseType: !7, size: 32, offset: 448)
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !966, line: 142, baseType: !2227, size: 256, offset: 512)
!2227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2217, file: !966, line: 142, size: 256, elements: !2228)
!2228 = !{!2229, !2275, !2279}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2227, file: !966, line: 143, baseType: !2230, size: 192)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !966, line: 91, size: 192, elements: !2231)
!2231 = !{!2232, !2233, !2234}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2230, file: !966, line: 92, baseType: !478, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2230, file: !966, line: 94, baseType: !471, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2230, file: !966, line: 100, baseType: !2235, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !966, line: 180, size: 704, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2247, !2248, !2249, !2273, !2274}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2236, file: !966, line: 182, baseType: !2216, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2236, file: !966, line: 183, baseType: !7, size: 32, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2236, file: !966, line: 186, baseType: !2241, size: 192, offset: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2242, line: 19, size: 192, elements: !2243)
!2242 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2243 = !{!2244, !2245, !2246}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2241, file: !2242, line: 20, baseType: !1086, size: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2241, file: !2242, line: 21, baseType: !7, size: 32, offset: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2241, file: !2242, line: 22, baseType: !7, size: 32, offset: 160)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2236, file: !966, line: 187, baseType: !435, size: 32, offset: 320)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2236, file: !966, line: 188, baseType: !435, size: 32, offset: 352)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2236, file: !966, line: 189, baseType: !2250, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !966, line: 168, size: 320, elements: !2252)
!2252 = !{!2253, !2257, !2261, !2265, !2269}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2251, file: !966, line: 169, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!325, !1060, !2235}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2251, file: !966, line: 171, baseType: !2258, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!325, !2216, !805, !774}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2251, file: !966, line: 173, baseType: !2262, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!325, !2216}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2251, file: !966, line: 174, baseType: !2266, size: 64, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!325, !2216, !2216, !805}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2251, file: !966, line: 176, baseType: !2270, size: 64, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!325, !1060, !2216, !2235}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2236, file: !966, line: 192, baseType: !527, size: 128, offset: 448)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2236, file: !966, line: 194, baseType: !1589, size: 128, offset: 576)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2227, file: !966, line: 144, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !966, line: 103, size: 64, elements: !2277)
!2277 = !{!2278}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2276, file: !966, line: 104, baseType: !2216, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2227, file: !966, line: 145, baseType: !2280, size: 256)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !966, line: 107, size: 256, elements: !2281)
!2281 = !{!2282, !2342, !2345, !2346}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2280, file: !966, line: 108, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2285)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !966, line: 217, size: 768, elements: !2286)
!2286 = !{!2287, !2307, !2311, !2315, !2319, !2323, !2327, !2331, !2332, !2333, !2334, !2338}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2285, file: !966, line: 222, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!325, !2291}
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !966, line: 197, size: 1088, elements: !2293)
!2293 = !{!2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2292, file: !966, line: 199, baseType: !2216, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2292, file: !966, line: 200, baseType: !706, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2292, file: !966, line: 201, baseType: !1060, size: 64, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2292, file: !966, line: 202, baseType: !321, size: 64, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2292, file: !966, line: 205, baseType: !1357, size: 192, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2292, file: !966, line: 206, baseType: !1357, size: 192, offset: 448)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2292, file: !966, line: 207, baseType: !325, size: 32, offset: 640)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2292, file: !966, line: 208, baseType: !527, size: 128, offset: 704)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2292, file: !966, line: 209, baseType: !323, size: 64, offset: 832)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2292, file: !966, line: 211, baseType: !922, size: 64, offset: 896)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2292, file: !966, line: 212, baseType: !833, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2292, file: !966, line: 213, baseType: !833, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2292, file: !966, line: 214, baseType: !701, size: 64, offset: 1024)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2285, file: !966, line: 223, baseType: !2308, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !2291}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2285, file: !966, line: 236, baseType: !2312, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!325, !1060, !321}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2285, file: !966, line: 238, baseType: !2316, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!321, !1060, !1819}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2285, file: !966, line: 239, baseType: !2320, size: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!321, !1060, !321, !1819}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2285, file: !966, line: 240, baseType: !2324, size: 64, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !1060, !321}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2285, file: !966, line: 242, baseType: !2328, size: 64, offset: 384)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!919, !2291, !323, !922, !874}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2285, file: !966, line: 252, baseType: !922, size: 64, offset: 448)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2285, file: !966, line: 259, baseType: !833, size: 8, offset: 512)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2285, file: !966, line: 260, baseType: !2328, size: 64, offset: 576)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2285, file: !966, line: 263, baseType: !2335, size: 64, offset: 640)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!1848, !2291, !1850}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2285, file: !966, line: 266, baseType: !2339, size: 64, offset: 704)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!325, !2291, !672}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2280, file: !966, line: 109, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !966, line: 31, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2280, file: !966, line: 110, baseType: !874, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2280, file: !966, line: 111, baseType: !2216, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2217, file: !966, line: 148, baseType: !321, size: 64, offset: 768)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2217, file: !966, line: 154, baseType: !534, size: 64, offset: 832)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2217, file: !966, line: 156, baseType: !379, size: 16, offset: 896)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2217, file: !966, line: 157, baseType: !774, size: 16, offset: 912)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2217, file: !966, line: 158, baseType: !2352, size: 64, offset: 960)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !966, line: 32, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2064, file: !2065, line: 71, baseType: !2355, size: 32, offset: 448)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2356, line: 19, size: 32, elements: !2357)
!2356 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2357 = !{!2358}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2355, file: !2356, line: 20, baseType: !497, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2064, file: !2065, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2064, file: !2065, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2064, file: !2065, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2064, file: !2065, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2064, file: !2065, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2060, file: !2061, line: 16, baseType: !316, size: 64, offset: 512)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2060, file: !2061, line: 17, baseType: !1806, size: 64, offset: 576)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2060, file: !2061, line: 18, baseType: !527, size: 128, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2060, file: !2061, line: 19, baseType: !856, size: 32, offset: 768)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2060, file: !2061, line: 20, baseType: !7, size: 32, offset: 800)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2054, file: !31, line: 701, baseType: !323, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2054, file: !31, line: 702, baseType: !7, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !771, file: !31, line: 705, baseType: !436, size: 32, offset: 4032)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !771, file: !31, line: 708, baseType: !436, size: 32, offset: 4064)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !771, file: !31, line: 709, baseType: !1623, size: 64, offset: 4096)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !771, file: !31, line: 720, baseType: !321, size: 64, offset: 4160)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !737, file: !734, line: 98, baseType: !2376, size: 256, offset: 448)
!2376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 256, elements: !1627)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !737, file: !734, line: 101, baseType: !2378, size: 32, offset: 704)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2379, line: 25, size: 32, elements: !2380)
!2379 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2380 = !{!2381}
!2381 = !DIDerivedType(tag: DW_TAG_member, scope: !2378, file: !2379, line: 26, baseType: !2382, size: 32)
!2382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2378, file: !2379, line: 26, size: 32, elements: !2383)
!2383 = !{!2384}
!2384 = !DIDerivedType(tag: DW_TAG_member, scope: !2382, file: !2379, line: 30, baseType: !2385, size: 32)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2382, file: !2379, line: 30, size: 32, elements: !2386)
!2386 = !{!2387, !2388}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2385, file: !2379, line: 31, baseType: !1090)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2385, file: !2379, line: 32, baseType: !325, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !737, file: !734, line: 102, baseType: !1644, size: 64, offset: 768)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !737, file: !734, line: 103, baseType: !946, size: 64, offset: 832)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !737, file: !734, line: 104, baseType: !478, size: 64, offset: 896)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !737, file: !734, line: 105, baseType: !321, size: 64, offset: 960)
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !734, line: 107, baseType: !2394, size: 128, offset: 1024)
!2394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !734, line: 107, size: 128, elements: !2395)
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2394, file: !734, line: 108, baseType: !527, size: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2394, file: !734, line: 109, baseType: !1859, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !737, file: !734, line: 111, baseType: !527, size: 128, offset: 1152)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !737, file: !734, line: 112, baseType: !527, size: 128, offset: 1280)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !737, file: !734, line: 120, baseType: !2401, size: 128, offset: 1408)
!2401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !734, line: 116, size: 128, elements: !2402)
!2402 = !{!2403, !2404, !2405}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2401, file: !734, line: 117, baseType: !986, size: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2401, file: !734, line: 118, baseType: !746, size: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2401, file: !734, line: 119, baseType: !719, size: 128, align: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !707, file: !31, line: 922, baseType: !770, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !707, file: !31, line: 923, baseType: !1806, size: 64, offset: 320)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !707, file: !31, line: 929, baseType: !1090, offset: 384)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !707, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !707, file: !31, line: 931, baseType: !1107, size: 64, offset: 448)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !707, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !707, file: !31, line: 933, baseType: !1640, size: 32, offset: 544)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !707, file: !31, line: 934, baseType: !1357, size: 192, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !707, file: !31, line: 935, baseType: !874, size: 64, offset: 768)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !707, file: !31, line: 936, baseType: !2416, size: 192, offset: 832)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2417)
!2417 = !{!2418, !2419, !2441, !2442, !2443, !2444}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2416, file: !31, line: 886, baseType: !1915)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2416, file: !31, line: 887, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2430, !2431, !2432, !2433}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2421, file: !40, line: 61, baseType: !497, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2421, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2421, file: !40, line: 63, baseType: !1090, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2421, file: !40, line: 65, baseType: !2427, size: 256, offset: 64)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !982, size: 256, elements: !2428)
!2428 = !{!2429}
!2429 = !DISubrange(count: 4)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2421, file: !40, line: 66, baseType: !982, size: 64, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2421, file: !40, line: 68, baseType: !1589, size: 128, offset: 384)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2421, file: !40, line: 69, baseType: !719, size: 128, align: 64, offset: 512)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2421, file: !40, line: 70, baseType: !2434, size: 128, offset: 640)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2435, size: 128, elements: !657)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !2436)
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2435, file: !40, line: 55, baseType: !325, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2435, file: !40, line: 56, baseType: !2439, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2416, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2416, file: !31, line: 889, baseType: !777, size: 32, offset: 96)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2416, file: !31, line: 889, baseType: !777, size: 32, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2416, file: !31, line: 890, baseType: !325, size: 32, offset: 160)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !707, file: !31, line: 937, baseType: !2446, size: 64, offset: 1024)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2448)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2449, line: 111, size: 1280, elements: !2450)
!2449 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2450 = !{!2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2470, !2471, !2472, !2473, !2474, !2475, !2585, !2586, !2587, !2588, !2614, !2615, !2625}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2448, file: !2449, line: 112, baseType: !502, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2448, file: !2449, line: 120, baseType: !777, size: 32, offset: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2448, file: !2449, line: 121, baseType: !785, size: 32, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2448, file: !2449, line: 122, baseType: !777, size: 32, offset: 96)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2448, file: !2449, line: 123, baseType: !785, size: 32, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2448, file: !2449, line: 124, baseType: !777, size: 32, offset: 160)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2448, file: !2449, line: 125, baseType: !785, size: 32, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2448, file: !2449, line: 126, baseType: !777, size: 32, offset: 224)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2448, file: !2449, line: 127, baseType: !785, size: 32, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2448, file: !2449, line: 128, baseType: !7, size: 32, offset: 288)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2448, file: !2449, line: 129, baseType: !2462, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2463, line: 26, baseType: !2464)
!2463 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2463, line: 24, size: 64, elements: !2465)
!2465 = !{!2466}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2464, file: !2463, line: 25, baseType: !2467, size: 64)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 64, elements: !2468)
!2468 = !{!2469}
!2469 = !DISubrange(count: 2)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2448, file: !2449, line: 130, baseType: !2462, size: 64, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2448, file: !2449, line: 131, baseType: !2462, size: 64, offset: 448)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2448, file: !2449, line: 132, baseType: !2462, size: 64, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2448, file: !2449, line: 133, baseType: !2462, size: 64, offset: 576)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2448, file: !2449, line: 135, baseType: !412, size: 8, offset: 640)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2448, file: !2449, line: 137, baseType: !2476, size: 64, offset: 704)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2478, line: 189, size: 1664, elements: !2479)
!2478 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2479 = !{!2480, !2481, !2486, !2491, !2492, !2495, !2496, !2501, !2502, !2503, !2504, !2506, !2507, !2508, !2510, !2511, !2549, !2570}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2477, file: !2478, line: 190, baseType: !497, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2477, file: !2478, line: 191, baseType: !2482, size: 32, offset: 32)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2478, line: 28, baseType: !2483)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !320, line: 98, baseType: !2484)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !419, line: 20, baseType: !2485)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !406, line: 26, baseType: !325)
!2486 = !DIDerivedType(tag: DW_TAG_member, scope: !2477, file: !2478, line: 192, baseType: !2487, size: 192, offset: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2477, file: !2478, line: 192, size: 192, elements: !2488)
!2488 = !{!2489, !2490}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2487, file: !2478, line: 193, baseType: !527, size: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2487, file: !2478, line: 194, baseType: !475, size: 192, align: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2477, file: !2478, line: 199, baseType: !1103, size: 256, offset: 256)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2477, file: !2478, line: 200, baseType: !2493, size: 64, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2478, line: 200, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2477, file: !2478, line: 201, baseType: !321, size: 64, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_member, scope: !2477, file: !2478, line: 202, baseType: !2497, size: 64, offset: 640)
!2497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2477, file: !2478, line: 202, size: 64, elements: !2498)
!2498 = !{!2499, !2500}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2497, file: !2478, line: 203, baseType: !881, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2497, file: !2478, line: 204, baseType: !881, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2477, file: !2478, line: 206, baseType: !881, size: 64, offset: 704)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2477, file: !2478, line: 207, baseType: !777, size: 32, offset: 768)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2477, file: !2478, line: 208, baseType: !785, size: 32, offset: 800)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2477, file: !2478, line: 209, baseType: !2505, size: 32, offset: 832)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2478, line: 31, baseType: !900)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2477, file: !2478, line: 210, baseType: !379, size: 16, offset: 864)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2477, file: !2478, line: 211, baseType: !379, size: 16, offset: 880)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2477, file: !2478, line: 215, baseType: !2509, size: 16, offset: 896)
!2509 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2477, file: !2478, line: 222, baseType: !478, size: 64, offset: 960)
!2511 = !DIDerivedType(tag: DW_TAG_member, scope: !2477, file: !2478, line: 239, baseType: !2512, size: 320, offset: 1024)
!2512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2477, file: !2478, line: 239, size: 320, elements: !2513)
!2513 = !{!2514, !2541}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2512, file: !2478, line: 240, baseType: !2515, size: 320)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2478, line: 108, size: 320, elements: !2516)
!2516 = !{!2517, !2518, !2530, !2533, !2540}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2515, file: !2478, line: 110, baseType: !478, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, scope: !2515, file: !2478, line: 111, baseType: !2519, size: 64, offset: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2515, file: !2478, line: 111, size: 64, elements: !2520)
!2520 = !{!2521, !2529}
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2519, file: !2478, line: 112, baseType: !2522, size: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2519, file: !2478, line: 112, size: 64, elements: !2523)
!2523 = !{!2524, !2525}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2522, file: !2478, line: 114, baseType: !418, size: 16)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2522, file: !2478, line: 115, baseType: !2526, size: 48, offset: 16)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 48, elements: !2527)
!2527 = !{!2528}
!2528 = !DISubrange(count: 6)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2519, file: !2478, line: 121, baseType: !478, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2515, file: !2478, line: 123, baseType: !2531, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2478, line: 96, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2515, file: !2478, line: 124, baseType: !2534, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2478, line: 102, size: 192, elements: !2536)
!2536 = !{!2537, !2538, !2539}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2535, file: !2478, line: 103, baseType: !719, size: 128, align: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2535, file: !2478, line: 104, baseType: !497, size: 32, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2535, file: !2478, line: 105, baseType: !833, size: 8, offset: 160)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2515, file: !2478, line: 125, baseType: !805, size: 64, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, scope: !2512, file: !2478, line: 241, baseType: !2542, size: 320)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2512, file: !2478, line: 241, size: 320, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547, !2548}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2542, file: !2478, line: 242, baseType: !478, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2542, file: !2478, line: 243, baseType: !478, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2542, file: !2478, line: 244, baseType: !2531, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2542, file: !2478, line: 245, baseType: !2534, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2542, file: !2478, line: 246, baseType: !323, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, scope: !2477, file: !2478, line: 254, baseType: !2550, size: 256, offset: 1344)
!2550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2477, file: !2478, line: 254, size: 256, elements: !2551)
!2551 = !{!2552, !2558}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2550, file: !2478, line: 255, baseType: !2553, size: 256)
!2553 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2478, line: 128, size: 256, elements: !2554)
!2554 = !{!2555, !2556}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2553, file: !2478, line: 129, baseType: !321, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2553, file: !2478, line: 130, baseType: !2557, size: 256)
!2557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 256, elements: !2428)
!2558 = !DIDerivedType(tag: DW_TAG_member, scope: !2550, file: !2478, line: 256, baseType: !2559, size: 256)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !2478, line: 256, size: 256, elements: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2559, file: !2478, line: 258, baseType: !527, size: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2559, file: !2478, line: 259, baseType: !2563, size: 128, offset: 128)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2564, line: 22, size: 128, elements: !2565)
!2564 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2565 = !{!2566, !2569}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2563, file: !2564, line: 23, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2564, line: 23, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2563, file: !2564, line: 24, baseType: !478, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2477, file: !2478, line: 274, baseType: !2571, size: 64, offset: 1600)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2478, line: 170, size: 192, elements: !2573)
!2573 = !{!2574, !2583, !2584}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2572, file: !2478, line: 171, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2478, line: 165, baseType: !2576)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!325, !2476, !2579, !2581, !2476}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2532)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2553)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2572, file: !2478, line: 172, baseType: !2476, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2572, file: !2478, line: 173, baseType: !2531, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2448, file: !2449, line: 138, baseType: !2476, size: 64, offset: 768)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2448, file: !2449, line: 139, baseType: !2476, size: 64, offset: 832)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2448, file: !2449, line: 140, baseType: !2476, size: 64, offset: 896)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2448, file: !2449, line: 145, baseType: !2589, size: 64, offset: 960)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2591, line: 13, size: 896, elements: !2592)
!2591 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2590, file: !2591, line: 14, baseType: !497, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2590, file: !2591, line: 15, baseType: !502, size: 32, offset: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2590, file: !2591, line: 16, baseType: !502, size: 32, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2590, file: !2591, line: 21, baseType: !1107, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2590, file: !2591, line: 27, baseType: !478, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2590, file: !2591, line: 28, baseType: !478, size: 64, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2590, file: !2591, line: 29, baseType: !1107, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2590, file: !2591, line: 32, baseType: !986, size: 128, offset: 384)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2590, file: !2591, line: 33, baseType: !777, size: 32, offset: 512)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2590, file: !2591, line: 37, baseType: !1107, size: 64, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2590, file: !2591, line: 44, baseType: !2604, size: 256, offset: 640)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2605, line: 15, size: 256, elements: !2606)
!2605 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2604, file: !2605, line: 16, baseType: !457)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2604, file: !2605, line: 18, baseType: !325, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2604, file: !2605, line: 19, baseType: !325, size: 32, offset: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2604, file: !2605, line: 20, baseType: !325, size: 32, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2604, file: !2605, line: 21, baseType: !325, size: 32, offset: 96)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2604, file: !2605, line: 22, baseType: !478, size: 64, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2604, file: !2605, line: 23, baseType: !478, size: 64, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2448, file: !2449, line: 146, baseType: !1728, size: 64, offset: 1024)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2448, file: !2449, line: 147, baseType: !2616, size: 64, offset: 1088)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2449, line: 25, size: 64, elements: !2618)
!2618 = !{!2619, !2620, !2621}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2617, file: !2449, line: 26, baseType: !502, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2617, file: !2449, line: 27, baseType: !325, size: 32, offset: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2617, file: !2449, line: 28, baseType: !2622, offset: 64)
!2622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, elements: !2623)
!2623 = !{!2624}
!2624 = !DISubrange(count: 0)
!2625 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !2449, line: 149, baseType: !2626, size: 128, offset: 1152)
!2626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2448, file: !2449, line: 149, size: 128, elements: !2627)
!2627 = !{!2628, !2629}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2626, file: !2449, line: 150, baseType: !325, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2626, file: !2449, line: 151, baseType: !719, size: 128, align: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !707, file: !31, line: 938, baseType: !2631, size: 256, offset: 1088)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2632)
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2631, file: !31, line: 897, baseType: !478, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2631, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2631, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2631, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2631, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2631, file: !31, line: 904, baseType: !874, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !707, file: !31, line: 940, baseType: !534, size: 64, offset: 1344)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !707, file: !31, line: 945, baseType: !321, size: 64, offset: 1408)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !707, file: !31, line: 949, baseType: !527, size: 128, offset: 1472)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !707, file: !31, line: 950, baseType: !527, size: 128, offset: 1600)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !707, file: !31, line: 952, baseType: !1081, size: 64, offset: 1728)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !707, file: !31, line: 953, baseType: !1241, size: 32, offset: 1792)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !707, file: !31, line: 954, baseType: !1241, size: 32, offset: 1824)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !673, file: !666, line: 362, baseType: !321, size: 64, offset: 1344)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !673, file: !666, line: 365, baseType: !1107, size: 64, offset: 1408)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !673, file: !666, line: 373, baseType: !2649, offset: 1472)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !666, line: 296, elements: !465)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !669, file: !666, line: 391, baseType: !471, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !669, file: !666, line: 392, baseType: !534, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !669, file: !666, line: 394, baseType: !2002, size: 64, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !669, file: !666, line: 398, baseType: !478, size: 64, offset: 256)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !669, file: !666, line: 399, baseType: !478, size: 64, offset: 320)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !669, file: !666, line: 405, baseType: !478, size: 64, offset: 384)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !669, file: !666, line: 406, baseType: !478, size: 64, offset: 448)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !669, file: !666, line: 407, baseType: !2658, size: 64, offset: 512)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !684, line: 286, baseType: !2660)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !684, line: 286, size: 64, elements: !2661)
!2661 = !{!2662}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2660, file: !684, line: 286, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !689, line: 18, baseType: !478)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !669, file: !666, line: 416, baseType: !502, size: 32, offset: 576)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !669, file: !666, line: 428, baseType: !502, size: 32, offset: 608)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !669, file: !666, line: 437, baseType: !502, size: 32, offset: 640)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !669, file: !666, line: 447, baseType: !502, size: 32, offset: 672)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !669, file: !666, line: 450, baseType: !1107, size: 64, offset: 704)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !669, file: !666, line: 452, baseType: !325, size: 32, offset: 768)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !669, file: !666, line: 454, baseType: !1090, offset: 800)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !669, file: !666, line: 457, baseType: !1103, size: 256, offset: 832)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !669, file: !666, line: 459, baseType: !527, size: 128, offset: 1088)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !669, file: !666, line: 466, baseType: !478, size: 64, offset: 1216)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !669, file: !666, line: 467, baseType: !478, size: 64, offset: 1280)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !669, file: !666, line: 469, baseType: !478, size: 64, offset: 1344)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !669, file: !666, line: 470, baseType: !478, size: 64, offset: 1408)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !669, file: !666, line: 471, baseType: !1109, size: 64, offset: 1472)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !669, file: !666, line: 472, baseType: !478, size: 64, offset: 1536)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !669, file: !666, line: 473, baseType: !478, size: 64, offset: 1600)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !669, file: !666, line: 474, baseType: !478, size: 64, offset: 1664)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !669, file: !666, line: 475, baseType: !478, size: 64, offset: 1728)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !669, file: !666, line: 477, baseType: !1090, offset: 1792)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !669, file: !666, line: 478, baseType: !478, size: 64, offset: 1792)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !669, file: !666, line: 478, baseType: !478, size: 64, offset: 1856)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !669, file: !666, line: 478, baseType: !478, size: 64, offset: 1920)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !669, file: !666, line: 478, baseType: !478, size: 64, offset: 1984)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !669, file: !666, line: 479, baseType: !478, size: 64, offset: 2048)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !669, file: !666, line: 479, baseType: !478, size: 64, offset: 2112)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !669, file: !666, line: 479, baseType: !478, size: 64, offset: 2176)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !669, file: !666, line: 480, baseType: !478, size: 64, offset: 2240)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !669, file: !666, line: 480, baseType: !478, size: 64, offset: 2304)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !669, file: !666, line: 480, baseType: !478, size: 64, offset: 2368)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !669, file: !666, line: 480, baseType: !478, size: 64, offset: 2432)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !669, file: !666, line: 482, baseType: !2695, size: 2816, offset: 2496)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 2816, elements: !2696)
!2696 = !{!2697}
!2697 = !DISubrange(count: 44)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !669, file: !666, line: 488, baseType: !2699, size: 256, offset: 5312)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2700, line: 60, size: 256, elements: !2701)
!2700 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2701 = !{!2702}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2699, file: !2700, line: 61, baseType: !2703, size: 256)
!2703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 256, elements: !2428)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !669, file: !666, line: 490, baseType: !2705, size: 64, offset: 5568)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !666, line: 490, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !669, file: !666, line: 493, baseType: !2708, size: 896, offset: 5632)
!2708 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2709, line: 53, baseType: !2710)
!2709 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2709, line: 13, size: 896, elements: !2711)
!2711 = !{!2712, !2713, !2714, !2715, !2718, !2719, !2720, !2721, !2741, !2742, !2743}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2710, file: !2709, line: 18, baseType: !534, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2710, file: !2709, line: 28, baseType: !1109, size: 64, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2710, file: !2709, line: 31, baseType: !1103, size: 256, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2710, file: !2709, line: 32, baseType: !2716, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2709, line: 32, flags: DIFlagFwdDecl)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2710, file: !2709, line: 37, baseType: !379, size: 16, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2710, file: !2709, line: 40, baseType: !1357, size: 192, offset: 512)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2710, file: !2709, line: 41, baseType: !321, size: 64, offset: 704)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2710, file: !2709, line: 42, baseType: !2722, size: 64, offset: 768)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2724)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2725, line: 13, size: 896, elements: !2726)
!2725 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2724, file: !2725, line: 14, baseType: !321, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2724, file: !2725, line: 15, baseType: !478, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2724, file: !2725, line: 17, baseType: !478, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2724, file: !2725, line: 17, baseType: !478, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2724, file: !2725, line: 19, baseType: !322, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2724, file: !2725, line: 21, baseType: !322, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2724, file: !2725, line: 22, baseType: !322, size: 64, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2724, file: !2725, line: 23, baseType: !322, size: 64, offset: 448)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2724, file: !2725, line: 24, baseType: !322, size: 64, offset: 512)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2724, file: !2725, line: 25, baseType: !322, size: 64, offset: 576)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2724, file: !2725, line: 26, baseType: !322, size: 64, offset: 640)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2724, file: !2725, line: 27, baseType: !322, size: 64, offset: 704)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2724, file: !2725, line: 28, baseType: !322, size: 64, offset: 768)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2724, file: !2725, line: 29, baseType: !322, size: 64, offset: 832)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2710, file: !2709, line: 44, baseType: !502, size: 32, offset: 832)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2710, file: !2709, line: 50, baseType: !418, size: 16, offset: 864)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2710, file: !2709, line: 51, baseType: !2744, size: 16, offset: 880)
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !419, line: 18, baseType: !2745)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !406, line: 23, baseType: !2509)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !666, line: 495, baseType: !478, size: 64, offset: 6528)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !669, file: !666, line: 497, baseType: !2748, size: 64, offset: 6592)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !666, line: 381, size: 384, elements: !2750)
!2750 = !{!2751, !2752, !2758}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2749, file: !666, line: 382, baseType: !502, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2749, file: !666, line: 383, baseType: !2753, size: 128, offset: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !666, line: 376, size: 128, elements: !2754)
!2754 = !{!2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2753, file: !666, line: 377, baseType: !483, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2753, file: !666, line: 378, baseType: !2757, size: 64, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2749, file: !666, line: 384, baseType: !2759, size: 192, offset: 192)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2760, line: 26, size: 192, elements: !2761)
!2760 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2761 = !{!2762, !2763}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2759, file: !2760, line: 27, baseType: !7, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2759, file: !2760, line: 28, baseType: !2764, size: 128, offset: 64)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2765, line: 43, size: 128, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2766 = !{!2767, !2768}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2764, file: !2765, line: 44, baseType: !457)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2764, file: !2765, line: 45, baseType: !527, size: 128)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !669, file: !666, line: 500, baseType: !1090, offset: 6656)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !669, file: !666, line: 501, baseType: !2771, size: 64, offset: 6656)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !666, line: 387, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !669, file: !666, line: 516, baseType: !1728, size: 64, offset: 6720)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !669, file: !666, line: 519, baseType: !706, size: 64, offset: 6784)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !669, file: !666, line: 521, baseType: !2776, size: 64, offset: 6848)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !666, line: 521, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !669, file: !666, line: 545, baseType: !502, size: 32, offset: 6912)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !669, file: !666, line: 548, baseType: !833, size: 8, offset: 6944)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !669, file: !666, line: 550, baseType: !2781, offset: 6952)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2782, line: 142, elements: !465)
!2782 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !669, file: !666, line: 554, baseType: !1748, size: 256, offset: 6976)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !669, file: !666, line: 557, baseType: !435, size: 32, offset: 7232)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !665, file: !666, line: 565, baseType: !2786, offset: 7296)
!2786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, elements: !2787)
!2787 = !{!2788}
!2788 = !DISubrange(count: -1)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !484, file: !485, line: 758, baseType: !664, size: 64, offset: 3968)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !484, file: !485, line: 761, baseType: !2791, size: 320, offset: 4032)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2700, line: 34, size: 320, elements: !2792)
!2792 = !{!2793, !2794}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2791, file: !2700, line: 35, baseType: !534, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2791, file: !2700, line: 36, baseType: !2795, size: 256, offset: 64)
!2795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 256, elements: !2428)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !484, file: !485, line: 766, baseType: !325, size: 32, offset: 4352)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !484, file: !485, line: 767, baseType: !325, size: 32, offset: 4384)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !484, file: !485, line: 768, baseType: !325, size: 32, offset: 4416)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !484, file: !485, line: 770, baseType: !325, size: 32, offset: 4448)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !484, file: !485, line: 772, baseType: !478, size: 64, offset: 4480)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !484, file: !485, line: 775, baseType: !7, size: 32, offset: 4544)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !484, file: !485, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !484, file: !485, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !484, file: !485, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !484, file: !485, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !484, file: !485, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !484, file: !485, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !484, file: !485, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !484, file: !485, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !484, file: !485, line: 831, baseType: !478, size: 64, offset: 4672)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !484, file: !485, line: 833, baseType: !2812, size: 384, offset: 4736)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !48, line: 25, size: 384, elements: !2813)
!2813 = !{!2814, !2819}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2812, file: !48, line: 26, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!322, !2818}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, scope: !2812, file: !48, line: 27, baseType: !2820, size: 320, offset: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2812, file: !48, line: 27, size: 320, elements: !2821)
!2821 = !{!2822, !2832, !2857}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2820, file: !48, line: 36, baseType: !2823, size: 320)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2820, file: !48, line: 29, size: 320, elements: !2824)
!2824 = !{!2825, !2827, !2828, !2829, !2830, !2831}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2823, file: !48, line: 30, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2823, file: !48, line: 31, baseType: !435, size: 32, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2823, file: !48, line: 32, baseType: !435, size: 32, offset: 96)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2823, file: !48, line: 33, baseType: !435, size: 32, offset: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2823, file: !48, line: 34, baseType: !534, size: 64, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2823, file: !48, line: 35, baseType: !2826, size: 64, offset: 256)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2820, file: !48, line: 46, baseType: !2833, size: 192)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2820, file: !48, line: 38, size: 192, elements: !2834)
!2834 = !{!2835, !2836, !2837, !2856}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2833, file: !48, line: 39, baseType: !616, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2833, file: !48, line: 40, baseType: !47, size: 32, offset: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, scope: !2833, file: !48, line: 41, baseType: !2838, size: 64, offset: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2833, file: !48, line: 41, size: 64, elements: !2839)
!2839 = !{!2840, !2848}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2838, file: !48, line: 42, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2843, line: 7, size: 128, elements: !2844)
!2843 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2844 = !{!2845, !2847}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2842, file: !2843, line: 8, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !618, line: 93, baseType: !566)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2842, file: !2843, line: 9, baseType: !566, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2838, file: !48, line: 43, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2851, line: 7, size: 64, elements: !2852)
!2851 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2852 = !{!2853, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2850, file: !2851, line: 8, baseType: !2854, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2851, line: 5, baseType: !2484)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2850, file: !2851, line: 9, baseType: !2484, size: 32, offset: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2833, file: !48, line: 45, baseType: !534, size: 64, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2820, file: !48, line: 54, baseType: !2858, size: 256)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2820, file: !48, line: 48, size: 256, elements: !2859)
!2859 = !{!2860, !2868, !2869, !2870, !2871}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2858, file: !48, line: 49, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2863, line: 36, size: 64, elements: !2864)
!2863 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2864 = !{!2865, !2866, !2867}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2862, file: !2863, line: 37, baseType: !325, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2862, file: !2863, line: 38, baseType: !2509, size: 16, offset: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2862, file: !2863, line: 39, baseType: !2509, size: 16, offset: 48)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2858, file: !48, line: 50, baseType: !325, size: 32, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2858, file: !48, line: 51, baseType: !325, size: 32, offset: 96)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2858, file: !48, line: 52, baseType: !478, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2858, file: !48, line: 53, baseType: !478, size: 64, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !484, file: !485, line: 835, baseType: !2873, size: 32, offset: 5120)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !320, line: 22, baseType: !2874)
!2874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !618, line: 28, baseType: !325)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !484, file: !485, line: 836, baseType: !2873, size: 32, offset: 5152)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !484, file: !485, line: 840, baseType: !478, size: 64, offset: 5184)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !484, file: !485, line: 849, baseType: !483, size: 64, offset: 5248)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !484, file: !485, line: 852, baseType: !483, size: 64, offset: 5312)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !484, file: !485, line: 857, baseType: !527, size: 128, offset: 5376)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !484, file: !485, line: 858, baseType: !527, size: 128, offset: 5504)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !484, file: !485, line: 859, baseType: !483, size: 64, offset: 5632)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !484, file: !485, line: 867, baseType: !527, size: 128, offset: 5696)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !484, file: !485, line: 868, baseType: !527, size: 128, offset: 5824)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !484, file: !485, line: 871, baseType: !2420, size: 64, offset: 5952)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !484, file: !485, line: 872, baseType: !2886, size: 512, offset: 6016)
!2886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 512, elements: !2428)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !484, file: !485, line: 873, baseType: !527, size: 128, offset: 6528)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !484, file: !485, line: 874, baseType: !527, size: 128, offset: 6656)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !484, file: !485, line: 876, baseType: !2890, size: 64, offset: 6784)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !484, file: !485, line: 879, baseType: !1054, size: 64, offset: 6848)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !484, file: !485, line: 882, baseType: !1054, size: 64, offset: 6912)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !484, file: !485, line: 884, baseType: !534, size: 64, offset: 6976)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !484, file: !485, line: 885, baseType: !534, size: 64, offset: 7040)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !484, file: !485, line: 890, baseType: !534, size: 64, offset: 7104)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !484, file: !485, line: 891, baseType: !2897, size: 128, offset: 7168)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !485, line: 242, size: 128, elements: !2898)
!2898 = !{!2899, !2900, !2901}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2897, file: !485, line: 244, baseType: !534, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2897, file: !485, line: 245, baseType: !534, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2897, file: !485, line: 246, baseType: !457, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !484, file: !485, line: 900, baseType: !478, size: 64, offset: 7296)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !484, file: !485, line: 901, baseType: !478, size: 64, offset: 7360)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !484, file: !485, line: 904, baseType: !534, size: 64, offset: 7424)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !484, file: !485, line: 907, baseType: !534, size: 64, offset: 7488)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !484, file: !485, line: 910, baseType: !478, size: 64, offset: 7552)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !484, file: !485, line: 911, baseType: !478, size: 64, offset: 7616)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !484, file: !485, line: 914, baseType: !2909, size: 640, offset: 7680)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2910, line: 123, size: 640, elements: !2911)
!2910 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2911 = !{!2912, !2918, !2919}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2909, file: !2910, line: 124, baseType: !2913, size: 576)
!2913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2914, size: 576, elements: !998)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2910, line: 108, size: 192, elements: !2915)
!2915 = !{!2916, !2917}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2914, file: !2910, line: 109, baseType: !534, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2914, file: !2910, line: 110, baseType: !631, size: 128, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2909, file: !2910, line: 125, baseType: !7, size: 32, offset: 576)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2909, file: !2910, line: 126, baseType: !7, size: 32, offset: 608)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !484, file: !485, line: 917, baseType: !2921, size: 192, offset: 8320)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2910, line: 134, size: 192, elements: !2922)
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2921, file: !2910, line: 135, baseType: !719, size: 128, align: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2921, file: !2910, line: 136, baseType: !7, size: 32, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !484, file: !485, line: 923, baseType: !2446, size: 64, offset: 8512)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !484, file: !485, line: 926, baseType: !2446, size: 64, offset: 8576)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !484, file: !485, line: 929, baseType: !2446, size: 64, offset: 8640)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !484, file: !485, line: 933, baseType: !2476, size: 64, offset: 8704)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !484, file: !485, line: 943, baseType: !2930, size: 128, offset: 8768)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 128, elements: !1636)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !484, file: !485, line: 945, baseType: !2932, size: 64, offset: 8896)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !485, line: 49, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !484, file: !485, line: 956, baseType: !2935, size: 64, offset: 8960)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !485, line: 45, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !484, file: !485, line: 959, baseType: !2938, size: 64, offset: 9024)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !485, line: 959, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !484, file: !485, line: 962, baseType: !2941, size: 64, offset: 9088)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !485, line: 66, flags: DIFlagFwdDecl)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !484, file: !485, line: 966, baseType: !2944, size: 64, offset: 9152)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !485, line: 50, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !484, file: !485, line: 969, baseType: !2947, size: 64, offset: 9216)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2949, line: 82, size: 7296, elements: !2950)
!2949 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2950 = !{!2951, !2952, !2953, !2954, !2955, !2956, !2957, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2986, !2995, !2996, !2998, !2999, !3000, !3003, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3033, !3034, !3041, !3042, !3043, !3044, !3045, !3046}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2948, file: !2949, line: 83, baseType: !497, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2948, file: !2949, line: 84, baseType: !502, size: 32, offset: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2948, file: !2949, line: 85, baseType: !325, size: 32, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2948, file: !2949, line: 86, baseType: !527, size: 128, offset: 128)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2948, file: !2949, line: 88, baseType: !1589, size: 128, offset: 256)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2948, file: !2949, line: 91, baseType: !483, size: 64, offset: 384)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2948, file: !2949, line: 94, baseType: !2958, size: 192, offset: 448)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2959, line: 30, size: 192, elements: !2960)
!2959 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2960 = !{!2961, !2962}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2958, file: !2959, line: 31, baseType: !527, size: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2958, file: !2959, line: 32, baseType: !2963, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2964, line: 25, baseType: !2965)
!2964 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2964, line: 23, size: 64, elements: !2966)
!2966 = !{!2967}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2965, file: !2964, line: 24, baseType: !656, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2948, file: !2949, line: 97, baseType: !982, size: 64, offset: 640)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2948, file: !2949, line: 100, baseType: !325, size: 32, offset: 704)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2948, file: !2949, line: 106, baseType: !325, size: 32, offset: 736)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2948, file: !2949, line: 107, baseType: !483, size: 64, offset: 768)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2948, file: !2949, line: 110, baseType: !325, size: 32, offset: 832)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2948, file: !2949, line: 111, baseType: !7, size: 32, offset: 864)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2948, file: !2949, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2948, file: !2949, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2948, file: !2949, line: 128, baseType: !325, size: 32, offset: 928)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2948, file: !2949, line: 129, baseType: !527, size: 128, offset: 960)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2948, file: !2949, line: 132, baseType: !574, size: 512, offset: 1088)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2948, file: !2949, line: 133, baseType: !582, size: 64, offset: 1600)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2948, file: !2949, line: 140, baseType: !2981, size: 256, offset: 1664)
!2981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2982, size: 256, elements: !2468)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2949, line: 38, size: 128, elements: !2983)
!2983 = !{!2984, !2985}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2982, file: !2949, line: 39, baseType: !534, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2982, file: !2949, line: 40, baseType: !534, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2948, file: !2949, line: 146, baseType: !2987, size: 192, offset: 1920)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2949, line: 66, size: 192, elements: !2988)
!2988 = !{!2989}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2987, file: !2949, line: 67, baseType: !2990, size: 192)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2949, line: 47, size: 192, elements: !2991)
!2991 = !{!2992, !2993, !2994}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2990, file: !2949, line: 48, baseType: !1109, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2990, file: !2949, line: 49, baseType: !1109, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2990, file: !2949, line: 50, baseType: !1109, size: 64, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2948, file: !2949, line: 150, baseType: !2909, size: 640, offset: 2112)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2948, file: !2949, line: 153, baseType: !2997, size: 256, offset: 2752)
!2997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2420, size: 256, elements: !2428)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2948, file: !2949, line: 159, baseType: !2420, size: 64, offset: 3008)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2948, file: !2949, line: 162, baseType: !325, size: 32, offset: 3072)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2948, file: !2949, line: 164, baseType: !3001, size: 64, offset: 3136)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2949, line: 164, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2948, file: !2949, line: 175, baseType: !3004, size: 32, offset: 3200)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !621, line: 805, baseType: !3005)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !621, line: 798, size: 32, elements: !3006)
!3006 = !{!3007, !3008}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3005, file: !621, line: 803, baseType: !741, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3005, file: !621, line: 804, baseType: !1090, offset: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2948, file: !2949, line: 176, baseType: !534, size: 64, offset: 3264)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2948, file: !2949, line: 176, baseType: !534, size: 64, offset: 3328)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2948, file: !2949, line: 176, baseType: !534, size: 64, offset: 3392)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2948, file: !2949, line: 176, baseType: !534, size: 64, offset: 3456)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2948, file: !2949, line: 177, baseType: !534, size: 64, offset: 3520)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2948, file: !2949, line: 178, baseType: !534, size: 64, offset: 3584)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2948, file: !2949, line: 179, baseType: !2897, size: 128, offset: 3648)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2948, file: !2949, line: 180, baseType: !478, size: 64, offset: 3776)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2948, file: !2949, line: 180, baseType: !478, size: 64, offset: 3840)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2948, file: !2949, line: 180, baseType: !478, size: 64, offset: 3904)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2948, file: !2949, line: 180, baseType: !478, size: 64, offset: 3968)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2948, file: !2949, line: 181, baseType: !478, size: 64, offset: 4032)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2948, file: !2949, line: 181, baseType: !478, size: 64, offset: 4096)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2948, file: !2949, line: 181, baseType: !478, size: 64, offset: 4160)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2948, file: !2949, line: 181, baseType: !478, size: 64, offset: 4224)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2948, file: !2949, line: 182, baseType: !478, size: 64, offset: 4288)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2948, file: !2949, line: 182, baseType: !478, size: 64, offset: 4352)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2948, file: !2949, line: 182, baseType: !478, size: 64, offset: 4416)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2948, file: !2949, line: 182, baseType: !478, size: 64, offset: 4480)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2948, file: !2949, line: 183, baseType: !478, size: 64, offset: 4544)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2948, file: !2949, line: 183, baseType: !478, size: 64, offset: 4608)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2948, file: !2949, line: 184, baseType: !3031, offset: 4672)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3032, line: 12, elements: !465)
!3032 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2948, file: !2949, line: 192, baseType: !536, size: 64, offset: 4672)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2948, file: !2949, line: 203, baseType: !3035, size: 2048, offset: 4736)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3036, size: 2048, elements: !1636)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3037, line: 43, size: 128, elements: !3038)
!3037 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3038 = !{!3039, !3040}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3036, file: !3037, line: 44, baseType: !924, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3036, file: !3037, line: 45, baseType: !924, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2948, file: !2949, line: 220, baseType: !833, size: 8, offset: 6784)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2948, file: !2949, line: 221, baseType: !2509, size: 16, offset: 6800)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2948, file: !2949, line: 222, baseType: !2509, size: 16, offset: 6816)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2948, file: !2949, line: 224, baseType: !664, size: 64, offset: 6848)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2948, file: !2949, line: 227, baseType: !1357, size: 192, offset: 6912)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2948, file: !2949, line: 233, baseType: !1357, size: 192, offset: 7104)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !484, file: !485, line: 970, baseType: !3048, size: 64, offset: 9280)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2949, line: 20, size: 16576, elements: !3050)
!3050 = !{!3051, !3052, !3053, !3054}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3049, file: !2949, line: 21, baseType: !1090)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3049, file: !2949, line: 22, baseType: !497, size: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3049, file: !2949, line: 23, baseType: !1589, size: 128, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3049, file: !2949, line: 24, baseType: !3055, size: 16384, offset: 192)
!3055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3056, size: 16384, elements: !2105)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2959, line: 49, size: 256, elements: !3057)
!3057 = !{!3058}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3056, file: !2959, line: 50, baseType: !3059, size: 256)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2959, line: 35, size: 256, elements: !3060)
!3060 = !{!3061, !3068, !3069, !3073}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3059, file: !2959, line: 37, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3063, line: 19, baseType: !3064)
!3063 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3063, line: 18, baseType: !3066)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{null, !325}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3059, file: !2959, line: 38, baseType: !478, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3059, file: !2959, line: 44, baseType: !3070, size: 64, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3063, line: 22, baseType: !3071)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3063, line: 21, baseType: !332)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3059, file: !2959, line: 46, baseType: !2963, size: 64, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !484, file: !485, line: 971, baseType: !2963, size: 64, offset: 9344)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !484, file: !485, line: 972, baseType: !2963, size: 64, offset: 9408)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !484, file: !485, line: 974, baseType: !2963, size: 64, offset: 9472)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !484, file: !485, line: 975, baseType: !2958, size: 192, offset: 9536)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !484, file: !485, line: 976, baseType: !478, size: 64, offset: 9728)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !484, file: !485, line: 977, baseType: !922, size: 64, offset: 9792)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !484, file: !485, line: 978, baseType: !7, size: 32, offset: 9856)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !484, file: !485, line: 980, baseType: !722, size: 64, offset: 9920)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !484, file: !485, line: 989, baseType: !3083, size: 128, offset: 9984)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3084, line: 35, size: 128, elements: !3085)
!3084 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3085 = !{!3086, !3087, !3088}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3083, file: !3084, line: 36, baseType: !325, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3083, file: !3084, line: 37, baseType: !502, size: 32, offset: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3083, file: !3084, line: 38, baseType: !3089, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3084, line: 23, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !484, file: !485, line: 992, baseType: !534, size: 64, offset: 10112)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !484, file: !485, line: 993, baseType: !534, size: 64, offset: 10176)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !484, file: !485, line: 996, baseType: !1090, offset: 10240)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !484, file: !485, line: 999, baseType: !457, offset: 10240)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !484, file: !485, line: 1001, baseType: !3096, size: 64, offset: 10240)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !485, line: 636, size: 64, elements: !3097)
!3097 = !{!3098}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3096, file: !485, line: 637, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !484, file: !485, line: 1005, baseType: !467, size: 128, offset: 10304)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !484, file: !485, line: 1007, baseType: !483, size: 64, offset: 10432)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !484, file: !485, line: 1009, baseType: !3103, size: 64, offset: 10496)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !485, line: 1009, flags: DIFlagFwdDecl)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !484, file: !485, line: 1043, baseType: !321, size: 64, offset: 10560)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !484, file: !485, line: 1046, baseType: !3107, size: 64, offset: 10624)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !485, line: 41, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !484, file: !485, line: 1050, baseType: !3110, size: 64, offset: 10688)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !485, line: 42, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !484, file: !485, line: 1054, baseType: !3113, size: 64, offset: 10752)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !485, line: 55, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !484, file: !485, line: 1056, baseType: !1536, size: 64, offset: 10816)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !484, file: !485, line: 1058, baseType: !3117, size: 64, offset: 10880)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3119, line: 99, size: 704, elements: !3120)
!3119 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3120 = !{!3121, !3122, !3123, !3124, !3125, !3126, !3127, !3146, !3147}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3118, file: !3119, line: 100, baseType: !1107, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3118, file: !3119, line: 101, baseType: !502, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3118, file: !3119, line: 102, baseType: !502, size: 32, offset: 96)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3118, file: !3119, line: 105, baseType: !1090, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3118, file: !3119, line: 107, baseType: !379, size: 16, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3118, file: !3119, line: 109, baseType: !1086, size: 128, offset: 192)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3118, file: !3119, line: 110, baseType: !3128, size: 64, offset: 320)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3119, line: 73, size: 448, elements: !3130)
!3130 = !{!3131, !3134, !3135, !3140, !3145}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3129, file: !3119, line: 74, baseType: !3132, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3119, line: 74, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3129, file: !3119, line: 75, baseType: !3117, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !3129, file: !3119, line: 83, baseType: !3136, size: 128, offset: 128)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3129, file: !3119, line: 83, size: 128, elements: !3137)
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3136, file: !3119, line: 84, baseType: !527, size: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3136, file: !3119, line: 85, baseType: !1267, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !3129, file: !3119, line: 87, baseType: !3141, size: 128, offset: 256)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3129, file: !3119, line: 87, size: 128, elements: !3142)
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3141, file: !3119, line: 88, baseType: !986, size: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3141, file: !3119, line: 89, baseType: !719, size: 128, align: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3129, file: !3119, line: 92, baseType: !7, size: 32, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3118, file: !3119, line: 111, baseType: !982, size: 64, offset: 384)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3118, file: !3119, line: 113, baseType: !1748, size: 256, offset: 448)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !484, file: !485, line: 1061, baseType: !3149, size: 64, offset: 10944)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !485, line: 43, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !484, file: !485, line: 1064, baseType: !478, size: 64, offset: 11008)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !484, file: !485, line: 1065, baseType: !3153, size: 64, offset: 11072)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2959, line: 14, baseType: !3155)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2959, line: 12, size: 384, elements: !3156)
!3156 = !{!3157}
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !3155, file: !2959, line: 13, baseType: !3158, size: 384)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3155, file: !2959, line: 13, size: 384, elements: !3159)
!3159 = !{!3160, !3161, !3162, !3163}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3158, file: !2959, line: 13, baseType: !325, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3158, file: !2959, line: 13, baseType: !325, size: 32, offset: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3158, file: !2959, line: 13, baseType: !325, size: 32, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3158, file: !2959, line: 13, baseType: !3164, size: 256, offset: 128)
!3164 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3165, line: 32, size: 256, elements: !3166)
!3165 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3166 = !{!3167, !3172, !3185, !3191, !3200, !3220, !3225}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3164, file: !3165, line: 37, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3164, file: !3165, line: 34, size: 64, elements: !3169)
!3169 = !{!3170, !3171}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3168, file: !3165, line: 35, baseType: !2874, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3168, file: !3165, line: 36, baseType: !783, size: 32, offset: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3164, file: !3165, line: 45, baseType: !3173, size: 192)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3164, file: !3165, line: 40, size: 192, elements: !3174)
!3174 = !{!3175, !3177, !3178, !3184}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3173, file: !3165, line: 41, baseType: !3176, size: 32)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !618, line: 95, baseType: !325)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3173, file: !3165, line: 42, baseType: !325, size: 32, offset: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3173, file: !3165, line: 43, baseType: !3179, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3165, line: 11, baseType: !3180)
!3180 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3165, line: 8, size: 64, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3180, file: !3165, line: 9, baseType: !325, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3180, file: !3165, line: 10, baseType: !321, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3173, file: !3165, line: 44, baseType: !325, size: 32, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3164, file: !3165, line: 52, baseType: !3186, size: 128)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3164, file: !3165, line: 48, size: 128, elements: !3187)
!3187 = !{!3188, !3189, !3190}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3186, file: !3165, line: 49, baseType: !2874, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3186, file: !3165, line: 50, baseType: !783, size: 32, offset: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3186, file: !3165, line: 51, baseType: !3179, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3164, file: !3165, line: 61, baseType: !3192, size: 256)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3164, file: !3165, line: 55, size: 256, elements: !3193)
!3193 = !{!3194, !3195, !3196, !3197, !3199}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3192, file: !3165, line: 56, baseType: !2874, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3192, file: !3165, line: 57, baseType: !783, size: 32, offset: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3192, file: !3165, line: 58, baseType: !325, size: 32, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3192, file: !3165, line: 59, baseType: !3198, size: 64, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !618, line: 94, baseType: !921)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3192, file: !3165, line: 60, baseType: !3198, size: 64, offset: 192)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3164, file: !3165, line: 95, baseType: !3201, size: 256)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3164, file: !3165, line: 64, size: 256, elements: !3202)
!3202 = !{!3203, !3204}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3201, file: !3165, line: 65, baseType: !321, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, scope: !3201, file: !3165, line: 77, baseType: !3205, size: 192, offset: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3201, file: !3165, line: 77, size: 192, elements: !3206)
!3206 = !{!3207, !3208, !3215}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3205, file: !3165, line: 82, baseType: !2509, size: 16)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3205, file: !3165, line: 88, baseType: !3209, size: 192)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3205, file: !3165, line: 84, size: 192, elements: !3210)
!3210 = !{!3211, !3213, !3214}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3209, file: !3165, line: 85, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 64, elements: !612)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3209, file: !3165, line: 86, baseType: !321, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3209, file: !3165, line: 87, baseType: !321, size: 64, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3205, file: !3165, line: 93, baseType: !3216, size: 96)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3205, file: !3165, line: 90, size: 96, elements: !3217)
!3217 = !{!3218, !3219}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3216, file: !3165, line: 91, baseType: !3212, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3216, file: !3165, line: 92, baseType: !436, size: 32, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3164, file: !3165, line: 101, baseType: !3221, size: 128)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3164, file: !3165, line: 98, size: 128, elements: !3222)
!3222 = !{!3223, !3224}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3221, file: !3165, line: 99, baseType: !322, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3221, file: !3165, line: 100, baseType: !325, size: 32, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3164, file: !3165, line: 108, baseType: !3226, size: 128)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3164, file: !3165, line: 104, size: 128, elements: !3227)
!3227 = !{!3228, !3229, !3230}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3226, file: !3165, line: 105, baseType: !321, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3226, file: !3165, line: 106, baseType: !325, size: 32, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3226, file: !3165, line: 107, baseType: !7, size: 32, offset: 96)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !484, file: !485, line: 1067, baseType: !3031, offset: 11136)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !484, file: !485, line: 1099, baseType: !3233, size: 64, offset: 11136)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !485, line: 56, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !484, file: !485, line: 1103, baseType: !527, size: 128, offset: 11200)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !484, file: !485, line: 1104, baseType: !3237, size: 64, offset: 11328)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !485, line: 46, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !484, file: !485, line: 1105, baseType: !1357, size: 192, offset: 11392)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !484, file: !485, line: 1106, baseType: !7, size: 32, offset: 11584)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !484, file: !485, line: 1109, baseType: !3242, size: 128, offset: 11648)
!3242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3243, size: 128, elements: !2468)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !485, line: 51, flags: DIFlagFwdDecl)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !484, file: !485, line: 1110, baseType: !1357, size: 192, offset: 11776)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !484, file: !485, line: 1111, baseType: !527, size: 128, offset: 11968)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !484, file: !485, line: 1173, baseType: !3248, size: 64, offset: 12096)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3250, line: 62, size: 256, align: 256, elements: !3251)
!3250 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3251 = !{!3252, !3253, !3254, !3259}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3249, file: !3250, line: 75, baseType: !436, size: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3249, file: !3250, line: 90, baseType: !436, size: 32, offset: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3249, file: !3250, line: 124, baseType: !3255, size: 64, offset: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3249, file: !3250, line: 109, size: 64, elements: !3256)
!3256 = !{!3257, !3258}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3255, file: !3250, line: 110, baseType: !535, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3255, file: !3250, line: 112, baseType: !535, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3249, file: !3250, line: 144, baseType: !436, size: 32, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !484, file: !485, line: 1174, baseType: !435, size: 32, offset: 12160)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !484, file: !485, line: 1179, baseType: !478, size: 64, offset: 12224)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !484, file: !485, line: 1182, baseType: !3263, size: 128, offset: 12288)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2700, line: 76, size: 128, elements: !3264)
!3264 = !{!3265, !3270, !3271}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3263, file: !2700, line: 85, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3267, line: 7, size: 64, elements: !3268)
!3267 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3268 = !{!3269}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3266, file: !3267, line: 12, baseType: !653, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3263, file: !2700, line: 88, baseType: !833, size: 8, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3263, file: !2700, line: 95, baseType: !833, size: 8, offset: 72)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !485, line: 1184, baseType: !3273, size: 128, offset: 12416)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !485, line: 1184, size: 128, elements: !3274)
!3274 = !{!3275, !3276}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3273, file: !485, line: 1185, baseType: !497, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3273, file: !485, line: 1186, baseType: !719, size: 128, align: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !484, file: !485, line: 1190, baseType: !2014, size: 64, offset: 12544)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !484, file: !485, line: 1192, baseType: !3279, size: 128, offset: 12608)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2700, line: 64, size: 128, elements: !3280)
!3280 = !{!3281, !3282, !3283}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3279, file: !2700, line: 65, baseType: !1069, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3279, file: !2700, line: 67, baseType: !436, size: 32, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3279, file: !2700, line: 68, baseType: !436, size: 32, offset: 96)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !484, file: !485, line: 1206, baseType: !325, size: 32, offset: 12736)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !484, file: !485, line: 1207, baseType: !325, size: 32, offset: 12768)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !484, file: !485, line: 1209, baseType: !478, size: 64, offset: 12800)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !484, file: !485, line: 1219, baseType: !534, size: 64, offset: 12864)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !484, file: !485, line: 1220, baseType: !534, size: 64, offset: 12928)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !484, file: !485, line: 1317, baseType: !325, size: 32, offset: 12992)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !484, file: !485, line: 1319, baseType: !483, size: 64, offset: 13056)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !484, file: !485, line: 1322, baseType: !3292, size: 64, offset: 13120)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3294, line: 56, size: 512, elements: !3295)
!3294 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301, !3302, !3304}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3293, file: !3294, line: 57, baseType: !3292, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3293, file: !3294, line: 58, baseType: !321, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3293, file: !3294, line: 59, baseType: !478, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3293, file: !3294, line: 60, baseType: !478, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3293, file: !3294, line: 61, baseType: !1154, size: 64, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3293, file: !3294, line: 62, baseType: !7, size: 32, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3293, file: !3294, line: 63, baseType: !3303, size: 64, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !320, line: 153, baseType: !534)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3293, file: !3294, line: 64, baseType: !2196, size: 64, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !484, file: !485, line: 1326, baseType: !497, size: 32, offset: 13184)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !484, file: !485, line: 1342, baseType: !321, size: 64, offset: 13248)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !484, file: !485, line: 1343, baseType: !535, size: 64, offset: 13312)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !484, file: !485, line: 1344, baseType: !534, size: 64, offset: 13376)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !484, file: !485, line: 1345, baseType: !535, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !484, file: !485, line: 1346, baseType: !535, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !484, file: !485, line: 1347, baseType: !535, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !484, file: !485, line: 1348, baseType: !719, size: 128, align: 64, offset: 13504)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !484, file: !485, line: 1358, baseType: !3314, size: 34816, offset: 13824)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3315, line: 485, size: 34816, elements: !3316)
!3315 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3316 = !{!3317, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3346, !3347, !3348, !3349, !3350, !3351, !3354, !3355, !3356}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3314, file: !3315, line: 487, baseType: !3318, size: 192)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3319, size: 192, elements: !998)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3320, line: 16, size: 64, elements: !3321)
!3320 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3321 = !{!3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3319, file: !3320, line: 17, baseType: !418, size: 16)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3319, file: !3320, line: 18, baseType: !418, size: 16, offset: 16)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3319, file: !3320, line: 19, baseType: !418, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3319, file: !3320, line: 19, baseType: !418, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3319, file: !3320, line: 19, baseType: !418, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3319, file: !3320, line: 19, baseType: !418, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3319, file: !3320, line: 19, baseType: !418, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3319, file: !3320, line: 20, baseType: !418, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3319, file: !3320, line: 20, baseType: !418, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3319, file: !3320, line: 20, baseType: !418, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3319, file: !3320, line: 20, baseType: !418, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3319, file: !3320, line: 20, baseType: !418, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3319, file: !3320, line: 20, baseType: !418, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3314, file: !3315, line: 491, baseType: !478, size: 64, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3314, file: !3315, line: 495, baseType: !379, size: 16, offset: 256)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3314, file: !3315, line: 496, baseType: !379, size: 16, offset: 272)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3314, file: !3315, line: 497, baseType: !379, size: 16, offset: 288)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3314, file: !3315, line: 498, baseType: !379, size: 16, offset: 304)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3314, file: !3315, line: 502, baseType: !478, size: 64, offset: 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3314, file: !3315, line: 503, baseType: !478, size: 64, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3314, file: !3315, line: 514, baseType: !3343, size: 256, offset: 448)
!3343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3344, size: 256, elements: !2428)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3315, line: 483, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3314, file: !3315, line: 516, baseType: !478, size: 64, offset: 704)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3314, file: !3315, line: 518, baseType: !478, size: 64, offset: 768)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3314, file: !3315, line: 520, baseType: !478, size: 64, offset: 832)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3314, file: !3315, line: 521, baseType: !478, size: 64, offset: 896)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3314, file: !3315, line: 522, baseType: !478, size: 64, offset: 960)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3314, file: !3315, line: 528, baseType: !3352, size: 64, offset: 1024)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3315, line: 10, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3314, file: !3315, line: 535, baseType: !478, size: 64, offset: 1088)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3314, file: !3315, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3314, file: !3315, line: 540, baseType: !3357, size: 33280, offset: 1536)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3358, line: 317, size: 33280, elements: !3359)
!3358 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3359 = !{!3360, !3361, !3362}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3357, file: !3358, line: 330, baseType: !7, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3357, file: !3358, line: 337, baseType: !478, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3357, file: !3358, line: 348, baseType: !3363, size: 32768, offset: 512)
!3363 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3358, line: 304, size: 32768, elements: !3364)
!3364 = !{!3365, !3378, !3415, !3465, !3478}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3363, file: !3358, line: 305, baseType: !3366, size: 896)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3358, line: 12, size: 896, elements: !3367)
!3367 = !{!3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3377}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3366, file: !3358, line: 13, baseType: !435, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3366, file: !3358, line: 14, baseType: !435, size: 32, offset: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3366, file: !3358, line: 15, baseType: !435, size: 32, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3366, file: !3358, line: 16, baseType: !435, size: 32, offset: 96)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3366, file: !3358, line: 17, baseType: !435, size: 32, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3366, file: !3358, line: 18, baseType: !435, size: 32, offset: 160)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3366, file: !3358, line: 19, baseType: !435, size: 32, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3366, file: !3358, line: 22, baseType: !3376, size: 640, offset: 224)
!3376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 640, elements: !383)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3366, file: !3358, line: 25, baseType: !435, size: 32, offset: 864)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3363, file: !3358, line: 306, baseType: !3379, size: 4096, align: 128)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3358, line: 34, size: 4096, align: 128, elements: !3380)
!3380 = !{!3381, !3382, !3383, !3384, !3385, !3400, !3401, !3402, !3404, !3406, !3410}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3379, file: !3358, line: 35, baseType: !418, size: 16)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3379, file: !3358, line: 36, baseType: !418, size: 16, offset: 16)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3379, file: !3358, line: 37, baseType: !418, size: 16, offset: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3379, file: !3358, line: 38, baseType: !418, size: 16, offset: 48)
!3385 = !DIDerivedType(tag: DW_TAG_member, scope: !3379, file: !3358, line: 39, baseType: !3386, size: 128, offset: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3379, file: !3358, line: 39, size: 128, elements: !3387)
!3387 = !{!3388, !3393}
!3388 = !DIDerivedType(tag: DW_TAG_member, scope: !3386, file: !3358, line: 40, baseType: !3389, size: 128)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3386, file: !3358, line: 40, size: 128, elements: !3390)
!3390 = !{!3391, !3392}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3389, file: !3358, line: 41, baseType: !534, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3389, file: !3358, line: 42, baseType: !534, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, scope: !3386, file: !3358, line: 44, baseType: !3394, size: 128)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3386, file: !3358, line: 44, size: 128, elements: !3395)
!3395 = !{!3396, !3397, !3398, !3399}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3394, file: !3358, line: 45, baseType: !435, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3394, file: !3358, line: 46, baseType: !435, size: 32, offset: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3394, file: !3358, line: 47, baseType: !435, size: 32, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3394, file: !3358, line: 48, baseType: !435, size: 32, offset: 96)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3379, file: !3358, line: 51, baseType: !435, size: 32, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3379, file: !3358, line: 52, baseType: !435, size: 32, offset: 224)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3379, file: !3358, line: 55, baseType: !3403, size: 1024, offset: 256)
!3403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 1024, elements: !1627)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3379, file: !3358, line: 58, baseType: !3405, size: 2048, offset: 1280)
!3405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 2048, elements: !2105)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3379, file: !3358, line: 60, baseType: !3407, size: 384, offset: 3328)
!3407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 384, elements: !3408)
!3408 = !{!3409}
!3409 = !DISubrange(count: 12)
!3410 = !DIDerivedType(tag: DW_TAG_member, scope: !3379, file: !3358, line: 62, baseType: !3411, size: 384, offset: 3712)
!3411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3379, file: !3358, line: 62, size: 384, elements: !3412)
!3412 = !{!3413, !3414}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3411, file: !3358, line: 63, baseType: !3407, size: 384)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3411, file: !3358, line: 64, baseType: !3407, size: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3363, file: !3358, line: 307, baseType: !3416, size: 1088)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3358, line: 79, size: 1088, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3464}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3416, file: !3358, line: 80, baseType: !435, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3416, file: !3358, line: 81, baseType: !435, size: 32, offset: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3416, file: !3358, line: 82, baseType: !435, size: 32, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3416, file: !3358, line: 83, baseType: !435, size: 32, offset: 96)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3416, file: !3358, line: 84, baseType: !435, size: 32, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3416, file: !3358, line: 85, baseType: !435, size: 32, offset: 160)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3416, file: !3358, line: 86, baseType: !435, size: 32, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3416, file: !3358, line: 88, baseType: !3376, size: 640, offset: 224)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3416, file: !3358, line: 89, baseType: !420, size: 8, offset: 864)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3416, file: !3358, line: 90, baseType: !420, size: 8, offset: 872)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3416, file: !3358, line: 91, baseType: !420, size: 8, offset: 880)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3416, file: !3358, line: 92, baseType: !420, size: 8, offset: 888)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3416, file: !3358, line: 93, baseType: !420, size: 8, offset: 896)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3416, file: !3358, line: 94, baseType: !420, size: 8, offset: 904)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3416, file: !3358, line: 95, baseType: !3433, size: 64, offset: 960)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3435, line: 11, size: 128, elements: !3436)
!3435 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3436 = !{!3437, !3438}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3434, file: !3435, line: 12, baseType: !322, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3434, file: !3435, line: 13, baseType: !3439, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3441, line: 56, size: 1344, elements: !3442)
!3441 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3440, file: !3441, line: 61, baseType: !478, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3440, file: !3441, line: 62, baseType: !478, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3440, file: !3441, line: 63, baseType: !478, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3440, file: !3441, line: 64, baseType: !478, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3440, file: !3441, line: 65, baseType: !478, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3440, file: !3441, line: 66, baseType: !478, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3440, file: !3441, line: 68, baseType: !478, size: 64, offset: 384)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3440, file: !3441, line: 69, baseType: !478, size: 64, offset: 448)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3440, file: !3441, line: 70, baseType: !478, size: 64, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3440, file: !3441, line: 71, baseType: !478, size: 64, offset: 576)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3440, file: !3441, line: 72, baseType: !478, size: 64, offset: 640)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3440, file: !3441, line: 73, baseType: !478, size: 64, offset: 704)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3440, file: !3441, line: 74, baseType: !478, size: 64, offset: 768)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3440, file: !3441, line: 75, baseType: !478, size: 64, offset: 832)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3440, file: !3441, line: 76, baseType: !478, size: 64, offset: 896)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3440, file: !3441, line: 81, baseType: !478, size: 64, offset: 960)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3440, file: !3441, line: 83, baseType: !478, size: 64, offset: 1024)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3440, file: !3441, line: 84, baseType: !478, size: 64, offset: 1088)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3440, file: !3441, line: 85, baseType: !478, size: 64, offset: 1152)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3440, file: !3441, line: 86, baseType: !478, size: 64, offset: 1216)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3440, file: !3441, line: 87, baseType: !478, size: 64, offset: 1280)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3416, file: !3358, line: 96, baseType: !435, size: 32, offset: 1024)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3363, file: !3358, line: 308, baseType: !3466, size: 4608, align: 512)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3358, line: 289, size: 4608, align: 512, elements: !3467)
!3467 = !{!3468, !3469, !3476}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3466, file: !3358, line: 290, baseType: !3379, size: 4096, align: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3466, file: !3358, line: 291, baseType: !3470, size: 512, offset: 4096)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3358, line: 268, size: 512, elements: !3471)
!3471 = !{!3472, !3473, !3474}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3470, file: !3358, line: 269, baseType: !534, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3470, file: !3358, line: 270, baseType: !534, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3470, file: !3358, line: 271, baseType: !3475, size: 384, offset: 128)
!3475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 384, elements: !2527)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3466, file: !3358, line: 292, baseType: !3477, offset: 4608)
!3477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, elements: !2623)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3363, file: !3358, line: 309, baseType: !3479, size: 32768)
!3479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 32768, elements: !3480)
!3480 = !{!3481}
!3481 = !DISubrange(count: 4096)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !387, file: !95, line: 704, baseType: !453, size: 192, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !387, file: !95, line: 706, baseType: !325, size: 32, offset: 704)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !387, file: !95, line: 707, baseType: !325, size: 32, offset: 736)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !387, file: !95, line: 708, baseType: !3486, size: 5568, offset: 768)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !3487)
!3487 = !{!3488, !3489, !3491, !3494, !3495, !3546, !3637, !3638, !3639, !3640, !3641, !3650, !3755, !3768, !3963, !3964, !3968, !3970, !3971, !3972, !3976, !3982, !3983, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !4024, !4025, !4026, !4029, !4032, !4033, !4034, !4035}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3486, file: !60, line: 462, baseType: !2064, size: 512)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3486, file: !60, line: 463, baseType: !3490, size: 64, offset: 512)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3486, file: !60, line: 465, baseType: !3492, size: 64, offset: 576)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3486, file: !60, line: 467, baseType: !805, size: 64, offset: 640)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3486, file: !60, line: 468, baseType: !3496, size: 64, offset: 704)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3498)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3499)
!3499 = !{!3500, !3501, !3502, !3506, !3511, !3515}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3498, file: !60, line: 88, baseType: !805, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3498, file: !60, line: 89, baseType: !2143, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3498, file: !60, line: 90, baseType: !3503, size: 64, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!325, !3490, !2098}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3498, file: !60, line: 91, baseType: !3507, size: 64, offset: 192)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!323, !3490, !3510, !2213, !2214}
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3498, file: !60, line: 93, baseType: !3512, size: 64, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{null, !3490}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3498, file: !60, line: 95, baseType: !3516, size: 64, offset: 320)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3518)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3519)
!3519 = !{!3520, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3518, file: !67, line: 279, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!325, !3490}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3518, file: !67, line: 280, baseType: !3512, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3518, file: !67, line: 281, baseType: !3521, size: 64, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3518, file: !67, line: 282, baseType: !3521, size: 64, offset: 192)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3518, file: !67, line: 283, baseType: !3521, size: 64, offset: 256)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3518, file: !67, line: 284, baseType: !3521, size: 64, offset: 320)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3518, file: !67, line: 285, baseType: !3521, size: 64, offset: 384)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3518, file: !67, line: 286, baseType: !3521, size: 64, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3518, file: !67, line: 287, baseType: !3521, size: 64, offset: 512)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3518, file: !67, line: 288, baseType: !3521, size: 64, offset: 576)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3518, file: !67, line: 289, baseType: !3521, size: 64, offset: 640)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3518, file: !67, line: 290, baseType: !3521, size: 64, offset: 704)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3518, file: !67, line: 291, baseType: !3521, size: 64, offset: 768)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3518, file: !67, line: 292, baseType: !3521, size: 64, offset: 832)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3518, file: !67, line: 293, baseType: !3521, size: 64, offset: 896)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3518, file: !67, line: 294, baseType: !3521, size: 64, offset: 960)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3518, file: !67, line: 295, baseType: !3521, size: 64, offset: 1024)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3518, file: !67, line: 296, baseType: !3521, size: 64, offset: 1088)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3518, file: !67, line: 297, baseType: !3521, size: 64, offset: 1152)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3518, file: !67, line: 298, baseType: !3521, size: 64, offset: 1216)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3518, file: !67, line: 299, baseType: !3521, size: 64, offset: 1280)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3518, file: !67, line: 300, baseType: !3521, size: 64, offset: 1344)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3518, file: !67, line: 301, baseType: !3521, size: 64, offset: 1408)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3486, file: !60, line: 470, baseType: !3547, size: 64, offset: 768)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3549, line: 82, size: 1408, elements: !3550)
!3549 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3550 = !{!3551, !3552, !3553, !3554, !3555, !3556, !3557, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3632, !3635, !3636}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3548, file: !3549, line: 83, baseType: !805, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3548, file: !3549, line: 84, baseType: !805, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3548, file: !3549, line: 85, baseType: !3490, size: 64, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3548, file: !3549, line: 86, baseType: !2143, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3548, file: !3549, line: 87, baseType: !2143, size: 64, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3548, file: !3549, line: 88, baseType: !2143, size: 64, offset: 320)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3548, file: !3549, line: 90, baseType: !3558, size: 64, offset: 384)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!325, !3490, !3561}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569, !3570, !3583, !3596, !3597, !3598, !3599, !3600, !3608, !3609, !3610, !3611, !3612, !3613}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3562, file: !54, line: 96, baseType: !805, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3562, file: !54, line: 97, baseType: !3547, size: 64, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3562, file: !54, line: 99, baseType: !316, size: 64, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3562, file: !54, line: 100, baseType: !805, size: 64, offset: 192)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3562, file: !54, line: 102, baseType: !833, size: 8, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3562, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3562, file: !54, line: 105, baseType: !3571, size: 64, offset: 320)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3573)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3574, line: 262, size: 1600, elements: !3575)
!3574 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3575 = !{!3576, !3577, !3578, !3582}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3573, file: !3574, line: 263, baseType: !1626, size: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3573, file: !3574, line: 264, baseType: !1626, size: 256, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3573, file: !3574, line: 265, baseType: !3579, size: 1024, offset: 512)
!3579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 1024, elements: !3580)
!3580 = !{!3581}
!3581 = !DISubrange(count: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3573, file: !3574, line: 266, baseType: !2196, size: 64, offset: 1536)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3562, file: !54, line: 106, baseType: !3584, size: 64, offset: 384)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3586)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3574, line: 210, size: 256, elements: !3587)
!3587 = !{!3588, !3592, !3594, !3595}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3586, file: !3574, line: 211, baseType: !3589, size: 72)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 72, elements: !3590)
!3590 = !{!3591}
!3591 = !DISubrange(count: 9)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3586, file: !3574, line: 212, baseType: !3593, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3574, line: 14, baseType: !478)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3586, file: !3574, line: 213, baseType: !436, size: 32, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3586, file: !3574, line: 214, baseType: !436, size: 32, offset: 224)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3562, file: !54, line: 108, baseType: !3521, size: 64, offset: 448)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3562, file: !54, line: 109, baseType: !3512, size: 64, offset: 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3562, file: !54, line: 110, baseType: !3521, size: 64, offset: 576)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3562, file: !54, line: 111, baseType: !3512, size: 64, offset: 640)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3562, file: !54, line: 112, baseType: !3601, size: 64, offset: 704)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!325, !3490, !3604}
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3605)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3606)
!3606 = !{!3607}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3605, file: !67, line: 51, baseType: !325, size: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3562, file: !54, line: 113, baseType: !3521, size: 64, offset: 768)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3562, file: !54, line: 114, baseType: !2143, size: 64, offset: 832)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3562, file: !54, line: 115, baseType: !2143, size: 64, offset: 896)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3562, file: !54, line: 117, baseType: !3516, size: 64, offset: 960)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3562, file: !54, line: 118, baseType: !3512, size: 64, offset: 1024)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3562, file: !54, line: 120, baseType: !3614, size: 64, offset: 1088)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3548, file: !3549, line: 91, baseType: !3503, size: 64, offset: 448)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3548, file: !3549, line: 92, baseType: !3521, size: 64, offset: 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3548, file: !3549, line: 93, baseType: !3512, size: 64, offset: 576)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3548, file: !3549, line: 94, baseType: !3521, size: 64, offset: 640)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3548, file: !3549, line: 95, baseType: !3512, size: 64, offset: 704)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3548, file: !3549, line: 97, baseType: !3521, size: 64, offset: 768)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3548, file: !3549, line: 98, baseType: !3521, size: 64, offset: 832)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3548, file: !3549, line: 100, baseType: !3601, size: 64, offset: 896)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3548, file: !3549, line: 101, baseType: !3521, size: 64, offset: 960)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3548, file: !3549, line: 103, baseType: !3521, size: 64, offset: 1024)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3548, file: !3549, line: 105, baseType: !3521, size: 64, offset: 1088)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3548, file: !3549, line: 107, baseType: !3516, size: 64, offset: 1152)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3548, file: !3549, line: 109, baseType: !3629, size: 64, offset: 1216)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3631)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3549, line: 109, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3548, file: !3549, line: 111, baseType: !3633, size: 64, offset: 1280)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3549, line: 111, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3548, file: !3549, line: 112, baseType: !992, offset: 1344)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3548, file: !3549, line: 114, baseType: !833, size: 8, offset: 1344)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3486, file: !60, line: 471, baseType: !3561, size: 64, offset: 832)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3486, file: !60, line: 473, baseType: !321, size: 64, offset: 896)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3486, file: !60, line: 475, baseType: !321, size: 64, offset: 960)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3486, file: !60, line: 480, baseType: !1357, size: 192, offset: 1024)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3486, file: !60, line: 484, baseType: !3642, size: 576, offset: 1216)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3643)
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3642, file: !60, line: 362, baseType: !527, size: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3642, file: !60, line: 363, baseType: !527, size: 128, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3642, file: !60, line: 364, baseType: !527, size: 128, offset: 256)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3642, file: !60, line: 365, baseType: !527, size: 128, offset: 384)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3642, file: !60, line: 366, baseType: !833, size: 8, offset: 512)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3642, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3486, file: !60, line: 485, baseType: !3651, size: 2304, offset: 1792)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3652)
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3748, !3752}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3651, file: !67, line: 566, baseType: !3604, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3651, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3651, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3651, file: !67, line: 569, baseType: !833, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3651, file: !67, line: 570, baseType: !833, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3651, file: !67, line: 571, baseType: !833, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3651, file: !67, line: 572, baseType: !833, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3651, file: !67, line: 573, baseType: !833, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3651, file: !67, line: 574, baseType: !833, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3651, file: !67, line: 575, baseType: !833, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3651, file: !67, line: 576, baseType: !833, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3651, file: !67, line: 577, baseType: !435, size: 32, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3651, file: !67, line: 578, baseType: !1090, offset: 96)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3651, file: !67, line: 580, baseType: !527, size: 128, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3651, file: !67, line: 581, baseType: !2759, size: 192, offset: 256)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3651, file: !67, line: 582, baseType: !3669, size: 64, offset: 448)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3671, line: 43, size: 1472, elements: !3672)
!3671 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3672 = !{!3673, !3674, !3675, !3676, !3677, !3680, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3670, file: !3671, line: 44, baseType: !805, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3670, file: !3671, line: 45, baseType: !325, size: 32, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3670, file: !3671, line: 46, baseType: !527, size: 128, offset: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3670, file: !3671, line: 47, baseType: !1090, offset: 256)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3670, file: !3671, line: 48, baseType: !3678, size: 64, offset: 256)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3670, file: !3671, line: 49, baseType: !3681, size: 320, offset: 320)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3682, line: 11, size: 320, elements: !3683)
!3682 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3683 = !{!3684, !3685, !3686, !3691}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3681, file: !3682, line: 16, baseType: !986, size: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3681, file: !3682, line: 17, baseType: !478, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3681, file: !3682, line: 18, baseType: !3687, size: 64, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{null, !3690}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3681, file: !3682, line: 19, baseType: !435, size: 32, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3670, file: !3671, line: 50, baseType: !478, size: 64, offset: 640)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3670, file: !3671, line: 51, baseType: !582, size: 64, offset: 704)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3670, file: !3671, line: 52, baseType: !582, size: 64, offset: 768)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3670, file: !3671, line: 53, baseType: !582, size: 64, offset: 832)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3670, file: !3671, line: 54, baseType: !582, size: 64, offset: 896)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3670, file: !3671, line: 55, baseType: !582, size: 64, offset: 960)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3670, file: !3671, line: 56, baseType: !478, size: 64, offset: 1024)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3670, file: !3671, line: 57, baseType: !478, size: 64, offset: 1088)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3670, file: !3671, line: 58, baseType: !478, size: 64, offset: 1152)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3670, file: !3671, line: 59, baseType: !478, size: 64, offset: 1216)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3670, file: !3671, line: 60, baseType: !478, size: 64, offset: 1280)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3670, file: !3671, line: 61, baseType: !3490, size: 64, offset: 1344)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3670, file: !3671, line: 62, baseType: !833, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3670, file: !3671, line: 63, baseType: !833, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3651, file: !67, line: 583, baseType: !833, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3651, file: !67, line: 584, baseType: !833, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3651, file: !67, line: 585, baseType: !833, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3651, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3651, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3651, file: !67, line: 592, baseType: !574, size: 512, offset: 576)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3651, file: !67, line: 593, baseType: !534, size: 64, offset: 1088)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3651, file: !67, line: 594, baseType: !1748, size: 256, offset: 1152)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3651, file: !67, line: 595, baseType: !1589, size: 128, offset: 1408)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3651, file: !67, line: 596, baseType: !3678, size: 64, offset: 1536)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3651, file: !67, line: 597, baseType: !502, size: 32, offset: 1600)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3651, file: !67, line: 598, baseType: !502, size: 32, offset: 1632)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3651, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3651, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3651, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3651, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3651, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3651, file: !67, line: 604, baseType: !833, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3651, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3651, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3651, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3651, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3651, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3651, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3651, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3651, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3651, file: !67, line: 613, baseType: !325, size: 32, offset: 1792)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3651, file: !67, line: 614, baseType: !325, size: 32, offset: 1824)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3651, file: !67, line: 615, baseType: !534, size: 64, offset: 1856)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3651, file: !67, line: 616, baseType: !534, size: 64, offset: 1920)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3651, file: !67, line: 617, baseType: !534, size: 64, offset: 1984)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3651, file: !67, line: 618, baseType: !534, size: 64, offset: 2048)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3651, file: !67, line: 620, baseType: !3739, size: 64, offset: 2112)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3745}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3740, file: !67, line: 537, baseType: !1090)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3740, file: !67, line: 538, baseType: !7, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3740, file: !67, line: 540, baseType: !527, size: 128, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3740, file: !67, line: 543, baseType: !3746, size: 64, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3651, file: !67, line: 621, baseType: !3749, size: 64, offset: 2176)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{null, !3490, !2484}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3651, file: !67, line: 622, baseType: !3753, size: 64, offset: 2240)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3486, file: !60, line: 486, baseType: !3756, size: 64, offset: 4096)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3758)
!3758 = !{!3759, !3760, !3761, !3765, !3766, !3767}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3757, file: !67, line: 643, baseType: !3518, size: 1472)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3757, file: !67, line: 644, baseType: !3521, size: 64, offset: 1472)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3757, file: !67, line: 645, baseType: !3762, size: 64, offset: 1536)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{null, !3490, !833}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3757, file: !67, line: 646, baseType: !3521, size: 64, offset: 1600)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3757, file: !67, line: 647, baseType: !3512, size: 64, offset: 1664)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3757, file: !67, line: 648, baseType: !3512, size: 64, offset: 1728)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3486, file: !60, line: 493, baseType: !3769, size: 64, offset: 4160)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 162, size: 1088, elements: !3771)
!3771 = !{!3772, !3773, !3774, !3947, !3948, !3949, !3950, !3951, !3952, !3955, !3956, !3957, !3958, !3959, !3960, !3961}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3770, file: !81, line: 163, baseType: !527, size: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3770, file: !81, line: 164, baseType: !805, size: 64, offset: 128)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3770, file: !81, line: 165, baseType: !3775, size: 64, offset: 192)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !81, line: 105, size: 640, elements: !3778)
!3778 = !{!3779, !3897, !3908, !3913, !3917, !3924, !3928, !3932, !3939, !3943}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3777, file: !81, line: 106, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!325, !3769, !3783, !80}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3785, line: 51, size: 1344, elements: !3786)
!3785 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3786 = !{!3787, !3788, !3790, !3791, !3881, !3890, !3891, !3892, !3893, !3894, !3895, !3896}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3784, file: !3785, line: 52, baseType: !805, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3784, file: !3785, line: 53, baseType: !3789, size: 32, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3785, line: 28, baseType: !435)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3784, file: !3785, line: 54, baseType: !805, size: 64, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3784, file: !3785, line: 55, baseType: !3792, size: 192, offset: 192)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3793, line: 17, size: 192, elements: !3794)
!3793 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3794 = !{!3795, !3797, !3880}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3792, file: !3793, line: 18, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3792, file: !3793, line: 19, baseType: !3798, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3800)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3793, line: 110, size: 1152, elements: !3801)
!3801 = !{!3802, !3806, !3810, !3816, !3822, !3826, !3830, !3835, !3839, !3840, !3844, !3848, !3852, !3863, !3864, !3865, !3866, !3876}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3800, file: !3793, line: 111, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!3796, !3796}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3800, file: !3793, line: 112, baseType: !3807, size: 64, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !3796}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3800, file: !3793, line: 113, baseType: !3811, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!833, !3814}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3792)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3800, file: !3793, line: 114, baseType: !3817, size: 64, offset: 192)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!2196, !3814, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3486)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3800, file: !3793, line: 116, baseType: !3823, size: 64, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!833, !3814, !805}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3800, file: !3793, line: 118, baseType: !3827, size: 64, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!325, !3814, !805, !7, !321, !922}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3800, file: !3793, line: 123, baseType: !3831, size: 64, offset: 384)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!325, !3814, !805, !3834, !922}
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3800, file: !3793, line: 126, baseType: !3836, size: 64, offset: 448)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!805, !3814}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3800, file: !3793, line: 127, baseType: !3836, size: 64, offset: 512)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3800, file: !3793, line: 128, baseType: !3841, size: 64, offset: 576)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!3796, !3814}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3800, file: !3793, line: 130, baseType: !3845, size: 64, offset: 640)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!3796, !3814, !3796}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3800, file: !3793, line: 133, baseType: !3849, size: 64, offset: 704)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!3796, !3814, !805}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3800, file: !3793, line: 135, baseType: !3853, size: 64, offset: 768)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!325, !3814, !805, !805, !7, !7, !3856}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3793, line: 43, size: 640, elements: !3858)
!3858 = !{!3859, !3860, !3861}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3857, file: !3793, line: 44, baseType: !3796, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3857, file: !3793, line: 45, baseType: !7, size: 32, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3857, file: !3793, line: 46, baseType: !3862, size: 512, offset: 128)
!3862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 512, elements: !612)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3800, file: !3793, line: 140, baseType: !3845, size: 64, offset: 832)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3800, file: !3793, line: 143, baseType: !3841, size: 64, offset: 896)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3800, file: !3793, line: 145, baseType: !3803, size: 64, offset: 960)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3800, file: !3793, line: 146, baseType: !3867, size: 64, offset: 1024)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!325, !3814, !3870}
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3793, line: 29, size: 128, elements: !3872)
!3872 = !{!3873, !3874, !3875}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3871, file: !3793, line: 30, baseType: !7, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3871, file: !3793, line: 31, baseType: !7, size: 32, offset: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3871, file: !3793, line: 32, baseType: !3814, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3800, file: !3793, line: 148, baseType: !3877, size: 64, offset: 1088)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!325, !3814, !3490}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3792, file: !3793, line: 20, baseType: !3490, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3784, file: !3785, line: 57, baseType: !3882, size: 64, offset: 384)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3785, line: 31, size: 704, elements: !3884)
!3884 = !{!3885, !3886, !3887, !3888, !3889}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3883, file: !3785, line: 32, baseType: !323, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3883, file: !3785, line: 33, baseType: !325, size: 32, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3883, file: !3785, line: 34, baseType: !321, size: 64, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3883, file: !3785, line: 35, baseType: !3882, size: 64, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3883, file: !3785, line: 43, baseType: !2158, size: 448, offset: 256)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3784, file: !3785, line: 58, baseType: !3882, size: 64, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3784, file: !3785, line: 59, baseType: !3783, size: 64, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3784, file: !3785, line: 60, baseType: !3783, size: 64, offset: 576)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3784, file: !3785, line: 61, baseType: !3783, size: 64, offset: 640)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3784, file: !3785, line: 63, baseType: !2064, size: 512, offset: 704)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3784, file: !3785, line: 65, baseType: !478, size: 64, offset: 1216)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3784, file: !3785, line: 66, baseType: !321, size: 64, offset: 1280)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3777, file: !81, line: 108, baseType: !3898, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!325, !3769, !3901, !80}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !81, line: 63, size: 640, elements: !3903)
!3903 = !{!3904, !3905, !3906}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3902, file: !81, line: 64, baseType: !3796, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3902, file: !81, line: 65, baseType: !325, size: 32, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3902, file: !81, line: 66, baseType: !3907, size: 512, offset: 96)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 512, elements: !1636)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3777, file: !81, line: 110, baseType: !3909, size: 64, offset: 128)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!325, !3769, !7, !3912}
!3912 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !320, line: 164, baseType: !478)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3777, file: !81, line: 111, baseType: !3914, size: 64, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{null, !3769, !7}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3777, file: !81, line: 112, baseType: !3918, size: 64, offset: 256)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!325, !3769, !3783, !3921, !7, !3923, !1609}
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3777, file: !81, line: 117, baseType: !3925, size: 64, offset: 320)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!325, !3769, !7, !7, !321}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3777, file: !81, line: 119, baseType: !3929, size: 64, offset: 384)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{null, !3769, !7, !7}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3777, file: !81, line: 121, baseType: !3933, size: 64, offset: 448)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!325, !3769, !3936, !833}
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3938, line: 11, flags: DIFlagFwdDecl)
!3938 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3777, file: !81, line: 122, baseType: !3940, size: 64, offset: 512)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{null, !3769, !3936}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3777, file: !81, line: 123, baseType: !3944, size: 64, offset: 576)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!325, !3769, !3901, !3923, !1609}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3770, file: !81, line: 166, baseType: !321, size: 64, offset: 256)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3770, file: !81, line: 167, baseType: !7, size: 32, offset: 320)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3770, file: !81, line: 168, baseType: !7, size: 32, offset: 352)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3770, file: !81, line: 171, baseType: !3796, size: 64, offset: 384)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3770, file: !81, line: 172, baseType: !80, size: 32, offset: 448)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3770, file: !81, line: 173, baseType: !3953, size: 64, offset: 512)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !81, line: 134, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3770, file: !81, line: 175, baseType: !3769, size: 64, offset: 576)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3770, file: !81, line: 182, baseType: !3912, size: 64, offset: 640)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3770, file: !81, line: 183, baseType: !7, size: 32, offset: 704)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3770, file: !81, line: 184, baseType: !7, size: 32, offset: 736)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3770, file: !81, line: 185, baseType: !1086, size: 128, offset: 768)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3770, file: !81, line: 186, baseType: !1357, size: 192, offset: 896)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3770, file: !81, line: 187, baseType: !3962, offset: 1088)
!3962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2787)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3486, file: !60, line: 499, baseType: !527, size: 128, offset: 4224)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3486, file: !60, line: 502, baseType: !3965, size: 64, offset: 4352)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3967)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3486, file: !60, line: 504, baseType: !3969, size: 64, offset: 4416)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3486, file: !60, line: 505, baseType: !534, size: 64, offset: 4480)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3486, file: !60, line: 510, baseType: !534, size: 64, offset: 4544)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3486, file: !60, line: 511, baseType: !3973, size: 64, offset: 4608)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3975)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3486, file: !60, line: 513, baseType: !3977, size: 64, offset: 4672)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3979)
!3979 = !{!3980, !3981}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3978, file: !60, line: 293, baseType: !7, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3978, file: !60, line: 294, baseType: !478, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3486, file: !60, line: 515, baseType: !527, size: 128, offset: 4736)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3486, file: !60, line: 526, baseType: !3984, offset: 4864)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3985, line: 5, elements: !465)
!3985 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3486, file: !60, line: 528, baseType: !3783, size: 64, offset: 4864)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3486, file: !60, line: 529, baseType: !3796, size: 64, offset: 4928)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3486, file: !60, line: 534, baseType: !856, size: 32, offset: 4992)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3486, file: !60, line: 535, baseType: !435, size: 32, offset: 5024)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3486, file: !60, line: 537, baseType: !1090, offset: 5056)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3486, file: !60, line: 538, baseType: !527, size: 128, offset: 5056)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3486, file: !60, line: 540, baseType: !3993, size: 64, offset: 5184)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3995, line: 54, size: 960, elements: !3996)
!3995 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3996 = !{!3997, !3998, !3999, !4000, !4001, !4002, !4003, !4007, !4011, !4012, !4013, !4014, !4018, !4022, !4023}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3994, file: !3995, line: 55, baseType: !805, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3994, file: !3995, line: 56, baseType: !316, size: 64, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3994, file: !3995, line: 58, baseType: !2143, size: 64, offset: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3994, file: !3995, line: 59, baseType: !2143, size: 64, offset: 192)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3994, file: !3995, line: 60, baseType: !2070, size: 64, offset: 256)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3994, file: !3995, line: 62, baseType: !3503, size: 64, offset: 320)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3994, file: !3995, line: 63, baseType: !4004, size: 64, offset: 384)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!323, !3490, !3510}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3994, file: !3995, line: 65, baseType: !4008, size: 64, offset: 448)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{null, !3993}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3994, file: !3995, line: 66, baseType: !3512, size: 64, offset: 512)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3994, file: !3995, line: 68, baseType: !3521, size: 64, offset: 576)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3994, file: !3995, line: 70, baseType: !2179, size: 64, offset: 640)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3994, file: !3995, line: 71, baseType: !4015, size: 64, offset: 704)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!2196, !3490}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3994, file: !3995, line: 73, baseType: !4019, size: 64, offset: 768)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !3490, !2213, !2214}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3994, file: !3995, line: 75, baseType: !3516, size: 64, offset: 832)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3994, file: !3995, line: 77, baseType: !3633, size: 64, offset: 896)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3486, file: !60, line: 541, baseType: !2143, size: 64, offset: 5248)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3486, file: !60, line: 543, baseType: !3512, size: 64, offset: 5312)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3486, file: !60, line: 544, baseType: !4027, size: 64, offset: 5376)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3486, file: !60, line: 545, baseType: !4030, size: 64, offset: 5440)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3486, file: !60, line: 547, baseType: !833, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3486, file: !60, line: 548, baseType: !833, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3486, file: !60, line: 549, baseType: !833, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3486, file: !60, line: 550, baseType: !833, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !387, file: !95, line: 709, baseType: !478, size: 64, offset: 6336)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !387, file: !95, line: 713, baseType: !325, size: 32, offset: 6400)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !387, file: !95, line: 714, baseType: !4039, size: 384, offset: 6432)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 384, elements: !4040)
!4040 = !{!4041}
!4041 = !DISubrange(count: 48)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !387, file: !95, line: 715, baseType: !2759, size: 192, offset: 6848)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !387, file: !95, line: 717, baseType: !1357, size: 192, offset: 7040)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !387, file: !95, line: 718, baseType: !527, size: 128, offset: 7232)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !387, file: !95, line: 720, baseType: !4046, size: 64, offset: 7360)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !95, line: 618, size: 832, elements: !4048)
!4048 = !{!4049, !4053, !4054, !4058, !4059, !4060, !4061, !4065, !4066, !4069, !4070, !4073, !4076}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4047, file: !95, line: 619, baseType: !4050, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!325, !386}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4047, file: !95, line: 621, baseType: !4050, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4047, file: !95, line: 622, baseType: !4055, size: 64, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{null, !386, !325}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4047, file: !95, line: 623, baseType: !4050, size: 64, offset: 192)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4047, file: !95, line: 624, baseType: !4055, size: 64, offset: 256)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4047, file: !95, line: 625, baseType: !4050, size: 64, offset: 320)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4047, file: !95, line: 627, baseType: !4062, size: 64, offset: 384)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{null, !386}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4047, file: !95, line: 628, baseType: !4062, size: 64, offset: 448)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4047, file: !95, line: 631, baseType: !4067, size: 64, offset: 512)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !95, line: 631, flags: DIFlagFwdDecl)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4047, file: !95, line: 632, baseType: !4067, size: 64, offset: 576)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4047, file: !95, line: 633, baseType: !4071, size: 64, offset: 640)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !95, line: 633, flags: DIFlagFwdDecl)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4047, file: !95, line: 634, baseType: !4074, size: 64, offset: 704)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !95, line: 634, flags: DIFlagFwdDecl)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4047, file: !95, line: 635, baseType: !4074, size: 64, offset: 768)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !387, file: !95, line: 721, baseType: !4078, size: 64, offset: 7424)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4080)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !95, line: 664, size: 192, elements: !4081)
!4081 = !{!4082, !4083, !4084, !4085, !4086, !4087}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4080, file: !95, line: 665, baseType: !534, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4080, file: !95, line: 666, baseType: !325, size: 32, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4080, file: !95, line: 667, baseType: !418, size: 16, offset: 96)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4080, file: !95, line: 668, baseType: !418, size: 16, offset: 112)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4080, file: !95, line: 669, baseType: !418, size: 16, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4080, file: !95, line: 670, baseType: !418, size: 16, offset: 144)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !387, file: !95, line: 723, baseType: !3769, size: 64, offset: 7488)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !376, file: !95, line: 330, baseType: !3486, size: 5568, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !376, file: !95, line: 331, baseType: !325, size: 32, offset: 5824)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !376, file: !95, line: 332, baseType: !325, size: 32, offset: 5856)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !376, file: !95, line: 333, baseType: !527, size: 128, offset: 5888)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4095)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_device_id", file: !3574, line: 457, size: 256, elements: !4096)
!4096 = !{!4097, !4098}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4095, file: !3574, line: 458, baseType: !382, size: 160)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4095, file: !3574, line: 459, baseType: !3593, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !368, file: !95, line: 260, baseType: !4100, size: 64, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!325, !375}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "probe_new", scope: !368, file: !95, line: 265, baseType: !4100, size: 64, offset: 192)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !368, file: !95, line: 268, baseType: !4105, size: 64, offset: 256)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{null, !375}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "alert", scope: !368, file: !95, line: 277, baseType: !4109, size: 64, offset: 320)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !375, !94, !7}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !368, file: !95, line: 283, baseType: !4113, size: 64, offset: 384)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!325, !375, !7, !321}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !368, file: !95, line: 285, baseType: !3562, size: 1152, offset: 448)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !368, file: !95, line: 286, baseType: !4093, size: 64, offset: 1600)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !368, file: !95, line: 289, baseType: !4119, size: 64, offset: 1664)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!325, !375, !4122}
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !95, line: 410, size: 640, elements: !4124)
!4124 = !{!4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4158, !4174, !4175}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4123, file: !95, line: 411, baseType: !382, size: 160)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4123, file: !95, line: 412, baseType: !379, size: 16, offset: 160)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4123, file: !95, line: 413, baseType: !379, size: 16, offset: 176)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4123, file: !95, line: 414, baseType: !805, size: 64, offset: 192)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4123, file: !95, line: 415, baseType: !321, size: 64, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4123, file: !95, line: 416, baseType: !3783, size: 64, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4123, file: !95, line: 417, baseType: !3796, size: 64, offset: 384)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4123, file: !95, line: 418, baseType: !4133, size: 64, offset: 448)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4135)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !100, line: 263, size: 256, elements: !4136)
!4136 = !{!4137, !4138, !4139, !4140, !4141}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4135, file: !100, line: 264, baseType: !805, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4135, file: !100, line: 265, baseType: !922, size: 64, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !4135, file: !100, line: 266, baseType: !833, size: 8, offset: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4135, file: !100, line: 267, baseType: !99, size: 32, offset: 160)
!4141 = !DIDerivedType(tag: DW_TAG_member, scope: !4135, file: !100, line: 268, baseType: !4142, size: 64, offset: 192)
!4142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4135, file: !100, line: 268, size: 64, elements: !4143)
!4143 = !{!4144, !4145}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4142, file: !100, line: 269, baseType: !2196, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4142, file: !100, line: 276, baseType: !4146, size: 64)
!4146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4142, file: !100, line: 270, size: 64, elements: !4147)
!4147 = !{!4148, !4150, !4152, !4154, !4156}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !4146, file: !100, line: 271, baseType: !4149, size: 64)
!4149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 64, elements: !612)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !4146, file: !100, line: 272, baseType: !4151, size: 64)
!4151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 64, elements: !2428)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !4146, file: !100, line: 273, baseType: !4153, size: 64)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 64, elements: !2468)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !4146, file: !100, line: 274, baseType: !4155, size: 64)
!4155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 64, elements: !657)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4146, file: !100, line: 275, baseType: !4157, size: 64)
!4157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 64, elements: !657)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4123, file: !95, line: 419, baseType: !4159, size: 64, offset: 512)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4161)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4162, line: 20, size: 512, elements: !4163)
!4162 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4163 = !{!4164, !4166, !4167, !4168, !4169, !4170, !4172, !4173}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4161, file: !4162, line: 21, baseType: !4165, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !320, line: 158, baseType: !3303)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4161, file: !4162, line: 22, baseType: !4165, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4161, file: !4162, line: 23, baseType: !805, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4161, file: !4162, line: 24, baseType: !478, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4161, file: !4162, line: 25, baseType: !478, size: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4161, file: !4162, line: 26, baseType: !4171, size: 64, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4161, file: !4162, line: 26, baseType: !4171, size: 64, offset: 384)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4161, file: !4162, line: 26, baseType: !4171, size: 64, offset: 448)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4123, file: !95, line: 420, baseType: !7, size: 32, offset: 576)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4123, file: !95, line: 421, baseType: !325, size: 32, offset: 608)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "address_list", scope: !368, file: !95, line: 290, baseType: !4177, size: 64, offset: 1728)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !368, file: !95, line: 291, baseType: !527, size: 128, offset: 1792)
!4180 = !DIGlobalVariableExpression(var: !4181, expr: !DIExpression())
!4181 = distinct !DIGlobalVariable(name: "__key", scope: !4182, file: !3, line: 683, type: !992, isLocal: true, isDefinition: true)
!4182 = distinct !DISubprogram(name: "si2168_probe", scope: !3, file: !3, line: 666, type: !373, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!4183 = !DIGlobalVariableExpression(var: !4184, expr: !DIExpression())
!4184 = distinct !DIGlobalVariable(name: "si2168_ops", scope: !2, file: !3, line: 626, type: !4185, isLocal: true, isDefinition: true)
!4185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4186)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !153, line: 435, size: 6016, elements: !4187)
!4187 = !{!4188, !4200, !4201, !4328, !4329, !4330, !4334, !4335, !4341, !4346, !4350, !4351, !4361, !4366, !4370, !4374, !4379, !4380, !4381, !4382, !4392, !4403, !4407, !4411, !4415, !4419, !4423, !4427, !4428, !4429, !4433, !4487}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4186, file: !153, line: 436, baseType: !4189, size: 1280)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !153, line: 338, size: 1280, elements: !4190)
!4190 = !{!4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4189, file: !153, line: 339, baseType: !3579, size: 1024)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4189, file: !153, line: 340, baseType: !435, size: 32, offset: 1024)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4189, file: !153, line: 341, baseType: !435, size: 32, offset: 1056)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4189, file: !153, line: 342, baseType: !435, size: 32, offset: 1088)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4189, file: !153, line: 343, baseType: !435, size: 32, offset: 1120)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4189, file: !153, line: 344, baseType: !435, size: 32, offset: 1152)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4189, file: !153, line: 345, baseType: !435, size: 32, offset: 1184)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4189, file: !153, line: 346, baseType: !435, size: 32, offset: 1216)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4189, file: !153, line: 347, baseType: !108, size: 32, offset: 1248)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4186, file: !153, line: 438, baseType: !4149, size: 64, offset: 1280)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4186, file: !153, line: 440, baseType: !4202, size: 64, offset: 1344)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{null, !4205}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !153, line: 686, size: 10240, elements: !4207)
!4207 = !{!4208, !4209, !4210, !4244, !4245, !4246, !4247, !4248, !4249, !4322, !4326, !4327}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4206, file: !153, line: 687, baseType: !2355, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4206, file: !153, line: 688, baseType: !4186, size: 6016, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4206, file: !153, line: 689, baseType: !4211, size: 64, offset: 6080)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !286, line: 101, size: 960, elements: !4213)
!4213 = !{!4214, !4215, !4216, !4217, !4218, !4220, !4221, !4222, !4223, !4224, !4243}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4212, file: !286, line: 102, baseType: !325, size: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4212, file: !286, line: 103, baseType: !527, size: 128, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4212, file: !286, line: 104, baseType: !527, size: 128, offset: 192)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4212, file: !286, line: 105, baseType: !805, size: 64, offset: 320)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4212, file: !286, line: 106, baseType: !4219, size: 48, offset: 384)
!4219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 48, elements: !2527)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4212, file: !286, line: 107, baseType: !321, size: 64, offset: 448)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4212, file: !286, line: 109, baseType: !3490, size: 64, offset: 512)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4212, file: !286, line: 111, baseType: !316, size: 64, offset: 576)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4212, file: !286, line: 113, baseType: !325, size: 32, offset: 640)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4212, file: !286, line: 114, baseType: !4225, size: 64, offset: 704)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !286, line: 157, size: 704, elements: !4227)
!4227 = !{!4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4242}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4226, file: !286, line: 158, baseType: !527, size: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4226, file: !286, line: 159, baseType: !1806, size: 64, offset: 128)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4226, file: !286, line: 160, baseType: !4211, size: 64, offset: 192)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4226, file: !286, line: 161, baseType: !285, size: 32, offset: 256)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4226, file: !286, line: 162, baseType: !325, size: 32, offset: 288)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4226, file: !286, line: 163, baseType: !435, size: 32, offset: 320)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4226, file: !286, line: 167, baseType: !325, size: 32, offset: 352)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4226, file: !286, line: 168, baseType: !325, size: 32, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4226, file: !286, line: 169, baseType: !325, size: 32, offset: 416)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4226, file: !286, line: 171, baseType: !1589, size: 128, offset: 448)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4226, file: !286, line: 173, baseType: !4239, size: 64, offset: 576)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!325, !706, !7, !321}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4226, file: !286, line: 187, baseType: !321, size: 64, offset: 640)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4212, file: !286, line: 115, baseType: !1357, size: 192, offset: 768)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4206, file: !153, line: 690, baseType: !321, size: 64, offset: 6144)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4206, file: !153, line: 691, baseType: !321, size: 64, offset: 6208)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4206, file: !153, line: 692, baseType: !321, size: 64, offset: 6272)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4206, file: !153, line: 693, baseType: !321, size: 64, offset: 6336)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4206, file: !153, line: 694, baseType: !321, size: 64, offset: 6400)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4206, file: !153, line: 695, baseType: !4250, size: 3648, offset: 6464)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !153, line: 586, size: 3648, elements: !4251)
!4251 = !{!4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4315, !4316, !4317, !4318, !4319, !4320, !4321}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4250, file: !153, line: 587, baseType: !435, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4250, file: !153, line: 588, baseType: !159, size: 32, offset: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4250, file: !153, line: 590, baseType: !175, size: 32, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4250, file: !153, line: 591, baseType: !180, size: 32, offset: 96)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4250, file: !153, line: 592, baseType: !184, size: 32, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4250, file: !153, line: 593, baseType: !189, size: 32, offset: 160)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4250, file: !153, line: 594, baseType: !204, size: 32, offset: 192)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4250, file: !153, line: 595, baseType: !435, size: 32, offset: 224)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4250, file: !153, line: 596, baseType: !215, size: 32, offset: 256)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4250, file: !153, line: 597, baseType: !228, size: 32, offset: 288)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4250, file: !153, line: 598, baseType: !435, size: 32, offset: 320)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4250, file: !153, line: 599, baseType: !189, size: 32, offset: 352)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4250, file: !153, line: 600, baseType: !189, size: 32, offset: 384)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4250, file: !153, line: 602, baseType: !235, size: 32, offset: 416)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4250, file: !153, line: 603, baseType: !240, size: 32, offset: 448)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4250, file: !153, line: 605, baseType: !246, size: 32, offset: 480)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4250, file: !153, line: 607, baseType: !267, size: 32, offset: 512)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4250, file: !153, line: 610, baseType: !420, size: 8, offset: 544)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4250, file: !153, line: 611, baseType: !420, size: 8, offset: 552)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4250, file: !153, line: 612, baseType: !420, size: 8, offset: 560)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4250, file: !153, line: 613, baseType: !435, size: 32, offset: 576)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4250, file: !153, line: 614, baseType: !435, size: 32, offset: 608)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4250, file: !153, line: 615, baseType: !420, size: 8, offset: 640)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4250, file: !153, line: 621, baseType: !4276, size: 384, offset: 672)
!4276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4277, size: 384, elements: !998)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4250, file: !153, line: 616, size: 128, elements: !4278)
!4278 = !{!4279, !4280, !4281, !4282}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4277, file: !153, line: 617, baseType: !420, size: 8)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4277, file: !153, line: 618, baseType: !189, size: 32, offset: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4277, file: !153, line: 619, baseType: !159, size: 32, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4277, file: !153, line: 620, baseType: !420, size: 8, offset: 96)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4250, file: !153, line: 624, baseType: !435, size: 32, offset: 1056)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4250, file: !153, line: 627, baseType: !435, size: 32, offset: 1088)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4250, file: !153, line: 630, baseType: !420, size: 8, offset: 1120)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4250, file: !153, line: 631, baseType: !420, size: 8, offset: 1128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4250, file: !153, line: 632, baseType: !420, size: 8, offset: 1136)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4250, file: !153, line: 633, baseType: !420, size: 8, offset: 1144)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4250, file: !153, line: 634, baseType: !420, size: 8, offset: 1152)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4250, file: !153, line: 635, baseType: !420, size: 8, offset: 1160)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4250, file: !153, line: 637, baseType: !420, size: 8, offset: 1168)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4250, file: !153, line: 638, baseType: !420, size: 8, offset: 1176)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4250, file: !153, line: 639, baseType: !420, size: 8, offset: 1184)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4250, file: !153, line: 640, baseType: !420, size: 8, offset: 1192)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4250, file: !153, line: 641, baseType: !420, size: 8, offset: 1200)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4250, file: !153, line: 642, baseType: !420, size: 8, offset: 1208)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4250, file: !153, line: 643, baseType: !420, size: 8, offset: 1216)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4250, file: !153, line: 644, baseType: !420, size: 8, offset: 1224)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4250, file: !153, line: 645, baseType: !420, size: 8, offset: 1232)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4250, file: !153, line: 647, baseType: !435, size: 32, offset: 1248)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4250, file: !153, line: 650, baseType: !4302, size: 296, offset: 1280)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !109, line: 825, size: 296, elements: !4303)
!4303 = !{!4304, !4305}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4302, file: !109, line: 826, baseType: !411, size: 8)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4302, file: !109, line: 827, baseType: !4306, size: 288, offset: 8)
!4306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4307, size: 288, elements: !2428)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !109, line: 803, size: 72, elements: !4308)
!4308 = !{!4309, !4310}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4307, file: !109, line: 804, baseType: !411, size: 8)
!4310 = !DIDerivedType(tag: DW_TAG_member, scope: !4307, file: !109, line: 805, baseType: !4311, size: 64, offset: 8)
!4311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4307, file: !109, line: 805, size: 64, elements: !4312)
!4312 = !{!4313, !4314}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4311, file: !109, line: 806, baseType: !535, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4311, file: !109, line: 807, baseType: !565, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4250, file: !153, line: 651, baseType: !4302, size: 296, offset: 1576)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4250, file: !153, line: 652, baseType: !4302, size: 296, offset: 1872)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4250, file: !153, line: 653, baseType: !4302, size: 296, offset: 2168)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4250, file: !153, line: 654, baseType: !4302, size: 296, offset: 2464)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4250, file: !153, line: 655, baseType: !4302, size: 296, offset: 2760)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4250, file: !153, line: 656, baseType: !4302, size: 296, offset: 3056)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4250, file: !153, line: 657, baseType: !4302, size: 296, offset: 3352)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4206, file: !153, line: 698, baseType: !4323, size: 64, offset: 10112)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!325, !321, !325, !325, !325}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4206, file: !153, line: 699, baseType: !325, size: 32, offset: 10176)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4206, file: !153, line: 700, baseType: !7, size: 32, offset: 10208)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4186, file: !153, line: 441, baseType: !4202, size: 64, offset: 1408)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4186, file: !153, line: 442, baseType: !4202, size: 64, offset: 1472)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4186, file: !153, line: 444, baseType: !4331, size: 64, offset: 1536)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!325, !4205}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4186, file: !153, line: 445, baseType: !4331, size: 64, offset: 1600)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4186, file: !153, line: 447, baseType: !4336, size: 64, offset: 1664)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!325, !4205, !4339, !325}
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4186, file: !153, line: 450, baseType: !4342, size: 64, offset: 1728)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!325, !4205, !833, !7, !1609, !4345}
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4186, file: !153, line: 457, baseType: !4347, size: 64, offset: 1792)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!152, !4205}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4186, file: !153, line: 460, baseType: !4331, size: 64, offset: 1856)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4186, file: !153, line: 461, baseType: !4352, size: 64, offset: 1920)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!325, !4205, !4355}
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !153, line: 69, size: 96, elements: !4357)
!4357 = !{!4358, !4359, !4360}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4356, file: !153, line: 70, baseType: !325, size: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4356, file: !153, line: 71, baseType: !325, size: 32, offset: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4356, file: !153, line: 72, baseType: !325, size: 32, offset: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4186, file: !153, line: 463, baseType: !4362, size: 64, offset: 1984)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!325, !4205, !4365}
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4186, file: !153, line: 466, baseType: !4367, size: 64, offset: 2048)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!325, !4205, !4345}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4186, file: !153, line: 467, baseType: !4371, size: 64, offset: 2112)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!325, !4205, !2826}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4186, file: !153, line: 468, baseType: !4375, size: 64, offset: 2176)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!325, !4205, !4378}
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4186, file: !153, line: 469, baseType: !4375, size: 64, offset: 2240)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4186, file: !153, line: 470, baseType: !4371, size: 64, offset: 2304)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4186, file: !153, line: 472, baseType: !4331, size: 64, offset: 2368)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4186, file: !153, line: 473, baseType: !4383, size: 64, offset: 2432)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!325, !4205, !4386}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !109, line: 173, size: 56, elements: !4388)
!4388 = !{!4389, !4391}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4387, file: !109, line: 174, baseType: !4390, size: 48)
!4390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 48, elements: !2527)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4387, file: !109, line: 175, baseType: !411, size: 8, offset: 48)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4186, file: !153, line: 474, baseType: !4393, size: 64, offset: 2496)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!325, !4205, !4396}
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !109, line: 195, size: 96, elements: !4398)
!4398 = !{!4399, !4401, !4402}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4397, file: !109, line: 196, baseType: !4400, size: 32)
!4400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 32, elements: !2428)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4397, file: !109, line: 197, baseType: !411, size: 8, offset: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4397, file: !109, line: 198, baseType: !325, size: 32, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4186, file: !153, line: 475, baseType: !4404, size: 64, offset: 2560)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!325, !4205, !273}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4186, file: !153, line: 477, baseType: !4408, size: 64, offset: 2624)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!325, !4205, !180}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4186, file: !153, line: 478, baseType: !4412, size: 64, offset: 2688)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!325, !4205, !175}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4186, file: !153, line: 480, baseType: !4416, size: 64, offset: 2752)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!325, !4205, !322}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4186, file: !153, line: 481, baseType: !4420, size: 64, offset: 2816)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!325, !4205, !478}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4186, file: !153, line: 482, baseType: !4424, size: 64, offset: 2880)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!325, !4205, !325}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4186, file: !153, line: 483, baseType: !4424, size: 64, offset: 2944)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4186, file: !153, line: 484, baseType: !4331, size: 64, offset: 3008)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4186, file: !153, line: 490, baseType: !4430, size: 64, offset: 3072)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!277, !4205}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4186, file: !153, line: 492, baseType: !4434, size: 2304, offset: 3136)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !153, line: 226, size: 2304, elements: !4435)
!4435 = !{!4436, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4463, !4467, !4468, !4469, !4470, !4471, !4472, !4477, !4482, !4486}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4434, file: !153, line: 228, baseType: !4437, size: 1216)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !153, line: 88, size: 1216, elements: !4438)
!4438 = !{!4439, !4440, !4441, !4442, !4443, !4444, !4445}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4437, file: !153, line: 89, baseType: !3579, size: 1024)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4437, file: !153, line: 91, baseType: !435, size: 32, offset: 1024)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4437, file: !153, line: 92, baseType: !435, size: 32, offset: 1056)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4437, file: !153, line: 93, baseType: !435, size: 32, offset: 1088)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4437, file: !153, line: 95, baseType: !435, size: 32, offset: 1120)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4437, file: !153, line: 96, baseType: !435, size: 32, offset: 1152)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4437, file: !153, line: 97, baseType: !435, size: 32, offset: 1184)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4434, file: !153, line: 230, baseType: !4202, size: 64, offset: 1216)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4434, file: !153, line: 231, baseType: !4331, size: 64, offset: 1280)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4434, file: !153, line: 232, baseType: !4331, size: 64, offset: 1344)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4434, file: !153, line: 233, baseType: !4331, size: 64, offset: 1408)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4434, file: !153, line: 234, baseType: !4331, size: 64, offset: 1472)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4434, file: !153, line: 237, baseType: !4331, size: 64, offset: 1536)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4434, file: !153, line: 238, baseType: !4453, size: 64, offset: 1600)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!325, !4205, !4456}
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !153, line: 114, size: 192, elements: !4458)
!4458 = !{!4459, !4460, !4461, !4462}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4457, file: !153, line: 115, baseType: !7, size: 32)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4457, file: !153, line: 116, baseType: !7, size: 32, offset: 32)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4457, file: !153, line: 117, baseType: !7, size: 32, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4457, file: !153, line: 118, baseType: !534, size: 64, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4434, file: !153, line: 240, baseType: !4464, size: 64, offset: 1664)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!325, !4205, !321}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4434, file: !153, line: 242, baseType: !4371, size: 64, offset: 1728)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4434, file: !153, line: 243, baseType: !4371, size: 64, offset: 1792)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4434, file: !153, line: 244, baseType: !4371, size: 64, offset: 1856)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4434, file: !153, line: 248, baseType: !4371, size: 64, offset: 1920)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4434, file: !153, line: 249, baseType: !4375, size: 64, offset: 1984)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4434, file: !153, line: 250, baseType: !4473, size: 64, offset: 2048)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!325, !4205, !4476}
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4434, file: !153, line: 258, baseType: !4478, size: 64, offset: 2112)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!325, !4205, !4481, !325}
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4434, file: !153, line: 267, baseType: !4483, size: 64, offset: 2176)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!325, !4205, !435}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4434, file: !153, line: 268, baseType: !4483, size: 64, offset: 2240)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4186, file: !153, line: 493, baseType: !4488, size: 576, offset: 5440)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !153, line: 302, size: 576, elements: !4489)
!4489 = !{!4490, !4494, !4498, !4499, !4500, !4501, !4502, !4503, !4504}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4488, file: !153, line: 304, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !153, line: 276, size: 64, elements: !4492)
!4492 = !{!4493}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4491, file: !153, line: 277, baseType: !323, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4488, file: !153, line: 306, baseType: !4495, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{null, !4205, !4456}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4488, file: !153, line: 308, baseType: !4375, size: 64, offset: 128)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4488, file: !153, line: 309, baseType: !4473, size: 64, offset: 192)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4488, file: !153, line: 310, baseType: !4202, size: 64, offset: 256)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4488, file: !153, line: 311, baseType: !4202, size: 64, offset: 320)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4488, file: !153, line: 312, baseType: !4202, size: 64, offset: 384)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4488, file: !153, line: 313, baseType: !4424, size: 64, offset: 448)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4488, file: !153, line: 316, baseType: !4464, size: 64, offset: 512)
!4505 = !DIGlobalVariableExpression(var: !4506, expr: !DIExpression())
!4506 = distinct !DIGlobalVariable(name: "si2168_id_table", scope: !2, file: !3, line: 784, type: !4507, isLocal: true, isDefinition: true)
!4507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4094, size: 512, elements: !2468)
!4508 = !{i32 7, !"Dwarf Version", i32 4}
!4509 = !{i32 2, !"Debug Info Version", i32 3}
!4510 = !{i32 1, !"wchar_size", i32 2}
!4511 = !{i32 1, !"Code Model", i32 2}
!4512 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4513 = distinct !DISubprogram(name: "si2168_driver_init", scope: !3, file: !3, line: 800, type: !4514, scopeLine: 800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!325}
!4516 = !DILocation(line: 800, column: 1, scope: !4513)
!4517 = distinct !DISubprogram(name: "si2168_driver_exit", scope: !3, file: !3, line: 800, type: !332, scopeLine: 800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!4518 = !DILocation(line: 800, column: 1, scope: !4517)
!4519 = !DILocalVariable(name: "client", arg: 1, scope: !4182, file: !3, line: 666, type: !375)
!4520 = !DILocation(line: 666, column: 44, scope: !4182)
!4521 = !DILocalVariable(name: "id", arg: 2, scope: !4182, file: !3, line: 667, type: !4093)
!4522 = !DILocation(line: 667, column: 31, scope: !4182)
!4523 = !DILocalVariable(name: "config", scope: !4182, file: !3, line: 669, type: !4524)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "si2168_config", file: !4526, line: 35, size: 192, elements: !4527)
!4526 = !DIFile(filename: "drivers/media/dvb-frontends/si2168.h", directory: "/home/lizy2001/genbc/linux")
!4527 = !{!4528, !4530, !4532, !4533, !4534, !4535}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "fe", scope: !4525, file: !4526, line: 36, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_adapter", scope: !4525, file: !4526, line: 37, baseType: !4531, size: 64, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "ts_mode", scope: !4525, file: !4526, line: 43, baseType: !420, size: 8, offset: 128)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "ts_clock_inv", scope: !4525, file: !4526, line: 46, baseType: !7, size: 1, offset: 136, flags: DIFlagBitField, extraData: i64 136)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ts_clock_gapped", scope: !4525, file: !4526, line: 47, baseType: !7, size: 1, offset: 137, flags: DIFlagBitField, extraData: i64 136)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "spectral_inversion", scope: !4525, file: !4526, line: 48, baseType: !7, size: 1, offset: 138, flags: DIFlagBitField, extraData: i64 136)
!4536 = !DILocation(line: 669, column: 24, scope: !4182)
!4537 = !DILocation(line: 669, column: 33, scope: !4182)
!4538 = !DILocation(line: 669, column: 41, scope: !4182)
!4539 = !DILocation(line: 669, column: 45, scope: !4182)
!4540 = !DILocalVariable(name: "dev", scope: !4182, file: !3, line: 670, type: !4541)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "si2168_dev", file: !4543, line: 24, size: 10752, elements: !4544)
!4543 = !DIFile(filename: "drivers/media/dvb-frontends/si2168_priv.h", directory: "/home/lizy2001/genbc/linux")
!4544 = !{!4545, !4546, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_mutex", scope: !4542, file: !4543, line: 25, baseType: !1357, size: 192)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "muxc", scope: !4542, file: !4543, line: 26, baseType: !4547, size: 64, offset: 192)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_mux_core", file: !4549, line: 18, size: 448, elements: !4550)
!4549 = !DIFile(filename: "./include/linux/i2c-mux.h", directory: "/home/lizy2001/genbc/linux")
!4550 = !{!4551, !4552, !4553, !4554, !4555, !4556, !4557, !4561, !4562, !4563, !4564}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4548, file: !4549, line: 19, baseType: !386, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4548, file: !4549, line: 20, baseType: !3490, size: 64, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "mux_locked", scope: !4548, file: !4549, line: 21, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "arbitrator", scope: !4548, file: !4549, line: 22, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !4548, file: !4549, line: 23, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4548, file: !4549, line: 25, baseType: !321, size: 64, offset: 192)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4548, file: !4549, line: 27, baseType: !4558, size: 64, offset: 256)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!325, !4547, !435}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "deselect", scope: !4548, file: !4549, line: 28, baseType: !4558, size: 64, offset: 320)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "num_adapters", scope: !4548, file: !4549, line: 30, baseType: !325, size: 32, offset: 384)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "max_adapters", scope: !4548, file: !4549, line: 31, baseType: !325, size: 32, offset: 416)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4548, file: !4549, line: 32, baseType: !4565, offset: 448)
!4565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, elements: !2787)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "fe", scope: !4542, file: !4543, line: 27, baseType: !4206, size: 10240, offset: 256)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4542, file: !4543, line: 28, baseType: !246, size: 32, offset: 10496)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "fe_status", scope: !4542, file: !4543, line: 29, baseType: !142, size: 32, offset: 10528)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "chip_id", scope: !4542, file: !4543, line: 34, baseType: !7, size: 32, offset: 10560)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4542, file: !4543, line: 35, baseType: !7, size: 32, offset: 10592)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_name", scope: !4542, file: !4543, line: 36, baseType: !805, size: 64, offset: 10624)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "ts_mode", scope: !4542, file: !4543, line: 37, baseType: !420, size: 8, offset: 10688)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4542, file: !4543, line: 38, baseType: !7, size: 1, offset: 10696, flags: DIFlagBitField, extraData: i64 10696)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "warm", scope: !4542, file: !4543, line: 39, baseType: !7, size: 1, offset: 10697, flags: DIFlagBitField, extraData: i64 10696)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ts_clock_inv", scope: !4542, file: !4543, line: 40, baseType: !7, size: 1, offset: 10698, flags: DIFlagBitField, extraData: i64 10696)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "ts_clock_gapped", scope: !4542, file: !4543, line: 41, baseType: !7, size: 1, offset: 10699, flags: DIFlagBitField, extraData: i64 10696)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "spectral_inversion", scope: !4542, file: !4543, line: 42, baseType: !7, size: 1, offset: 10700, flags: DIFlagBitField, extraData: i64 10696)
!4578 = !DILocation(line: 670, column: 21, scope: !4182)
!4579 = !DILocalVariable(name: "ret", scope: !4182, file: !3, line: 671, type: !325)
!4580 = !DILocation(line: 671, column: 6, scope: !4182)
!4581 = !DILocalVariable(name: "cmd", scope: !4182, file: !3, line: 672, type: !4582)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "si2168_cmd", file: !4543, line: 47, size: 320, elements: !4583)
!4583 = !{!4584, !4588, !4589}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4582, file: !4543, line: 48, baseType: !4585, size: 240)
!4585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 240, elements: !4586)
!4586 = !{!4587}
!4587 = !DISubrange(count: 30)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "wlen", scope: !4582, file: !4543, line: 49, baseType: !7, size: 32, offset: 256)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !4582, file: !4543, line: 50, baseType: !7, size: 32, offset: 288)
!4590 = !DILocation(line: 672, column: 20, scope: !4182)
!4591 = !DILocation(line: 676, column: 8, scope: !4182)
!4592 = !DILocation(line: 676, column: 6, scope: !4182)
!4593 = !DILocation(line: 677, column: 7, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 677, column: 6)
!4595 = !DILocation(line: 677, column: 6, scope: !4182)
!4596 = !DILocation(line: 678, column: 7, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 677, column: 12)
!4598 = !DILocation(line: 679, column: 3, scope: !4597)
!4599 = !DILocation(line: 682, column: 21, scope: !4182)
!4600 = !DILocation(line: 682, column: 29, scope: !4182)
!4601 = !DILocation(line: 682, column: 2, scope: !4182)
!4602 = !DILocation(line: 683, column: 2, scope: !4182)
!4603 = !DILocation(line: 683, column: 2, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 683, column: 2)
!4605 = !DILocation(line: 686, column: 2, scope: !4182)
!4606 = !DILocation(line: 688, column: 27, scope: !4182)
!4607 = !DILocation(line: 688, column: 8, scope: !4182)
!4608 = !DILocation(line: 688, column: 6, scope: !4182)
!4609 = !DILocation(line: 689, column: 6, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 689, column: 6)
!4611 = !DILocation(line: 689, column: 6, scope: !4182)
!4612 = !DILocation(line: 690, column: 3, scope: !4610)
!4613 = !DILocation(line: 693, column: 2, scope: !4182)
!4614 = !DILocation(line: 694, column: 27, scope: !4182)
!4615 = !DILocation(line: 694, column: 8, scope: !4182)
!4616 = !DILocation(line: 694, column: 6, scope: !4182)
!4617 = !DILocation(line: 695, column: 6, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 695, column: 6)
!4619 = !DILocation(line: 695, column: 6, scope: !4182)
!4620 = !DILocation(line: 696, column: 3, scope: !4618)
!4621 = !DILocation(line: 699, column: 2, scope: !4182)
!4622 = !DILocation(line: 700, column: 27, scope: !4182)
!4623 = !DILocation(line: 700, column: 8, scope: !4182)
!4624 = !DILocation(line: 700, column: 6, scope: !4182)
!4625 = !DILocation(line: 701, column: 6, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 701, column: 6)
!4627 = !DILocation(line: 701, column: 6, scope: !4182)
!4628 = !DILocation(line: 702, column: 3, scope: !4626)
!4629 = !DILocation(line: 704, column: 21, scope: !4182)
!4630 = !DILocation(line: 704, column: 17, scope: !4182)
!4631 = !DILocation(line: 704, column: 29, scope: !4182)
!4632 = !DILocation(line: 704, column: 41, scope: !4182)
!4633 = !DILocation(line: 704, column: 37, scope: !4182)
!4634 = !DILocation(line: 704, column: 49, scope: !4182)
!4635 = !DILocation(line: 704, column: 35, scope: !4182)
!4636 = !DILocation(line: 705, column: 14, scope: !4182)
!4637 = !DILocation(line: 705, column: 10, scope: !4182)
!4638 = !DILocation(line: 705, column: 22, scope: !4182)
!4639 = !DILocation(line: 704, column: 55, scope: !4182)
!4640 = !DILocation(line: 705, column: 33, scope: !4182)
!4641 = !DILocation(line: 705, column: 29, scope: !4182)
!4642 = !DILocation(line: 705, column: 41, scope: !4182)
!4643 = !DILocation(line: 705, column: 27, scope: !4182)
!4644 = !DILocation(line: 704, column: 2, scope: !4182)
!4645 = !DILocation(line: 704, column: 7, scope: !4182)
!4646 = !DILocation(line: 704, column: 15, scope: !4182)
!4647 = !DILocation(line: 707, column: 10, scope: !4182)
!4648 = !DILocation(line: 707, column: 15, scope: !4182)
!4649 = !DILocation(line: 707, column: 2, scope: !4182)
!4650 = !DILocation(line: 709, column: 3, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 707, column: 24)
!4652 = !DILocation(line: 709, column: 8, scope: !4651)
!4653 = !DILocation(line: 709, column: 22, scope: !4651)
!4654 = !DILocation(line: 710, column: 3, scope: !4651)
!4655 = !DILocation(line: 712, column: 3, scope: !4651)
!4656 = !DILocation(line: 712, column: 8, scope: !4651)
!4657 = !DILocation(line: 712, column: 22, scope: !4651)
!4658 = !DILocation(line: 713, column: 3, scope: !4651)
!4659 = !DILocation(line: 715, column: 3, scope: !4651)
!4660 = !DILocation(line: 715, column: 8, scope: !4651)
!4661 = !DILocation(line: 715, column: 22, scope: !4651)
!4662 = !DILocation(line: 716, column: 3, scope: !4651)
!4663 = !DILocation(line: 718, column: 3, scope: !4651)
!4664 = !DILocation(line: 718, column: 8, scope: !4651)
!4665 = !DILocation(line: 718, column: 22, scope: !4651)
!4666 = !DILocation(line: 719, column: 3, scope: !4651)
!4667 = !DILocation(line: 723, column: 7, scope: !4651)
!4668 = !DILocation(line: 724, column: 3, scope: !4651)
!4669 = !DILocation(line: 727, column: 22, scope: !4182)
!4670 = !DILocation(line: 727, column: 18, scope: !4182)
!4671 = !DILocation(line: 727, column: 17, scope: !4182)
!4672 = !DILocation(line: 727, column: 31, scope: !4182)
!4673 = !DILocation(line: 727, column: 44, scope: !4182)
!4674 = !DILocation(line: 727, column: 40, scope: !4182)
!4675 = !DILocation(line: 727, column: 52, scope: !4182)
!4676 = !DILocation(line: 727, column: 59, scope: !4182)
!4677 = !DILocation(line: 727, column: 37, scope: !4182)
!4678 = !DILocation(line: 728, column: 15, scope: !4182)
!4679 = !DILocation(line: 728, column: 11, scope: !4182)
!4680 = !DILocation(line: 728, column: 23, scope: !4182)
!4681 = !DILocation(line: 728, column: 30, scope: !4182)
!4682 = !DILocation(line: 727, column: 65, scope: !4182)
!4683 = !DILocation(line: 728, column: 42, scope: !4182)
!4684 = !DILocation(line: 728, column: 38, scope: !4182)
!4685 = !DILocation(line: 728, column: 37, scope: !4182)
!4686 = !DILocation(line: 728, column: 51, scope: !4182)
!4687 = !DILocation(line: 728, column: 35, scope: !4182)
!4688 = !DILocation(line: 727, column: 2, scope: !4182)
!4689 = !DILocation(line: 727, column: 7, scope: !4182)
!4690 = !DILocation(line: 727, column: 15, scope: !4182)
!4691 = !DILocation(line: 731, column: 28, scope: !4182)
!4692 = !DILocation(line: 731, column: 36, scope: !4182)
!4693 = !DILocation(line: 731, column: 46, scope: !4182)
!4694 = !DILocation(line: 731, column: 54, scope: !4182)
!4695 = !DILocation(line: 731, column: 14, scope: !4182)
!4696 = !DILocation(line: 731, column: 2, scope: !4182)
!4697 = !DILocation(line: 731, column: 7, scope: !4182)
!4698 = !DILocation(line: 731, column: 12, scope: !4182)
!4699 = !DILocation(line: 734, column: 7, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 734, column: 6)
!4701 = !DILocation(line: 734, column: 12, scope: !4700)
!4702 = !DILocation(line: 734, column: 6, scope: !4182)
!4703 = !DILocation(line: 735, column: 7, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 734, column: 18)
!4705 = !DILocation(line: 736, column: 3, scope: !4704)
!4706 = !DILocation(line: 738, column: 20, scope: !4182)
!4707 = !DILocation(line: 738, column: 2, scope: !4182)
!4708 = !DILocation(line: 738, column: 7, scope: !4182)
!4709 = !DILocation(line: 738, column: 13, scope: !4182)
!4710 = !DILocation(line: 738, column: 18, scope: !4182)
!4711 = !DILocation(line: 739, column: 28, scope: !4182)
!4712 = !DILocation(line: 739, column: 33, scope: !4182)
!4713 = !DILocation(line: 739, column: 8, scope: !4182)
!4714 = !DILocation(line: 739, column: 6, scope: !4182)
!4715 = !DILocation(line: 740, column: 6, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 740, column: 6)
!4717 = !DILocation(line: 740, column: 6, scope: !4182)
!4718 = !DILocation(line: 741, column: 3, scope: !4716)
!4719 = !DILocation(line: 744, column: 10, scope: !4182)
!4720 = !DILocation(line: 744, column: 15, scope: !4182)
!4721 = !DILocation(line: 744, column: 18, scope: !4182)
!4722 = !DILocation(line: 744, column: 2, scope: !4182)
!4723 = !DILocation(line: 745, column: 29, scope: !4182)
!4724 = !DILocation(line: 745, column: 2, scope: !4182)
!4725 = !DILocation(line: 745, column: 7, scope: !4182)
!4726 = !DILocation(line: 745, column: 10, scope: !4182)
!4727 = !DILocation(line: 745, column: 27, scope: !4182)
!4728 = !DILocation(line: 746, column: 25, scope: !4182)
!4729 = !DILocation(line: 746, column: 30, scope: !4182)
!4730 = !DILocation(line: 746, column: 36, scope: !4182)
!4731 = !DILocation(line: 746, column: 3, scope: !4182)
!4732 = !DILocation(line: 746, column: 11, scope: !4182)
!4733 = !DILocation(line: 746, column: 23, scope: !4182)
!4734 = !DILocation(line: 747, column: 17, scope: !4182)
!4735 = !DILocation(line: 747, column: 22, scope: !4182)
!4736 = !DILocation(line: 747, column: 3, scope: !4182)
!4737 = !DILocation(line: 747, column: 11, scope: !4182)
!4738 = !DILocation(line: 747, column: 14, scope: !4182)
!4739 = !DILocation(line: 748, column: 17, scope: !4182)
!4740 = !DILocation(line: 748, column: 25, scope: !4182)
!4741 = !DILocation(line: 748, column: 2, scope: !4182)
!4742 = !DILocation(line: 748, column: 7, scope: !4182)
!4743 = !DILocation(line: 748, column: 15, scope: !4182)
!4744 = !DILocation(line: 749, column: 22, scope: !4182)
!4745 = !DILocation(line: 749, column: 30, scope: !4182)
!4746 = !DILocation(line: 749, column: 2, scope: !4182)
!4747 = !DILocation(line: 749, column: 7, scope: !4182)
!4748 = !DILocation(line: 749, column: 20, scope: !4182)
!4749 = !DILocation(line: 750, column: 25, scope: !4182)
!4750 = !DILocation(line: 750, column: 33, scope: !4182)
!4751 = !DILocation(line: 750, column: 2, scope: !4182)
!4752 = !DILocation(line: 750, column: 7, scope: !4182)
!4753 = !DILocation(line: 750, column: 23, scope: !4182)
!4754 = !DILocation(line: 751, column: 28, scope: !4182)
!4755 = !DILocation(line: 751, column: 36, scope: !4182)
!4756 = !DILocation(line: 751, column: 2, scope: !4182)
!4757 = !DILocation(line: 751, column: 7, scope: !4182)
!4758 = !DILocation(line: 751, column: 26, scope: !4182)
!4759 = !DILocation(line: 753, column: 2, scope: !4182)
!4760 = !DILocation(line: 756, column: 2, scope: !4182)
!4761 = !DILocation(line: 760, column: 2, scope: !4182)
!4762 = !DILabel(scope: !4182, name: "err_kfree", file: !3, line: 761)
!4763 = !DILocation(line: 761, column: 1, scope: !4182)
!4764 = !DILocation(line: 762, column: 8, scope: !4182)
!4765 = !DILocation(line: 762, column: 2, scope: !4182)
!4766 = !DILabel(scope: !4182, name: "err", file: !3, line: 763)
!4767 = !DILocation(line: 763, column: 1, scope: !4182)
!4768 = !DILocation(line: 764, column: 2, scope: !4182)
!4769 = !DILocation(line: 765, column: 9, scope: !4182)
!4770 = !DILocation(line: 765, column: 2, scope: !4182)
!4771 = !DILocation(line: 766, column: 1, scope: !4182)
!4772 = distinct !DISubprogram(name: "si2168_remove", scope: !3, file: !3, line: 768, type: !4101, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!4773 = !DILocalVariable(name: "client", arg: 1, scope: !4772, file: !3, line: 768, type: !375)
!4774 = !DILocation(line: 768, column: 45, scope: !4772)
!4775 = !DILocalVariable(name: "dev", scope: !4772, file: !3, line: 770, type: !4541)
!4776 = !DILocation(line: 770, column: 21, scope: !4772)
!4777 = !DILocation(line: 770, column: 46, scope: !4772)
!4778 = !DILocation(line: 770, column: 27, scope: !4772)
!4779 = !DILocation(line: 774, column: 23, scope: !4772)
!4780 = !DILocation(line: 774, column: 28, scope: !4772)
!4781 = !DILocation(line: 774, column: 2, scope: !4772)
!4782 = !DILocation(line: 776, column: 2, scope: !4772)
!4783 = !DILocation(line: 776, column: 7, scope: !4772)
!4784 = !DILocation(line: 776, column: 10, scope: !4772)
!4785 = !DILocation(line: 776, column: 14, scope: !4772)
!4786 = !DILocation(line: 776, column: 22, scope: !4772)
!4787 = !DILocation(line: 777, column: 2, scope: !4772)
!4788 = !DILocation(line: 777, column: 7, scope: !4772)
!4789 = !DILocation(line: 777, column: 10, scope: !4772)
!4790 = !DILocation(line: 777, column: 27, scope: !4772)
!4791 = !DILocation(line: 779, column: 8, scope: !4772)
!4792 = !DILocation(line: 779, column: 2, scope: !4772)
!4793 = !DILocation(line: 781, column: 2, scope: !4772)
!4794 = distinct !DISubprogram(name: "kzalloc", scope: !298, file: !298, line: 662, type: !4795, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!321, !922, !319}
!4797 = !DILocalVariable(name: "s", arg: 1, scope: !4798, file: !298, line: 445, type: !1267)
!4798 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !298, file: !298, line: 445, type: !4799, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!321, !1267, !319, !922}
!4801 = !DILocation(line: 445, column: 72, scope: !4798, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 552, column: 10, scope: !4803, inlinedAt: !4806)
!4803 = distinct !DILexicalBlock(scope: !4804, file: !298, line: 540, column: 34)
!4804 = distinct !DILexicalBlock(scope: !4805, file: !298, line: 540, column: 6)
!4805 = distinct !DISubprogram(name: "kmalloc", scope: !298, file: !298, line: 538, type: !4795, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!4806 = distinct !DILocation(line: 664, column: 9, scope: !4794)
!4807 = !DILocalVariable(name: "flags", arg: 2, scope: !4798, file: !298, line: 446, type: !319)
!4808 = !DILocation(line: 446, column: 9, scope: !4798, inlinedAt: !4802)
!4809 = !DILocalVariable(name: "size", arg: 3, scope: !4798, file: !298, line: 446, type: !922)
!4810 = !DILocation(line: 446, column: 23, scope: !4798, inlinedAt: !4802)
!4811 = !DILocalVariable(name: "ret", scope: !4798, file: !298, line: 448, type: !321)
!4812 = !DILocation(line: 448, column: 8, scope: !4798, inlinedAt: !4802)
!4813 = !DILocalVariable(name: "flags", arg: 1, scope: !4814, file: !298, line: 318, type: !319)
!4814 = distinct !DISubprogram(name: "kmalloc_type", scope: !298, file: !298, line: 318, type: !4815, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!297, !319}
!4817 = !DILocation(line: 318, column: 67, scope: !4814, inlinedAt: !4818)
!4818 = distinct !DILocation(line: 553, column: 20, scope: !4803, inlinedAt: !4806)
!4819 = !DILocalVariable(name: "size", arg: 1, scope: !4820, file: !298, line: 346, type: !922)
!4820 = distinct !DISubprogram(name: "kmalloc_index", scope: !298, file: !298, line: 346, type: !4821, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!7, !922}
!4823 = !DILocation(line: 346, column: 58, scope: !4820, inlinedAt: !4824)
!4824 = distinct !DILocation(line: 547, column: 11, scope: !4803, inlinedAt: !4806)
!4825 = !DILocalVariable(name: "size", arg: 1, scope: !4826, file: !298, line: 472, type: !922)
!4826 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !298, file: !298, line: 472, type: !4827, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!321, !922, !319, !7}
!4829 = !DILocation(line: 472, column: 28, scope: !4826, inlinedAt: !4830)
!4830 = distinct !DILocation(line: 481, column: 9, scope: !4831, inlinedAt: !4832)
!4831 = distinct !DISubprogram(name: "kmalloc_large", scope: !298, file: !298, line: 478, type: !4795, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!4832 = distinct !DILocation(line: 545, column: 11, scope: !4833, inlinedAt: !4806)
!4833 = distinct !DILexicalBlock(scope: !4803, file: !298, line: 544, column: 7)
!4834 = !DILocalVariable(name: "flags", arg: 2, scope: !4826, file: !298, line: 472, type: !319)
!4835 = !DILocation(line: 472, column: 40, scope: !4826, inlinedAt: !4830)
!4836 = !DILocalVariable(name: "order", arg: 3, scope: !4826, file: !298, line: 472, type: !7)
!4837 = !DILocation(line: 472, column: 60, scope: !4826, inlinedAt: !4830)
!4838 = !DILocalVariable(name: "size", arg: 1, scope: !4831, file: !298, line: 478, type: !922)
!4839 = !DILocation(line: 478, column: 51, scope: !4831, inlinedAt: !4832)
!4840 = !DILocalVariable(name: "flags", arg: 2, scope: !4831, file: !298, line: 478, type: !319)
!4841 = !DILocation(line: 478, column: 63, scope: !4831, inlinedAt: !4832)
!4842 = !DILocalVariable(name: "order", scope: !4831, file: !298, line: 480, type: !7)
!4843 = !DILocation(line: 480, column: 15, scope: !4831, inlinedAt: !4832)
!4844 = !DILocalVariable(name: "size", arg: 1, scope: !4805, file: !298, line: 538, type: !922)
!4845 = !DILocation(line: 538, column: 45, scope: !4805, inlinedAt: !4806)
!4846 = !DILocalVariable(name: "flags", arg: 2, scope: !4805, file: !298, line: 538, type: !319)
!4847 = !DILocation(line: 538, column: 57, scope: !4805, inlinedAt: !4806)
!4848 = !DILocalVariable(name: "index", scope: !4803, file: !298, line: 542, type: !7)
!4849 = !DILocation(line: 542, column: 16, scope: !4803, inlinedAt: !4806)
!4850 = !DILocalVariable(name: "size", arg: 1, scope: !4794, file: !298, line: 662, type: !922)
!4851 = !DILocation(line: 662, column: 36, scope: !4794)
!4852 = !DILocalVariable(name: "flags", arg: 2, scope: !4794, file: !298, line: 662, type: !319)
!4853 = !DILocation(line: 662, column: 48, scope: !4794)
!4854 = !DILocation(line: 664, column: 17, scope: !4794)
!4855 = !DILocation(line: 664, column: 23, scope: !4794)
!4856 = !DILocation(line: 664, column: 29, scope: !4794)
!4857 = !DILocation(line: 540, column: 27, scope: !4804, inlinedAt: !4806)
!4858 = !DILocation(line: 540, column: 6, scope: !4804, inlinedAt: !4806)
!4859 = !DILocation(line: 540, column: 6, scope: !4805, inlinedAt: !4806)
!4860 = !DILocation(line: 544, column: 7, scope: !4833, inlinedAt: !4806)
!4861 = !DILocation(line: 544, column: 12, scope: !4833, inlinedAt: !4806)
!4862 = !DILocation(line: 544, column: 7, scope: !4803, inlinedAt: !4806)
!4863 = !DILocation(line: 545, column: 25, scope: !4833, inlinedAt: !4806)
!4864 = !DILocation(line: 545, column: 31, scope: !4833, inlinedAt: !4806)
!4865 = !DILocation(line: 480, column: 33, scope: !4831, inlinedAt: !4832)
!4866 = !DILocation(line: 480, column: 23, scope: !4831, inlinedAt: !4832)
!4867 = !DILocation(line: 481, column: 29, scope: !4831, inlinedAt: !4832)
!4868 = !DILocation(line: 481, column: 35, scope: !4831, inlinedAt: !4832)
!4869 = !DILocation(line: 481, column: 42, scope: !4831, inlinedAt: !4832)
!4870 = !DILocation(line: 474, column: 23, scope: !4826, inlinedAt: !4830)
!4871 = !DILocation(line: 474, column: 29, scope: !4826, inlinedAt: !4830)
!4872 = !DILocation(line: 474, column: 36, scope: !4826, inlinedAt: !4830)
!4873 = !DILocation(line: 474, column: 9, scope: !4826, inlinedAt: !4830)
!4874 = !DILocation(line: 545, column: 4, scope: !4833, inlinedAt: !4806)
!4875 = !DILocation(line: 547, column: 25, scope: !4803, inlinedAt: !4806)
!4876 = !DILocation(line: 348, column: 7, scope: !4877, inlinedAt: !4824)
!4877 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 348, column: 6)
!4878 = !DILocation(line: 348, column: 6, scope: !4820, inlinedAt: !4824)
!4879 = !DILocation(line: 349, column: 3, scope: !4877, inlinedAt: !4824)
!4880 = !DILocation(line: 351, column: 6, scope: !4881, inlinedAt: !4824)
!4881 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 351, column: 6)
!4882 = !DILocation(line: 351, column: 11, scope: !4881, inlinedAt: !4824)
!4883 = !DILocation(line: 351, column: 6, scope: !4820, inlinedAt: !4824)
!4884 = !DILocation(line: 352, column: 3, scope: !4881, inlinedAt: !4824)
!4885 = !DILocation(line: 354, column: 32, scope: !4886, inlinedAt: !4824)
!4886 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 354, column: 6)
!4887 = !DILocation(line: 354, column: 37, scope: !4886, inlinedAt: !4824)
!4888 = !DILocation(line: 354, column: 42, scope: !4886, inlinedAt: !4824)
!4889 = !DILocation(line: 354, column: 45, scope: !4886, inlinedAt: !4824)
!4890 = !DILocation(line: 354, column: 50, scope: !4886, inlinedAt: !4824)
!4891 = !DILocation(line: 354, column: 6, scope: !4820, inlinedAt: !4824)
!4892 = !DILocation(line: 355, column: 3, scope: !4886, inlinedAt: !4824)
!4893 = !DILocation(line: 356, column: 32, scope: !4894, inlinedAt: !4824)
!4894 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 356, column: 6)
!4895 = !DILocation(line: 356, column: 37, scope: !4894, inlinedAt: !4824)
!4896 = !DILocation(line: 356, column: 43, scope: !4894, inlinedAt: !4824)
!4897 = !DILocation(line: 356, column: 46, scope: !4894, inlinedAt: !4824)
!4898 = !DILocation(line: 356, column: 51, scope: !4894, inlinedAt: !4824)
!4899 = !DILocation(line: 356, column: 6, scope: !4820, inlinedAt: !4824)
!4900 = !DILocation(line: 357, column: 3, scope: !4894, inlinedAt: !4824)
!4901 = !DILocation(line: 358, column: 6, scope: !4902, inlinedAt: !4824)
!4902 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 358, column: 6)
!4903 = !DILocation(line: 358, column: 11, scope: !4902, inlinedAt: !4824)
!4904 = !DILocation(line: 358, column: 6, scope: !4820, inlinedAt: !4824)
!4905 = !DILocation(line: 358, column: 26, scope: !4902, inlinedAt: !4824)
!4906 = !DILocation(line: 359, column: 6, scope: !4907, inlinedAt: !4824)
!4907 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 359, column: 6)
!4908 = !DILocation(line: 359, column: 11, scope: !4907, inlinedAt: !4824)
!4909 = !DILocation(line: 359, column: 6, scope: !4820, inlinedAt: !4824)
!4910 = !DILocation(line: 359, column: 26, scope: !4907, inlinedAt: !4824)
!4911 = !DILocation(line: 360, column: 6, scope: !4912, inlinedAt: !4824)
!4912 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 360, column: 6)
!4913 = !DILocation(line: 360, column: 11, scope: !4912, inlinedAt: !4824)
!4914 = !DILocation(line: 360, column: 6, scope: !4820, inlinedAt: !4824)
!4915 = !DILocation(line: 360, column: 26, scope: !4912, inlinedAt: !4824)
!4916 = !DILocation(line: 361, column: 6, scope: !4917, inlinedAt: !4824)
!4917 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 361, column: 6)
!4918 = !DILocation(line: 361, column: 11, scope: !4917, inlinedAt: !4824)
!4919 = !DILocation(line: 361, column: 6, scope: !4820, inlinedAt: !4824)
!4920 = !DILocation(line: 361, column: 26, scope: !4917, inlinedAt: !4824)
!4921 = !DILocation(line: 362, column: 6, scope: !4922, inlinedAt: !4824)
!4922 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 362, column: 6)
!4923 = !DILocation(line: 362, column: 11, scope: !4922, inlinedAt: !4824)
!4924 = !DILocation(line: 362, column: 6, scope: !4820, inlinedAt: !4824)
!4925 = !DILocation(line: 362, column: 26, scope: !4922, inlinedAt: !4824)
!4926 = !DILocation(line: 363, column: 6, scope: !4927, inlinedAt: !4824)
!4927 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 363, column: 6)
!4928 = !DILocation(line: 363, column: 11, scope: !4927, inlinedAt: !4824)
!4929 = !DILocation(line: 363, column: 6, scope: !4820, inlinedAt: !4824)
!4930 = !DILocation(line: 363, column: 26, scope: !4927, inlinedAt: !4824)
!4931 = !DILocation(line: 364, column: 6, scope: !4932, inlinedAt: !4824)
!4932 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 364, column: 6)
!4933 = !DILocation(line: 364, column: 11, scope: !4932, inlinedAt: !4824)
!4934 = !DILocation(line: 364, column: 6, scope: !4820, inlinedAt: !4824)
!4935 = !DILocation(line: 364, column: 26, scope: !4932, inlinedAt: !4824)
!4936 = !DILocation(line: 365, column: 6, scope: !4937, inlinedAt: !4824)
!4937 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 365, column: 6)
!4938 = !DILocation(line: 365, column: 11, scope: !4937, inlinedAt: !4824)
!4939 = !DILocation(line: 365, column: 6, scope: !4820, inlinedAt: !4824)
!4940 = !DILocation(line: 365, column: 26, scope: !4937, inlinedAt: !4824)
!4941 = !DILocation(line: 366, column: 6, scope: !4942, inlinedAt: !4824)
!4942 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 366, column: 6)
!4943 = !DILocation(line: 366, column: 11, scope: !4942, inlinedAt: !4824)
!4944 = !DILocation(line: 366, column: 6, scope: !4820, inlinedAt: !4824)
!4945 = !DILocation(line: 366, column: 26, scope: !4942, inlinedAt: !4824)
!4946 = !DILocation(line: 367, column: 6, scope: !4947, inlinedAt: !4824)
!4947 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 367, column: 6)
!4948 = !DILocation(line: 367, column: 11, scope: !4947, inlinedAt: !4824)
!4949 = !DILocation(line: 367, column: 6, scope: !4820, inlinedAt: !4824)
!4950 = !DILocation(line: 367, column: 26, scope: !4947, inlinedAt: !4824)
!4951 = !DILocation(line: 368, column: 6, scope: !4952, inlinedAt: !4824)
!4952 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 368, column: 6)
!4953 = !DILocation(line: 368, column: 11, scope: !4952, inlinedAt: !4824)
!4954 = !DILocation(line: 368, column: 6, scope: !4820, inlinedAt: !4824)
!4955 = !DILocation(line: 368, column: 26, scope: !4952, inlinedAt: !4824)
!4956 = !DILocation(line: 369, column: 6, scope: !4957, inlinedAt: !4824)
!4957 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 369, column: 6)
!4958 = !DILocation(line: 369, column: 11, scope: !4957, inlinedAt: !4824)
!4959 = !DILocation(line: 369, column: 6, scope: !4820, inlinedAt: !4824)
!4960 = !DILocation(line: 369, column: 26, scope: !4957, inlinedAt: !4824)
!4961 = !DILocation(line: 370, column: 6, scope: !4962, inlinedAt: !4824)
!4962 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 370, column: 6)
!4963 = !DILocation(line: 370, column: 11, scope: !4962, inlinedAt: !4824)
!4964 = !DILocation(line: 370, column: 6, scope: !4820, inlinedAt: !4824)
!4965 = !DILocation(line: 370, column: 26, scope: !4962, inlinedAt: !4824)
!4966 = !DILocation(line: 371, column: 6, scope: !4967, inlinedAt: !4824)
!4967 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 371, column: 6)
!4968 = !DILocation(line: 371, column: 11, scope: !4967, inlinedAt: !4824)
!4969 = !DILocation(line: 371, column: 6, scope: !4820, inlinedAt: !4824)
!4970 = !DILocation(line: 371, column: 26, scope: !4967, inlinedAt: !4824)
!4971 = !DILocation(line: 372, column: 6, scope: !4972, inlinedAt: !4824)
!4972 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 372, column: 6)
!4973 = !DILocation(line: 372, column: 11, scope: !4972, inlinedAt: !4824)
!4974 = !DILocation(line: 372, column: 6, scope: !4820, inlinedAt: !4824)
!4975 = !DILocation(line: 372, column: 26, scope: !4972, inlinedAt: !4824)
!4976 = !DILocation(line: 373, column: 6, scope: !4977, inlinedAt: !4824)
!4977 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 373, column: 6)
!4978 = !DILocation(line: 373, column: 11, scope: !4977, inlinedAt: !4824)
!4979 = !DILocation(line: 373, column: 6, scope: !4820, inlinedAt: !4824)
!4980 = !DILocation(line: 373, column: 26, scope: !4977, inlinedAt: !4824)
!4981 = !DILocation(line: 374, column: 6, scope: !4982, inlinedAt: !4824)
!4982 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 374, column: 6)
!4983 = !DILocation(line: 374, column: 11, scope: !4982, inlinedAt: !4824)
!4984 = !DILocation(line: 374, column: 6, scope: !4820, inlinedAt: !4824)
!4985 = !DILocation(line: 374, column: 26, scope: !4982, inlinedAt: !4824)
!4986 = !DILocation(line: 375, column: 6, scope: !4987, inlinedAt: !4824)
!4987 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 375, column: 6)
!4988 = !DILocation(line: 375, column: 11, scope: !4987, inlinedAt: !4824)
!4989 = !DILocation(line: 375, column: 6, scope: !4820, inlinedAt: !4824)
!4990 = !DILocation(line: 375, column: 27, scope: !4987, inlinedAt: !4824)
!4991 = !DILocation(line: 376, column: 6, scope: !4992, inlinedAt: !4824)
!4992 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 376, column: 6)
!4993 = !DILocation(line: 376, column: 11, scope: !4992, inlinedAt: !4824)
!4994 = !DILocation(line: 376, column: 6, scope: !4820, inlinedAt: !4824)
!4995 = !DILocation(line: 376, column: 32, scope: !4992, inlinedAt: !4824)
!4996 = !DILocation(line: 377, column: 6, scope: !4997, inlinedAt: !4824)
!4997 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 377, column: 6)
!4998 = !DILocation(line: 377, column: 11, scope: !4997, inlinedAt: !4824)
!4999 = !DILocation(line: 377, column: 6, scope: !4820, inlinedAt: !4824)
!5000 = !DILocation(line: 377, column: 32, scope: !4997, inlinedAt: !4824)
!5001 = !DILocation(line: 378, column: 6, scope: !5002, inlinedAt: !4824)
!5002 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 378, column: 6)
!5003 = !DILocation(line: 378, column: 11, scope: !5002, inlinedAt: !4824)
!5004 = !DILocation(line: 378, column: 6, scope: !4820, inlinedAt: !4824)
!5005 = !DILocation(line: 378, column: 32, scope: !5002, inlinedAt: !4824)
!5006 = !DILocation(line: 379, column: 6, scope: !5007, inlinedAt: !4824)
!5007 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 379, column: 6)
!5008 = !DILocation(line: 379, column: 11, scope: !5007, inlinedAt: !4824)
!5009 = !DILocation(line: 379, column: 6, scope: !4820, inlinedAt: !4824)
!5010 = !DILocation(line: 379, column: 33, scope: !5007, inlinedAt: !4824)
!5011 = !DILocation(line: 380, column: 6, scope: !5012, inlinedAt: !4824)
!5012 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 380, column: 6)
!5013 = !DILocation(line: 380, column: 11, scope: !5012, inlinedAt: !4824)
!5014 = !DILocation(line: 380, column: 6, scope: !4820, inlinedAt: !4824)
!5015 = !DILocation(line: 380, column: 33, scope: !5012, inlinedAt: !4824)
!5016 = !DILocation(line: 381, column: 6, scope: !5017, inlinedAt: !4824)
!5017 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 381, column: 6)
!5018 = !DILocation(line: 381, column: 11, scope: !5017, inlinedAt: !4824)
!5019 = !DILocation(line: 381, column: 6, scope: !4820, inlinedAt: !4824)
!5020 = !DILocation(line: 381, column: 33, scope: !5017, inlinedAt: !4824)
!5021 = !DILocation(line: 382, column: 2, scope: !5022, inlinedAt: !4824)
!5022 = distinct !DILexicalBlock(scope: !5023, file: !298, line: 382, column: 2)
!5023 = distinct !DILexicalBlock(scope: !4820, file: !298, line: 382, column: 2)
!5024 = !{i32 -2143619081, i32 -2143619052, i32 -2143619006, i32 -2143618948, i32 -2143618894, i32 -2143618840, i32 -2143618785, i32 -2143618754}
!5025 = !DILocation(line: 382, column: 2, scope: !5026, inlinedAt: !4824)
!5026 = distinct !DILexicalBlock(scope: !5027, file: !298, line: 382, column: 2)
!5027 = distinct !DILexicalBlock(scope: !5023, file: !298, line: 382, column: 2)
!5028 = !{i32 -2143618311, i32 -2143618304, i32 -2143618250, i32 -2143618219, i32 -2143618189}
!5029 = !DILocation(line: 382, column: 2, scope: !5027, inlinedAt: !4824)
!5030 = !DILocation(line: 386, column: 1, scope: !4820, inlinedAt: !4824)
!5031 = !DILocation(line: 547, column: 9, scope: !4803, inlinedAt: !4806)
!5032 = !DILocation(line: 549, column: 8, scope: !5033, inlinedAt: !4806)
!5033 = distinct !DILexicalBlock(scope: !4803, file: !298, line: 549, column: 7)
!5034 = !DILocation(line: 549, column: 7, scope: !4803, inlinedAt: !4806)
!5035 = !DILocation(line: 550, column: 4, scope: !5033, inlinedAt: !4806)
!5036 = !DILocation(line: 553, column: 33, scope: !4803, inlinedAt: !4806)
!5037 = !DILocation(line: 325, column: 6, scope: !5038, inlinedAt: !4818)
!5038 = distinct !DILexicalBlock(scope: !4814, file: !298, line: 325, column: 6)
!5039 = !DILocation(line: 325, column: 6, scope: !4814, inlinedAt: !4818)
!5040 = !DILocation(line: 326, column: 3, scope: !5038, inlinedAt: !4818)
!5041 = !DILocation(line: 332, column: 9, scope: !4814, inlinedAt: !4818)
!5042 = !DILocation(line: 332, column: 15, scope: !4814, inlinedAt: !4818)
!5043 = !DILocation(line: 332, column: 2, scope: !4814, inlinedAt: !4818)
!5044 = !DILocation(line: 336, column: 1, scope: !4814, inlinedAt: !4818)
!5045 = !DILocation(line: 553, column: 5, scope: !4803, inlinedAt: !4806)
!5046 = !DILocation(line: 553, column: 41, scope: !4803, inlinedAt: !4806)
!5047 = !DILocation(line: 554, column: 5, scope: !4803, inlinedAt: !4806)
!5048 = !DILocation(line: 554, column: 12, scope: !4803, inlinedAt: !4806)
!5049 = !DILocation(line: 448, column: 31, scope: !4798, inlinedAt: !4802)
!5050 = !DILocation(line: 448, column: 34, scope: !4798, inlinedAt: !4802)
!5051 = !DILocation(line: 448, column: 14, scope: !4798, inlinedAt: !4802)
!5052 = !DILocation(line: 450, column: 22, scope: !4798, inlinedAt: !4802)
!5053 = !DILocation(line: 450, column: 25, scope: !4798, inlinedAt: !4802)
!5054 = !DILocation(line: 450, column: 30, scope: !4798, inlinedAt: !4802)
!5055 = !DILocation(line: 450, column: 36, scope: !4798, inlinedAt: !4802)
!5056 = !DILocation(line: 450, column: 8, scope: !4798, inlinedAt: !4802)
!5057 = !DILocation(line: 450, column: 6, scope: !4798, inlinedAt: !4802)
!5058 = !DILocation(line: 451, column: 9, scope: !4798, inlinedAt: !4802)
!5059 = !DILocation(line: 552, column: 3, scope: !4803, inlinedAt: !4806)
!5060 = !DILocation(line: 557, column: 19, scope: !4805, inlinedAt: !4806)
!5061 = !DILocation(line: 557, column: 25, scope: !4805, inlinedAt: !4806)
!5062 = !DILocation(line: 557, column: 9, scope: !4805, inlinedAt: !4806)
!5063 = !DILocation(line: 557, column: 2, scope: !4805, inlinedAt: !4806)
!5064 = !DILocation(line: 558, column: 1, scope: !4805, inlinedAt: !4806)
!5065 = !DILocation(line: 664, column: 2, scope: !4794)
!5066 = distinct !DISubprogram(name: "i2c_set_clientdata", scope: !95, file: !95, line: 356, type: !5067, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{null, !375, !321}
!5069 = !DILocalVariable(name: "client", arg: 1, scope: !5066, file: !95, line: 356, type: !375)
!5070 = !DILocation(line: 356, column: 58, scope: !5066)
!5071 = !DILocalVariable(name: "data", arg: 2, scope: !5066, file: !95, line: 356, type: !321)
!5072 = !DILocation(line: 356, column: 72, scope: !5066)
!5073 = !DILocation(line: 358, column: 19, scope: !5066)
!5074 = !DILocation(line: 358, column: 27, scope: !5066)
!5075 = !DILocation(line: 358, column: 32, scope: !5066)
!5076 = !DILocation(line: 358, column: 2, scope: !5066)
!5077 = !DILocation(line: 359, column: 1, scope: !5066)
!5078 = distinct !DISubprogram(name: "cmd_init", scope: !3, file: !3, line: 14, type: !5079, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{null, !5081, !4339, !325, !325}
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!5082 = !DILocalVariable(name: "cmd", arg: 1, scope: !5078, file: !3, line: 14, type: !5081)
!5083 = !DILocation(line: 14, column: 41, scope: !5078)
!5084 = !DILocalVariable(name: "buf", arg: 2, scope: !5078, file: !3, line: 14, type: !4339)
!5085 = !DILocation(line: 14, column: 56, scope: !5078)
!5086 = !DILocalVariable(name: "wlen", arg: 3, scope: !5078, file: !3, line: 14, type: !325)
!5087 = !DILocation(line: 14, column: 65, scope: !5078)
!5088 = !DILocalVariable(name: "rlen", arg: 4, scope: !5078, file: !3, line: 14, type: !325)
!5089 = !DILocation(line: 14, column: 75, scope: !5078)
!5090 = !DILocation(line: 16, column: 9, scope: !5078)
!5091 = !DILocation(line: 16, column: 14, scope: !5078)
!5092 = !DILocation(line: 16, column: 2, scope: !5078)
!5093 = !DILocation(line: 16, column: 20, scope: !5078)
!5094 = !DILocation(line: 16, column: 25, scope: !5078)
!5095 = !DILocation(line: 17, column: 14, scope: !5078)
!5096 = !DILocation(line: 17, column: 2, scope: !5078)
!5097 = !DILocation(line: 17, column: 7, scope: !5078)
!5098 = !DILocation(line: 17, column: 12, scope: !5078)
!5099 = !DILocation(line: 18, column: 14, scope: !5078)
!5100 = !DILocation(line: 18, column: 2, scope: !5078)
!5101 = !DILocation(line: 18, column: 7, scope: !5078)
!5102 = !DILocation(line: 18, column: 12, scope: !5078)
!5103 = !DILocation(line: 19, column: 1, scope: !5078)
!5104 = distinct !DISubprogram(name: "si2168_cmd_execute", scope: !3, file: !3, line: 22, type: !5105, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!325, !375, !5081}
!5107 = !DILocalVariable(name: "m", arg: 1, scope: !5108, file: !5109, line: 363, type: !1770)
!5108 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5109, file: !5109, line: 363, type: !5110, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5109 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!478, !1770}
!5112 = !DILocation(line: 363, column: 74, scope: !5108, inlinedAt: !5113)
!5113 = distinct !DILocation(line: 44, column: 23, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 41, column: 17)
!5115 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 41, column: 6)
!5116 = !DILocalVariable(name: "client", arg: 1, scope: !5104, file: !3, line: 22, type: !375)
!5117 = !DILocation(line: 22, column: 50, scope: !5104)
!5118 = !DILocalVariable(name: "cmd", arg: 2, scope: !5104, file: !3, line: 22, type: !5081)
!5119 = !DILocation(line: 22, column: 77, scope: !5104)
!5120 = !DILocalVariable(name: "dev", scope: !5104, file: !3, line: 24, type: !4541)
!5121 = !DILocation(line: 24, column: 21, scope: !5104)
!5122 = !DILocation(line: 24, column: 46, scope: !5104)
!5123 = !DILocation(line: 24, column: 27, scope: !5104)
!5124 = !DILocalVariable(name: "ret", scope: !5104, file: !3, line: 25, type: !325)
!5125 = !DILocation(line: 25, column: 6, scope: !5104)
!5126 = !DILocalVariable(name: "timeout", scope: !5104, file: !3, line: 26, type: !478)
!5127 = !DILocation(line: 26, column: 16, scope: !5104)
!5128 = !DILocation(line: 28, column: 14, scope: !5104)
!5129 = !DILocation(line: 28, column: 19, scope: !5104)
!5130 = !DILocation(line: 28, column: 2, scope: !5104)
!5131 = !DILocation(line: 30, column: 6, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 30, column: 6)
!5133 = !DILocation(line: 30, column: 11, scope: !5132)
!5134 = !DILocation(line: 30, column: 6, scope: !5104)
!5135 = !DILocation(line: 32, column: 25, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 30, column: 17)
!5137 = !DILocation(line: 32, column: 33, scope: !5136)
!5138 = !DILocation(line: 32, column: 38, scope: !5136)
!5139 = !DILocation(line: 32, column: 44, scope: !5136)
!5140 = !DILocation(line: 32, column: 49, scope: !5136)
!5141 = !DILocation(line: 32, column: 9, scope: !5136)
!5142 = !DILocation(line: 32, column: 7, scope: !5136)
!5143 = !DILocation(line: 33, column: 7, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 33, column: 7)
!5145 = !DILocation(line: 33, column: 11, scope: !5144)
!5146 = !DILocation(line: 33, column: 7, scope: !5136)
!5147 = !DILocation(line: 34, column: 4, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 33, column: 16)
!5149 = !DILocation(line: 35, column: 14, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 35, column: 14)
!5151 = !DILocation(line: 35, column: 21, scope: !5150)
!5152 = !DILocation(line: 35, column: 26, scope: !5150)
!5153 = !DILocation(line: 35, column: 18, scope: !5150)
!5154 = !DILocation(line: 35, column: 14, scope: !5144)
!5155 = !DILocation(line: 36, column: 8, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 35, column: 32)
!5157 = !DILocation(line: 37, column: 4, scope: !5156)
!5158 = !DILocation(line: 39, column: 2, scope: !5136)
!5159 = !DILocation(line: 41, column: 6, scope: !5115)
!5160 = !DILocation(line: 41, column: 11, scope: !5115)
!5161 = !DILocation(line: 41, column: 6, scope: !5104)
!5162 = !DILocation(line: 44, column: 13, scope: !5114)
!5163 = !DILocation(line: 365, column: 27, scope: !5164, inlinedAt: !5113)
!5164 = distinct !DILexicalBlock(scope: !5108, file: !5109, line: 365, column: 6)
!5165 = !DILocation(line: 365, column: 6, scope: !5164, inlinedAt: !5113)
!5166 = !DILocation(line: 365, column: 6, scope: !5108, inlinedAt: !5113)
!5167 = !DILocation(line: 366, column: 12, scope: !5168, inlinedAt: !5113)
!5168 = distinct !DILexicalBlock(scope: !5169, file: !5109, line: 366, column: 7)
!5169 = distinct !DILexicalBlock(scope: !5164, file: !5109, line: 365, column: 31)
!5170 = !DILocation(line: 366, column: 14, scope: !5168, inlinedAt: !5113)
!5171 = !DILocation(line: 366, column: 7, scope: !5169, inlinedAt: !5113)
!5172 = !DILocation(line: 367, column: 4, scope: !5168, inlinedAt: !5113)
!5173 = !DILocation(line: 368, column: 28, scope: !5169, inlinedAt: !5113)
!5174 = !DILocation(line: 368, column: 10, scope: !5169, inlinedAt: !5113)
!5175 = !DILocation(line: 368, column: 3, scope: !5169, inlinedAt: !5113)
!5176 = !DILocation(line: 370, column: 29, scope: !5177, inlinedAt: !5113)
!5177 = distinct !DILexicalBlock(scope: !5164, file: !5109, line: 369, column: 9)
!5178 = !DILocation(line: 370, column: 10, scope: !5177, inlinedAt: !5113)
!5179 = !DILocation(line: 370, column: 3, scope: !5177, inlinedAt: !5113)
!5180 = !DILocation(line: 372, column: 1, scope: !5108, inlinedAt: !5113)
!5181 = !DILocation(line: 44, column: 21, scope: !5114)
!5182 = !DILocation(line: 44, column: 11, scope: !5114)
!5183 = !DILocation(line: 45, column: 3, scope: !5114)
!5184 = !DILocation(line: 45, column: 11, scope: !5114)
!5185 = !DILocation(line: 45, column: 10, scope: !5114)
!5186 = !DILocation(line: 46, column: 26, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 45, column: 41)
!5188 = !DILocation(line: 46, column: 34, scope: !5187)
!5189 = !DILocation(line: 46, column: 39, scope: !5187)
!5190 = !DILocation(line: 46, column: 45, scope: !5187)
!5191 = !DILocation(line: 46, column: 50, scope: !5187)
!5192 = !DILocation(line: 46, column: 10, scope: !5187)
!5193 = !DILocation(line: 46, column: 8, scope: !5187)
!5194 = !DILocation(line: 47, column: 8, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 47, column: 8)
!5196 = !DILocation(line: 47, column: 12, scope: !5195)
!5197 = !DILocation(line: 47, column: 8, scope: !5187)
!5198 = !DILocation(line: 48, column: 5, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 47, column: 17)
!5200 = !DILocation(line: 49, column: 15, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 49, column: 15)
!5202 = !DILocation(line: 49, column: 22, scope: !5201)
!5203 = !DILocation(line: 49, column: 27, scope: !5201)
!5204 = !DILocation(line: 49, column: 19, scope: !5201)
!5205 = !DILocation(line: 49, column: 15, scope: !5195)
!5206 = !DILocation(line: 50, column: 9, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 49, column: 33)
!5208 = !DILocation(line: 51, column: 5, scope: !5207)
!5209 = !DILocation(line: 55, column: 9, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 55, column: 8)
!5211 = !DILocation(line: 55, column: 14, scope: !5210)
!5212 = !DILocation(line: 55, column: 22, scope: !5210)
!5213 = !DILocation(line: 55, column: 28, scope: !5210)
!5214 = !DILocation(line: 55, column: 8, scope: !5187)
!5215 = !DILocation(line: 56, column: 5, scope: !5210)
!5216 = distinct !{!5216, !5183, !5217}
!5217 = !DILocation(line: 57, column: 3, scope: !5114)
!5218 = !DILocation(line: 64, column: 8, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 64, column: 7)
!5220 = !DILocation(line: 64, column: 13, scope: !5219)
!5221 = !DILocation(line: 64, column: 21, scope: !5219)
!5222 = !DILocation(line: 64, column: 27, scope: !5219)
!5223 = !DILocation(line: 64, column: 7, scope: !5114)
!5224 = !DILocation(line: 65, column: 8, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 64, column: 35)
!5226 = !DILocation(line: 66, column: 4, scope: !5225)
!5227 = !DILocation(line: 69, column: 10, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 69, column: 7)
!5229 = !DILocation(line: 69, column: 15, scope: !5228)
!5230 = !DILocation(line: 69, column: 23, scope: !5228)
!5231 = !DILocation(line: 69, column: 29, scope: !5228)
!5232 = !DILocation(line: 69, column: 7, scope: !5114)
!5233 = !DILocation(line: 70, column: 8, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 69, column: 38)
!5235 = !DILocation(line: 71, column: 4, scope: !5234)
!5236 = !DILocation(line: 73, column: 2, scope: !5114)
!5237 = !DILocation(line: 75, column: 16, scope: !5104)
!5238 = !DILocation(line: 75, column: 21, scope: !5104)
!5239 = !DILocation(line: 75, column: 2, scope: !5104)
!5240 = !DILocation(line: 76, column: 2, scope: !5104)
!5241 = !DILabel(scope: !5104, name: "err_mutex_unlock", file: !3, line: 77)
!5242 = !DILocation(line: 77, column: 1, scope: !5104)
!5243 = !DILocation(line: 78, column: 16, scope: !5104)
!5244 = !DILocation(line: 78, column: 21, scope: !5104)
!5245 = !DILocation(line: 78, column: 2, scope: !5104)
!5246 = !DILocation(line: 80, column: 9, scope: !5104)
!5247 = !DILocation(line: 80, column: 2, scope: !5104)
!5248 = !DILocation(line: 81, column: 1, scope: !5104)
!5249 = distinct !DISubprogram(name: "si2168_select", scope: !3, file: !3, line: 590, type: !4559, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5250 = !DILocalVariable(name: "muxc", arg: 1, scope: !5249, file: !3, line: 590, type: !4547)
!5251 = !DILocation(line: 590, column: 47, scope: !5249)
!5252 = !DILocalVariable(name: "chan", arg: 2, scope: !5249, file: !3, line: 590, type: !435)
!5253 = !DILocation(line: 590, column: 57, scope: !5249)
!5254 = !DILocalVariable(name: "client", scope: !5249, file: !3, line: 592, type: !375)
!5255 = !DILocation(line: 592, column: 21, scope: !5249)
!5256 = !DILocation(line: 592, column: 43, scope: !5249)
!5257 = !DILocation(line: 592, column: 30, scope: !5249)
!5258 = !DILocalVariable(name: "ret", scope: !5249, file: !3, line: 593, type: !325)
!5259 = !DILocation(line: 593, column: 6, scope: !5249)
!5260 = !DILocalVariable(name: "cmd", scope: !5249, file: !3, line: 594, type: !4582)
!5261 = !DILocation(line: 594, column: 20, scope: !5249)
!5262 = !DILocation(line: 597, column: 2, scope: !5249)
!5263 = !DILocation(line: 598, column: 27, scope: !5249)
!5264 = !DILocation(line: 598, column: 8, scope: !5249)
!5265 = !DILocation(line: 598, column: 6, scope: !5249)
!5266 = !DILocation(line: 599, column: 6, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 599, column: 6)
!5268 = !DILocation(line: 599, column: 6, scope: !5249)
!5269 = !DILocation(line: 600, column: 3, scope: !5267)
!5270 = !DILocation(line: 602, column: 2, scope: !5249)
!5271 = !DILabel(scope: !5249, name: "err", file: !3, line: 603)
!5272 = !DILocation(line: 603, column: 1, scope: !5249)
!5273 = !DILocation(line: 605, column: 9, scope: !5249)
!5274 = !DILocation(line: 605, column: 2, scope: !5249)
!5275 = !DILocation(line: 606, column: 1, scope: !5249)
!5276 = distinct !DISubprogram(name: "si2168_deselect", scope: !3, file: !3, line: 608, type: !4559, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5277 = !DILocalVariable(name: "muxc", arg: 1, scope: !5276, file: !3, line: 608, type: !4547)
!5278 = !DILocation(line: 608, column: 49, scope: !5276)
!5279 = !DILocalVariable(name: "chan", arg: 2, scope: !5276, file: !3, line: 608, type: !435)
!5280 = !DILocation(line: 608, column: 59, scope: !5276)
!5281 = !DILocalVariable(name: "client", scope: !5276, file: !3, line: 610, type: !375)
!5282 = !DILocation(line: 610, column: 21, scope: !5276)
!5283 = !DILocation(line: 610, column: 43, scope: !5276)
!5284 = !DILocation(line: 610, column: 30, scope: !5276)
!5285 = !DILocalVariable(name: "ret", scope: !5276, file: !3, line: 611, type: !325)
!5286 = !DILocation(line: 611, column: 6, scope: !5276)
!5287 = !DILocalVariable(name: "cmd", scope: !5276, file: !3, line: 612, type: !4582)
!5288 = !DILocation(line: 612, column: 20, scope: !5276)
!5289 = !DILocation(line: 615, column: 2, scope: !5276)
!5290 = !DILocation(line: 616, column: 27, scope: !5276)
!5291 = !DILocation(line: 616, column: 8, scope: !5276)
!5292 = !DILocation(line: 616, column: 6, scope: !5276)
!5293 = !DILocation(line: 617, column: 6, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 617, column: 6)
!5295 = !DILocation(line: 617, column: 6, scope: !5276)
!5296 = !DILocation(line: 618, column: 3, scope: !5294)
!5297 = !DILocation(line: 620, column: 2, scope: !5276)
!5298 = !DILabel(scope: !5276, name: "err", file: !3, line: 621)
!5299 = !DILocation(line: 621, column: 1, scope: !5276)
!5300 = !DILocation(line: 623, column: 9, scope: !5276)
!5301 = !DILocation(line: 623, column: 2, scope: !5276)
!5302 = !DILocation(line: 624, column: 1, scope: !5276)
!5303 = distinct !DISubprogram(name: "get_order", scope: !5304, file: !5304, line: 29, type: !5305, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5304 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!325, !478}
!5307 = !DILocalVariable(name: "x", arg: 1, scope: !5308, file: !5309, line: 366, type: !535)
!5308 = distinct !DISubprogram(name: "fls64", scope: !5309, file: !5309, line: 366, type: !5310, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5309 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5310 = !DISubroutineType(types: !5311)
!5311 = !{!325, !535}
!5312 = !DILocation(line: 366, column: 40, scope: !5308, inlinedAt: !5313)
!5313 = distinct !DILocation(line: 46, column: 9, scope: !5303)
!5314 = !DILocalVariable(name: "bitpos", scope: !5308, file: !5309, line: 368, type: !325)
!5315 = !DILocation(line: 368, column: 6, scope: !5308, inlinedAt: !5313)
!5316 = !DILocalVariable(name: "size", arg: 1, scope: !5303, file: !5304, line: 29, type: !478)
!5317 = !DILocation(line: 29, column: 63, scope: !5303)
!5318 = !DILocation(line: 31, column: 27, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5303, file: !5304, line: 31, column: 6)
!5320 = !DILocation(line: 31, column: 6, scope: !5319)
!5321 = !DILocation(line: 31, column: 6, scope: !5303)
!5322 = !DILocation(line: 32, column: 8, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5324, file: !5304, line: 32, column: 7)
!5324 = distinct !DILexicalBlock(scope: !5319, file: !5304, line: 31, column: 34)
!5325 = !DILocation(line: 32, column: 7, scope: !5324)
!5326 = !DILocation(line: 33, column: 4, scope: !5323)
!5327 = !DILocation(line: 35, column: 7, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5324, file: !5304, line: 35, column: 7)
!5329 = !DILocation(line: 35, column: 12, scope: !5328)
!5330 = !DILocation(line: 35, column: 7, scope: !5324)
!5331 = !DILocation(line: 36, column: 4, scope: !5328)
!5332 = !DILocation(line: 38, column: 10, scope: !5324)
!5333 = !DILocation(line: 38, column: 28, scope: !5324)
!5334 = !DILocation(line: 38, column: 41, scope: !5324)
!5335 = !DILocation(line: 38, column: 3, scope: !5324)
!5336 = !DILocation(line: 41, column: 6, scope: !5303)
!5337 = !DILocation(line: 42, column: 7, scope: !5303)
!5338 = !DILocation(line: 46, column: 15, scope: !5303)
!5339 = !DILocation(line: 374, column: 2, scope: !5308, inlinedAt: !5313)
!5340 = !DILocation(line: 376, column: 14, scope: !5308, inlinedAt: !5313)
!5341 = !{i32 260601}
!5342 = !DILocation(line: 377, column: 9, scope: !5308, inlinedAt: !5313)
!5343 = !DILocation(line: 377, column: 16, scope: !5308, inlinedAt: !5313)
!5344 = !DILocation(line: 46, column: 2, scope: !5303)
!5345 = !DILocation(line: 48, column: 1, scope: !5303)
!5346 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5347, file: !5347, line: 30, type: !5348, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5347 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!325, !534}
!5350 = !DILocation(line: 366, column: 40, scope: !5308, inlinedAt: !5351)
!5351 = distinct !DILocation(line: 32, column: 9, scope: !5346)
!5352 = !DILocation(line: 368, column: 6, scope: !5308, inlinedAt: !5351)
!5353 = !DILocalVariable(name: "n", arg: 1, scope: !5346, file: !5347, line: 30, type: !534)
!5354 = !DILocation(line: 30, column: 21, scope: !5346)
!5355 = !DILocation(line: 32, column: 15, scope: !5346)
!5356 = !DILocation(line: 374, column: 2, scope: !5308, inlinedAt: !5351)
!5357 = !DILocation(line: 376, column: 14, scope: !5308, inlinedAt: !5351)
!5358 = !DILocation(line: 377, column: 9, scope: !5308, inlinedAt: !5351)
!5359 = !DILocation(line: 377, column: 16, scope: !5308, inlinedAt: !5351)
!5360 = !DILocation(line: 32, column: 18, scope: !5346)
!5361 = !DILocation(line: 32, column: 2, scope: !5346)
!5362 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5363, file: !5363, line: 137, type: !5364, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5363 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5364 = !DISubroutineType(types: !5365)
!5365 = !{!321, !1267, !2196, !922, !319}
!5366 = !DILocalVariable(name: "s", arg: 1, scope: !5362, file: !5363, line: 137, type: !1267)
!5367 = !DILocation(line: 137, column: 54, scope: !5362)
!5368 = !DILocalVariable(name: "object", arg: 2, scope: !5362, file: !5363, line: 137, type: !2196)
!5369 = !DILocation(line: 137, column: 69, scope: !5362)
!5370 = !DILocalVariable(name: "size", arg: 3, scope: !5362, file: !5363, line: 138, type: !922)
!5371 = !DILocation(line: 138, column: 12, scope: !5362)
!5372 = !DILocalVariable(name: "flags", arg: 4, scope: !5362, file: !5363, line: 138, type: !319)
!5373 = !DILocation(line: 138, column: 24, scope: !5362)
!5374 = !DILocation(line: 140, column: 17, scope: !5362)
!5375 = !DILocation(line: 140, column: 2, scope: !5362)
!5376 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !60, file: !60, line: 660, type: !5377, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5377 = !DISubroutineType(types: !5378)
!5378 = !{null, !3490, !321}
!5379 = !DILocalVariable(name: "dev", arg: 1, scope: !5376, file: !60, line: 660, type: !3490)
!5380 = !DILocation(line: 660, column: 51, scope: !5376)
!5381 = !DILocalVariable(name: "data", arg: 2, scope: !5376, file: !60, line: 660, type: !321)
!5382 = !DILocation(line: 660, column: 62, scope: !5376)
!5383 = !DILocation(line: 662, column: 21, scope: !5376)
!5384 = !DILocation(line: 662, column: 2, scope: !5376)
!5385 = !DILocation(line: 662, column: 7, scope: !5376)
!5386 = !DILocation(line: 662, column: 19, scope: !5376)
!5387 = !DILocation(line: 663, column: 1, scope: !5376)
!5388 = distinct !DISubprogram(name: "i2c_get_clientdata", scope: !95, file: !95, line: 351, type: !5389, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{!321, !5391}
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!5393 = !DILocalVariable(name: "client", arg: 1, scope: !5388, file: !95, line: 351, type: !5391)
!5394 = !DILocation(line: 351, column: 65, scope: !5388)
!5395 = !DILocation(line: 353, column: 26, scope: !5388)
!5396 = !DILocation(line: 353, column: 34, scope: !5388)
!5397 = !DILocation(line: 353, column: 9, scope: !5388)
!5398 = !DILocation(line: 353, column: 2, scope: !5388)
!5399 = distinct !DISubprogram(name: "i2c_master_send", scope: !95, file: !95, line: 102, type: !5400, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{!325, !5391, !805, !325}
!5402 = !DILocalVariable(name: "client", arg: 1, scope: !5399, file: !95, line: 102, type: !5391)
!5403 = !DILocation(line: 102, column: 60, scope: !5399)
!5404 = !DILocalVariable(name: "buf", arg: 2, scope: !5399, file: !95, line: 103, type: !805)
!5405 = !DILocation(line: 103, column: 19, scope: !5399)
!5406 = !DILocalVariable(name: "count", arg: 3, scope: !5399, file: !95, line: 103, type: !325)
!5407 = !DILocation(line: 103, column: 28, scope: !5399)
!5408 = !DILocation(line: 105, column: 35, scope: !5399)
!5409 = !DILocation(line: 105, column: 51, scope: !5399)
!5410 = !DILocation(line: 105, column: 56, scope: !5399)
!5411 = !DILocation(line: 105, column: 9, scope: !5399)
!5412 = !DILocation(line: 105, column: 2, scope: !5399)
!5413 = distinct !DISubprogram(name: "i2c_master_recv", scope: !95, file: !95, line: 72, type: !5414, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!325, !5391, !323, !325}
!5416 = !DILocalVariable(name: "client", arg: 1, scope: !5413, file: !95, line: 72, type: !5391)
!5417 = !DILocation(line: 72, column: 60, scope: !5413)
!5418 = !DILocalVariable(name: "buf", arg: 2, scope: !5413, file: !95, line: 73, type: !323)
!5419 = !DILocation(line: 73, column: 13, scope: !5413)
!5420 = !DILocalVariable(name: "count", arg: 3, scope: !5413, file: !95, line: 73, type: !325)
!5421 = !DILocation(line: 73, column: 22, scope: !5413)
!5422 = !DILocation(line: 75, column: 35, scope: !5413)
!5423 = !DILocation(line: 75, column: 43, scope: !5413)
!5424 = !DILocation(line: 75, column: 48, scope: !5413)
!5425 = !DILocation(line: 75, column: 9, scope: !5413)
!5426 = !DILocation(line: 75, column: 2, scope: !5413)
!5427 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !60, file: !60, line: 655, type: !5428, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5428 = !DISubroutineType(types: !5429)
!5429 = !{!321, !3820}
!5430 = !DILocalVariable(name: "dev", arg: 1, scope: !5427, file: !60, line: 655, type: !3820)
!5431 = !DILocation(line: 655, column: 58, scope: !5427)
!5432 = !DILocation(line: 657, column: 9, scope: !5427)
!5433 = !DILocation(line: 657, column: 14, scope: !5427)
!5434 = !DILocation(line: 657, column: 2, scope: !5427)
!5435 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5109, file: !5109, line: 308, type: !5110, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5436 = !DILocalVariable(name: "m", arg: 1, scope: !5435, file: !5109, line: 308, type: !1770)
!5437 = !DILocation(line: 308, column: 66, scope: !5435)
!5438 = !DILocation(line: 310, column: 10, scope: !5435)
!5439 = !DILocation(line: 310, column: 12, scope: !5435)
!5440 = !DILocation(line: 310, column: 34, scope: !5435)
!5441 = !DILocation(line: 310, column: 39, scope: !5435)
!5442 = !DILocation(line: 310, column: 2, scope: !5435)
!5443 = distinct !DISubprogram(name: "i2c_mux_priv", scope: !4549, file: !4549, line: 46, type: !5444, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{!321, !4547}
!5446 = !DILocalVariable(name: "muxc", arg: 1, scope: !5443, file: !4549, line: 46, type: !4547)
!5447 = !DILocation(line: 46, column: 55, scope: !5443)
!5448 = !DILocation(line: 48, column: 9, scope: !5443)
!5449 = !DILocation(line: 48, column: 15, scope: !5443)
!5450 = !DILocation(line: 48, column: 2, scope: !5443)
!5451 = distinct !DISubprogram(name: "si2168_init", scope: !3, file: !3, line: 408, type: !4332, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5452 = !DILocalVariable(name: "fe", arg: 1, scope: !5451, file: !3, line: 408, type: !4205)
!5453 = !DILocation(line: 408, column: 45, scope: !5451)
!5454 = !DILocalVariable(name: "client", scope: !5451, file: !3, line: 410, type: !375)
!5455 = !DILocation(line: 410, column: 21, scope: !5451)
!5456 = !DILocation(line: 410, column: 30, scope: !5451)
!5457 = !DILocation(line: 410, column: 34, scope: !5451)
!5458 = !DILocalVariable(name: "dev", scope: !5451, file: !3, line: 411, type: !4541)
!5459 = !DILocation(line: 411, column: 21, scope: !5451)
!5460 = !DILocation(line: 411, column: 46, scope: !5451)
!5461 = !DILocation(line: 411, column: 27, scope: !5451)
!5462 = !DILocalVariable(name: "c", scope: !5451, file: !3, line: 412, type: !4365)
!5463 = !DILocation(line: 412, column: 34, scope: !5451)
!5464 = !DILocation(line: 412, column: 39, scope: !5451)
!5465 = !DILocation(line: 412, column: 43, scope: !5451)
!5466 = !DILocalVariable(name: "ret", scope: !5451, file: !3, line: 413, type: !325)
!5467 = !DILocation(line: 413, column: 6, scope: !5451)
!5468 = !DILocalVariable(name: "len", scope: !5451, file: !3, line: 413, type: !325)
!5469 = !DILocation(line: 413, column: 11, scope: !5451)
!5470 = !DILocalVariable(name: "remaining", scope: !5451, file: !3, line: 413, type: !325)
!5471 = !DILocation(line: 413, column: 16, scope: !5451)
!5472 = !DILocalVariable(name: "fw", scope: !5451, file: !3, line: 414, type: !5473)
!5473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5474, size: 64)
!5474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5475)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !5476, line: 12, size: 192, elements: !5477)
!5476 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!5477 = !{!5478, !5479, !5480}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5475, file: !5476, line: 13, baseType: !922, size: 64)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5475, file: !5476, line: 14, baseType: !4339, size: 64, offset: 64)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5475, file: !5476, line: 17, baseType: !321, size: 64, offset: 128)
!5481 = !DILocation(line: 414, column: 25, scope: !5451)
!5482 = !DILocalVariable(name: "cmd", scope: !5451, file: !3, line: 415, type: !4582)
!5483 = !DILocation(line: 415, column: 20, scope: !5451)
!5484 = !DILocation(line: 420, column: 2, scope: !5451)
!5485 = !DILocation(line: 422, column: 27, scope: !5451)
!5486 = !DILocation(line: 422, column: 8, scope: !5451)
!5487 = !DILocation(line: 422, column: 6, scope: !5451)
!5488 = !DILocation(line: 423, column: 6, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 423, column: 6)
!5490 = !DILocation(line: 423, column: 6, scope: !5451)
!5491 = !DILocation(line: 424, column: 3, scope: !5489)
!5492 = !DILocation(line: 426, column: 6, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 426, column: 6)
!5494 = !DILocation(line: 426, column: 11, scope: !5493)
!5495 = !DILocation(line: 426, column: 6, scope: !5451)
!5496 = !DILocation(line: 428, column: 3, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 426, column: 17)
!5498 = !DILocation(line: 429, column: 28, scope: !5497)
!5499 = !DILocation(line: 429, column: 9, scope: !5497)
!5500 = !DILocation(line: 429, column: 7, scope: !5497)
!5501 = !DILocation(line: 430, column: 7, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 430, column: 7)
!5503 = !DILocation(line: 430, column: 7, scope: !5497)
!5504 = !DILocation(line: 431, column: 4, scope: !5502)
!5505 = !DILocation(line: 433, column: 3, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 433, column: 3)
!5507 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 433, column: 3)
!5508 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 433, column: 3)
!5509 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 433, column: 3)
!5510 = !DILocation(line: 434, column: 3, scope: !5497)
!5511 = !DILocation(line: 435, column: 28, scope: !5497)
!5512 = !DILocation(line: 435, column: 9, scope: !5497)
!5513 = !DILocation(line: 435, column: 7, scope: !5497)
!5514 = !DILocation(line: 436, column: 7, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 436, column: 7)
!5516 = !DILocation(line: 436, column: 7, scope: !5497)
!5517 = !DILocation(line: 437, column: 4, scope: !5515)
!5518 = !DILocation(line: 439, column: 3, scope: !5497)
!5519 = !DILocation(line: 443, column: 2, scope: !5451)
!5520 = !DILocation(line: 444, column: 27, scope: !5451)
!5521 = !DILocation(line: 444, column: 8, scope: !5451)
!5522 = !DILocation(line: 444, column: 6, scope: !5451)
!5523 = !DILocation(line: 445, column: 6, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 445, column: 6)
!5525 = !DILocation(line: 445, column: 6, scope: !5451)
!5526 = !DILocation(line: 446, column: 3, scope: !5524)
!5527 = !DILocation(line: 449, column: 30, scope: !5451)
!5528 = !DILocation(line: 449, column: 35, scope: !5451)
!5529 = !DILocation(line: 449, column: 51, scope: !5451)
!5530 = !DILocation(line: 449, column: 59, scope: !5451)
!5531 = !DILocation(line: 449, column: 8, scope: !5451)
!5532 = !DILocation(line: 449, column: 6, scope: !5451)
!5533 = !DILocation(line: 450, column: 6, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 450, column: 6)
!5535 = !DILocation(line: 450, column: 6, scope: !5451)
!5536 = !DILocation(line: 452, column: 7, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 452, column: 7)
!5538 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 450, column: 11)
!5539 = !DILocation(line: 452, column: 12, scope: !5537)
!5540 = !DILocation(line: 452, column: 20, scope: !5537)
!5541 = !DILocation(line: 452, column: 7, scope: !5538)
!5542 = !DILocation(line: 453, column: 4, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 452, column: 43)
!5544 = !DILocation(line: 453, column: 9, scope: !5543)
!5545 = !DILocation(line: 453, column: 23, scope: !5543)
!5546 = !DILocation(line: 454, column: 32, scope: !5543)
!5547 = !DILocation(line: 454, column: 37, scope: !5543)
!5548 = !DILocation(line: 455, column: 14, scope: !5543)
!5549 = !DILocation(line: 455, column: 22, scope: !5543)
!5550 = !DILocation(line: 454, column: 10, scope: !5543)
!5551 = !DILocation(line: 454, column: 8, scope: !5543)
!5552 = !DILocation(line: 456, column: 3, scope: !5543)
!5553 = !DILocation(line: 458, column: 7, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 458, column: 7)
!5555 = !DILocation(line: 458, column: 11, scope: !5554)
!5556 = !DILocation(line: 458, column: 7, scope: !5538)
!5557 = !DILocation(line: 459, column: 4, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 458, column: 17)
!5559 = !DILocation(line: 462, column: 3, scope: !5558)
!5560 = !DILocation(line: 463, column: 4, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 462, column: 10)
!5562 = !DILocation(line: 466, column: 4, scope: !5561)
!5563 = !DILocation(line: 468, column: 2, scope: !5538)
!5564 = !DILocation(line: 470, column: 2, scope: !5451)
!5565 = !DILocation(line: 473, column: 7, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 473, column: 6)
!5567 = !DILocation(line: 473, column: 11, scope: !5566)
!5568 = !DILocation(line: 473, column: 16, scope: !5566)
!5569 = !DILocation(line: 473, column: 21, scope: !5566)
!5570 = !DILocation(line: 473, column: 27, scope: !5566)
!5571 = !DILocation(line: 473, column: 31, scope: !5566)
!5572 = !DILocation(line: 473, column: 35, scope: !5566)
!5573 = !DILocation(line: 473, column: 43, scope: !5566)
!5574 = !DILocation(line: 473, column: 6, scope: !5451)
!5575 = !DILocation(line: 475, column: 20, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 475, column: 3)
!5577 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 473, column: 49)
!5578 = !DILocation(line: 475, column: 24, scope: !5576)
!5579 = !DILocation(line: 475, column: 18, scope: !5576)
!5580 = !DILocation(line: 475, column: 8, scope: !5576)
!5581 = !DILocation(line: 475, column: 30, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 475, column: 3)
!5583 = !DILocation(line: 475, column: 40, scope: !5582)
!5584 = !DILocation(line: 475, column: 3, scope: !5576)
!5585 = !DILocation(line: 476, column: 10, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 475, column: 62)
!5587 = !DILocation(line: 476, column: 14, scope: !5586)
!5588 = !DILocation(line: 476, column: 19, scope: !5586)
!5589 = !DILocation(line: 476, column: 23, scope: !5586)
!5590 = !DILocation(line: 476, column: 30, scope: !5586)
!5591 = !DILocation(line: 476, column: 28, scope: !5586)
!5592 = !DILocation(line: 476, column: 8, scope: !5586)
!5593 = !DILocation(line: 477, column: 8, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 477, column: 8)
!5595 = !DILocation(line: 477, column: 12, scope: !5594)
!5596 = !DILocation(line: 477, column: 8, scope: !5586)
!5597 = !DILocation(line: 478, column: 9, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 477, column: 29)
!5599 = !DILocation(line: 479, column: 5, scope: !5598)
!5600 = !DILocation(line: 481, column: 20, scope: !5586)
!5601 = !DILocation(line: 481, column: 24, scope: !5586)
!5602 = !DILocation(line: 481, column: 30, scope: !5586)
!5603 = !DILocation(line: 481, column: 34, scope: !5586)
!5604 = !DILocation(line: 481, column: 41, scope: !5586)
!5605 = !DILocation(line: 481, column: 39, scope: !5586)
!5606 = !DILocation(line: 481, column: 52, scope: !5586)
!5607 = !DILocation(line: 482, column: 6, scope: !5586)
!5608 = !DILocation(line: 481, column: 4, scope: !5586)
!5609 = !DILocation(line: 483, column: 29, scope: !5586)
!5610 = !DILocation(line: 483, column: 10, scope: !5586)
!5611 = !DILocation(line: 483, column: 8, scope: !5586)
!5612 = !DILocation(line: 484, column: 8, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 484, column: 8)
!5614 = !DILocation(line: 484, column: 8, scope: !5586)
!5615 = !DILocation(line: 485, column: 5, scope: !5613)
!5616 = !DILocation(line: 486, column: 3, scope: !5586)
!5617 = !DILocation(line: 475, column: 55, scope: !5582)
!5618 = !DILocation(line: 475, column: 3, scope: !5582)
!5619 = distinct !{!5619, !5584, !5620}
!5620 = !DILocation(line: 486, column: 3, scope: !5576)
!5621 = !DILocation(line: 487, column: 2, scope: !5577)
!5622 = !DILocation(line: 487, column: 13, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 487, column: 13)
!5624 = !DILocation(line: 487, column: 17, scope: !5623)
!5625 = !DILocation(line: 487, column: 22, scope: !5623)
!5626 = !DILocation(line: 487, column: 26, scope: !5623)
!5627 = !DILocation(line: 487, column: 13, scope: !5566)
!5628 = !DILocation(line: 489, column: 20, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 489, column: 3)
!5630 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 487, column: 32)
!5631 = !DILocation(line: 489, column: 24, scope: !5629)
!5632 = !DILocation(line: 489, column: 18, scope: !5629)
!5633 = !DILocation(line: 489, column: 8, scope: !5629)
!5634 = !DILocation(line: 489, column: 30, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 489, column: 3)
!5636 = !DILocation(line: 489, column: 40, scope: !5635)
!5637 = !DILocation(line: 489, column: 3, scope: !5629)
!5638 = !DILocation(line: 490, column: 20, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5635, file: !3, line: 489, column: 61)
!5640 = !DILocation(line: 490, column: 24, scope: !5639)
!5641 = !DILocation(line: 490, column: 29, scope: !5639)
!5642 = !DILocation(line: 490, column: 33, scope: !5639)
!5643 = !DILocation(line: 490, column: 40, scope: !5639)
!5644 = !DILocation(line: 490, column: 38, scope: !5639)
!5645 = !DILocation(line: 490, column: 4, scope: !5639)
!5646 = !DILocation(line: 491, column: 29, scope: !5639)
!5647 = !DILocation(line: 491, column: 10, scope: !5639)
!5648 = !DILocation(line: 491, column: 8, scope: !5639)
!5649 = !DILocation(line: 492, column: 8, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 492, column: 8)
!5651 = !DILocation(line: 492, column: 8, scope: !5639)
!5652 = !DILocation(line: 493, column: 5, scope: !5650)
!5653 = !DILocation(line: 494, column: 3, scope: !5639)
!5654 = !DILocation(line: 489, column: 55, scope: !5635)
!5655 = !DILocation(line: 489, column: 3, scope: !5635)
!5656 = distinct !{!5656, !5637, !5657}
!5657 = !DILocation(line: 494, column: 3, scope: !5629)
!5658 = !DILocation(line: 495, column: 2, scope: !5630)
!5659 = !DILocation(line: 497, column: 7, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 495, column: 9)
!5661 = !DILocation(line: 500, column: 6, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 500, column: 6)
!5663 = !DILocation(line: 500, column: 6, scope: !5451)
!5664 = !DILocation(line: 501, column: 3, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 500, column: 11)
!5666 = !DILocation(line: 502, column: 3, scope: !5665)
!5667 = !DILocation(line: 505, column: 19, scope: !5451)
!5668 = !DILocation(line: 505, column: 2, scope: !5451)
!5669 = !DILocation(line: 507, column: 2, scope: !5451)
!5670 = !DILocation(line: 508, column: 27, scope: !5451)
!5671 = !DILocation(line: 508, column: 8, scope: !5451)
!5672 = !DILocation(line: 508, column: 6, scope: !5451)
!5673 = !DILocation(line: 509, column: 6, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 509, column: 6)
!5675 = !DILocation(line: 509, column: 6, scope: !5451)
!5676 = !DILocation(line: 510, column: 3, scope: !5674)
!5677 = !DILocation(line: 513, column: 2, scope: !5451)
!5678 = !DILocation(line: 514, column: 27, scope: !5451)
!5679 = !DILocation(line: 514, column: 8, scope: !5451)
!5680 = !DILocation(line: 514, column: 6, scope: !5451)
!5681 = !DILocation(line: 515, column: 6, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 515, column: 6)
!5683 = !DILocation(line: 515, column: 6, scope: !5451)
!5684 = !DILocation(line: 516, column: 3, scope: !5682)
!5685 = !DILocation(line: 518, column: 22, scope: !5451)
!5686 = !DILocation(line: 518, column: 18, scope: !5451)
!5687 = !DILocation(line: 518, column: 30, scope: !5451)
!5688 = !DILocation(line: 518, column: 37, scope: !5451)
!5689 = !DILocation(line: 518, column: 50, scope: !5451)
!5690 = !DILocation(line: 518, column: 46, scope: !5451)
!5691 = !DILocation(line: 518, column: 58, scope: !5451)
!5692 = !DILocation(line: 518, column: 65, scope: !5451)
!5693 = !DILocation(line: 518, column: 43, scope: !5451)
!5694 = !DILocation(line: 519, column: 15, scope: !5451)
!5695 = !DILocation(line: 519, column: 11, scope: !5451)
!5696 = !DILocation(line: 519, column: 23, scope: !5451)
!5697 = !DILocation(line: 519, column: 30, scope: !5451)
!5698 = !DILocation(line: 518, column: 71, scope: !5451)
!5699 = !DILocation(line: 519, column: 42, scope: !5451)
!5700 = !DILocation(line: 519, column: 38, scope: !5451)
!5701 = !DILocation(line: 519, column: 37, scope: !5451)
!5702 = !DILocation(line: 519, column: 51, scope: !5451)
!5703 = !DILocation(line: 519, column: 35, scope: !5451)
!5704 = !DILocation(line: 518, column: 2, scope: !5451)
!5705 = !DILocation(line: 518, column: 7, scope: !5451)
!5706 = !DILocation(line: 518, column: 15, scope: !5451)
!5707 = !DILocation(line: 520, column: 2, scope: !5451)
!5708 = !DILocation(line: 525, column: 27, scope: !5451)
!5709 = !DILocation(line: 525, column: 8, scope: !5451)
!5710 = !DILocation(line: 525, column: 6, scope: !5451)
!5711 = !DILocation(line: 526, column: 6, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 526, column: 6)
!5713 = !DILocation(line: 526, column: 6, scope: !5451)
!5714 = !DILocation(line: 527, column: 3, scope: !5712)
!5715 = !DILocation(line: 529, column: 2, scope: !5451)
!5716 = !DILocation(line: 529, column: 7, scope: !5451)
!5717 = !DILocation(line: 529, column: 12, scope: !5451)
!5718 = !DILabel(scope: !5451, name: "warm", file: !3, line: 530)
!5719 = !DILocation(line: 530, column: 1, scope: !5451)
!5720 = !DILocation(line: 532, column: 2, scope: !5451)
!5721 = !DILocation(line: 532, column: 5, scope: !5451)
!5722 = !DILocation(line: 532, column: 9, scope: !5451)
!5723 = !DILocation(line: 532, column: 13, scope: !5451)
!5724 = !DILocation(line: 533, column: 2, scope: !5451)
!5725 = !DILocation(line: 533, column: 5, scope: !5451)
!5726 = !DILocation(line: 533, column: 9, scope: !5451)
!5727 = !DILocation(line: 533, column: 17, scope: !5451)
!5728 = !DILocation(line: 533, column: 23, scope: !5451)
!5729 = !DILocation(line: 534, column: 2, scope: !5451)
!5730 = !DILocation(line: 534, column: 5, scope: !5451)
!5731 = !DILocation(line: 534, column: 20, scope: !5451)
!5732 = !DILocation(line: 534, column: 24, scope: !5451)
!5733 = !DILocation(line: 535, column: 2, scope: !5451)
!5734 = !DILocation(line: 535, column: 5, scope: !5451)
!5735 = !DILocation(line: 535, column: 20, scope: !5451)
!5736 = !DILocation(line: 535, column: 28, scope: !5451)
!5737 = !DILocation(line: 535, column: 34, scope: !5451)
!5738 = !DILocation(line: 536, column: 2, scope: !5451)
!5739 = !DILocation(line: 536, column: 5, scope: !5451)
!5740 = !DILocation(line: 536, column: 20, scope: !5451)
!5741 = !DILocation(line: 536, column: 24, scope: !5451)
!5742 = !DILocation(line: 537, column: 2, scope: !5451)
!5743 = !DILocation(line: 537, column: 5, scope: !5451)
!5744 = !DILocation(line: 537, column: 20, scope: !5451)
!5745 = !DILocation(line: 537, column: 28, scope: !5451)
!5746 = !DILocation(line: 537, column: 34, scope: !5451)
!5747 = !DILocation(line: 538, column: 2, scope: !5451)
!5748 = !DILocation(line: 538, column: 5, scope: !5451)
!5749 = !DILocation(line: 538, column: 17, scope: !5451)
!5750 = !DILocation(line: 538, column: 21, scope: !5451)
!5751 = !DILocation(line: 539, column: 2, scope: !5451)
!5752 = !DILocation(line: 539, column: 5, scope: !5451)
!5753 = !DILocation(line: 539, column: 17, scope: !5451)
!5754 = !DILocation(line: 539, column: 25, scope: !5451)
!5755 = !DILocation(line: 539, column: 31, scope: !5451)
!5756 = !DILocation(line: 541, column: 2, scope: !5451)
!5757 = !DILocation(line: 541, column: 7, scope: !5451)
!5758 = !DILocation(line: 541, column: 14, scope: !5451)
!5759 = !DILocation(line: 543, column: 2, scope: !5451)
!5760 = !DILabel(scope: !5451, name: "err_release_firmware", file: !3, line: 544)
!5761 = !DILocation(line: 544, column: 1, scope: !5451)
!5762 = !DILocation(line: 545, column: 19, scope: !5451)
!5763 = !DILocation(line: 545, column: 2, scope: !5451)
!5764 = !DILabel(scope: !5451, name: "err", file: !3, line: 546)
!5765 = !DILocation(line: 546, column: 1, scope: !5451)
!5766 = !DILocation(line: 548, column: 9, scope: !5451)
!5767 = !DILocation(line: 548, column: 2, scope: !5451)
!5768 = !DILocation(line: 549, column: 1, scope: !5451)
!5769 = distinct !DISubprogram(name: "si2168_sleep", scope: !3, file: !3, line: 551, type: !4332, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5770 = !DILocalVariable(name: "fe", arg: 1, scope: !5769, file: !3, line: 551, type: !4205)
!5771 = !DILocation(line: 551, column: 46, scope: !5769)
!5772 = !DILocalVariable(name: "client", scope: !5769, file: !3, line: 553, type: !375)
!5773 = !DILocation(line: 553, column: 21, scope: !5769)
!5774 = !DILocation(line: 553, column: 30, scope: !5769)
!5775 = !DILocation(line: 553, column: 34, scope: !5769)
!5776 = !DILocalVariable(name: "dev", scope: !5769, file: !3, line: 554, type: !4541)
!5777 = !DILocation(line: 554, column: 21, scope: !5769)
!5778 = !DILocation(line: 554, column: 46, scope: !5769)
!5779 = !DILocation(line: 554, column: 27, scope: !5769)
!5780 = !DILocalVariable(name: "ret", scope: !5769, file: !3, line: 555, type: !325)
!5781 = !DILocation(line: 555, column: 6, scope: !5769)
!5782 = !DILocalVariable(name: "cmd", scope: !5769, file: !3, line: 556, type: !4582)
!5783 = !DILocation(line: 556, column: 20, scope: !5769)
!5784 = !DILocation(line: 560, column: 2, scope: !5769)
!5785 = !DILocation(line: 560, column: 7, scope: !5769)
!5786 = !DILocation(line: 560, column: 14, scope: !5769)
!5787 = !DILocation(line: 563, column: 27, scope: !5769)
!5788 = !DILocation(line: 563, column: 8, scope: !5769)
!5789 = !DILocation(line: 563, column: 6, scope: !5769)
!5790 = !DILocation(line: 564, column: 6, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 564, column: 6)
!5792 = !DILocation(line: 564, column: 6, scope: !5769)
!5793 = !DILocation(line: 565, column: 3, scope: !5791)
!5794 = !DILocation(line: 568, column: 6, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 568, column: 6)
!5796 = !DILocation(line: 568, column: 11, scope: !5795)
!5797 = !DILocation(line: 568, column: 19, scope: !5795)
!5798 = !DILocation(line: 568, column: 6, scope: !5769)
!5799 = !DILocation(line: 569, column: 3, scope: !5795)
!5800 = !DILocation(line: 569, column: 8, scope: !5795)
!5801 = !DILocation(line: 569, column: 13, scope: !5795)
!5802 = !DILocation(line: 571, column: 2, scope: !5769)
!5803 = !DILocation(line: 572, column: 27, scope: !5769)
!5804 = !DILocation(line: 572, column: 8, scope: !5769)
!5805 = !DILocation(line: 572, column: 6, scope: !5769)
!5806 = !DILocation(line: 573, column: 6, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 573, column: 6)
!5808 = !DILocation(line: 573, column: 6, scope: !5769)
!5809 = !DILocation(line: 574, column: 3, scope: !5807)
!5810 = !DILocation(line: 576, column: 2, scope: !5769)
!5811 = !DILabel(scope: !5769, name: "err", file: !3, line: 577)
!5812 = !DILocation(line: 577, column: 1, scope: !5769)
!5813 = !DILocation(line: 579, column: 9, scope: !5769)
!5814 = !DILocation(line: 579, column: 2, scope: !5769)
!5815 = !DILocation(line: 580, column: 1, scope: !5769)
!5816 = distinct !DISubprogram(name: "si2168_set_frontend", scope: !3, file: !3, line: 230, type: !4332, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!5817 = !DILocalVariable(name: "fe", arg: 1, scope: !5816, file: !3, line: 230, type: !4205)
!5818 = !DILocation(line: 230, column: 53, scope: !5816)
!5819 = !DILocalVariable(name: "client", scope: !5816, file: !3, line: 232, type: !375)
!5820 = !DILocation(line: 232, column: 21, scope: !5816)
!5821 = !DILocation(line: 232, column: 30, scope: !5816)
!5822 = !DILocation(line: 232, column: 34, scope: !5816)
!5823 = !DILocalVariable(name: "dev", scope: !5816, file: !3, line: 233, type: !4541)
!5824 = !DILocation(line: 233, column: 21, scope: !5816)
!5825 = !DILocation(line: 233, column: 46, scope: !5816)
!5826 = !DILocation(line: 233, column: 27, scope: !5816)
!5827 = !DILocalVariable(name: "c", scope: !5816, file: !3, line: 234, type: !4365)
!5828 = !DILocation(line: 234, column: 34, scope: !5816)
!5829 = !DILocation(line: 234, column: 39, scope: !5816)
!5830 = !DILocation(line: 234, column: 43, scope: !5816)
!5831 = !DILocalVariable(name: "ret", scope: !5816, file: !3, line: 235, type: !325)
!5832 = !DILocation(line: 235, column: 6, scope: !5816)
!5833 = !DILocalVariable(name: "cmd", scope: !5816, file: !3, line: 236, type: !4582)
!5834 = !DILocation(line: 236, column: 20, scope: !5816)
!5835 = !DILocalVariable(name: "bandwidth", scope: !5816, file: !3, line: 237, type: !420)
!5836 = !DILocation(line: 237, column: 5, scope: !5816)
!5837 = !DILocalVariable(name: "delivery_system", scope: !5816, file: !3, line: 237, type: !420)
!5838 = !DILocation(line: 237, column: 16, scope: !5816)
!5839 = !DILocation(line: 245, column: 7, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 245, column: 6)
!5841 = !DILocation(line: 245, column: 12, scope: !5840)
!5842 = !DILocation(line: 245, column: 6, scope: !5816)
!5843 = !DILocation(line: 246, column: 7, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 245, column: 20)
!5845 = !DILocation(line: 247, column: 3, scope: !5844)
!5846 = !DILocation(line: 250, column: 10, scope: !5816)
!5847 = !DILocation(line: 250, column: 13, scope: !5816)
!5848 = !DILocation(line: 250, column: 2, scope: !5816)
!5849 = !DILocation(line: 252, column: 19, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 250, column: 30)
!5851 = !DILocation(line: 253, column: 3, scope: !5850)
!5852 = !DILocation(line: 255, column: 19, scope: !5850)
!5853 = !DILocation(line: 256, column: 3, scope: !5850)
!5854 = !DILocation(line: 258, column: 19, scope: !5850)
!5855 = !DILocation(line: 259, column: 3, scope: !5850)
!5856 = !DILocation(line: 261, column: 7, scope: !5850)
!5857 = !DILocation(line: 262, column: 3, scope: !5850)
!5858 = !DILocation(line: 265, column: 6, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 265, column: 6)
!5860 = !DILocation(line: 265, column: 9, scope: !5859)
!5861 = !DILocation(line: 265, column: 22, scope: !5859)
!5862 = !DILocation(line: 265, column: 6, scope: !5816)
!5863 = !DILocation(line: 266, column: 7, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 265, column: 28)
!5865 = !DILocation(line: 267, column: 3, scope: !5864)
!5866 = !DILocation(line: 268, column: 13, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 268, column: 13)
!5868 = !DILocation(line: 268, column: 16, scope: !5867)
!5869 = !DILocation(line: 268, column: 29, scope: !5867)
!5870 = !DILocation(line: 268, column: 13, scope: !5859)
!5871 = !DILocation(line: 269, column: 13, scope: !5867)
!5872 = !DILocation(line: 269, column: 3, scope: !5867)
!5873 = !DILocation(line: 270, column: 11, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 270, column: 11)
!5875 = !DILocation(line: 270, column: 14, scope: !5874)
!5876 = !DILocation(line: 270, column: 27, scope: !5874)
!5877 = !DILocation(line: 270, column: 11, scope: !5867)
!5878 = !DILocation(line: 271, column: 13, scope: !5874)
!5879 = !DILocation(line: 271, column: 3, scope: !5874)
!5880 = !DILocation(line: 272, column: 11, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 272, column: 11)
!5882 = !DILocation(line: 272, column: 14, scope: !5881)
!5883 = !DILocation(line: 272, column: 27, scope: !5881)
!5884 = !DILocation(line: 272, column: 11, scope: !5874)
!5885 = !DILocation(line: 273, column: 13, scope: !5881)
!5886 = !DILocation(line: 273, column: 3, scope: !5881)
!5887 = !DILocation(line: 274, column: 11, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 274, column: 11)
!5889 = !DILocation(line: 274, column: 14, scope: !5888)
!5890 = !DILocation(line: 274, column: 27, scope: !5888)
!5891 = !DILocation(line: 274, column: 11, scope: !5881)
!5892 = !DILocation(line: 275, column: 13, scope: !5888)
!5893 = !DILocation(line: 275, column: 3, scope: !5888)
!5894 = !DILocation(line: 276, column: 11, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 276, column: 11)
!5896 = !DILocation(line: 276, column: 14, scope: !5895)
!5897 = !DILocation(line: 276, column: 27, scope: !5895)
!5898 = !DILocation(line: 276, column: 11, scope: !5888)
!5899 = !DILocation(line: 277, column: 13, scope: !5895)
!5900 = !DILocation(line: 277, column: 3, scope: !5895)
!5901 = !DILocation(line: 278, column: 11, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 278, column: 11)
!5903 = !DILocation(line: 278, column: 14, scope: !5902)
!5904 = !DILocation(line: 278, column: 27, scope: !5902)
!5905 = !DILocation(line: 278, column: 11, scope: !5895)
!5906 = !DILocation(line: 279, column: 13, scope: !5902)
!5907 = !DILocation(line: 279, column: 3, scope: !5902)
!5908 = !DILocation(line: 280, column: 11, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 280, column: 11)
!5910 = !DILocation(line: 280, column: 14, scope: !5909)
!5911 = !DILocation(line: 280, column: 27, scope: !5909)
!5912 = !DILocation(line: 280, column: 11, scope: !5902)
!5913 = !DILocation(line: 281, column: 13, scope: !5909)
!5914 = !DILocation(line: 281, column: 3, scope: !5909)
!5915 = !DILocation(line: 283, column: 13, scope: !5909)
!5916 = !DILocation(line: 286, column: 6, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 286, column: 6)
!5918 = !DILocation(line: 286, column: 10, scope: !5917)
!5919 = !DILocation(line: 286, column: 14, scope: !5917)
!5920 = !DILocation(line: 286, column: 24, scope: !5917)
!5921 = !DILocation(line: 286, column: 6, scope: !5816)
!5922 = !DILocation(line: 287, column: 9, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 286, column: 36)
!5924 = !DILocation(line: 287, column: 13, scope: !5923)
!5925 = !DILocation(line: 287, column: 17, scope: !5923)
!5926 = !DILocation(line: 287, column: 27, scope: !5923)
!5927 = !DILocation(line: 287, column: 38, scope: !5923)
!5928 = !DILocation(line: 287, column: 7, scope: !5923)
!5929 = !DILocation(line: 288, column: 7, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 288, column: 7)
!5931 = !DILocation(line: 288, column: 7, scope: !5923)
!5932 = !DILocation(line: 289, column: 4, scope: !5930)
!5933 = !DILocation(line: 290, column: 2, scope: !5923)
!5934 = !DILocation(line: 292, column: 2, scope: !5816)
!5935 = !DILocation(line: 293, column: 27, scope: !5816)
!5936 = !DILocation(line: 293, column: 8, scope: !5816)
!5937 = !DILocation(line: 293, column: 6, scope: !5816)
!5938 = !DILocation(line: 294, column: 6, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 294, column: 6)
!5940 = !DILocation(line: 294, column: 6, scope: !5816)
!5941 = !DILocation(line: 295, column: 3, scope: !5939)
!5942 = !DILocation(line: 298, column: 6, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 298, column: 6)
!5944 = !DILocation(line: 298, column: 9, scope: !5943)
!5945 = !DILocation(line: 298, column: 25, scope: !5943)
!5946 = !DILocation(line: 298, column: 6, scope: !5816)
!5947 = !DILocation(line: 299, column: 3, scope: !5943)
!5948 = !DILocation(line: 300, column: 11, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 300, column: 11)
!5950 = !DILocation(line: 300, column: 14, scope: !5949)
!5951 = !DILocation(line: 300, column: 30, scope: !5949)
!5952 = !DILocation(line: 300, column: 11, scope: !5943)
!5953 = !DILocation(line: 301, column: 3, scope: !5949)
!5954 = !DILocation(line: 302, column: 11, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 302, column: 11)
!5956 = !DILocation(line: 302, column: 14, scope: !5955)
!5957 = !DILocation(line: 302, column: 30, scope: !5955)
!5958 = !DILocation(line: 302, column: 11, scope: !5949)
!5959 = !DILocation(line: 303, column: 3, scope: !5955)
!5960 = !DILocation(line: 304, column: 27, scope: !5816)
!5961 = !DILocation(line: 304, column: 8, scope: !5816)
!5962 = !DILocation(line: 304, column: 6, scope: !5816)
!5963 = !DILocation(line: 305, column: 6, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 305, column: 6)
!5965 = !DILocation(line: 305, column: 6, scope: !5816)
!5966 = !DILocation(line: 306, column: 3, scope: !5964)
!5967 = !DILocation(line: 308, column: 6, scope: !5968)
!5968 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 308, column: 6)
!5969 = !DILocation(line: 308, column: 9, scope: !5968)
!5970 = !DILocation(line: 308, column: 25, scope: !5968)
!5971 = !DILocation(line: 308, column: 6, scope: !5816)
!5972 = !DILocation(line: 310, column: 7, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5968, file: !3, line: 308, column: 39)
!5974 = !DILocation(line: 310, column: 3, scope: !5973)
!5975 = !DILocation(line: 310, column: 15, scope: !5973)
!5976 = !DILocation(line: 311, column: 17, scope: !5973)
!5977 = !DILocation(line: 311, column: 20, scope: !5973)
!5978 = !DILocation(line: 311, column: 30, scope: !5973)
!5979 = !DILocation(line: 311, column: 7, scope: !5973)
!5980 = !DILocation(line: 311, column: 3, scope: !5973)
!5981 = !DILocation(line: 311, column: 15, scope: !5973)
!5982 = !DILocation(line: 312, column: 17, scope: !5973)
!5983 = !DILocation(line: 312, column: 20, scope: !5973)
!5984 = !DILocation(line: 312, column: 30, scope: !5973)
!5985 = !DILocation(line: 312, column: 7, scope: !5973)
!5986 = !DILocation(line: 312, column: 3, scope: !5973)
!5987 = !DILocation(line: 312, column: 15, scope: !5973)
!5988 = !DILocation(line: 313, column: 7, scope: !5973)
!5989 = !DILocation(line: 313, column: 12, scope: !5973)
!5990 = !DILocation(line: 314, column: 7, scope: !5973)
!5991 = !DILocation(line: 314, column: 12, scope: !5973)
!5992 = !DILocation(line: 315, column: 28, scope: !5973)
!5993 = !DILocation(line: 315, column: 9, scope: !5973)
!5994 = !DILocation(line: 315, column: 7, scope: !5973)
!5995 = !DILocation(line: 316, column: 7, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 316, column: 7)
!5997 = !DILocation(line: 316, column: 7, scope: !5973)
!5998 = !DILocation(line: 317, column: 4, scope: !5996)
!5999 = !DILocation(line: 318, column: 2, scope: !5973)
!6000 = !DILocation(line: 320, column: 2, scope: !5816)
!6001 = !DILocation(line: 321, column: 27, scope: !5816)
!6002 = !DILocation(line: 321, column: 8, scope: !5816)
!6003 = !DILocation(line: 321, column: 6, scope: !5816)
!6004 = !DILocation(line: 322, column: 6, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 322, column: 6)
!6006 = !DILocation(line: 322, column: 6, scope: !5816)
!6007 = !DILocation(line: 323, column: 3, scope: !6005)
!6008 = !DILocation(line: 325, column: 2, scope: !5816)
!6009 = !DILocation(line: 326, column: 27, scope: !5816)
!6010 = !DILocation(line: 326, column: 8, scope: !5816)
!6011 = !DILocation(line: 326, column: 6, scope: !5816)
!6012 = !DILocation(line: 327, column: 6, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 327, column: 6)
!6014 = !DILocation(line: 327, column: 6, scope: !5816)
!6015 = !DILocation(line: 328, column: 3, scope: !6013)
!6016 = !DILocation(line: 330, column: 2, scope: !5816)
!6017 = !DILocation(line: 331, column: 27, scope: !5816)
!6018 = !DILocation(line: 331, column: 8, scope: !5816)
!6019 = !DILocation(line: 331, column: 6, scope: !5816)
!6020 = !DILocation(line: 332, column: 6, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 332, column: 6)
!6022 = !DILocation(line: 332, column: 6, scope: !5816)
!6023 = !DILocation(line: 333, column: 3, scope: !6021)
!6024 = !DILocation(line: 335, column: 2, scope: !5816)
!6025 = !DILocation(line: 336, column: 27, scope: !5816)
!6026 = !DILocation(line: 336, column: 8, scope: !5816)
!6027 = !DILocation(line: 336, column: 6, scope: !5816)
!6028 = !DILocation(line: 337, column: 6, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 337, column: 6)
!6030 = !DILocation(line: 337, column: 6, scope: !5816)
!6031 = !DILocation(line: 338, column: 3, scope: !6029)
!6032 = !DILocation(line: 340, column: 2, scope: !5816)
!6033 = !DILocation(line: 341, column: 27, scope: !5816)
!6034 = !DILocation(line: 341, column: 8, scope: !5816)
!6035 = !DILocation(line: 341, column: 6, scope: !5816)
!6036 = !DILocation(line: 342, column: 6, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 342, column: 6)
!6038 = !DILocation(line: 342, column: 6, scope: !5816)
!6039 = !DILocation(line: 343, column: 3, scope: !6037)
!6040 = !DILocation(line: 345, column: 2, scope: !5816)
!6041 = !DILocation(line: 346, column: 16, scope: !5816)
!6042 = !DILocation(line: 346, column: 34, scope: !5816)
!6043 = !DILocation(line: 346, column: 32, scope: !5816)
!6044 = !DILocation(line: 346, column: 6, scope: !5816)
!6045 = !DILocation(line: 346, column: 2, scope: !5816)
!6046 = !DILocation(line: 346, column: 14, scope: !5816)
!6047 = !DILocation(line: 347, column: 6, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 347, column: 6)
!6049 = !DILocation(line: 347, column: 11, scope: !6048)
!6050 = !DILocation(line: 347, column: 6, scope: !5816)
!6051 = !DILocation(line: 348, column: 7, scope: !6048)
!6052 = !DILocation(line: 348, column: 3, scope: !6048)
!6053 = !DILocation(line: 348, column: 15, scope: !6048)
!6054 = !DILocation(line: 349, column: 27, scope: !5816)
!6055 = !DILocation(line: 349, column: 8, scope: !5816)
!6056 = !DILocation(line: 349, column: 6, scope: !5816)
!6057 = !DILocation(line: 350, column: 6, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 350, column: 6)
!6059 = !DILocation(line: 350, column: 6, scope: !5816)
!6060 = !DILocation(line: 351, column: 3, scope: !6058)
!6061 = !DILocation(line: 354, column: 6, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 354, column: 6)
!6063 = !DILocation(line: 354, column: 9, scope: !6062)
!6064 = !DILocation(line: 354, column: 25, scope: !6062)
!6065 = !DILocation(line: 354, column: 6, scope: !5816)
!6066 = !DILocation(line: 355, column: 3, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !6062, file: !3, line: 354, column: 46)
!6068 = !DILocation(line: 356, column: 19, scope: !6067)
!6069 = !DILocation(line: 356, column: 22, scope: !6067)
!6070 = !DILocation(line: 356, column: 34, scope: !6067)
!6071 = !DILocation(line: 356, column: 42, scope: !6067)
!6072 = !DILocation(line: 356, column: 48, scope: !6067)
!6073 = !DILocation(line: 356, column: 17, scope: !6067)
!6074 = !DILocation(line: 356, column: 7, scope: !6067)
!6075 = !DILocation(line: 356, column: 3, scope: !6067)
!6076 = !DILocation(line: 356, column: 15, scope: !6067)
!6077 = !DILocation(line: 357, column: 19, scope: !6067)
!6078 = !DILocation(line: 357, column: 22, scope: !6067)
!6079 = !DILocation(line: 357, column: 34, scope: !6067)
!6080 = !DILocation(line: 357, column: 42, scope: !6067)
!6081 = !DILocation(line: 357, column: 48, scope: !6067)
!6082 = !DILocation(line: 357, column: 17, scope: !6067)
!6083 = !DILocation(line: 357, column: 7, scope: !6067)
!6084 = !DILocation(line: 357, column: 3, scope: !6067)
!6085 = !DILocation(line: 357, column: 15, scope: !6067)
!6086 = !DILocation(line: 358, column: 28, scope: !6067)
!6087 = !DILocation(line: 358, column: 9, scope: !6067)
!6088 = !DILocation(line: 358, column: 7, scope: !6067)
!6089 = !DILocation(line: 359, column: 7, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 359, column: 7)
!6091 = !DILocation(line: 359, column: 7, scope: !6067)
!6092 = !DILocation(line: 360, column: 4, scope: !6090)
!6093 = !DILocation(line: 361, column: 2, scope: !6067)
!6094 = !DILocation(line: 363, column: 2, scope: !5816)
!6095 = !DILocation(line: 364, column: 27, scope: !5816)
!6096 = !DILocation(line: 364, column: 8, scope: !5816)
!6097 = !DILocation(line: 364, column: 6, scope: !5816)
!6098 = !DILocation(line: 365, column: 6, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 365, column: 6)
!6100 = !DILocation(line: 365, column: 6, scope: !5816)
!6101 = !DILocation(line: 366, column: 3, scope: !6099)
!6102 = !DILocation(line: 368, column: 2, scope: !5816)
!6103 = !DILocation(line: 369, column: 17, scope: !5816)
!6104 = !DILocation(line: 369, column: 22, scope: !5816)
!6105 = !DILocation(line: 369, column: 6, scope: !5816)
!6106 = !DILocation(line: 369, column: 2, scope: !5816)
!6107 = !DILocation(line: 369, column: 14, scope: !5816)
!6108 = !DILocation(line: 370, column: 27, scope: !5816)
!6109 = !DILocation(line: 370, column: 8, scope: !5816)
!6110 = !DILocation(line: 370, column: 6, scope: !5816)
!6111 = !DILocation(line: 371, column: 6, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 371, column: 6)
!6113 = !DILocation(line: 371, column: 6, scope: !5816)
!6114 = !DILocation(line: 372, column: 3, scope: !6112)
!6115 = !DILocation(line: 374, column: 2, scope: !5816)
!6116 = !DILocation(line: 375, column: 17, scope: !5816)
!6117 = !DILocation(line: 375, column: 22, scope: !5816)
!6118 = !DILocation(line: 375, column: 6, scope: !5816)
!6119 = !DILocation(line: 375, column: 2, scope: !5816)
!6120 = !DILocation(line: 375, column: 14, scope: !5816)
!6121 = !DILocation(line: 376, column: 27, scope: !5816)
!6122 = !DILocation(line: 376, column: 8, scope: !5816)
!6123 = !DILocation(line: 376, column: 6, scope: !5816)
!6124 = !DILocation(line: 377, column: 6, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 377, column: 6)
!6126 = !DILocation(line: 377, column: 6, scope: !5816)
!6127 = !DILocation(line: 378, column: 3, scope: !6125)
!6128 = !DILocation(line: 380, column: 2, scope: !5816)
!6129 = !DILocation(line: 381, column: 27, scope: !5816)
!6130 = !DILocation(line: 381, column: 8, scope: !5816)
!6131 = !DILocation(line: 381, column: 6, scope: !5816)
!6132 = !DILocation(line: 382, column: 6, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 382, column: 6)
!6134 = !DILocation(line: 382, column: 6, scope: !5816)
!6135 = !DILocation(line: 383, column: 3, scope: !6133)
!6136 = !DILocation(line: 385, column: 2, scope: !5816)
!6137 = !DILocation(line: 386, column: 27, scope: !5816)
!6138 = !DILocation(line: 386, column: 8, scope: !5816)
!6139 = !DILocation(line: 386, column: 6, scope: !5816)
!6140 = !DILocation(line: 387, column: 6, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 387, column: 6)
!6142 = !DILocation(line: 387, column: 6, scope: !5816)
!6143 = !DILocation(line: 388, column: 3, scope: !6141)
!6144 = !DILocation(line: 390, column: 2, scope: !5816)
!6145 = !DILocation(line: 391, column: 27, scope: !5816)
!6146 = !DILocation(line: 391, column: 8, scope: !5816)
!6147 = !DILocation(line: 391, column: 6, scope: !5816)
!6148 = !DILocation(line: 392, column: 6, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 392, column: 6)
!6150 = !DILocation(line: 392, column: 6, scope: !5816)
!6151 = !DILocation(line: 393, column: 3, scope: !6149)
!6152 = !DILocation(line: 395, column: 25, scope: !5816)
!6153 = !DILocation(line: 395, column: 28, scope: !5816)
!6154 = !DILocation(line: 395, column: 2, scope: !5816)
!6155 = !DILocation(line: 395, column: 7, scope: !5816)
!6156 = !DILocation(line: 395, column: 23, scope: !5816)
!6157 = !DILocation(line: 398, column: 27, scope: !5816)
!6158 = !DILocation(line: 398, column: 8, scope: !5816)
!6159 = !DILocation(line: 398, column: 6, scope: !5816)
!6160 = !DILocation(line: 399, column: 6, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 399, column: 6)
!6162 = !DILocation(line: 399, column: 6, scope: !5816)
!6163 = !DILocation(line: 400, column: 3, scope: !6161)
!6164 = !DILocation(line: 402, column: 2, scope: !5816)
!6165 = !DILabel(scope: !5816, name: "err", file: !3, line: 403)
!6166 = !DILocation(line: 403, column: 1, scope: !5816)
!6167 = !DILocation(line: 405, column: 9, scope: !5816)
!6168 = !DILocation(line: 405, column: 2, scope: !5816)
!6169 = !DILocation(line: 406, column: 1, scope: !5816)
!6170 = distinct !DISubprogram(name: "si2168_get_tune_settings", scope: !3, file: !3, line: 582, type: !4353, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!6171 = !DILocalVariable(name: "fe", arg: 1, scope: !6170, file: !3, line: 582, type: !4205)
!6172 = !DILocation(line: 582, column: 58, scope: !6170)
!6173 = !DILocalVariable(name: "s", arg: 2, scope: !6170, file: !3, line: 583, type: !4355)
!6174 = !DILocation(line: 583, column: 37, scope: !6170)
!6175 = !DILocation(line: 585, column: 2, scope: !6170)
!6176 = !DILocation(line: 585, column: 5, scope: !6170)
!6177 = !DILocation(line: 585, column: 18, scope: !6170)
!6178 = !DILocation(line: 587, column: 2, scope: !6170)
!6179 = distinct !DISubprogram(name: "si2168_read_status", scope: !3, file: !3, line: 114, type: !4368, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!6180 = !DILocalVariable(name: "fe", arg: 1, scope: !6179, file: !3, line: 114, type: !4205)
!6181 = !DILocation(line: 114, column: 52, scope: !6179)
!6182 = !DILocalVariable(name: "status", arg: 2, scope: !6179, file: !3, line: 114, type: !4345)
!6183 = !DILocation(line: 114, column: 72, scope: !6179)
!6184 = !DILocalVariable(name: "client", scope: !6179, file: !3, line: 116, type: !375)
!6185 = !DILocation(line: 116, column: 21, scope: !6179)
!6186 = !DILocation(line: 116, column: 30, scope: !6179)
!6187 = !DILocation(line: 116, column: 34, scope: !6179)
!6188 = !DILocalVariable(name: "dev", scope: !6179, file: !3, line: 117, type: !4541)
!6189 = !DILocation(line: 117, column: 21, scope: !6179)
!6190 = !DILocation(line: 117, column: 46, scope: !6179)
!6191 = !DILocation(line: 117, column: 27, scope: !6179)
!6192 = !DILocalVariable(name: "c", scope: !6179, file: !3, line: 118, type: !4365)
!6193 = !DILocation(line: 118, column: 34, scope: !6179)
!6194 = !DILocation(line: 118, column: 39, scope: !6179)
!6195 = !DILocation(line: 118, column: 43, scope: !6179)
!6196 = !DILocalVariable(name: "ret", scope: !6179, file: !3, line: 119, type: !325)
!6197 = !DILocation(line: 119, column: 6, scope: !6179)
!6198 = !DILocalVariable(name: "i", scope: !6179, file: !3, line: 119, type: !325)
!6199 = !DILocation(line: 119, column: 11, scope: !6179)
!6200 = !DILocalVariable(name: "utmp", scope: !6179, file: !3, line: 120, type: !7)
!6201 = !DILocation(line: 120, column: 15, scope: !6179)
!6202 = !DILocalVariable(name: "utmp1", scope: !6179, file: !3, line: 120, type: !7)
!6203 = !DILocation(line: 120, column: 21, scope: !6179)
!6204 = !DILocalVariable(name: "utmp2", scope: !6179, file: !3, line: 120, type: !7)
!6205 = !DILocation(line: 120, column: 28, scope: !6179)
!6206 = !DILocalVariable(name: "cmd", scope: !6179, file: !3, line: 121, type: !4582)
!6207 = !DILocation(line: 121, column: 20, scope: !6179)
!6208 = !DILocation(line: 123, column: 3, scope: !6179)
!6209 = !DILocation(line: 123, column: 10, scope: !6179)
!6210 = !DILocation(line: 125, column: 7, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 125, column: 6)
!6212 = !DILocation(line: 125, column: 12, scope: !6211)
!6213 = !DILocation(line: 125, column: 6, scope: !6179)
!6214 = !DILocation(line: 126, column: 7, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 125, column: 20)
!6216 = !DILocation(line: 127, column: 3, scope: !6215)
!6217 = !DILocation(line: 130, column: 10, scope: !6179)
!6218 = !DILocation(line: 130, column: 13, scope: !6179)
!6219 = !DILocation(line: 130, column: 2, scope: !6179)
!6220 = !DILocation(line: 132, column: 3, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 130, column: 30)
!6222 = !DILocation(line: 133, column: 3, scope: !6221)
!6223 = !DILocation(line: 135, column: 3, scope: !6221)
!6224 = !DILocation(line: 136, column: 3, scope: !6221)
!6225 = !DILocation(line: 138, column: 3, scope: !6221)
!6226 = !DILocation(line: 139, column: 3, scope: !6221)
!6227 = !DILocation(line: 141, column: 7, scope: !6221)
!6228 = !DILocation(line: 142, column: 3, scope: !6221)
!6229 = !DILocation(line: 145, column: 27, scope: !6179)
!6230 = !DILocation(line: 145, column: 8, scope: !6179)
!6231 = !DILocation(line: 145, column: 6, scope: !6179)
!6232 = !DILocation(line: 146, column: 6, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 146, column: 6)
!6234 = !DILocation(line: 146, column: 6, scope: !6179)
!6235 = !DILocation(line: 147, column: 3, scope: !6233)
!6236 = !DILocation(line: 149, column: 15, scope: !6179)
!6237 = !DILocation(line: 149, column: 11, scope: !6179)
!6238 = !DILocation(line: 149, column: 23, scope: !6179)
!6239 = !DILocation(line: 149, column: 29, scope: !6179)
!6240 = !DILocation(line: 149, column: 2, scope: !6179)
!6241 = !DILocation(line: 151, column: 4, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 149, column: 37)
!6243 = !DILocation(line: 151, column: 11, scope: !6242)
!6244 = !DILocation(line: 152, column: 3, scope: !6242)
!6245 = !DILocation(line: 154, column: 4, scope: !6242)
!6246 = !DILocation(line: 154, column: 11, scope: !6242)
!6247 = !DILocation(line: 156, column: 3, scope: !6242)
!6248 = !DILocation(line: 159, column: 20, scope: !6179)
!6249 = !DILocation(line: 159, column: 19, scope: !6179)
!6250 = !DILocation(line: 159, column: 2, scope: !6179)
!6251 = !DILocation(line: 159, column: 7, scope: !6179)
!6252 = !DILocation(line: 159, column: 17, scope: !6179)
!6253 = !DILocation(line: 161, column: 7, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 161, column: 6)
!6255 = !DILocation(line: 161, column: 6, scope: !6254)
!6256 = !DILocation(line: 161, column: 14, scope: !6254)
!6257 = !DILocation(line: 161, column: 6, scope: !6179)
!6258 = !DILocation(line: 162, column: 3, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6254, file: !3, line: 161, column: 29)
!6260 = !DILocation(line: 162, column: 6, scope: !6259)
!6261 = !DILocation(line: 162, column: 10, scope: !6259)
!6262 = !DILocation(line: 162, column: 14, scope: !6259)
!6263 = !DILocation(line: 163, column: 3, scope: !6259)
!6264 = !DILocation(line: 163, column: 6, scope: !6259)
!6265 = !DILocation(line: 163, column: 10, scope: !6259)
!6266 = !DILocation(line: 163, column: 18, scope: !6259)
!6267 = !DILocation(line: 163, column: 24, scope: !6259)
!6268 = !DILocation(line: 164, column: 31, scope: !6259)
!6269 = !DILocation(line: 164, column: 27, scope: !6259)
!6270 = !DILocation(line: 164, column: 39, scope: !6259)
!6271 = !DILocation(line: 164, column: 46, scope: !6259)
!6272 = !DILocation(line: 164, column: 3, scope: !6259)
!6273 = !DILocation(line: 164, column: 6, scope: !6259)
!6274 = !DILocation(line: 164, column: 10, scope: !6259)
!6275 = !DILocation(line: 164, column: 18, scope: !6259)
!6276 = !DILocation(line: 164, column: 25, scope: !6259)
!6277 = !DILocation(line: 165, column: 2, scope: !6259)
!6278 = !DILocation(line: 166, column: 3, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6254, file: !3, line: 165, column: 9)
!6280 = !DILocation(line: 166, column: 6, scope: !6279)
!6281 = !DILocation(line: 166, column: 10, scope: !6279)
!6282 = !DILocation(line: 166, column: 14, scope: !6279)
!6283 = !DILocation(line: 167, column: 3, scope: !6279)
!6284 = !DILocation(line: 167, column: 6, scope: !6279)
!6285 = !DILocation(line: 167, column: 10, scope: !6279)
!6286 = !DILocation(line: 167, column: 18, scope: !6279)
!6287 = !DILocation(line: 167, column: 24, scope: !6279)
!6288 = !DILocation(line: 174, column: 7, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 174, column: 6)
!6290 = !DILocation(line: 174, column: 6, scope: !6289)
!6291 = !DILocation(line: 174, column: 14, scope: !6289)
!6292 = !DILocation(line: 174, column: 6, scope: !6179)
!6293 = !DILocation(line: 175, column: 3, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6289, file: !3, line: 174, column: 32)
!6295 = !DILocation(line: 176, column: 28, scope: !6294)
!6296 = !DILocation(line: 176, column: 9, scope: !6294)
!6297 = !DILocation(line: 176, column: 7, scope: !6294)
!6298 = !DILocation(line: 177, column: 7, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 177, column: 7)
!6300 = !DILocation(line: 177, column: 7, scope: !6294)
!6301 = !DILocation(line: 178, column: 4, scope: !6299)
!6302 = !DILocalVariable(name: "__UNIQUE_ID___x222", scope: !6303, file: !3, line: 184, type: !325)
!6303 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 184, column: 10)
!6304 = !DILocation(line: 184, column: 10, scope: !6303)
!6305 = !DILocalVariable(name: "__UNIQUE_ID___x220", scope: !6306, file: !3, line: 184, type: !325)
!6306 = distinct !DILexicalBlock(scope: !6303, file: !3, line: 184, column: 10)
!6307 = !DILocation(line: 184, column: 10, scope: !6306)
!6308 = !DILocalVariable(name: "__UNIQUE_ID___y221", scope: !6306, file: !3, line: 184, type: !325)
!6309 = !DILocalVariable(name: "__UNIQUE_ID___y223", scope: !6303, file: !3, line: 184, type: !325)
!6310 = !DILocation(line: 184, column: 8, scope: !6294)
!6311 = !DILocation(line: 185, column: 10, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 185, column: 3)
!6313 = !DILocation(line: 185, column: 21, scope: !6312)
!6314 = !DILocation(line: 185, column: 8, scope: !6312)
!6315 = !DILocation(line: 185, column: 26, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6312, file: !3, line: 185, column: 3)
!6317 = !DILocation(line: 185, column: 30, scope: !6316)
!6318 = !DILocation(line: 185, column: 28, scope: !6316)
!6319 = !DILocation(line: 185, column: 3, scope: !6312)
!6320 = !DILocation(line: 186, column: 12, scope: !6316)
!6321 = !DILocation(line: 186, column: 18, scope: !6316)
!6322 = !DILocation(line: 186, column: 10, scope: !6316)
!6323 = !DILocation(line: 186, column: 4, scope: !6316)
!6324 = !DILocation(line: 185, column: 37, scope: !6316)
!6325 = !DILocation(line: 185, column: 3, scope: !6316)
!6326 = distinct !{!6326, !6319, !6327}
!6327 = !DILocation(line: 186, column: 20, scope: !6312)
!6328 = !DILocation(line: 188, column: 15, scope: !6294)
!6329 = !DILocation(line: 188, column: 11, scope: !6294)
!6330 = !DILocation(line: 188, column: 25, scope: !6294)
!6331 = !DILocation(line: 188, column: 23, scope: !6294)
!6332 = !DILocation(line: 188, column: 9, scope: !6294)
!6333 = !DILocation(line: 189, column: 9, scope: !6294)
!6334 = !DILocation(line: 195, column: 3, scope: !6294)
!6335 = !DILocation(line: 195, column: 6, scope: !6294)
!6336 = !DILocation(line: 195, column: 21, scope: !6294)
!6337 = !DILocation(line: 195, column: 29, scope: !6294)
!6338 = !DILocation(line: 195, column: 35, scope: !6294)
!6339 = !DILocation(line: 196, column: 39, scope: !6294)
!6340 = !DILocation(line: 196, column: 3, scope: !6294)
!6341 = !DILocation(line: 196, column: 6, scope: !6294)
!6342 = !DILocation(line: 196, column: 21, scope: !6294)
!6343 = !DILocation(line: 196, column: 29, scope: !6294)
!6344 = !DILocation(line: 196, column: 36, scope: !6294)
!6345 = !DILocation(line: 197, column: 3, scope: !6294)
!6346 = !DILocation(line: 197, column: 6, scope: !6294)
!6347 = !DILocation(line: 197, column: 21, scope: !6294)
!6348 = !DILocation(line: 197, column: 29, scope: !6294)
!6349 = !DILocation(line: 197, column: 35, scope: !6294)
!6350 = !DILocation(line: 198, column: 39, scope: !6294)
!6351 = !DILocation(line: 198, column: 3, scope: !6294)
!6352 = !DILocation(line: 198, column: 6, scope: !6294)
!6353 = !DILocation(line: 198, column: 21, scope: !6294)
!6354 = !DILocation(line: 198, column: 29, scope: !6294)
!6355 = !DILocation(line: 198, column: 36, scope: !6294)
!6356 = !DILocation(line: 199, column: 2, scope: !6294)
!6357 = !DILocation(line: 200, column: 3, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6289, file: !3, line: 199, column: 9)
!6359 = !DILocation(line: 200, column: 6, scope: !6358)
!6360 = !DILocation(line: 200, column: 21, scope: !6358)
!6361 = !DILocation(line: 200, column: 29, scope: !6358)
!6362 = !DILocation(line: 200, column: 35, scope: !6358)
!6363 = !DILocation(line: 201, column: 3, scope: !6358)
!6364 = !DILocation(line: 201, column: 6, scope: !6358)
!6365 = !DILocation(line: 201, column: 21, scope: !6358)
!6366 = !DILocation(line: 201, column: 29, scope: !6358)
!6367 = !DILocation(line: 201, column: 35, scope: !6358)
!6368 = !DILocation(line: 205, column: 7, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6179, file: !3, line: 205, column: 6)
!6370 = !DILocation(line: 205, column: 6, scope: !6369)
!6371 = !DILocation(line: 205, column: 14, scope: !6369)
!6372 = !DILocation(line: 205, column: 6, scope: !6179)
!6373 = !DILocation(line: 206, column: 3, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 205, column: 29)
!6375 = !DILocation(line: 207, column: 28, scope: !6374)
!6376 = !DILocation(line: 207, column: 9, scope: !6374)
!6377 = !DILocation(line: 207, column: 7, scope: !6374)
!6378 = !DILocation(line: 208, column: 7, scope: !6379)
!6379 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 208, column: 7)
!6380 = !DILocation(line: 208, column: 7, scope: !6374)
!6381 = !DILocation(line: 209, column: 4, scope: !6379)
!6382 = !DILocation(line: 211, column: 15, scope: !6374)
!6383 = !DILocation(line: 211, column: 11, scope: !6374)
!6384 = !DILocation(line: 211, column: 23, scope: !6374)
!6385 = !DILocation(line: 211, column: 34, scope: !6374)
!6386 = !DILocation(line: 211, column: 30, scope: !6374)
!6387 = !DILocation(line: 211, column: 42, scope: !6374)
!6388 = !DILocation(line: 211, column: 28, scope: !6374)
!6389 = !DILocation(line: 211, column: 9, scope: !6374)
!6390 = !DILocation(line: 215, column: 7, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 215, column: 7)
!6392 = !DILocation(line: 215, column: 13, scope: !6391)
!6393 = !DILocation(line: 215, column: 7, scope: !6374)
!6394 = !DILocation(line: 216, column: 10, scope: !6391)
!6395 = !DILocation(line: 216, column: 4, scope: !6391)
!6396 = !DILocation(line: 218, column: 3, scope: !6374)
!6397 = !DILocation(line: 218, column: 6, scope: !6374)
!6398 = !DILocation(line: 218, column: 18, scope: !6374)
!6399 = !DILocation(line: 218, column: 26, scope: !6374)
!6400 = !DILocation(line: 218, column: 32, scope: !6374)
!6401 = !DILocation(line: 219, column: 36, scope: !6374)
!6402 = !DILocation(line: 219, column: 3, scope: !6374)
!6403 = !DILocation(line: 219, column: 6, scope: !6374)
!6404 = !DILocation(line: 219, column: 18, scope: !6374)
!6405 = !DILocation(line: 219, column: 26, scope: !6374)
!6406 = !DILocation(line: 219, column: 33, scope: !6374)
!6407 = !DILocation(line: 220, column: 2, scope: !6374)
!6408 = !DILocation(line: 221, column: 3, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 220, column: 9)
!6410 = !DILocation(line: 221, column: 6, scope: !6409)
!6411 = !DILocation(line: 221, column: 18, scope: !6409)
!6412 = !DILocation(line: 221, column: 26, scope: !6409)
!6413 = !DILocation(line: 221, column: 32, scope: !6409)
!6414 = !DILocation(line: 224, column: 2, scope: !6179)
!6415 = !DILabel(scope: !6179, name: "err", file: !3, line: 225)
!6416 = !DILocation(line: 225, column: 1, scope: !6179)
!6417 = !DILocation(line: 227, column: 9, scope: !6179)
!6418 = !DILocation(line: 227, column: 2, scope: !6179)
!6419 = !DILocation(line: 228, column: 1, scope: !6179)
!6420 = distinct !DISubprogram(name: "si2168_ts_bus_ctrl", scope: !3, file: !3, line: 83, type: !4425, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !465)
!6421 = !DILocalVariable(name: "fe", arg: 1, scope: !6420, file: !3, line: 83, type: !4205)
!6422 = !DILocation(line: 83, column: 52, scope: !6420)
!6423 = !DILocalVariable(name: "acquire", arg: 2, scope: !6420, file: !3, line: 83, type: !325)
!6424 = !DILocation(line: 83, column: 60, scope: !6420)
!6425 = !DILocalVariable(name: "client", scope: !6420, file: !3, line: 85, type: !375)
!6426 = !DILocation(line: 85, column: 21, scope: !6420)
!6427 = !DILocation(line: 85, column: 30, scope: !6420)
!6428 = !DILocation(line: 85, column: 34, scope: !6420)
!6429 = !DILocalVariable(name: "dev", scope: !6420, file: !3, line: 86, type: !4541)
!6430 = !DILocation(line: 86, column: 21, scope: !6420)
!6431 = !DILocation(line: 86, column: 46, scope: !6420)
!6432 = !DILocation(line: 86, column: 27, scope: !6420)
!6433 = !DILocalVariable(name: "cmd", scope: !6420, file: !3, line: 87, type: !4582)
!6434 = !DILocation(line: 87, column: 20, scope: !6420)
!6435 = !DILocalVariable(name: "ret", scope: !6420, file: !3, line: 88, type: !325)
!6436 = !DILocation(line: 88, column: 6, scope: !6420)
!6437 = !DILocation(line: 93, column: 6, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 93, column: 6)
!6439 = !DILocation(line: 93, column: 11, scope: !6438)
!6440 = !DILocation(line: 93, column: 19, scope: !6438)
!6441 = !DILocation(line: 93, column: 6, scope: !6420)
!6442 = !DILocation(line: 94, column: 3, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6438, file: !3, line: 93, column: 43)
!6444 = !DILocation(line: 95, column: 28, scope: !6443)
!6445 = !DILocation(line: 95, column: 9, scope: !6443)
!6446 = !DILocation(line: 95, column: 7, scope: !6443)
!6447 = !DILocation(line: 96, column: 7, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 96, column: 7)
!6449 = !DILocation(line: 96, column: 7, scope: !6443)
!6450 = !DILocation(line: 97, column: 11, scope: !6448)
!6451 = !DILocation(line: 97, column: 4, scope: !6448)
!6452 = !DILocation(line: 98, column: 2, scope: !6443)
!6453 = !DILocation(line: 100, column: 2, scope: !6420)
!6454 = !DILocation(line: 101, column: 6, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 101, column: 6)
!6456 = !DILocation(line: 101, column: 11, scope: !6455)
!6457 = !DILocation(line: 101, column: 19, scope: !6455)
!6458 = !DILocation(line: 101, column: 6, scope: !6420)
!6459 = !DILocation(line: 102, column: 7, scope: !6455)
!6460 = !DILocation(line: 102, column: 3, scope: !6455)
!6461 = !DILocation(line: 102, column: 15, scope: !6455)
!6462 = !DILocation(line: 103, column: 6, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 103, column: 6)
!6464 = !DILocation(line: 103, column: 6, scope: !6420)
!6465 = !DILocation(line: 104, column: 18, scope: !6463)
!6466 = !DILocation(line: 104, column: 23, scope: !6463)
!6467 = !DILocation(line: 104, column: 7, scope: !6463)
!6468 = !DILocation(line: 104, column: 3, scope: !6463)
!6469 = !DILocation(line: 104, column: 15, scope: !6463)
!6470 = !DILocation(line: 106, column: 7, scope: !6463)
!6471 = !DILocation(line: 106, column: 3, scope: !6463)
!6472 = !DILocation(line: 106, column: 15, scope: !6463)
!6473 = !DILocation(line: 107, column: 6, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 107, column: 6)
!6475 = !DILocation(line: 107, column: 11, scope: !6474)
!6476 = !DILocation(line: 107, column: 6, scope: !6420)
!6477 = !DILocation(line: 108, column: 7, scope: !6474)
!6478 = !DILocation(line: 108, column: 3, scope: !6474)
!6479 = !DILocation(line: 108, column: 15, scope: !6474)
!6480 = !DILocation(line: 109, column: 27, scope: !6420)
!6481 = !DILocation(line: 109, column: 8, scope: !6420)
!6482 = !DILocation(line: 109, column: 6, scope: !6420)
!6483 = !DILocation(line: 111, column: 9, scope: !6420)
!6484 = !DILocation(line: 111, column: 2, scope: !6420)
!6485 = !DILocation(line: 112, column: 1, scope: !6420)
