; ModuleID = '../bcout/drivers/media/i2c/saa6588.llvm.bc'
source_filename = "drivers/media/i2c/saa6588.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_saa6588_driver_init6:\09\09\09"
module asm ".long\09saa6588_driver_init - .\09\09\09"
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.56, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.1, %union.anon.36, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.10, %struct.list_head, %struct.list_head, %union.anon.11 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.10 = type { %struct.list_head }
%union.anon.11 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
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
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.65 = type { %struct.callback_head }
%union.anon.66 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.12 }
%union.anon.12 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.13 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.13 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.36 = type { %struct.atomic_t }
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
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.23 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.23 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.15, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.16, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.17, %union.anon.21, %struct.key_restriction* }
%union.anon.15 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.16 = type { i64 }
%union.anon.17 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.18, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.18 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.21 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.42, %union.anon.43, i32 }
%struct.request_queue = type opaque
%union.anon.42 = type { %struct.list_head }
%union.anon.43 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.48 }
%struct.anon.48 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.55, i32, [12 x i8] }
%union.anon.55 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.56 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.57, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.60 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { i64, i64 }
%union.anon.60 = type { [12 x i32] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.61 = type { %struct.kernfs_elem_attr }
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
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.62 }
%union.anon.62 = type { i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.v4l2_subdev_ops = type { %struct.v4l2_subdev_core_ops*, %struct.v4l2_subdev_tuner_ops*, %struct.v4l2_subdev_audio_ops*, %struct.v4l2_subdev_video_ops*, %struct.v4l2_subdev_vbi_ops*, %struct.v4l2_subdev_ir_ops*, %struct.v4l2_subdev_sensor_ops*, %struct.v4l2_subdev_pad_ops* }
%struct.v4l2_subdev_core_ops = type { i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*, i64, %struct.v4l2_subdev_io_pin_config*)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, i32)*, i64 (%struct.v4l2_subdev*, i32, i8*)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, i32, i8*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_fh*, %struct.v4l2_event_subscription*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_fh*, %struct.v4l2_event_subscription*)* }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, %struct.module*, i8, i32, %struct.v4l2_device*, %struct.v4l2_subdev_ops*, %struct.v4l2_subdev_internal_ops*, %struct.v4l2_ctrl_handler*, [32 x i8], i32, i8*, i8*, %struct.video_device*, %struct.device*, %struct.fwnode_handle*, %struct.list_head, %struct.v4l2_async_subdev*, %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier*, %struct.v4l2_subdev_platform_data* }
%struct.media_entity = type { %struct.media_gobj, i8*, i32, i32, i64, i16, i16, i16, i32, %struct.media_pad*, %struct.list_head, %struct.media_entity_operations*, i32, i32, %struct.media_pipeline*, %union.anon.71 }
%struct.media_gobj = type { %struct.media_device*, i32, %struct.list_head }
%struct.media_device = type { %struct.device*, %struct.media_devnode*, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, i8*, i32 (%struct.media_entity*, %struct.media_pipeline*)*, void (%struct.media_entity*)*, %struct.media_device_ops*, %struct.mutex, %struct.atomic_t }
%struct.media_devnode = type { %struct.media_device*, %struct.media_file_operations*, %struct.device, %struct.cdev, %struct.device*, i32, i64, void (%struct.media_devnode*)* }
%struct.media_file_operations = type { %struct.module*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*)*, i32 (%struct.file*)* }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.media_graph = type { [16 x %struct.anon.68], %struct.media_entity_enum, i32 }
%struct.anon.68 = type { %struct.media_entity*, %struct.list_head* }
%struct.media_entity_enum = type { i64*, i32 }
%struct.media_device_ops = type { i32 (%struct.media_link*, i32, i32)*, %struct.media_request* (%struct.media_device*)*, void (%struct.media_request*)*, i32 (%struct.media_request*)*, void (%struct.media_request*)* }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.69, %union.anon.70, %struct.media_link*, i64, i8 }
%union.anon.69 = type { %struct.media_gobj* }
%union.anon.70 = type { %struct.media_gobj* }
%struct.media_request = type opaque
%struct.media_pad = type { %struct.media_gobj, %struct.media_entity*, i16, i32, i64 }
%struct.media_entity_operations = type { i32 (%struct.media_entity*, %struct.fwnode_endpoint*)*, i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)*, i32 (%struct.media_link*)* }
%struct.media_pipeline = type { i32, %struct.media_graph }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32 }
%struct.v4l2_device = type { %struct.device*, %struct.media_device*, %struct.list_head, %struct.spinlock, [36 x i8], void (%struct.v4l2_subdev*, i32, i8*)*, %struct.v4l2_ctrl_handler*, %struct.v4l2_prio_state, %struct.kref, void (%struct.v4l2_device*)* }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_subdev_internal_ops = type { i32 (%struct.v4l2_subdev*)*, void (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)*, void (%struct.v4l2_subdev*)* }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, %struct.module*, %struct.v4l2_subdev_pad_config* }
%struct.v4l2_fh = type { %struct.list_head, %struct.video_device*, %struct.v4l2_ctrl_handler*, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, %struct.v4l2_m2m_ctx* }
%struct.v4l2_m2m_ctx = type opaque
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.74, i16, i16, i16, [10 x i16] }
%union.anon.74 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type opaque
%struct.video_device = type { %struct.media_entity, %struct.media_intf_devnode*, %struct.media_pipeline, %struct.v4l2_file_operations*, i32, %struct.device, %struct.cdev*, %struct.v4l2_device*, %struct.device*, %struct.v4l2_ctrl_handler*, %struct.vb2_queue*, %struct.v4l2_prio_state*, [32 x i8], i32, i32, i32, i16, i64, i32, %struct.spinlock, %struct.list_head, i32, i64, void (%struct.video_device*)*, %struct.v4l2_ioctl_ops*, [3 x i64], %struct.mutex* }
%struct.media_intf_devnode = type { %struct.media_interface, i32, i32 }
%struct.media_interface = type { %struct.media_gobj, %struct.list_head, i32, i32 }
%struct.v4l2_file_operations = type { %struct.module*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*)*, i32 (%struct.file*)* }
%struct.vb2_queue = type opaque
%struct.v4l2_ioctl_ops = type opaque
%struct.v4l2_async_subdev = type { i32, %union.anon.76, %struct.list_head, %struct.list_head }
%union.anon.76 = type { %struct.anon.78 }
%struct.anon.78 = type { i1 (%struct.device*, %struct.v4l2_async_subdev*)*, i8* }
%struct.v4l2_async_notifier = type { %struct.v4l2_async_notifier_operations*, %struct.v4l2_device*, %struct.v4l2_subdev*, %struct.v4l2_async_notifier*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_async_notifier_operations = type { i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)*, i32 (%struct.v4l2_async_notifier*)*, void (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* }
%struct.v4l2_subdev_platform_data = type { %struct.regulator_bulk_data*, i32, i8* }
%struct.regulator_bulk_data = type opaque
%struct.v4l2_subdev_io_pin_config = type { i32, i8, i8, i8, i8 }
%struct.v4l2_event_subscription = type { i32, i32, i32, [5 x i32] }
%struct.v4l2_subdev_tuner_ops = type { i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency_band*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)*, i32 (%struct.v4l2_subdev*, %struct.tuner_setup*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_priv_tun_config*)* }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_modulator = type { i32, [32 x i8], i32, i32, i32, i32, i32, [3 x i32] }
%struct.tuner_setup = type opaque
%struct.v4l2_priv_tun_config = type { i32, i8* }
%struct.v4l2_subdev_audio_ops = type { i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, i32, i32, i32)*, i32 (%struct.v4l2_subdev*, i32)* }
%struct.v4l2_subdev_video_ops = type { i32 (%struct.v4l2_subdev*, i32, i32, i32)*, i32 (%struct.v4l2_subdev*, i32, i32)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i64)*, i32 (%struct.v4l2_subdev*, i64)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i64*)*, i32 (%struct.v4l2_subdev*, i32*)*, i32 (%struct.v4l2_subdev*, i32)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_fract*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)*, i32 (%struct.v4l2_subdev*, i8*, i32*)* }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_dv_timings = type { i32, %union.anon.73 }
%union.anon.73 = type { [32 x i32] }
%struct.v4l2_subdev_vbi_ops = type { i32 (%struct.v4l2_subdev*, %struct.v4l2_decode_vbi_line*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_cap*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_vbi_format*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_format*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_format*)* }
%struct.v4l2_decode_vbi_line = type { i32, i8*, i32, i32 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_sliced_vbi_cap = type { i16, [2 x [24 x i16]], i32, [3 x i32] }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }
%struct.v4l2_subdev_ir_ops = type { i32 (%struct.v4l2_subdev*, i8*, i64, i64*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)*, i32 (%struct.v4l2_subdev*, i8*, i64, i64*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)* }
%struct.v4l2_subdev_ir_parameters = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.v4l2_subdev_sensor_ops = type { i32 (%struct.v4l2_subdev*, i32*)*, i32 (%struct.v4l2_subdev*, i32*)* }
%struct.v4l2_subdev_pad_ops = type { i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_mbus_code_enum*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_size_enum*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings_cap*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_enum_dv_timings*)*, i32 (%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*)*, i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_frame_desc*)*, i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_frame_desc*)*, i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_config*)*, i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_config*)* }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], i8* }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.75 }
%union.anon.75 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_mbus_frame_desc = type { [4 x %struct.v4l2_mbus_frame_desc_entry], i16 }
%struct.v4l2_mbus_frame_desc_entry = type { i32, i32, i32 }
%struct.v4l2_mbus_config = type { i32, i32 }
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
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.saa6588 = type { %struct.v4l2_subdev, %struct.delayed_work, %struct.spinlock, i8*, i32, i32, i32, i32, i8, %struct.wait_queue_head, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.saa6588_command = type { i32, i8, i32, i8*, %struct.file*, %struct.poll_table_struct*, i32 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@__param_str_debug = internal constant [14 x i8] c"saa6588.debug\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !5110
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !4983
@__UNIQUE_ID_debugtype250 = internal constant [27 x i8] c"saa6588.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !5035
@__UNIQUE_ID_debug251 = internal constant [41 x i8] c"saa6588.parm=debug:enable debug messages\00", section ".modinfo", align 1, !dbg !5040
@__param_str_xtal = internal constant [13 x i8] c"saa6588.xtal\00", align 1, !dbg !5118
@xtal = internal global i32 0, align 4, !dbg !5112
@__param_xtal = internal constant %struct.kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__param_str_xtal, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @xtal to i8*) } }, section "__param", align 8, !dbg !5045
@__UNIQUE_ID_xtaltype252 = internal constant [26 x i8] c"saa6588.parmtype=xtal:int\00", section ".modinfo", align 1, !dbg !5047
@__UNIQUE_ID_xtal253 = internal constant [64 x i8] c"saa6588.parm=xtal:select oscillator frequency (0..3), default 0\00", section ".modinfo", align 1, !dbg !5052
@__param_str_mmbs = internal constant [13 x i8] c"saa6588.mmbs\00", align 1, !dbg !5123
@mmbs = internal global i32 0, align 4, !dbg !5114
@__param_mmbs = internal constant %struct.kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__param_str_mmbs, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @mmbs to i8*) } }, section "__param", align 8, !dbg !5055
@__UNIQUE_ID_mmbstype254 = internal constant [26 x i8] c"saa6588.parmtype=mmbs:int\00", section ".modinfo", align 1, !dbg !5057
@__UNIQUE_ID_mmbs255 = internal constant [58 x i8] c"saa6588.parm=mmbs:enable MMBS mode: 0=off (default), 1=on\00", section ".modinfo", align 1, !dbg !5059
@__param_str_plvl = internal constant [13 x i8] c"saa6588.plvl\00", align 1, !dbg !5125
@plvl = internal global i32 0, align 4, !dbg !5116
@__param_plvl = internal constant %struct.kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__param_str_plvl, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @plvl to i8*) } }, section "__param", align 8, !dbg !5064
@__UNIQUE_ID_plvltype256 = internal constant [26 x i8] c"saa6588.parmtype=plvl:int\00", section ".modinfo", align 1, !dbg !5066
@__UNIQUE_ID_plvl257 = internal constant [55 x i8] c"saa6588.parm=plvl:select pause level (0..3), default 0\00", section ".modinfo", align 1, !dbg !5068
@__param_str_bufblocks = internal constant [18 x i8] c"saa6588.bufblocks\00", align 16, !dbg !5127
@bufblocks = internal global i32 100, align 4, !dbg !5132
@__param_bufblocks = internal constant %struct.kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__param_str_bufblocks, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @bufblocks to i8*) } }, section "__param", align 8, !dbg !5073
@__UNIQUE_ID_bufblockstype258 = internal constant [31 x i8] c"saa6588.parmtype=bufblocks:int\00", section ".modinfo", align 1, !dbg !5075
@__UNIQUE_ID_bufblocks259 = internal constant [62 x i8] c"saa6588.parm=bufblocks:number of buffered blocks, default 100\00", section ".modinfo", align 1, !dbg !5080
@__UNIQUE_ID_description260 = internal constant [63 x i8] c"saa6588.description=v4l2 driver module for SAA6588 RDS decoder\00", section ".modinfo", align 1, !dbg !5085
@__UNIQUE_ID_author261 = internal constant [45 x i8] c"saa6588.author=Hans J. Koch <koch@hjk-az.de>\00", section ".modinfo", align 1, !dbg !5090
@__UNIQUE_ID_file262 = internal constant [39 x i8] c"saa6588.file=drivers/media/i2c/saa6588\00", section ".modinfo", align 1, !dbg !5095
@__UNIQUE_ID_license263 = internal constant [20 x i8] c"saa6588.license=GPL\00", section ".modinfo", align 1, !dbg !5100
@__UNIQUE_ID___addressable_saa6588_driver_init266 = internal global i8* bitcast (i32 ()* @saa6588_driver_init to i8*), section ".discard.addressable", align 8, !dbg !5103
@saa6588_driver = internal global %struct.i2c_driver { i32 0, i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @saa6588_probe, i32 (%struct.i2c_client*)* @saa6588_remove, i32 (%struct.i2c_client*)* null, void (%struct.i2c_client*)* null, void (%struct.i2c_client*, i32, i32)* null, i32 (%struct.i2c_client*, i32, i8*)* null, %struct.device_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.i2c_device_id* getelementptr inbounds ([2 x %struct.i2c_device_id], [2 x %struct.i2c_device_id]* @saa6588_id, i32 0, i32 0), i32 (%struct.i2c_client*, %struct.i2c_board_info*)* null, i16* null, %struct.list_head zeroinitializer }, align 8, !dbg !5134
@__exitcall_saa6588_driver_exit = internal global void ()* @saa6588_driver_exit, section ".exitcall.exit", align 8, !dbg !5105
@.str = private unnamed_addr constant [8 x i8] c"saa6588\00", align 1
@saa6588_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"saa6588\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.i2c_device_id zeroinitializer], align 16, !dbg !5369
@.str.1 = private unnamed_addr constant [41 x i8] c"\016%s %d-%04x: saa6588 found @ 0x%x (%s)\0A\00", align 1
@saa6588_ops = internal constant %struct.v4l2_subdev_ops { %struct.v4l2_subdev_core_ops* @saa6588_core_ops, %struct.v4l2_subdev_tuner_ops* @saa6588_tuner_ops, %struct.v4l2_subdev_audio_ops* null, %struct.v4l2_subdev_video_ops* null, %struct.v4l2_subdev_vbi_ops* null, %struct.v4l2_subdev_ir_ops* null, %struct.v4l2_subdev_sensor_ops* null, %struct.v4l2_subdev_pad_ops* null }, align 8, !dbg !5363
@saa6588_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5360
@.str.2 = private unnamed_addr constant [15 x i8] c"&s->read_queue\00", align 1
@saa6588_core_ops = internal constant %struct.v4l2_subdev_core_ops { i32 (%struct.v4l2_subdev*)* null, i32 (%struct.v4l2_subdev*, i64, %struct.v4l2_subdev_io_pin_config*)* null, i32 (%struct.v4l2_subdev*, i32)* null, i32 (%struct.v4l2_subdev*)* null, i32 (%struct.v4l2_subdev*, i32)* null, i32 (%struct.v4l2_subdev*, i32)* null, i64 (%struct.v4l2_subdev*, i32, i8*)* @saa6588_ioctl, i32 (%struct.v4l2_subdev*, i32)* null, i32 (%struct.v4l2_subdev*, i32, i8*)* null, i32 (%struct.v4l2_subdev*, %struct.v4l2_fh*, %struct.v4l2_event_subscription*)* null, i32 (%struct.v4l2_subdev*, %struct.v4l2_fh*, %struct.v4l2_event_subscription*)* null }, align 8, !dbg !5365
@saa6588_tuner_ops = internal constant %struct.v4l2_subdev_tuner_ops { i32 (%struct.v4l2_subdev*)* null, i32 (%struct.v4l2_subdev*)* null, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)* null, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)* null, i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency_band*)* null, i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @saa6588_g_tuner, i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @saa6588_s_tuner, i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)* null, i32 (%struct.v4l2_subdev*, %struct.v4l2_modulator*)* null, i32 (%struct.v4l2_subdev*, %struct.tuner_setup*)* null, i32 (%struct.v4l2_subdev*, %struct.v4l2_priv_tun_config*)* null }, align 8, !dbg !5367
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"saa6588: Read: buffer empty.\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"saa6588: Read: \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%d blocks total.\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"saa6588: writing: 0w=0x%02x 1w=0x%02x 2w=0x%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"saa6588: i2c i/o error: rc == %d (should be 3)\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"saa6588: read error!\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Saw block %d again.\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"saa6588: New block: \00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@llvm.used = appending global [22 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype250, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_debug251, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_xtal to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_xtaltype252, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_xtal253, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_mmbs to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_mmbstype254, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_mmbs255, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_plvl to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_plvltype256, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__UNIQUE_ID_plvl257, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_bufblocks to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_bufblockstype258, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_bufblocks259, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_description260, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_author261, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_file262, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license263, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_saa6588_driver_init266 to i8*), i8* bitcast (void ()* @saa6588_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_saa6588_driver_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @saa6588_driver_init() #0 section ".init.text" !dbg !5381 {
entry:
  %call = call i32 @i2c_register_driver(%struct.module* null, %struct.i2c_driver* @saa6588_driver) #9, !dbg !5384
  ret i32 %call, !dbg !5384
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @saa6588_driver_exit() #0 section ".exit.text" !dbg !5385 {
entry:
  call void @i2c_del_driver(%struct.i2c_driver* @saa6588_driver) #9, !dbg !5386
  ret void, !dbg !5386
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_driver(%struct.i2c_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @i2c_register_driver(%struct.module*, %struct.i2c_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @saa6588_probe(%struct.i2c_client* %client, %struct.i2c_device_id* %id) #2 !dbg !5362 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5387, metadata !DIExpression()), !dbg !5393
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %id.addr = alloca %struct.i2c_device_id*, align 8
  %s = alloca %struct.saa6588*, align 8
  %sd = alloca %struct.v4l2_subdev*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  %.compoundliteral28 = alloca %struct.atomic64_t, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5396, metadata !DIExpression()), !dbg !5397
  store %struct.i2c_device_id* %id, %struct.i2c_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_device_id** %id.addr, metadata !5398, metadata !DIExpression()), !dbg !5399
  call void @llvm.dbg.declare(metadata %struct.saa6588** %s, metadata !5400, metadata !DIExpression()), !dbg !5401
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd, metadata !5402, metadata !DIExpression()), !dbg !5403
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5404
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !5404
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !5404
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5404
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %1, i32 0, i32 0, !dbg !5404
  %2 = load i8*, i8** %name, align 8, !dbg !5404
  %3 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5404
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %3, i32 0, i32 3, !dbg !5404
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !5404
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %4) #9, !dbg !5404
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5404
  %addr = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 1, !dbg !5404
  %6 = load i16, i16* %addr, align 2, !dbg !5404
  %conv = zext i16 %6 to i32, !dbg !5404
  %7 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5404
  %addr1 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1, !dbg !5404
  %8 = load i16, i16* %addr1, align 2, !dbg !5404
  %conv2 = zext i16 %8 to i32, !dbg !5404
  %shl = shl i32 %conv2, 1, !dbg !5404
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5404
  %adapter3 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 3, !dbg !5404
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter3, align 8, !dbg !5404
  %name4 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 12, !dbg !5404
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %name4, i64 0, i64 0, !dbg !5404
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %2, i32 %call, i32 %conv, i32 %shl, i8* %arraydecay) #10, !dbg !5404
  %11 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5405
  %dev6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 4, !dbg !5406
  %call7 = call i8* @devm_kzalloc(%struct.device* %dev6, i64 464, i32 3264) #9, !dbg !5407
  %12 = bitcast i8* %call7 to %struct.saa6588*, !dbg !5407
  store %struct.saa6588* %12, %struct.saa6588** %s, align 8, !dbg !5408
  %13 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5409
  %cmp = icmp eq %struct.saa6588* %13, null, !dbg !5411
  br i1 %cmp, label %if.then, label %if.end, !dbg !5412

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5413
  br label %return, !dbg !5413

if.end:                                           ; preds = %entry
  %14 = load i32, i32* @bufblocks, align 4, !dbg !5414
  %mul = mul i32 %14, 3, !dbg !5415
  %15 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5416
  %buf_size = getelementptr inbounds %struct.saa6588, %struct.saa6588* %15, i32 0, i32 4, !dbg !5417
  store i32 %mul, i32* %buf_size, align 8, !dbg !5418
  %16 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5419
  %dev9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 4, !dbg !5420
  %17 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5421
  %buf_size10 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %17, i32 0, i32 4, !dbg !5422
  %18 = load i32, i32* %buf_size10, align 8, !dbg !5422
  %conv11 = zext i32 %18 to i64, !dbg !5421
  %call12 = call i8* @devm_kzalloc(%struct.device* %dev9, i64 %conv11, i32 3264) #9, !dbg !5423
  %19 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5424
  %buffer = getelementptr inbounds %struct.saa6588, %struct.saa6588* %19, i32 0, i32 3, !dbg !5425
  store i8* %call12, i8** %buffer, align 8, !dbg !5426
  %20 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5427
  %buffer13 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %20, i32 0, i32 3, !dbg !5429
  %21 = load i8*, i8** %buffer13, align 8, !dbg !5429
  %cmp14 = icmp eq i8* %21, null, !dbg !5430
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !5431

if.then16:                                        ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !5432
  br label %return, !dbg !5432

if.end17:                                         ; preds = %if.end
  %22 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5433
  %sd18 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %22, i32 0, i32 0, !dbg !5434
  store %struct.v4l2_subdev* %sd18, %struct.v4l2_subdev** %sd, align 8, !dbg !5435
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd, align 8, !dbg !5436
  %24 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5437
  call void @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %23, %struct.i2c_client* %24, %struct.v4l2_subdev_ops* @saa6588_ops) #9, !dbg !5438
  br label %do.body, !dbg !5439

do.body:                                          ; preds = %if.end17
  %25 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5440
  %lock = getelementptr inbounds %struct.saa6588, %struct.saa6588* %25, i32 0, i32 2, !dbg !5440
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5441
  %27 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %26, i32 0, i32 0, !dbg !5442
  %rlock.i = bitcast %union.anon.3* %27 to %struct.raw_spinlock*, !dbg !5442
  %28 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5440
  %lock20 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %28, i32 0, i32 2, !dbg !5440
  %29 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !5440
  %rlock = bitcast %union.anon.3* %29 to %struct.raw_spinlock*, !dbg !5440
  %30 = bitcast %struct.spinlock* %lock20 to i8*, !dbg !5440
  %31 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !5440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 1 %31, i64 0, i1 false), !dbg !5440
  br label %do.end, !dbg !5440

do.end:                                           ; preds = %do.body
  %32 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5443
  %block_count = getelementptr inbounds %struct.saa6588, %struct.saa6588* %32, i32 0, i32 7, !dbg !5444
  store i32 0, i32* %block_count, align 4, !dbg !5445
  %33 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5446
  %wr_index = getelementptr inbounds %struct.saa6588, %struct.saa6588* %33, i32 0, i32 6, !dbg !5447
  store i32 0, i32* %wr_index, align 8, !dbg !5448
  %34 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5449
  %rd_index = getelementptr inbounds %struct.saa6588, %struct.saa6588* %34, i32 0, i32 5, !dbg !5450
  store i32 0, i32* %rd_index, align 4, !dbg !5451
  %35 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5452
  %last_blocknum = getelementptr inbounds %struct.saa6588, %struct.saa6588* %35, i32 0, i32 8, !dbg !5453
  store i8 -1, i8* %last_blocknum, align 8, !dbg !5454
  br label %do.body21, !dbg !5455

do.body21:                                        ; preds = %do.end
  %36 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5456
  %read_queue = getelementptr inbounds %struct.saa6588, %struct.saa6588* %36, i32 0, i32 9, !dbg !5456
  call void @__init_waitqueue_head(%struct.wait_queue_head* %read_queue, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @saa6588_probe.__key) #9, !dbg !5456
  br label %do.end22, !dbg !5456

do.end22:                                         ; preds = %do.body21
  %37 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5458
  %data_available_for_read = getelementptr inbounds %struct.saa6588, %struct.saa6588* %37, i32 0, i32 10, !dbg !5459
  store i32 0, i32* %data_available_for_read, align 8, !dbg !5460
  %38 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5461
  call void @saa6588_configure(%struct.saa6588* %38) #9, !dbg !5462
  br label %do.body23, !dbg !5463

do.body23:                                        ; preds = %do.end22
  br label %do.body24, !dbg !5464

do.body24:                                        ; preds = %do.body23
  %39 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5466
  %work = getelementptr inbounds %struct.saa6588, %struct.saa6588* %39, i32 0, i32 1, !dbg !5466
  %work25 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work, i32 0, i32 0, !dbg !5466
  call void @__init_work(%struct.work_struct* %work25, i32 0) #9, !dbg !5466
  %40 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5466
  %work26 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %40, i32 0, i32 1, !dbg !5466
  %work27 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work26, i32 0, i32 0, !dbg !5466
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work27, i32 0, i32 0, !dbg !5466
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral28, i32 0, i32 0, !dbg !5466
  store i64 68719476704, i64* %counter, align 8, !dbg !5466
  %41 = bitcast %struct.atomic64_t* %data to i8*, !dbg !5466
  %42 = bitcast %struct.atomic64_t* %.compoundliteral28 to i8*, !dbg !5466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false), !dbg !5466
  %43 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5466
  %work29 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %43, i32 0, i32 1, !dbg !5466
  %work30 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work29, i32 0, i32 0, !dbg !5466
  %entry31 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work30, i32 0, i32 1, !dbg !5466
  call void @INIT_LIST_HEAD(%struct.list_head* %entry31) #9, !dbg !5466
  %44 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5466
  %work32 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %44, i32 0, i32 1, !dbg !5466
  %work33 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work32, i32 0, i32 0, !dbg !5466
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work33, i32 0, i32 2, !dbg !5466
  store void (%struct.work_struct*)* @saa6588_work, void (%struct.work_struct*)** %func, align 8, !dbg !5466
  br label %do.end34, !dbg !5466

do.end34:                                         ; preds = %do.body24
  %45 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5464
  %work35 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %45, i32 0, i32 1, !dbg !5464
  %timer = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work35, i32 0, i32 1, !dbg !5464
  call void @init_timer_key(%struct.timer_list* %timer, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152, i8* null, %struct.lock_class_key* null) #9, !dbg !5464
  br label %do.end36, !dbg !5464

do.end36:                                         ; preds = %do.end34
  %46 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5468
  %work37 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %46, i32 0, i32 1, !dbg !5469
  %call38 = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* %work37, i64 0) #9, !dbg !5470
  store i32 0, i32* %retval, align 4, !dbg !5471
  br label %return, !dbg !5471

return:                                           ; preds = %do.end36, %if.then16, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !5472
  ret i32 %47, !dbg !5472
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @saa6588_remove(%struct.i2c_client* %client) #2 !dbg !5473 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %sd = alloca %struct.v4l2_subdev*, align 8
  %s = alloca %struct.saa6588*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5474, metadata !DIExpression()), !dbg !5475
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd, metadata !5476, metadata !DIExpression()), !dbg !5477
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5478
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #9, !dbg !5479
  %1 = bitcast i8* %call to %struct.v4l2_subdev*, !dbg !5479
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %sd, align 8, !dbg !5477
  call void @llvm.dbg.declare(metadata %struct.saa6588** %s, metadata !5480, metadata !DIExpression()), !dbg !5481
  %2 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd, align 8, !dbg !5482
  %call1 = call %struct.saa6588* @to_saa6588(%struct.v4l2_subdev* %2) #9, !dbg !5483
  store %struct.saa6588* %call1, %struct.saa6588** %s, align 8, !dbg !5481
  %3 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd, align 8, !dbg !5484
  call void @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %3) #9, !dbg !5485
  %4 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5486
  %work = getelementptr inbounds %struct.saa6588, %struct.saa6588* %4, i32 0, i32 1, !dbg !5487
  %call2 = call zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work* %work) #9, !dbg !5488
  ret i32 0, !dbg !5489
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_adapter_id(%struct.i2c_adapter* %adap) #2 !dbg !5490 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !5491, metadata !DIExpression()), !dbg !5492
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5493
  %nr = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 11, !dbg !5494
  %1 = load i32, i32* %nr, align 8, !dbg !5494
  ret i32 %1, !dbg !5495
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !5496 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5501, metadata !DIExpression()), !dbg !5502
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5505
  %1 = load i64, i64* %size.addr, align 8, !dbg !5506
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !5507
  %or = or i32 %2, 256, !dbg !5508
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #9, !dbg !5509
  ret i8* %call, !dbg !5510
}

; Function Attrs: noredzone
declare dso_local void @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, %struct.v4l2_subdev_ops*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @saa6588_configure(%struct.saa6588* %s) #2 !dbg !5511 {
entry:
  %s.addr = alloca %struct.saa6588*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %buf = alloca [3 x i8], align 1
  %rc = alloca i32, align 4
  store %struct.saa6588* %s, %struct.saa6588** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.saa6588** %s.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5516, metadata !DIExpression()), !dbg !5517
  %0 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5518
  %sd = getelementptr inbounds %struct.saa6588, %struct.saa6588* %0, i32 0, i32 0, !dbg !5519
  %call = call i8* @v4l2_get_subdevdata(%struct.v4l2_subdev* %sd) #9, !dbg !5520
  %1 = bitcast i8* %call to %struct.i2c_client*, !dbg !5520
  store %struct.i2c_client* %1, %struct.i2c_client** %client, align 8, !dbg !5517
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !5521, metadata !DIExpression()), !dbg !5523
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5524, metadata !DIExpression()), !dbg !5525
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5526
  store i8 32, i8* %arrayidx, align 1, !dbg !5527
  %2 = load i32, i32* @mmbs, align 4, !dbg !5528
  %tobool = icmp ne i32 %2, 0, !dbg !5528
  br i1 %tobool, label %if.then, label %if.end, !dbg !5530

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5531
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !5532
  %conv = zext i8 %3 to i32, !dbg !5532
  %or = or i32 %conv, 4, !dbg !5532
  %conv2 = trunc i32 %or to i8, !dbg !5532
  store i8 %conv2, i8* %arrayidx1, align 1, !dbg !5532
  br label %if.end, !dbg !5531

if.end:                                           ; preds = %if.then, %entry
  %arrayidx3 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5533
  store i8 32, i8* %arrayidx3, align 1, !dbg !5534
  %4 = load i32, i32* @plvl, align 4, !dbg !5535
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb12
    i32 3, label %sw.bb17
  ], !dbg !5536

sw.bb:                                            ; preds = %if.end
  %arrayidx4 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5537
  %5 = load i8, i8* %arrayidx4, align 1, !dbg !5539
  %conv5 = zext i8 %5 to i32, !dbg !5539
  %conv6 = trunc i32 %conv5 to i8, !dbg !5539
  store i8 %conv6, i8* %arrayidx4, align 1, !dbg !5539
  br label %sw.epilog, !dbg !5540

sw.bb7:                                           ; preds = %if.end
  %arrayidx8 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5541
  %6 = load i8, i8* %arrayidx8, align 1, !dbg !5542
  %conv9 = zext i8 %6 to i32, !dbg !5542
  %or10 = or i32 %conv9, 64, !dbg !5542
  %conv11 = trunc i32 %or10 to i8, !dbg !5542
  store i8 %conv11, i8* %arrayidx8, align 1, !dbg !5542
  br label %sw.epilog, !dbg !5543

sw.bb12:                                          ; preds = %if.end
  %arrayidx13 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5544
  %7 = load i8, i8* %arrayidx13, align 1, !dbg !5545
  %conv14 = zext i8 %7 to i32, !dbg !5545
  %or15 = or i32 %conv14, 128, !dbg !5545
  %conv16 = trunc i32 %or15 to i8, !dbg !5545
  store i8 %conv16, i8* %arrayidx13, align 1, !dbg !5545
  br label %sw.epilog, !dbg !5546

sw.bb17:                                          ; preds = %if.end
  %arrayidx18 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5547
  %8 = load i8, i8* %arrayidx18, align 1, !dbg !5548
  %conv19 = zext i8 %8 to i32, !dbg !5548
  %or20 = or i32 %conv19, 192, !dbg !5548
  %conv21 = trunc i32 %or20 to i8, !dbg !5548
  store i8 %conv21, i8* %arrayidx18, align 1, !dbg !5548
  br label %sw.epilog, !dbg !5549

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !5550

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb12, %sw.bb7, %sw.bb
  %arrayidx22 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5551
  store i8 47, i8* %arrayidx22, align 1, !dbg !5552
  %9 = load i32, i32* @xtal, align 4, !dbg !5553
  switch i32 %9, label %sw.default42 [
    i32 0, label %sw.bb23
    i32 1, label %sw.bb27
    i32 2, label %sw.bb32
    i32 3, label %sw.bb37
  ], !dbg !5554

sw.bb23:                                          ; preds = %sw.epilog
  %arrayidx24 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5555
  %10 = load i8, i8* %arrayidx24, align 1, !dbg !5557
  %conv25 = zext i8 %10 to i32, !dbg !5557
  %conv26 = trunc i32 %conv25 to i8, !dbg !5557
  store i8 %conv26, i8* %arrayidx24, align 1, !dbg !5557
  br label %sw.epilog43, !dbg !5558

sw.bb27:                                          ; preds = %sw.epilog
  %arrayidx28 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5559
  %11 = load i8, i8* %arrayidx28, align 1, !dbg !5560
  %conv29 = zext i8 %11 to i32, !dbg !5560
  %or30 = or i32 %conv29, 64, !dbg !5560
  %conv31 = trunc i32 %or30 to i8, !dbg !5560
  store i8 %conv31, i8* %arrayidx28, align 1, !dbg !5560
  br label %sw.epilog43, !dbg !5561

sw.bb32:                                          ; preds = %sw.epilog
  %arrayidx33 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5562
  %12 = load i8, i8* %arrayidx33, align 1, !dbg !5563
  %conv34 = zext i8 %12 to i32, !dbg !5563
  %or35 = or i32 %conv34, 128, !dbg !5563
  %conv36 = trunc i32 %or35 to i8, !dbg !5563
  store i8 %conv36, i8* %arrayidx33, align 1, !dbg !5563
  br label %sw.epilog43, !dbg !5564

sw.bb37:                                          ; preds = %sw.epilog
  %arrayidx38 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5565
  %13 = load i8, i8* %arrayidx38, align 1, !dbg !5566
  %conv39 = zext i8 %13 to i32, !dbg !5566
  %or40 = or i32 %conv39, 192, !dbg !5566
  %conv41 = trunc i32 %or40 to i8, !dbg !5566
  store i8 %conv41, i8* %arrayidx38, align 1, !dbg !5566
  br label %sw.epilog43, !dbg !5567

sw.default42:                                     ; preds = %sw.epilog
  br label %sw.epilog43, !dbg !5568

sw.epilog43:                                      ; preds = %sw.default42, %sw.bb37, %sw.bb32, %sw.bb27, %sw.bb23
  %14 = load i32, i32* @debug, align 4, !dbg !5569
  %tobool44 = icmp ne i32 %14, 0, !dbg !5569
  br i1 %tobool44, label %if.then45, label %if.end53, !dbg !5571

if.then45:                                        ; preds = %sw.epilog43
  %arrayidx46 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5572
  %15 = load i8, i8* %arrayidx46, align 1, !dbg !5572
  %conv47 = zext i8 %15 to i32, !dbg !5572
  %arrayidx48 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 1, !dbg !5573
  %16 = load i8, i8* %arrayidx48, align 1, !dbg !5573
  %conv49 = zext i8 %16 to i32, !dbg !5573
  %arrayidx50 = getelementptr [3 x i8], [3 x i8]* %buf, i64 0, i64 2, !dbg !5574
  %17 = load i8, i8* %arrayidx50, align 1, !dbg !5574
  %conv51 = zext i8 %17 to i32, !dbg !5574
  %call52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %conv47, i32 %conv49, i32 %conv51) #10, !dbg !5569
  br label %if.end53, !dbg !5569

if.end53:                                         ; preds = %if.then45, %sw.epilog43
  %18 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5575
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5576
  %call54 = call i32 @i2c_master_send(%struct.i2c_client* %18, i8* %arraydecay, i32 3) #9, !dbg !5577
  store i32 %call54, i32* %rc, align 4, !dbg !5578
  %19 = load i32, i32* %rc, align 4, !dbg !5579
  %cmp = icmp ne i32 %19, 3, !dbg !5581
  br i1 %cmp, label %if.then56, label %if.end58, !dbg !5582

if.then56:                                        ; preds = %if.end53
  %20 = load i32, i32* %rc, align 4, !dbg !5583
  %call57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %20) #10, !dbg !5584
  br label %if.end58, !dbg !5584

if.end58:                                         ; preds = %if.then56, %if.end53
  ret void, !dbg !5585
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #2 !dbg !5586 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5589, metadata !DIExpression()), !dbg !5590
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !5591, metadata !DIExpression()), !dbg !5592
  ret void, !dbg !5593
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #2 !dbg !5594 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5598, metadata !DIExpression()), !dbg !5599
  br label %do.body, !dbg !5600

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5601

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5603

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5601

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5605
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5605
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5605
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5605
  br label %do.end3, !dbg !5605

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5601

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5607
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5608
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5609
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5610
  ret void, !dbg !5611
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @saa6588_work(%struct.work_struct* %work) #2 !dbg !5612 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5613, metadata !DIExpression()), !dbg !5618
  %work.addr = alloca %struct.work_struct*, align 8
  %s = alloca %struct.saa6588*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.saa6588*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5620, metadata !DIExpression()), !dbg !5621
  call void @llvm.dbg.declare(metadata %struct.saa6588** %s, metadata !5622, metadata !DIExpression()), !dbg !5623
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5624, metadata !DIExpression()), !dbg !5626
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5626
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !5626
  store i8* %1, i8** %__mptr, align 8, !dbg !5626
  br label %do.body, !dbg !5626

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5627

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5626
  %add.ptr = getelementptr i8, i8* %2, i64 -320, !dbg !5626
  %3 = bitcast i8* %add.ptr to %struct.saa6588*, !dbg !5626
  store %struct.saa6588* %3, %struct.saa6588** %tmp, align 8, !dbg !5627
  %4 = load %struct.saa6588*, %struct.saa6588** %tmp, align 8, !dbg !5626
  store %struct.saa6588* %4, %struct.saa6588** %s, align 8, !dbg !5623
  %5 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5629
  call void @saa6588_i2c_poll(%struct.saa6588* %5) #9, !dbg !5630
  %6 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5631
  %work1 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %6, i32 0, i32 1, !dbg !5632
  store i32 20, i32* %m.addr.i, align 4
  %7 = load i32, i32* %m.addr.i, align 4, !dbg !5633
  %8 = call i1 @llvm.is.constant.i32(i32 %7) #7, !dbg !5635
  br i1 %8, label %if.then.i, label %if.else.i, !dbg !5636

if.then.i:                                        ; preds = %do.end
  %9 = load i32, i32* %m.addr.i, align 4, !dbg !5637
  %cmp.i = icmp slt i32 %9, 0, !dbg !5640
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5641

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5642
  br label %msecs_to_jiffies.exit, !dbg !5642

if.end.i:                                         ; preds = %if.then.i
  %10 = load i32, i32* %m.addr.i, align 4, !dbg !5643
  %call.i = call i64 @_msecs_to_jiffies(i32 %10) #11, !dbg !5644
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5645
  br label %msecs_to_jiffies.exit, !dbg !5645

if.else.i:                                        ; preds = %do.end
  %11 = load i32, i32* %m.addr.i, align 4, !dbg !5646
  %call2.i = call i64 @__msecs_to_jiffies(i32 %11) #11, !dbg !5648
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5649
  br label %msecs_to_jiffies.exit, !dbg !5649

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %12 = load i64, i64* %retval.i, align 8, !dbg !5650
  %call2 = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* %work1, i64 %12) #9, !dbg !5651
  ret void, !dbg !5652
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local void @delayed_work_timer_fn(%struct.timer_list*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_delayed_work(%struct.delayed_work* %dwork, i64 %delay) #2 !dbg !5653 {
entry:
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !5661
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !5662
  %2 = load i64, i64* %delay.addr, align 8, !dbg !5663
  %call = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #9, !dbg !5664
  ret i1 %call, !dbg !5665
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @saa6588_ioctl(%struct.v4l2_subdev* %sd, i32 %cmd, i8* %arg) #2 !dbg !5666 {
entry:
  %retval = alloca i64, align 8
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %s = alloca %struct.saa6588*, align 8
  %a = alloca %struct.saa6588_command*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !5667, metadata !DIExpression()), !dbg !5668
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !5669, metadata !DIExpression()), !dbg !5670
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5671, metadata !DIExpression()), !dbg !5672
  call void @llvm.dbg.declare(metadata %struct.saa6588** %s, metadata !5673, metadata !DIExpression()), !dbg !5674
  %0 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd.addr, align 8, !dbg !5675
  %call = call %struct.saa6588* @to_saa6588(%struct.v4l2_subdev* %0) #9, !dbg !5676
  store %struct.saa6588* %call, %struct.saa6588** %s, align 8, !dbg !5674
  call void @llvm.dbg.declare(metadata %struct.saa6588_command** %a, metadata !5677, metadata !DIExpression()), !dbg !5691
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !5692
  %2 = bitcast i8* %1 to %struct.saa6588_command*, !dbg !5692
  store %struct.saa6588_command* %2, %struct.saa6588_command** %a, align 8, !dbg !5691
  %3 = load i32, i32* %cmd.addr, align 4, !dbg !5693
  switch i32 %3, label %sw.default [
    i32 1074024962, label %sw.bb
    i32 -2147200509, label %sw.bb2
    i32 -2147200508, label %sw.bb3
  ], !dbg !5694

sw.bb:                                            ; preds = %entry
  %4 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5695
  %data_available_for_read = getelementptr inbounds %struct.saa6588, %struct.saa6588* %4, i32 0, i32 10, !dbg !5697
  store i32 1, i32* %data_available_for_read, align 8, !dbg !5698
  %5 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5699
  %read_queue = getelementptr inbounds %struct.saa6588, %struct.saa6588* %5, i32 0, i32 9, !dbg !5699
  call void @__wake_up(%struct.wait_queue_head* %read_queue, i32 1, i32 1, i8* null) #9, !dbg !5699
  %6 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5700
  %data_available_for_read1 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %6, i32 0, i32 10, !dbg !5701
  store i32 0, i32* %data_available_for_read1, align 8, !dbg !5702
  %7 = load %struct.saa6588_command*, %struct.saa6588_command** %a, align 8, !dbg !5703
  %result = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %7, i32 0, i32 2, !dbg !5704
  store i32 0, i32* %result, align 8, !dbg !5705
  br label %sw.epilog, !dbg !5706

sw.bb2:                                           ; preds = %entry
  %8 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5707
  %9 = load %struct.saa6588_command*, %struct.saa6588_command** %a, align 8, !dbg !5708
  call void @read_from_buf(%struct.saa6588* %8, %struct.saa6588_command* %9) #9, !dbg !5709
  br label %sw.epilog, !dbg !5710

sw.bb3:                                           ; preds = %entry
  %10 = load %struct.saa6588_command*, %struct.saa6588_command** %a, align 8, !dbg !5711
  %poll_mask = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %10, i32 0, i32 6, !dbg !5712
  store i32 0, i32* %poll_mask, align 8, !dbg !5713
  %11 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5714
  %data_available_for_read4 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %11, i32 0, i32 10, !dbg !5716
  %12 = load i32, i32* %data_available_for_read4, align 8, !dbg !5716
  %tobool = icmp ne i32 %12, 0, !dbg !5714
  br i1 %tobool, label %if.then, label %if.end, !dbg !5717

if.then:                                          ; preds = %sw.bb3
  %13 = load %struct.saa6588_command*, %struct.saa6588_command** %a, align 8, !dbg !5718
  %poll_mask5 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %13, i32 0, i32 6, !dbg !5719
  %14 = load i32, i32* %poll_mask5, align 8, !dbg !5720
  %or = or i32 %14, 65, !dbg !5720
  store i32 %or, i32* %poll_mask5, align 8, !dbg !5720
  br label %if.end, !dbg !5718

if.end:                                           ; preds = %if.then, %sw.bb3
  %15 = load %struct.saa6588_command*, %struct.saa6588_command** %a, align 8, !dbg !5721
  %instance = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %15, i32 0, i32 4, !dbg !5722
  %16 = load %struct.file*, %struct.file** %instance, align 8, !dbg !5722
  %17 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !5723
  %read_queue6 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %17, i32 0, i32 9, !dbg !5724
  %18 = load %struct.saa6588_command*, %struct.saa6588_command** %a, align 8, !dbg !5725
  %event_list = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %18, i32 0, i32 5, !dbg !5726
  %19 = load %struct.poll_table_struct*, %struct.poll_table_struct** %event_list, align 8, !dbg !5726
  call void @poll_wait(%struct.file* %16, %struct.wait_queue_head* %read_queue6, %struct.poll_table_struct* %19) #9, !dbg !5727
  br label %sw.epilog, !dbg !5728

sw.default:                                       ; preds = %entry
  store i64 -515, i64* %retval, align 8, !dbg !5729
  br label %return, !dbg !5729

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  store i64 0, i64* %retval, align 8, !dbg !5730
  br label %return, !dbg !5730

return:                                           ; preds = %sw.epilog, %sw.default
  %20 = load i64, i64* %retval, align 8, !dbg !5731
  ret i64 %20, !dbg !5731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.saa6588* @to_saa6588(%struct.v4l2_subdev* %sd) #2 !dbg !5732 {
entry:
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.saa6588*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !5735, metadata !DIExpression()), !dbg !5736
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5737, metadata !DIExpression()), !dbg !5739
  %0 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd.addr, align 8, !dbg !5739
  %1 = bitcast %struct.v4l2_subdev* %0 to i8*, !dbg !5739
  store i8* %1, i8** %__mptr, align 8, !dbg !5739
  br label %do.body, !dbg !5739

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5740

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5739
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5739
  %3 = bitcast i8* %add.ptr to %struct.saa6588*, !dbg !5739
  store %struct.saa6588* %3, %struct.saa6588** %tmp, align 8, !dbg !5740
  %4 = load %struct.saa6588*, %struct.saa6588** %tmp, align 8, !dbg !5739
  ret %struct.saa6588* %4, !dbg !5742
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @read_from_buf(%struct.saa6588* %s, %struct.saa6588_command* %a) #2 !dbg !5743 {
entry:
  %lock.addr.i147 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i147, metadata !5387, metadata !DIExpression()), !dbg !5746
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !5753, metadata !DIExpression()), !dbg !5758
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !5770, metadata !DIExpression()), !dbg !5771
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !5772, metadata !DIExpression()), !dbg !5773
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !5774, metadata !DIExpression()), !dbg !5775
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !5776, metadata !DIExpression()), !dbg !5779
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5780, metadata !DIExpression()), !dbg !5781
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5782, metadata !DIExpression()), !dbg !5783
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5784, metadata !DIExpression()), !dbg !5785
  %lock.addr.i142 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i142, metadata !5786, metadata !DIExpression()), !dbg !5790
  %flags.addr.i143 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i143, metadata !5792, metadata !DIExpression()), !dbg !5793
  %tmp.i144 = alloca i32, align 4
  %tmp8.i145 = alloca i32, align 4
  %lock.addr.i140 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i140, metadata !5387, metadata !DIExpression()), !dbg !5794
  %lock.addr.i135 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i135, metadata !5786, metadata !DIExpression()), !dbg !5801
  %flags.addr.i136 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i136, metadata !5792, metadata !DIExpression()), !dbg !5803
  %tmp.i137 = alloca i32, align 4
  %tmp8.i138 = alloca i32, align 4
  %lock.addr.i133 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i133, metadata !5786, metadata !DIExpression()), !dbg !5804
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5792, metadata !DIExpression()), !dbg !5806
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5387, metadata !DIExpression()), !dbg !5807
  %s.addr = alloca %struct.saa6588*, align 8
  %a.addr = alloca %struct.saa6588_command*, align 8
  %buf_ptr = alloca i8*, align 8
  %buf = alloca [3 x i8], align 1
  %flags = alloca i64, align 8
  %rd_blocks = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret9 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp19 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp28 = alloca i32, align 4
  %__dummy32 = alloca i64, align 8
  %__dummy233 = alloca i64, align 8
  %tmp36 = alloca i32, align 4
  %got_block = alloca i8, align 1
  %__dummy63 = alloca i64, align 8
  %__dummy264 = alloca i64, align 8
  %tmp67 = alloca i32, align 4
  %__dummy71 = alloca i64, align 8
  %__dummy272 = alloca i64, align 8
  %tmp75 = alloca i32, align 4
  %__dummy103 = alloca i64, align 8
  %__dummy2104 = alloca i64, align 8
  %tmp107 = alloca i32, align 4
  %__dummy111 = alloca i64, align 8
  %__dummy2112 = alloca i64, align 8
  %tmp115 = alloca i32, align 4
  store %struct.saa6588* %s, %struct.saa6588** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.saa6588** %s.addr, metadata !5814, metadata !DIExpression()), !dbg !5815
  store %struct.saa6588_command* %a, %struct.saa6588_command** %a.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.saa6588_command** %a.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  call void @llvm.dbg.declare(metadata i8** %buf_ptr, metadata !5818, metadata !DIExpression()), !dbg !5819
  %0 = load %struct.saa6588_command*, %struct.saa6588_command** %a.addr, align 8, !dbg !5820
  %buffer = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %0, i32 0, i32 3, !dbg !5821
  %1 = load i8*, i8** %buffer, align 8, !dbg !5821
  store i8* %1, i8** %buf_ptr, align 8, !dbg !5819
  call void @llvm.dbg.declare(metadata [3 x i8]* %buf, metadata !5822, metadata !DIExpression()), !dbg !5823
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5824, metadata !DIExpression()), !dbg !5825
  call void @llvm.dbg.declare(metadata i32* %rd_blocks, metadata !5826, metadata !DIExpression()), !dbg !5827
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5828, metadata !DIExpression()), !dbg !5829
  %2 = load %struct.saa6588_command*, %struct.saa6588_command** %a.addr, align 8, !dbg !5830
  %result = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %2, i32 0, i32 2, !dbg !5831
  store i32 0, i32* %result, align 8, !dbg !5832
  %3 = load %struct.saa6588_command*, %struct.saa6588_command** %a.addr, align 8, !dbg !5833
  %buffer1 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %3, i32 0, i32 3, !dbg !5835
  %4 = load i8*, i8** %buffer1, align 8, !dbg !5835
  %tobool = icmp ne i8* %4, null, !dbg !5833
  br i1 %tobool, label %if.end, label %if.then, !dbg !5836

if.then:                                          ; preds = %entry
  br label %return, !dbg !5837

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !5838

while.cond:                                       ; preds = %if.end23, %if.end
  %5 = load %struct.saa6588_command*, %struct.saa6588_command** %a.addr, align 8, !dbg !5839
  %nonblocking = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %5, i32 0, i32 1, !dbg !5840
  %6 = load i8, i8* %nonblocking, align 4, !dbg !5840
  %tobool2 = trunc i8 %6 to i1, !dbg !5840
  br i1 %tobool2, label %land.end, label %land.rhs, !dbg !5841

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5842
  %data_available_for_read = getelementptr inbounds %struct.saa6588, %struct.saa6588* %7, i32 0, i32 10, !dbg !5843
  %8 = load i32, i32* %data_available_for_read, align 8, !dbg !5843
  %tobool3 = icmp ne i32 %8, 0, !dbg !5844
  %lnot = xor i1 %tobool3, true, !dbg !5844
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !5845
  br i1 %9, label %while.body, label %while.end, !dbg !5838

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5846, metadata !DIExpression()), !dbg !5848
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5849, metadata !DIExpression()), !dbg !5851
  store i32 0, i32* %__ret, align 4, !dbg !5851
  br label %do.body, !dbg !5851

do.body:                                          ; preds = %while.body
  br label %do.body4, !dbg !5852

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5854

do.end:                                           ; preds = %do.body4
  br label %do.end5, !dbg !5852

do.end5:                                          ; preds = %do.end
  %10 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5856
  %data_available_for_read6 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %10, i32 0, i32 10, !dbg !5856
  %11 = load i32, i32* %data_available_for_read6, align 8, !dbg !5856
  %tobool7 = icmp ne i32 %11, 0, !dbg !5856
  br i1 %tobool7, label %if.end18, label %if.then8, !dbg !5851

if.then8:                                         ; preds = %do.end5
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !5858, metadata !DIExpression()), !dbg !5871
  call void @llvm.dbg.declare(metadata i64* %__ret9, metadata !5872, metadata !DIExpression()), !dbg !5871
  store i64 0, i64* %__ret9, align 8, !dbg !5871
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #9, !dbg !5871
  br label %for.cond, !dbg !5871

for.cond:                                         ; preds = %if.end16, %if.then8
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !5873, metadata !DIExpression()), !dbg !5877
  %12 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5877
  %read_queue = getelementptr inbounds %struct.saa6588, %struct.saa6588* %12, i32 0, i32 9, !dbg !5877
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %read_queue, %struct.wait_queue_entry* %__wq_entry, i32 1) #9, !dbg !5877
  store i64 %call, i64* %__int, align 8, !dbg !5877
  %13 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5878
  %data_available_for_read10 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %13, i32 0, i32 10, !dbg !5878
  %14 = load i32, i32* %data_available_for_read10, align 8, !dbg !5878
  %tobool11 = icmp ne i32 %14, 0, !dbg !5878
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5877

if.then12:                                        ; preds = %for.cond
  br label %for.end, !dbg !5878

if.end13:                                         ; preds = %for.cond
  %15 = load i64, i64* %__int, align 8, !dbg !5880
  %tobool14 = icmp ne i64 %15, 0, !dbg !5880
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5877

if.then15:                                        ; preds = %if.end13
  %16 = load i64, i64* %__int, align 8, !dbg !5882
  store i64 %16, i64* %__ret9, align 8, !dbg !5882
  br label %__out, !dbg !5882

if.end16:                                         ; preds = %if.end13
  call void @schedule() #9, !dbg !5877
  br label %for.cond, !dbg !5884, !llvm.loop !5885

for.end:                                          ; preds = %if.then12
  %17 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5871
  %read_queue17 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %17, i32 0, i32 9, !dbg !5871
  call void @finish_wait(%struct.wait_queue_head* %read_queue17, %struct.wait_queue_entry* %__wq_entry) #9, !dbg !5871
  br label %__out, !dbg !5871

__out:                                            ; preds = %for.end, %if.then15
  call void @llvm.dbg.label(metadata !5887), !dbg !5871
  %18 = load i64, i64* %__ret9, align 8, !dbg !5871
  store i64 %18, i64* %tmp, align 8, !dbg !5871
  %19 = load i64, i64* %tmp, align 8, !dbg !5871
  %conv = trunc i64 %19 to i32, !dbg !5856
  store i32 %conv, i32* %__ret, align 4, !dbg !5856
  br label %if.end18, !dbg !5856

if.end18:                                         ; preds = %__out, %do.end5
  %20 = load i32, i32* %__ret, align 4, !dbg !5851
  store i32 %20, i32* %tmp19, align 4, !dbg !5856
  %21 = load i32, i32* %tmp19, align 4, !dbg !5851
  store i32 %21, i32* %ret, align 4, !dbg !5848
  %22 = load i32, i32* %ret, align 4, !dbg !5888
  %cmp = icmp eq i32 %22, -512, !dbg !5890
  br i1 %cmp, label %if.then21, label %if.end23, !dbg !5891

if.then21:                                        ; preds = %if.end18
  %23 = load %struct.saa6588_command*, %struct.saa6588_command** %a.addr, align 8, !dbg !5892
  %result22 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %23, i32 0, i32 2, !dbg !5894
  store i32 -4, i32* %result22, align 8, !dbg !5895
  br label %return, !dbg !5896

if.end23:                                         ; preds = %if.end18
  br label %while.cond, !dbg !5838, !llvm.loop !5897

while.end:                                        ; preds = %land.end
  %24 = load %struct.saa6588_command*, %struct.saa6588_command** %a.addr, align 8, !dbg !5899
  %block_count = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %24, i32 0, i32 0, !dbg !5900
  %25 = load i32, i32* %block_count, align 8, !dbg !5900
  store i32 %25, i32* %rd_blocks, align 4, !dbg !5901
  br label %do.body24, !dbg !5902

do.body24:                                        ; preds = %while.end
  br label %do.body25, !dbg !5903

do.body25:                                        ; preds = %do.body24
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5904, metadata !DIExpression()), !dbg !5906
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5907, metadata !DIExpression()), !dbg !5906
  %cmp26 = icmp eq i64* %__dummy, %__dummy2, !dbg !5906
  %conv27 = zext i1 %cmp26 to i32, !dbg !5906
  store i32 1, i32* %tmp28, align 4, !dbg !5906
  %26 = load i32, i32* %tmp28, align 4, !dbg !5906
  br label %do.body29, !dbg !5908

do.body29:                                        ; preds = %do.body25
  br label %do.body30, !dbg !5909

do.body30:                                        ; preds = %do.body29
  br label %do.body31, !dbg !5910

do.body31:                                        ; preds = %do.body30
  call void @llvm.dbg.declare(metadata i64* %__dummy32, metadata !5912, metadata !DIExpression()), !dbg !5915
  call void @llvm.dbg.declare(metadata i64* %__dummy233, metadata !5916, metadata !DIExpression()), !dbg !5915
  %cmp34 = icmp eq i64* %__dummy32, %__dummy233, !dbg !5915
  %conv35 = zext i1 %cmp34 to i32, !dbg !5915
  store i32 1, i32* %tmp36, align 4, !dbg !5915
  %27 = load i32, i32* %tmp36, align 4, !dbg !5915
  %call37 = call i64 @arch_local_irq_save() #9, !dbg !5917
  store i64 %call37, i64* %flags, align 8, !dbg !5917
  br label %do.end38, !dbg !5917

do.end38:                                         ; preds = %do.body31
  br label %do.end39, !dbg !5910

do.end39:                                         ; preds = %do.end38
  br label %do.body40, !dbg !5909

do.body40:                                        ; preds = %do.end39
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5918, !srcloc !5919
  br label %do.body41, !dbg !5918

do.body41:                                        ; preds = %do.body40
  %28 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5920
  %lock = getelementptr inbounds %struct.saa6588, %struct.saa6588* %28, i32 0, i32 2, !dbg !5920
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5921
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !5922
  %rlock.i = bitcast %union.anon.3* %30 to %struct.raw_spinlock*, !dbg !5922
  br label %do.end43, !dbg !5920

do.end43:                                         ; preds = %do.body41
  br label %do.end44, !dbg !5918

do.end44:                                         ; preds = %do.end43
  br label %do.end45, !dbg !5909

do.end45:                                         ; preds = %do.end44
  br label %do.end46, !dbg !5908

do.end46:                                         ; preds = %do.end45
  br label %do.end47, !dbg !5903

do.end47:                                         ; preds = %do.end46
  %31 = load i32, i32* %rd_blocks, align 4, !dbg !5923
  %32 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5925
  %block_count48 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %32, i32 0, i32 7, !dbg !5926
  %33 = load i32, i32* %block_count48, align 4, !dbg !5926
  %cmp49 = icmp ugt i32 %31, %33, !dbg !5927
  br i1 %cmp49, label %if.then51, label %if.end53, !dbg !5928

if.then51:                                        ; preds = %do.end47
  %34 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5929
  %block_count52 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %34, i32 0, i32 7, !dbg !5930
  %35 = load i32, i32* %block_count52, align 4, !dbg !5930
  store i32 %35, i32* %rd_blocks, align 4, !dbg !5931
  br label %if.end53, !dbg !5932

if.end53:                                         ; preds = %if.then51, %do.end47
  %36 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5933
  %lock54 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %36, i32 0, i32 2, !dbg !5934
  %37 = load i64, i64* %flags, align 8, !dbg !5935
  store %struct.spinlock* %lock54, %struct.spinlock** %lock.addr.i135, align 8
  store i64 %37, i64* %flags.addr.i136, align 8
  call void @llvm.dbg.declare(metadata !286, metadata !5936, metadata !DIExpression()) #7, !dbg !5939
  call void @llvm.dbg.declare(metadata !286, metadata !5940, metadata !DIExpression()) #7, !dbg !5939
  store i32 1, i32* %tmp.i137, align 4, !dbg !5939
  %38 = load i32, i32* %tmp.i137, align 4, !dbg !5939
  call void @llvm.dbg.declare(metadata !286, metadata !5941, metadata !DIExpression()) #7, !dbg !5946
  call void @llvm.dbg.declare(metadata !286, metadata !5947, metadata !DIExpression()) #7, !dbg !5946
  store i32 1, i32* %tmp8.i138, align 4, !dbg !5946
  %39 = load i32, i32* %tmp8.i138, align 4, !dbg !5946
  %40 = load i64, i64* %flags.addr.i136, align 8, !dbg !5948
  call void @arch_local_irq_restore(i64 %40) #11, !dbg !5948
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5949, !srcloc !5951
  %41 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i135, align 8, !dbg !5952
  %42 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %41, i32 0, i32 0, !dbg !5952
  %rlock.i139 = bitcast %union.anon.3* %42 to %struct.raw_spinlock*, !dbg !5952
  %43 = load i32, i32* %rd_blocks, align 4, !dbg !5954
  %tobool55 = icmp ne i32 %43, 0, !dbg !5954
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !5956

if.then56:                                        ; preds = %if.end53
  br label %return, !dbg !5957

if.end57:                                         ; preds = %if.end53
  store i32 0, i32* %i, align 4, !dbg !5958
  br label %for.cond58, !dbg !5959

for.cond58:                                       ; preds = %for.inc, %if.end57
  %44 = load i32, i32* %i, align 4, !dbg !5960
  %45 = load i32, i32* %rd_blocks, align 4, !dbg !5961
  %cmp59 = icmp ult i32 %44, %45, !dbg !5962
  br i1 %cmp59, label %for.body, label %for.end100, !dbg !5963

for.body:                                         ; preds = %for.cond58
  call void @llvm.dbg.declare(metadata i8* %got_block, metadata !5964, metadata !DIExpression()), !dbg !5965
  br label %do.body61, !dbg !5966

do.body61:                                        ; preds = %for.body
  br label %do.body62, !dbg !5967

do.body62:                                        ; preds = %do.body61
  call void @llvm.dbg.declare(metadata i64* %__dummy63, metadata !5968, metadata !DIExpression()), !dbg !5970
  call void @llvm.dbg.declare(metadata i64* %__dummy264, metadata !5971, metadata !DIExpression()), !dbg !5970
  %cmp65 = icmp eq i64* %__dummy63, %__dummy264, !dbg !5970
  %conv66 = zext i1 %cmp65 to i32, !dbg !5970
  store i32 1, i32* %tmp67, align 4, !dbg !5970
  %46 = load i32, i32* %tmp67, align 4, !dbg !5970
  br label %do.body68, !dbg !5972

do.body68:                                        ; preds = %do.body62
  br label %do.body69, !dbg !5973

do.body69:                                        ; preds = %do.body68
  br label %do.body70, !dbg !5974

do.body70:                                        ; preds = %do.body69
  call void @llvm.dbg.declare(metadata i64* %__dummy71, metadata !5976, metadata !DIExpression()), !dbg !5979
  call void @llvm.dbg.declare(metadata i64* %__dummy272, metadata !5980, metadata !DIExpression()), !dbg !5979
  %cmp73 = icmp eq i64* %__dummy71, %__dummy272, !dbg !5979
  %conv74 = zext i1 %cmp73 to i32, !dbg !5979
  store i32 1, i32* %tmp75, align 4, !dbg !5979
  %47 = load i32, i32* %tmp75, align 4, !dbg !5979
  %call76 = call i64 @arch_local_irq_save() #9, !dbg !5981
  store i64 %call76, i64* %flags, align 8, !dbg !5981
  br label %do.end77, !dbg !5981

do.end77:                                         ; preds = %do.body70
  br label %do.end78, !dbg !5974

do.end78:                                         ; preds = %do.end77
  br label %do.body79, !dbg !5973

do.body79:                                        ; preds = %do.end78
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5982, !srcloc !5983
  br label %do.body80, !dbg !5982

do.body80:                                        ; preds = %do.body79
  %48 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5984
  %lock81 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %48, i32 0, i32 2, !dbg !5984
  store %struct.spinlock* %lock81, %struct.spinlock** %lock.addr.i140, align 8
  %49 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i140, align 8, !dbg !5985
  %50 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %49, i32 0, i32 0, !dbg !5986
  %rlock.i141 = bitcast %union.anon.3* %50 to %struct.raw_spinlock*, !dbg !5986
  br label %do.end83, !dbg !5984

do.end83:                                         ; preds = %do.body80
  br label %do.end84, !dbg !5982

do.end84:                                         ; preds = %do.end83
  br label %do.end85, !dbg !5973

do.end85:                                         ; preds = %do.end84
  br label %do.end86, !dbg !5972

do.end86:                                         ; preds = %do.end85
  br label %do.end87, !dbg !5967

do.end87:                                         ; preds = %do.end86
  %51 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5987
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !5988
  %call88 = call zeroext i1 @block_from_buf(%struct.saa6588* %51, i8* %arraydecay) #9, !dbg !5989
  %frombool = zext i1 %call88 to i8, !dbg !5990
  store i8 %frombool, i8* %got_block, align 1, !dbg !5990
  %52 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !5991
  %lock89 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %52, i32 0, i32 2, !dbg !5992
  %53 = load i64, i64* %flags, align 8, !dbg !5993
  store %struct.spinlock* %lock89, %struct.spinlock** %lock.addr.i142, align 8
  store i64 %53, i64* %flags.addr.i143, align 8
  call void @llvm.dbg.declare(metadata !286, metadata !5936, metadata !DIExpression()) #7, !dbg !5994
  call void @llvm.dbg.declare(metadata !286, metadata !5940, metadata !DIExpression()) #7, !dbg !5994
  store i32 1, i32* %tmp.i144, align 4, !dbg !5994
  %54 = load i32, i32* %tmp.i144, align 4, !dbg !5994
  call void @llvm.dbg.declare(metadata !286, metadata !5941, metadata !DIExpression()) #7, !dbg !5995
  call void @llvm.dbg.declare(metadata !286, metadata !5947, metadata !DIExpression()) #7, !dbg !5995
  store i32 1, i32* %tmp8.i145, align 4, !dbg !5995
  %55 = load i32, i32* %tmp8.i145, align 4, !dbg !5995
  %56 = load i64, i64* %flags.addr.i143, align 8, !dbg !5996
  call void @arch_local_irq_restore(i64 %56) #11, !dbg !5996
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5997, !srcloc !5951
  %57 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i142, align 8, !dbg !5998
  %58 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %57, i32 0, i32 0, !dbg !5998
  %rlock.i146 = bitcast %union.anon.3* %58 to %struct.raw_spinlock*, !dbg !5998
  %59 = load i8, i8* %got_block, align 1, !dbg !5999
  %tobool90 = trunc i8 %59 to i1, !dbg !5999
  br i1 %tobool90, label %if.end92, label %if.then91, !dbg !6001

if.then91:                                        ; preds = %do.end87
  br label %for.end100, !dbg !6002

if.end92:                                         ; preds = %do.end87
  %60 = load i8*, i8** %buf_ptr, align 8, !dbg !6003
  %arraydecay93 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i64 0, i64 0, !dbg !6004
  store i8* %60, i8** %to.addr.i, align 8
  store i8* %arraydecay93, i8** %from.addr.i, align 8
  store i64 3, i64* %n.addr.i, align 8
  %61 = load i8*, i8** %from.addr.i, align 8, !dbg !6005
  %62 = load i64, i64* %n.addr.i, align 8, !dbg !6005
  store i8* %61, i8** %addr.addr.i.i, align 8
  store i64 %62, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5775
  %63 = load i32, i32* %sz.i.i, align 4, !dbg !6006
  %cmp.i.i = icmp sge i32 %63, 0, !dbg !6006
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !6006

land.rhs.i.i:                                     ; preds = %if.end92
  %64 = load i32, i32* %sz.i.i, align 4, !dbg !6006
  %conv.i.i = sext i32 %64 to i64, !dbg !6006
  %65 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6006
  %cmp1.i.i = icmp ult i64 %conv.i.i, %65, !dbg !6006
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end92
  %66 = phi i1 [ false, %if.end92 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !6008
  %lnot.i.i = xor i1 %66, true, !dbg !6006
  %lnot.ext.i.i = zext i1 %66 to i32, !dbg !6006
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6006
  br i1 %66, label %if.then.i.i, label %if.end10.i.i, !dbg !6009

if.then.i.i:                                      ; preds = %land.end.i.i
  %67 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6010
  %68 = call i1 @llvm.is.constant.i64(i64 %67) #7, !dbg !6013
  br i1 %68, label %if.else.i.i, label %if.then5.i.i, !dbg !6014

if.then5.i.i:                                     ; preds = %if.then.i.i
  %69 = load i32, i32* %sz.i.i, align 4, !dbg !6015
  %70 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6016
  call void @copy_overflow(i32 %69, i64 %70) #11, !dbg !6017
  br label %if.end9.i.i, !dbg !6017

if.else.i.i:                                      ; preds = %if.then.i.i
  %71 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6018
  %tobool6.i.i = trunc i8 %71 to i1, !dbg !6018
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !6020

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #11, !dbg !6021
  br label %if.end.i.i, !dbg !6021

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #11, !dbg !6022
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6023
  br label %check_copy_size.exit.i, !dbg !6023

if.end10.i.i:                                     ; preds = %land.end.i.i
  %72 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5779
  %cmp11.i.i = icmp ugt i64 %72, 2147483647, !dbg !5779
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5779
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5779
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5779
  %73 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6024
  %tobool17.i.i = icmp ne i32 %73, 0, !dbg !6024
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !6024
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !6024
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !6024
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5779

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 150, i32 2307, i64 12) #7, !dbg !6026, !srcloc !6029
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #7, !dbg !6030, !srcloc !6032
  br label %if.end31.i.i, !dbg !6033

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %74 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5779
  %tobool32.i.i = icmp ne i32 %74, 0, !dbg !5779
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5779
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5779
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5779
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !6024
  %75 = load i64, i64* %tmp.i.i, align 8, !dbg !5779
  %tobool38.i.i = icmp ne i64 %75, 0, !dbg !6034
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !6035

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6036
  br label %check_copy_size.exit.i, !dbg !6036

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %76 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !6037
  %77 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6038
  %78 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6039
  %tobool41.i.i = trunc i8 %78 to i1, !dbg !6039
  call void @check_object_size(i8* %76, i64 %77, i1 zeroext %tobool41.i.i) #11, !dbg !6040
  store i1 true, i1* %retval.i.i, align 1, !dbg !6041
  br label %check_copy_size.exit.i, !dbg !6041

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %79 = load i1, i1* %retval.i.i, align 1, !dbg !6042
  %lnot.i = xor i1 %79, true, !dbg !6005
  %lnot.ext.i = zext i1 %79 to i32, !dbg !6005
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !6005
  br i1 %79, label %if.then.i, label %copy_to_user.exit, !dbg !6043

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %80 = load i8*, i8** %to.addr.i, align 8, !dbg !6044
  %81 = load i8*, i8** %from.addr.i, align 8, !dbg !6045
  %82 = load i64, i64* %n.addr.i, align 8, !dbg !6046
  %call2.i = call i64 @_copy_to_user(i8* %80, i8* %81, i64 %82) #11, !dbg !6047
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !6048
  br label %copy_to_user.exit, !dbg !6049

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %83 = load i64, i64* %n.addr.i, align 8, !dbg !6050
  %tobool95 = icmp ne i64 %83, 0, !dbg !6051
  br i1 %tobool95, label %if.then96, label %if.end98, !dbg !6052

if.then96:                                        ; preds = %copy_to_user.exit
  %84 = load %struct.saa6588_command*, %struct.saa6588_command** %a.addr, align 8, !dbg !6053
  %result97 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %84, i32 0, i32 2, !dbg !6055
  store i32 -14, i32* %result97, align 8, !dbg !6056
  br label %return, !dbg !6057

if.end98:                                         ; preds = %copy_to_user.exit
  %85 = load i8*, i8** %buf_ptr, align 8, !dbg !6058
  %add.ptr = getelementptr i8, i8* %85, i64 3, !dbg !6058
  store i8* %add.ptr, i8** %buf_ptr, align 8, !dbg !6058
  %86 = load %struct.saa6588_command*, %struct.saa6588_command** %a.addr, align 8, !dbg !6059
  %result99 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %86, i32 0, i32 2, !dbg !6060
  %87 = load i32, i32* %result99, align 8, !dbg !6061
  %add = add i32 %87, 3, !dbg !6061
  store i32 %add, i32* %result99, align 8, !dbg !6061
  br label %for.inc, !dbg !6062

for.inc:                                          ; preds = %if.end98
  %88 = load i32, i32* %i, align 4, !dbg !6063
  %inc = add i32 %88, 1, !dbg !6063
  store i32 %inc, i32* %i, align 4, !dbg !6063
  br label %for.cond58, !dbg !6064, !llvm.loop !6065

for.end100:                                       ; preds = %if.then91, %for.cond58
  br label %do.body101, !dbg !6067

do.body101:                                       ; preds = %for.end100
  br label %do.body102, !dbg !6068

do.body102:                                       ; preds = %do.body101
  call void @llvm.dbg.declare(metadata i64* %__dummy103, metadata !6069, metadata !DIExpression()), !dbg !6071
  call void @llvm.dbg.declare(metadata i64* %__dummy2104, metadata !6072, metadata !DIExpression()), !dbg !6071
  %cmp105 = icmp eq i64* %__dummy103, %__dummy2104, !dbg !6071
  %conv106 = zext i1 %cmp105 to i32, !dbg !6071
  store i32 1, i32* %tmp107, align 4, !dbg !6071
  %89 = load i32, i32* %tmp107, align 4, !dbg !6071
  br label %do.body108, !dbg !6073

do.body108:                                       ; preds = %do.body102
  br label %do.body109, !dbg !6074

do.body109:                                       ; preds = %do.body108
  br label %do.body110, !dbg !6075

do.body110:                                       ; preds = %do.body109
  call void @llvm.dbg.declare(metadata i64* %__dummy111, metadata !6077, metadata !DIExpression()), !dbg !6080
  call void @llvm.dbg.declare(metadata i64* %__dummy2112, metadata !6081, metadata !DIExpression()), !dbg !6080
  %cmp113 = icmp eq i64* %__dummy111, %__dummy2112, !dbg !6080
  %conv114 = zext i1 %cmp113 to i32, !dbg !6080
  store i32 1, i32* %tmp115, align 4, !dbg !6080
  %90 = load i32, i32* %tmp115, align 4, !dbg !6080
  %call116 = call i64 @arch_local_irq_save() #9, !dbg !6082
  store i64 %call116, i64* %flags, align 8, !dbg !6082
  br label %do.end117, !dbg !6082

do.end117:                                        ; preds = %do.body110
  br label %do.end118, !dbg !6075

do.end118:                                        ; preds = %do.end117
  br label %do.body119, !dbg !6074

do.body119:                                       ; preds = %do.end118
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6083, !srcloc !6084
  br label %do.body120, !dbg !6083

do.body120:                                       ; preds = %do.body119
  %91 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6085
  %lock121 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %91, i32 0, i32 2, !dbg !6085
  store %struct.spinlock* %lock121, %struct.spinlock** %lock.addr.i147, align 8
  %92 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i147, align 8, !dbg !6086
  %93 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %92, i32 0, i32 0, !dbg !6087
  %rlock.i148 = bitcast %union.anon.3* %93 to %struct.raw_spinlock*, !dbg !6087
  br label %do.end123, !dbg !6085

do.end123:                                        ; preds = %do.body120
  br label %do.end124, !dbg !6083

do.end124:                                        ; preds = %do.end123
  br label %do.end125, !dbg !6074

do.end125:                                        ; preds = %do.end124
  br label %do.end126, !dbg !6073

do.end126:                                        ; preds = %do.end125
  br label %do.end127, !dbg !6068

do.end127:                                        ; preds = %do.end126
  %94 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6088
  %block_count128 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %94, i32 0, i32 7, !dbg !6089
  %95 = load i32, i32* %block_count128, align 4, !dbg !6089
  %cmp129 = icmp ugt i32 %95, 0, !dbg !6090
  %conv130 = zext i1 %cmp129 to i32, !dbg !6090
  %96 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6091
  %data_available_for_read131 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %96, i32 0, i32 10, !dbg !6092
  store i32 %conv130, i32* %data_available_for_read131, align 8, !dbg !6093
  %97 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6094
  %lock132 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %97, i32 0, i32 2, !dbg !6095
  %98 = load i64, i64* %flags, align 8, !dbg !6096
  store %struct.spinlock* %lock132, %struct.spinlock** %lock.addr.i133, align 8
  store i64 %98, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !286, metadata !5936, metadata !DIExpression()) #7, !dbg !6097
  call void @llvm.dbg.declare(metadata !286, metadata !5940, metadata !DIExpression()) #7, !dbg !6097
  store i32 1, i32* %tmp.i, align 4, !dbg !6097
  %99 = load i32, i32* %tmp.i, align 4, !dbg !6097
  call void @llvm.dbg.declare(metadata !286, metadata !5941, metadata !DIExpression()) #7, !dbg !6098
  call void @llvm.dbg.declare(metadata !286, metadata !5947, metadata !DIExpression()) #7, !dbg !6098
  store i32 1, i32* %tmp8.i, align 4, !dbg !6098
  %100 = load i32, i32* %tmp8.i, align 4, !dbg !6098
  %101 = load i64, i64* %flags.addr.i, align 8, !dbg !6099
  call void @arch_local_irq_restore(i64 %101) #11, !dbg !6099
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6100, !srcloc !5951
  %102 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i133, align 8, !dbg !6101
  %103 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %102, i32 0, i32 0, !dbg !6101
  %rlock.i134 = bitcast %union.anon.3* %103 to %struct.raw_spinlock*, !dbg !6101
  br label %return, !dbg !6102

return:                                           ; preds = %do.end127, %if.then96, %if.then56, %if.then21, %if.then
  ret void, !dbg !6102
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @poll_wait(%struct.file* %filp, %struct.wait_queue_head* %wait_address, %struct.poll_table_struct* %p) #2 !dbg !6103 {
entry:
  %filp.addr = alloca %struct.file*, align 8
  %wait_address.addr = alloca %struct.wait_queue_head*, align 8
  %p.addr = alloca %struct.poll_table_struct*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !6106, metadata !DIExpression()), !dbg !6107
  store %struct.wait_queue_head* %wait_address, %struct.wait_queue_head** %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wait_queue_head** %wait_address.addr, metadata !6108, metadata !DIExpression()), !dbg !6109
  store %struct.poll_table_struct* %p, %struct.poll_table_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %p.addr, metadata !6110, metadata !DIExpression()), !dbg !6111
  %0 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !6112
  %tobool = icmp ne %struct.poll_table_struct* %0, null, !dbg !6112
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6114

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !6115
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %1, i32 0, i32 0, !dbg !6116
  %2 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8, !dbg !6116
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %2, null, !dbg !6115
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !6117

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !6118
  %tobool3 = icmp ne %struct.wait_queue_head* %3, null, !dbg !6118
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6119

if.then:                                          ; preds = %land.lhs.true2
  %4 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !6120
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %4, i32 0, i32 0, !dbg !6121
  %5 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc4, align 8, !dbg !6121
  %6 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !6122
  %7 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !6123
  %8 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !6124
  call void %5(%struct.file* %6, %struct.wait_queue_head* %7, %struct.poll_table_struct* %8) #9, !dbg !6120
  br label %if.end, !dbg !6120

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !6125
}

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #1

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #1

; Function Attrs: noredzone
declare dso_local void @schedule() #1

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !6126 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !6130, metadata !DIExpression()), !dbg !6131
  %call = call i64 @arch_local_save_flags() #9, !dbg !6132
  store i64 %call, i64* %f, align 8, !dbg !6133
  call void @arch_local_irq_disable() #9, !dbg !6134
  %0 = load i64, i64* %f, align 8, !dbg !6135
  ret i64 %0, !dbg !6136
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @block_from_buf(%struct.saa6588* %s, i8* %buf) #2 !dbg !6137 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca %struct.saa6588*, align 8
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.saa6588* %s, %struct.saa6588** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.saa6588** %s.addr, metadata !6140, metadata !DIExpression()), !dbg !6141
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6142, metadata !DIExpression()), !dbg !6143
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6144, metadata !DIExpression()), !dbg !6145
  %0 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6146
  %rd_index = getelementptr inbounds %struct.saa6588, %struct.saa6588* %0, i32 0, i32 5, !dbg !6148
  %1 = load i32, i32* %rd_index, align 4, !dbg !6148
  %2 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6149
  %wr_index = getelementptr inbounds %struct.saa6588, %struct.saa6588* %2, i32 0, i32 6, !dbg !6150
  %3 = load i32, i32* %wr_index, align 8, !dbg !6150
  %cmp = icmp eq i32 %1, %3, !dbg !6151
  br i1 %cmp, label %if.then, label %if.end5, !dbg !6152

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !6153
  %cmp1 = icmp ugt i32 %4, 2, !dbg !6156
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !6157

if.then2:                                         ; preds = %if.then
  %5 = load i32, i32* @debug, align 4, !dbg !6158
  %tobool = icmp ne i32 %5, 0, !dbg !6158
  br i1 %tobool, label %if.then3, label %if.end, !dbg !6160

if.then3:                                         ; preds = %if.then2
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !6158
  br label %if.end, !dbg !6158

if.end:                                           ; preds = %if.then3, %if.then2
  br label %if.end4, !dbg !6158

if.end4:                                          ; preds = %if.end, %if.then
  store i1 false, i1* %retval, align 1, !dbg !6161
  br label %return, !dbg !6161

if.end5:                                          ; preds = %entry
  %6 = load i32, i32* @debug, align 4, !dbg !6162
  %cmp6 = icmp ugt i32 %6, 2, !dbg !6164
  br i1 %cmp6, label %if.then7, label %if.end19, !dbg !6165

if.then7:                                         ; preds = %if.end5
  %7 = load i32, i32* @debug, align 4, !dbg !6166
  %tobool8 = icmp ne i32 %7, 0, !dbg !6166
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !6169

if.then9:                                         ; preds = %if.then7
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !6166
  br label %if.end11, !dbg !6166

if.end11:                                         ; preds = %if.then9, %if.then7
  %8 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6170
  %rd_index12 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %8, i32 0, i32 5, !dbg !6172
  %9 = load i32, i32* %rd_index12, align 4, !dbg !6172
  store i32 %9, i32* %i, align 4, !dbg !6173
  br label %for.cond, !dbg !6174

for.cond:                                         ; preds = %for.inc, %if.end11
  %10 = load i32, i32* %i, align 4, !dbg !6175
  %11 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6177
  %rd_index13 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %11, i32 0, i32 5, !dbg !6178
  %12 = load i32, i32* %rd_index13, align 4, !dbg !6178
  %add = add i32 %12, 3, !dbg !6179
  %cmp14 = icmp ult i32 %10, %add, !dbg !6180
  br i1 %cmp14, label %for.body, label %for.end, !dbg !6181

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* @debug, align 4, !dbg !6182
  %tobool15 = icmp ne i32 %13, 0, !dbg !6182
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !6184

if.then16:                                        ; preds = %for.body
  %14 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6185
  %buffer = getelementptr inbounds %struct.saa6588, %struct.saa6588* %14, i32 0, i32 3, !dbg !6186
  %15 = load i8*, i8** %buffer, align 8, !dbg !6186
  %16 = load i32, i32* %i, align 4, !dbg !6187
  %idxprom = sext i32 %16 to i64, !dbg !6185
  %arrayidx = getelementptr i8, i8* %15, i64 %idxprom, !dbg !6185
  %17 = load i8, i8* %arrayidx, align 1, !dbg !6185
  %conv = zext i8 %17 to i32, !dbg !6185
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %conv) #10, !dbg !6182
  br label %if.end18, !dbg !6182

if.end18:                                         ; preds = %if.then16, %for.body
  br label %for.inc, !dbg !6182

for.inc:                                          ; preds = %if.end18
  %18 = load i32, i32* %i, align 4, !dbg !6188
  %inc = add i32 %18, 1, !dbg !6188
  store i32 %inc, i32* %i, align 4, !dbg !6188
  br label %for.cond, !dbg !6189, !llvm.loop !6190

for.end:                                          ; preds = %for.cond
  br label %if.end19, !dbg !6192

if.end19:                                         ; preds = %for.end, %if.end5
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !6193
  %20 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6194
  %buffer20 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %20, i32 0, i32 3, !dbg !6195
  %21 = load i8*, i8** %buffer20, align 8, !dbg !6195
  %22 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6196
  %rd_index21 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %22, i32 0, i32 5, !dbg !6197
  %23 = load i32, i32* %rd_index21, align 4, !dbg !6197
  %idxprom22 = zext i32 %23 to i64, !dbg !6194
  %arrayidx23 = getelementptr i8, i8* %21, i64 %idxprom22, !dbg !6194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 %arrayidx23, i64 3, i1 false), !dbg !6198
  %24 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6199
  %rd_index24 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %24, i32 0, i32 5, !dbg !6200
  %25 = load i32, i32* %rd_index24, align 4, !dbg !6201
  %add25 = add i32 %25, 3, !dbg !6201
  store i32 %add25, i32* %rd_index24, align 4, !dbg !6201
  %26 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6202
  %rd_index26 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %26, i32 0, i32 5, !dbg !6204
  %27 = load i32, i32* %rd_index26, align 4, !dbg !6204
  %28 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6205
  %buf_size = getelementptr inbounds %struct.saa6588, %struct.saa6588* %28, i32 0, i32 4, !dbg !6206
  %29 = load i32, i32* %buf_size, align 8, !dbg !6206
  %cmp27 = icmp uge i32 %27, %29, !dbg !6207
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !6208

if.then29:                                        ; preds = %if.end19
  %30 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6209
  %rd_index30 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %30, i32 0, i32 5, !dbg !6210
  store i32 0, i32* %rd_index30, align 4, !dbg !6211
  br label %if.end31, !dbg !6209

if.end31:                                         ; preds = %if.then29, %if.end19
  %31 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6212
  %block_count = getelementptr inbounds %struct.saa6588, %struct.saa6588* %31, i32 0, i32 7, !dbg !6213
  %32 = load i32, i32* %block_count, align 4, !dbg !6214
  %dec = add i32 %32, -1, !dbg !6214
  store i32 %dec, i32* %block_count, align 4, !dbg !6214
  %33 = load i32, i32* @debug, align 4, !dbg !6215
  %cmp32 = icmp ugt i32 %33, 2, !dbg !6217
  br i1 %cmp32, label %if.then34, label %if.end40, !dbg !6218

if.then34:                                        ; preds = %if.end31
  %34 = load i32, i32* @debug, align 4, !dbg !6219
  %tobool35 = icmp ne i32 %34, 0, !dbg !6219
  br i1 %tobool35, label %if.then36, label %if.end39, !dbg !6221

if.then36:                                        ; preds = %if.then34
  %35 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6222
  %block_count37 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %35, i32 0, i32 7, !dbg !6223
  %36 = load i32, i32* %block_count37, align 4, !dbg !6223
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %36) #10, !dbg !6219
  br label %if.end39, !dbg !6219

if.end39:                                         ; preds = %if.then36, %if.then34
  br label %if.end40, !dbg !6219

if.end40:                                         ; preds = %if.end39, %if.end31
  store i1 true, i1* %retval, align 1, !dbg !6224
  br label %return, !dbg !6224

return:                                           ; preds = %if.end40, %if.end4
  %37 = load i1, i1* %retval, align 1, !dbg !6225
  ret i1 %37, !dbg !6225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !6226 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6227, metadata !DIExpression()), !dbg !6229
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6230, metadata !DIExpression()), !dbg !6229
  %0 = load i64, i64* %__edi, align 8, !dbg !6229
  store i64 %0, i64* %__edi, align 8, !dbg !6229
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6231, metadata !DIExpression()), !dbg !6229
  %1 = load i64, i64* %__esi, align 8, !dbg !6229
  store i64 %1, i64* %__esi, align 8, !dbg !6229
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6232, metadata !DIExpression()), !dbg !6229
  %2 = load i64, i64* %__edx, align 8, !dbg !6229
  store i64 %2, i64* %__edx, align 8, !dbg !6229
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6233, metadata !DIExpression()), !dbg !6229
  %3 = load i64, i64* %__ecx, align 8, !dbg !6229
  store i64 %3, i64* %__ecx, align 8, !dbg !6229
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6234, metadata !DIExpression()), !dbg !6229
  %4 = load i64, i64* %__eax, align 8, !dbg !6229
  store i64 %4, i64* %__eax, align 8, !dbg !6229
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6229
  %6 = call i64 @llvm.read_register.i64(metadata !5375), !dbg !6235
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !6235, !srcloc !6238
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6235
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6235
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6235
  call void @llvm.write_register.i64(metadata !5375, i64 %asmresult1), !dbg !6235
  %8 = load i64, i64* %__eax, align 8, !dbg !6235
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6239, metadata !DIExpression()), !dbg !6241
  store i64 -1, i64* %__mask, align 8, !dbg !6241
  %9 = load i64, i64* %__mask, align 8, !dbg !6241
  store i64 %9, i64* %tmp, align 8, !dbg !6241
  %10 = load i64, i64* %tmp, align 8, !dbg !6241
  %and = and i64 %8, %10, !dbg !6235
  store i64 %and, i64* %__ret, align 8, !dbg !6235
  %11 = load i64, i64* %__ret, align 8, !dbg !6229
  store i64 %11, i64* %tmp2, align 8, !dbg !6242
  %12 = load i64, i64* %tmp2, align 8, !dbg !6229
  ret i64 %12, !dbg !6243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !6244 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6245, metadata !DIExpression()), !dbg !6247
  %0 = load i64, i64* %__edi, align 8, !dbg !6247
  store i64 %0, i64* %__edi, align 8, !dbg !6247
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6248, metadata !DIExpression()), !dbg !6247
  %1 = load i64, i64* %__esi, align 8, !dbg !6247
  store i64 %1, i64* %__esi, align 8, !dbg !6247
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6249, metadata !DIExpression()), !dbg !6247
  %2 = load i64, i64* %__edx, align 8, !dbg !6247
  store i64 %2, i64* %__edx, align 8, !dbg !6247
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6250, metadata !DIExpression()), !dbg !6247
  %3 = load i64, i64* %__ecx, align 8, !dbg !6247
  store i64 %3, i64* %__ecx, align 8, !dbg !6247
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6251, metadata !DIExpression()), !dbg !6247
  %4 = load i64, i64* %__eax, align 8, !dbg !6247
  store i64 %4, i64* %__eax, align 8, !dbg !6247
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6247
  %6 = call i64 @llvm.read_register.i64(metadata !5375), !dbg !6247
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !6247, !srcloc !6252
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6247
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6247
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6247
  call void @llvm.write_register.i64(metadata !5375, i64 %asmresult1), !dbg !6247
  ret void, !dbg !6253
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !6254 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6257, metadata !DIExpression()), !dbg !6258
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6259, metadata !DIExpression()), !dbg !6261
  %0 = load i64, i64* %__edi, align 8, !dbg !6261
  store i64 %0, i64* %__edi, align 8, !dbg !6261
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6262, metadata !DIExpression()), !dbg !6261
  %1 = load i64, i64* %__esi, align 8, !dbg !6261
  store i64 %1, i64* %__esi, align 8, !dbg !6261
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6263, metadata !DIExpression()), !dbg !6261
  %2 = load i64, i64* %__edx, align 8, !dbg !6261
  store i64 %2, i64* %__edx, align 8, !dbg !6261
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6264, metadata !DIExpression()), !dbg !6261
  %3 = load i64, i64* %__ecx, align 8, !dbg !6261
  store i64 %3, i64* %__ecx, align 8, !dbg !6261
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6265, metadata !DIExpression()), !dbg !6261
  %4 = load i64, i64* %__eax, align 8, !dbg !6261
  store i64 %4, i64* %__eax, align 8, !dbg !6261
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6261
  %6 = call i64 @llvm.read_register.i64(metadata !5375), !dbg !6261
  %7 = load i64, i64* %f.addr, align 8, !dbg !6261
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !6261, !srcloc !6266
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6261
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6261
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6261
  call void @llvm.write_register.i64(metadata !5375, i64 %asmresult1), !dbg !6261
  ret void, !dbg !6267
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #2 !dbg !6268 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6271, metadata !DIExpression()), !dbg !6272
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6273, metadata !DIExpression()), !dbg !6274
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6275, metadata !DIExpression()), !dbg !6277
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !6277
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !6278
  %tobool = icmp ne i32 %0, 0, !dbg !6278
  %lnot = xor i1 %tobool, true, !dbg !6278
  %lnot1 = xor i1 %lnot, true, !dbg !6278
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6278
  %conv = sext i32 %lnot.ext to i64, !dbg !6278
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6278
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6277

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6278

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !6280

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !6282

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !6280
  %2 = load i64, i64* %count.addr, align 8, !dbg !6280
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %1, i64 %2) #9, !dbg !6280
  br label %do.body4, !dbg !6280

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !6284

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6286

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !6284

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 134, i32 2313, i64 12) #7, !dbg !6288, !srcloc !6290
  br label %do.end8, !dbg !6288

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #7, !dbg !6291, !srcloc !6293
  br label %do.body9, !dbg !6284

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6294

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !6284

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !6280

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6296

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !6280

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !6280

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !6277
  %tobool15 = icmp ne i32 %3, 0, !dbg !6277
  %lnot16 = xor i1 %tobool15, true, !dbg !6277
  %lnot18 = xor i1 %lnot16, true, !dbg !6277
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6277
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6277
  store i64 %conv20, i64* %tmp, align 8, !dbg !6278
  %4 = load i64, i64* %tmp, align 8, !dbg !6277
  ret void, !dbg !6298
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #1

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #2 !dbg !6299 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6302, metadata !DIExpression()), !dbg !6303
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6304, metadata !DIExpression()), !dbg !6305
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !6306, metadata !DIExpression()), !dbg !6307
  ret void, !dbg !6308
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @saa6588_g_tuner(%struct.v4l2_subdev* %sd, %struct.v4l2_tuner* %vt) #2 !dbg !6309 {
entry:
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %vt.addr = alloca %struct.v4l2_tuner*, align 8
  %s = alloca %struct.saa6588*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !6310, metadata !DIExpression()), !dbg !6311
  store %struct.v4l2_tuner* %vt, %struct.v4l2_tuner** %vt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_tuner** %vt.addr, metadata !6312, metadata !DIExpression()), !dbg !6313
  call void @llvm.dbg.declare(metadata %struct.saa6588** %s, metadata !6314, metadata !DIExpression()), !dbg !6315
  %0 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd.addr, align 8, !dbg !6316
  %call = call %struct.saa6588* @to_saa6588(%struct.v4l2_subdev* %0) #9, !dbg !6317
  store %struct.saa6588* %call, %struct.saa6588** %s, align 8, !dbg !6315
  %1 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %vt.addr, align 8, !dbg !6318
  %capability = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %1, i32 0, i32 3, !dbg !6319
  %2 = load i32, i32* %capability, align 4, !dbg !6320
  %or = or i32 %2, 384, !dbg !6320
  store i32 %or, i32* %capability, align 4, !dbg !6320
  %3 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !6321
  %sync = getelementptr inbounds %struct.saa6588, %struct.saa6588* %3, i32 0, i32 11, !dbg !6323
  %4 = load i8, i8* %sync, align 4, !dbg !6323
  %tobool = icmp ne i8 %4, 0, !dbg !6321
  br i1 %tobool, label %if.then, label %if.end, !dbg !6324

if.then:                                          ; preds = %entry
  %5 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %vt.addr, align 8, !dbg !6325
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %5, i32 0, i32 6, !dbg !6326
  %6 = load i32, i32* %rxsubchans, align 4, !dbg !6327
  %or1 = or i32 %6, 16, !dbg !6327
  store i32 %or1, i32* %rxsubchans, align 4, !dbg !6327
  br label %if.end, !dbg !6325

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !6328
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @saa6588_s_tuner(%struct.v4l2_subdev* %sd, %struct.v4l2_tuner* %vt) #2 !dbg !6329 {
entry:
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %vt.addr = alloca %struct.v4l2_tuner*, align 8
  %s = alloca %struct.saa6588*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !6330, metadata !DIExpression()), !dbg !6331
  store %struct.v4l2_tuner* %vt, %struct.v4l2_tuner** %vt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_tuner** %vt.addr, metadata !6332, metadata !DIExpression()), !dbg !6333
  call void @llvm.dbg.declare(metadata %struct.saa6588** %s, metadata !6334, metadata !DIExpression()), !dbg !6335
  %0 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd.addr, align 8, !dbg !6336
  %call = call %struct.saa6588* @to_saa6588(%struct.v4l2_subdev* %0) #9, !dbg !6337
  store %struct.saa6588* %call, %struct.saa6588** %s, align 8, !dbg !6335
  %1 = load %struct.saa6588*, %struct.saa6588** %s, align 8, !dbg !6338
  call void @saa6588_configure(%struct.saa6588* %1) #9, !dbg !6339
  ret i32 0, !dbg !6340
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @v4l2_get_subdevdata(%struct.v4l2_subdev* %sd) #2 !dbg !6341 {
entry:
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !6346, metadata !DIExpression()), !dbg !6347
  %0 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %sd.addr, align 8, !dbg !6348
  %dev_priv = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %0, i32 0, i32 11, !dbg !6349
  %1 = load i8*, i8** %dev_priv, align 8, !dbg !6349
  ret i8* %1, !dbg !6350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_master_send(%struct.i2c_client* %client, i8* %buf, i32 %count) #2 !dbg !6351 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6356, metadata !DIExpression()), !dbg !6357
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6358, metadata !DIExpression()), !dbg !6359
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !6360, metadata !DIExpression()), !dbg !6361
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6362
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !6363
  %2 = load i32, i32* %count.addr, align 4, !dbg !6364
  %call = call i32 @i2c_transfer_buffer_flags(%struct.i2c_client* %0, i8* %1, i32 %2, i16 zeroext 0) #9, !dbg !6365
  ret i32 %call, !dbg !6366
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer_buffer_flags(%struct.i2c_client*, i8*, i32, i16 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @saa6588_i2c_poll(%struct.saa6588* %s) #2 !dbg !6367 {
entry:
  %lock.addr.i98 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i98, metadata !5786, metadata !DIExpression()), !dbg !6368
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5792, metadata !DIExpression()), !dbg !6370
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5387, metadata !DIExpression()), !dbg !6371
  %s.addr = alloca %struct.saa6588*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %flags = alloca i64, align 8
  %tmpbuf = alloca [6 x i8], align 1
  %blocknum = alloca i8, align 1
  %tmp = alloca i8, align 1
  %__tmp = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp77 = alloca i32, align 4
  %__dummy81 = alloca i64, align 8
  %__dummy282 = alloca i64, align 8
  %tmp85 = alloca i32, align 4
  store %struct.saa6588* %s, %struct.saa6588** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.saa6588** %s.addr, metadata !6378, metadata !DIExpression()), !dbg !6379
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !6380, metadata !DIExpression()), !dbg !6381
  %0 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6382
  %sd = getelementptr inbounds %struct.saa6588, %struct.saa6588* %0, i32 0, i32 0, !dbg !6383
  %call = call i8* @v4l2_get_subdevdata(%struct.v4l2_subdev* %sd) #9, !dbg !6384
  %1 = bitcast i8* %call to %struct.i2c_client*, !dbg !6384
  store %struct.i2c_client* %1, %struct.i2c_client** %client, align 8, !dbg !6381
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6385, metadata !DIExpression()), !dbg !6386
  call void @llvm.dbg.declare(metadata [6 x i8]* %tmpbuf, metadata !6387, metadata !DIExpression()), !dbg !6389
  call void @llvm.dbg.declare(metadata i8* %blocknum, metadata !6390, metadata !DIExpression()), !dbg !6391
  call void @llvm.dbg.declare(metadata i8* %tmp, metadata !6392, metadata !DIExpression()), !dbg !6393
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !6394
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %tmpbuf, i64 0, i64 0, !dbg !6396
  %call1 = call i32 @i2c_master_recv(%struct.i2c_client* %2, i8* %arrayidx, i32 6) #9, !dbg !6397
  %cmp = icmp ne i32 6, %call1, !dbg !6398
  br i1 %cmp, label %if.then, label %if.end7, !dbg !6399

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6400
  %cmp2 = icmp ugt i32 %3, 1, !dbg !6403
  br i1 %cmp2, label %if.then3, label %if.end6, !dbg !6404

if.then3:                                         ; preds = %if.then
  %4 = load i32, i32* @debug, align 4, !dbg !6405
  %tobool = icmp ne i32 %4, 0, !dbg !6405
  br i1 %tobool, label %if.then4, label %if.end, !dbg !6407

if.then4:                                         ; preds = %if.then3
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !6405
  br label %if.end, !dbg !6405

if.end:                                           ; preds = %if.then4, %if.then3
  br label %if.end6, !dbg !6405

if.end6:                                          ; preds = %if.end, %if.then
  br label %return, !dbg !6408

if.end7:                                          ; preds = %entry
  %arrayidx8 = getelementptr [6 x i8], [6 x i8]* %tmpbuf, i64 0, i64 0, !dbg !6409
  %5 = load i8, i8* %arrayidx8, align 1, !dbg !6409
  %conv = zext i8 %5 to i32, !dbg !6409
  %and = and i32 %conv, 16, !dbg !6410
  %conv9 = trunc i32 %and to i8, !dbg !6409
  %6 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6411
  %sync = getelementptr inbounds %struct.saa6588, %struct.saa6588* %6, i32 0, i32 11, !dbg !6412
  store i8 %conv9, i8* %sync, align 4, !dbg !6413
  %7 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6414
  %sync10 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %7, i32 0, i32 11, !dbg !6416
  %8 = load i8, i8* %sync10, align 4, !dbg !6416
  %tobool11 = icmp ne i8 %8, 0, !dbg !6414
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !6417

if.then12:                                        ; preds = %if.end7
  br label %return, !dbg !6418

if.end13:                                         ; preds = %if.end7
  %arrayidx14 = getelementptr [6 x i8], [6 x i8]* %tmpbuf, i64 0, i64 0, !dbg !6419
  %9 = load i8, i8* %arrayidx14, align 1, !dbg !6419
  %conv15 = zext i8 %9 to i32, !dbg !6419
  %shr = ashr i32 %conv15, 5, !dbg !6420
  %conv16 = trunc i32 %shr to i8, !dbg !6419
  store i8 %conv16, i8* %blocknum, align 1, !dbg !6421
  %10 = load i8, i8* %blocknum, align 1, !dbg !6422
  %conv17 = zext i8 %10 to i32, !dbg !6422
  %11 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6424
  %last_blocknum = getelementptr inbounds %struct.saa6588, %struct.saa6588* %11, i32 0, i32 8, !dbg !6425
  %12 = load i8, i8* %last_blocknum, align 8, !dbg !6425
  %conv18 = zext i8 %12 to i32, !dbg !6424
  %cmp19 = icmp eq i32 %conv17, %conv18, !dbg !6426
  br i1 %cmp19, label %if.then21, label %if.end31, !dbg !6427

if.then21:                                        ; preds = %if.end13
  %13 = load i32, i32* @debug, align 4, !dbg !6428
  %cmp22 = icmp ugt i32 %13, 3, !dbg !6431
  br i1 %cmp22, label %if.then24, label %if.end30, !dbg !6432

if.then24:                                        ; preds = %if.then21
  %14 = load i32, i32* @debug, align 4, !dbg !6433
  %tobool25 = icmp ne i32 %14, 0, !dbg !6433
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !6435

if.then26:                                        ; preds = %if.then24
  %15 = load i8, i8* %blocknum, align 1, !dbg !6436
  %conv27 = zext i8 %15 to i32, !dbg !6436
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %conv27) #10, !dbg !6433
  br label %if.end29, !dbg !6433

if.end29:                                         ; preds = %if.then26, %if.then24
  br label %if.end30, !dbg !6433

if.end30:                                         ; preds = %if.end29, %if.then21
  br label %return, !dbg !6437

if.end31:                                         ; preds = %if.end13
  %16 = load i8, i8* %blocknum, align 1, !dbg !6438
  %17 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6439
  %last_blocknum32 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %17, i32 0, i32 8, !dbg !6440
  store i8 %16, i8* %last_blocknum32, align 8, !dbg !6441
  br label %do.body, !dbg !6442

do.body:                                          ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i8* %__tmp, metadata !6443, metadata !DIExpression()), !dbg !6445
  %arrayidx33 = getelementptr [6 x i8], [6 x i8]* %tmpbuf, i64 0, i64 2, !dbg !6445
  %18 = load i8, i8* %arrayidx33, align 1, !dbg !6445
  store i8 %18, i8* %__tmp, align 1, !dbg !6445
  %arrayidx34 = getelementptr [6 x i8], [6 x i8]* %tmpbuf, i64 0, i64 0, !dbg !6445
  %19 = load i8, i8* %arrayidx34, align 1, !dbg !6445
  %arrayidx35 = getelementptr [6 x i8], [6 x i8]* %tmpbuf, i64 0, i64 2, !dbg !6445
  store i8 %19, i8* %arrayidx35, align 1, !dbg !6445
  %20 = load i8, i8* %__tmp, align 1, !dbg !6445
  %arrayidx36 = getelementptr [6 x i8], [6 x i8]* %tmpbuf, i64 0, i64 0, !dbg !6445
  store i8 %20, i8* %arrayidx36, align 1, !dbg !6445
  br label %do.end, !dbg !6445

do.end:                                           ; preds = %do.body
  %21 = load i8, i8* %blocknum, align 1, !dbg !6446
  %conv37 = zext i8 %21 to i32, !dbg !6446
  %cmp38 = icmp eq i32 %conv37, 6, !dbg !6448
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !6449

if.then40:                                        ; preds = %do.end
  store i8 7, i8* %blocknum, align 1, !dbg !6450
  br label %if.end47, !dbg !6451

if.else:                                          ; preds = %do.end
  %22 = load i32, i32* @mmbs, align 4, !dbg !6452
  %tobool41 = icmp ne i32 %22, 0, !dbg !6452
  br i1 %tobool41, label %if.end46, label %land.lhs.true, !dbg !6454

land.lhs.true:                                    ; preds = %if.else
  %23 = load i8, i8* %blocknum, align 1, !dbg !6455
  %conv42 = zext i8 %23 to i32, !dbg !6455
  %cmp43 = icmp eq i32 %conv42, 5, !dbg !6456
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !6457

if.then45:                                        ; preds = %land.lhs.true
  store i8 7, i8* %blocknum, align 1, !dbg !6458
  br label %if.end46, !dbg !6459

if.end46:                                         ; preds = %if.then45, %land.lhs.true, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then40
  %24 = load i8, i8* %blocknum, align 1, !dbg !6460
  store i8 %24, i8* %tmp, align 1, !dbg !6461
  %25 = load i8, i8* %blocknum, align 1, !dbg !6462
  %conv48 = zext i8 %25 to i32, !dbg !6462
  %shl = shl i32 %conv48, 3, !dbg !6463
  %26 = load i8, i8* %tmp, align 1, !dbg !6464
  %conv49 = zext i8 %26 to i32, !dbg !6464
  %or = or i32 %conv49, %shl, !dbg !6464
  %conv50 = trunc i32 %or to i8, !dbg !6464
  store i8 %conv50, i8* %tmp, align 1, !dbg !6464
  %arrayidx51 = getelementptr [6 x i8], [6 x i8]* %tmpbuf, i64 0, i64 2, !dbg !6465
  %27 = load i8, i8* %arrayidx51, align 1, !dbg !6465
  %conv52 = zext i8 %27 to i32, !dbg !6465
  %and53 = and i32 %conv52, 3, !dbg !6467
  %cmp54 = icmp eq i32 %and53, 3, !dbg !6468
  br i1 %cmp54, label %if.then56, label %if.else60, !dbg !6469

if.then56:                                        ; preds = %if.end47
  %28 = load i8, i8* %tmp, align 1, !dbg !6470
  %conv57 = zext i8 %28 to i32, !dbg !6470
  %or58 = or i32 %conv57, 128, !dbg !6470
  %conv59 = trunc i32 %or58 to i8, !dbg !6470
  store i8 %conv59, i8* %tmp, align 1, !dbg !6470
  br label %if.end71, !dbg !6471

if.else60:                                        ; preds = %if.end47
  %arrayidx61 = getelementptr [6 x i8], [6 x i8]* %tmpbuf, i64 0, i64 2, !dbg !6472
  %29 = load i8, i8* %arrayidx61, align 1, !dbg !6472
  %conv62 = zext i8 %29 to i32, !dbg !6472
  %and63 = and i32 %conv62, 3, !dbg !6474
  %cmp64 = icmp ne i32 %and63, 0, !dbg !6475
  br i1 %cmp64, label %if.then66, label %if.end70, !dbg !6476

if.then66:                                        ; preds = %if.else60
  %30 = load i8, i8* %tmp, align 1, !dbg !6477
  %conv67 = zext i8 %30 to i32, !dbg !6477
  %or68 = or i32 %conv67, 64, !dbg !6477
  %conv69 = trunc i32 %or68 to i8, !dbg !6477
  store i8 %conv69, i8* %tmp, align 1, !dbg !6477
  br label %if.end70, !dbg !6478

if.end70:                                         ; preds = %if.then66, %if.else60
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then56
  %31 = load i8, i8* %tmp, align 1, !dbg !6479
  %arrayidx72 = getelementptr [6 x i8], [6 x i8]* %tmpbuf, i64 0, i64 2, !dbg !6480
  store i8 %31, i8* %arrayidx72, align 1, !dbg !6481
  br label %do.body73, !dbg !6482

do.body73:                                        ; preds = %if.end71
  br label %do.body74, !dbg !6483

do.body74:                                        ; preds = %do.body73
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6484, metadata !DIExpression()), !dbg !6486
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6487, metadata !DIExpression()), !dbg !6486
  %cmp75 = icmp eq i64* %__dummy, %__dummy2, !dbg !6486
  %conv76 = zext i1 %cmp75 to i32, !dbg !6486
  store i32 1, i32* %tmp77, align 4, !dbg !6486
  %32 = load i32, i32* %tmp77, align 4, !dbg !6486
  br label %do.body78, !dbg !6488

do.body78:                                        ; preds = %do.body74
  br label %do.body79, !dbg !6489

do.body79:                                        ; preds = %do.body78
  br label %do.body80, !dbg !6490

do.body80:                                        ; preds = %do.body79
  call void @llvm.dbg.declare(metadata i64* %__dummy81, metadata !6492, metadata !DIExpression()), !dbg !6495
  call void @llvm.dbg.declare(metadata i64* %__dummy282, metadata !6496, metadata !DIExpression()), !dbg !6495
  %cmp83 = icmp eq i64* %__dummy81, %__dummy282, !dbg !6495
  %conv84 = zext i1 %cmp83 to i32, !dbg !6495
  store i32 1, i32* %tmp85, align 4, !dbg !6495
  %33 = load i32, i32* %tmp85, align 4, !dbg !6495
  %call86 = call i64 @arch_local_irq_save() #9, !dbg !6497
  store i64 %call86, i64* %flags, align 8, !dbg !6497
  br label %do.end87, !dbg !6497

do.end87:                                         ; preds = %do.body80
  br label %do.end88, !dbg !6490

do.end88:                                         ; preds = %do.end87
  br label %do.body89, !dbg !6489

do.body89:                                        ; preds = %do.end88
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6498, !srcloc !6499
  br label %do.body90, !dbg !6498

do.body90:                                        ; preds = %do.body89
  %34 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6500
  %lock = getelementptr inbounds %struct.saa6588, %struct.saa6588* %34, i32 0, i32 2, !dbg !6500
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %35 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6501
  %36 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %35, i32 0, i32 0, !dbg !6502
  %rlock.i = bitcast %union.anon.3* %36 to %struct.raw_spinlock*, !dbg !6502
  br label %do.end92, !dbg !6500

do.end92:                                         ; preds = %do.body90
  br label %do.end93, !dbg !6498

do.end93:                                         ; preds = %do.end92
  br label %do.end94, !dbg !6489

do.end94:                                         ; preds = %do.end93
  br label %do.end95, !dbg !6488

do.end95:                                         ; preds = %do.end94
  br label %do.end96, !dbg !6483

do.end96:                                         ; preds = %do.end95
  %37 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6503
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %tmpbuf, i64 0, i64 0, !dbg !6504
  call void @block_to_buf(%struct.saa6588* %37, i8* %arraydecay) #9, !dbg !6505
  %38 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6506
  %lock97 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %38, i32 0, i32 2, !dbg !6507
  %39 = load i64, i64* %flags, align 8, !dbg !6508
  store %struct.spinlock* %lock97, %struct.spinlock** %lock.addr.i98, align 8
  store i64 %39, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !286, metadata !5936, metadata !DIExpression()) #7, !dbg !6509
  call void @llvm.dbg.declare(metadata !286, metadata !5940, metadata !DIExpression()) #7, !dbg !6509
  store i32 1, i32* %tmp.i, align 4, !dbg !6509
  %40 = load i32, i32* %tmp.i, align 4, !dbg !6509
  call void @llvm.dbg.declare(metadata !286, metadata !5941, metadata !DIExpression()) #7, !dbg !6510
  call void @llvm.dbg.declare(metadata !286, metadata !5947, metadata !DIExpression()) #7, !dbg !6510
  store i32 1, i32* %tmp8.i, align 4, !dbg !6510
  %41 = load i32, i32* %tmp8.i, align 4, !dbg !6510
  %42 = load i64, i64* %flags.addr.i, align 8, !dbg !6511
  call void @arch_local_irq_restore(i64 %42) #11, !dbg !6511
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6512, !srcloc !5951
  %43 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i98, align 8, !dbg !6513
  %44 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %43, i32 0, i32 0, !dbg !6513
  %rlock.i99 = bitcast %union.anon.3* %44 to %struct.raw_spinlock*, !dbg !6513
  %45 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6514
  %data_available_for_read = getelementptr inbounds %struct.saa6588, %struct.saa6588* %45, i32 0, i32 10, !dbg !6515
  store i32 1, i32* %data_available_for_read, align 8, !dbg !6516
  %46 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6517
  %read_queue = getelementptr inbounds %struct.saa6588, %struct.saa6588* %46, i32 0, i32 9, !dbg !6517
  call void @__wake_up(%struct.wait_queue_head* %read_queue, i32 1, i32 1, i8* null) #9, !dbg !6517
  br label %return, !dbg !6518

return:                                           ; preds = %do.end96, %if.end30, %if.then12, %if.end6
  ret void, !dbg !6518
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_master_recv(%struct.i2c_client* %client, i8* %buf, i32 %count) #2 !dbg !6519 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6522, metadata !DIExpression()), !dbg !6523
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6524, metadata !DIExpression()), !dbg !6525
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !6526, metadata !DIExpression()), !dbg !6527
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6528
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !6529
  %2 = load i32, i32* %count.addr, align 4, !dbg !6530
  %call = call i32 @i2c_transfer_buffer_flags(%struct.i2c_client* %0, i8* %1, i32 %2, i16 zeroext 1) #9, !dbg !6531
  ret i32 %call, !dbg !6532
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @block_to_buf(%struct.saa6588* %s, i8* %blockbuf) #2 !dbg !6533 {
entry:
  %s.addr = alloca %struct.saa6588*, align 8
  %blockbuf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.saa6588* %s, %struct.saa6588** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.saa6588** %s.addr, metadata !6536, metadata !DIExpression()), !dbg !6537
  store i8* %blockbuf, i8** %blockbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %blockbuf.addr, metadata !6538, metadata !DIExpression()), !dbg !6539
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6540, metadata !DIExpression()), !dbg !6541
  %0 = load i32, i32* @debug, align 4, !dbg !6542
  %cmp = icmp ugt i32 %0, 3, !dbg !6544
  br i1 %cmp, label %if.then, label %if.end2, !dbg !6545

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @debug, align 4, !dbg !6546
  %tobool = icmp ne i32 %1, 0, !dbg !6546
  br i1 %tobool, label %if.then1, label %if.end, !dbg !6548

if.then1:                                         ; preds = %if.then
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !6546
  br label %if.end, !dbg !6546

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2, !dbg !6546

if.end2:                                          ; preds = %if.end, %entry
  store i32 0, i32* %i, align 4, !dbg !6549
  br label %for.cond, !dbg !6551

for.cond:                                         ; preds = %for.inc, %if.end2
  %2 = load i32, i32* %i, align 4, !dbg !6552
  %cmp3 = icmp ult i32 %2, 3, !dbg !6554
  br i1 %cmp3, label %for.body, label %for.end, !dbg !6555

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @debug, align 4, !dbg !6556
  %cmp4 = icmp ugt i32 %3, 3, !dbg !6559
  br i1 %cmp4, label %if.then5, label %if.end10, !dbg !6560

if.then5:                                         ; preds = %for.body
  %4 = load i32, i32* @debug, align 4, !dbg !6561
  %tobool6 = icmp ne i32 %4, 0, !dbg !6561
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !6563

if.then7:                                         ; preds = %if.then5
  %5 = load i8*, i8** %blockbuf.addr, align 8, !dbg !6564
  %6 = load i32, i32* %i, align 4, !dbg !6565
  %idxprom = zext i32 %6 to i64, !dbg !6564
  %arrayidx = getelementptr i8, i8* %5, i64 %idxprom, !dbg !6564
  %7 = load i8, i8* %arrayidx, align 1, !dbg !6564
  %conv = zext i8 %7 to i32, !dbg !6564
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %conv) #10, !dbg !6561
  br label %if.end9, !dbg !6561

if.end9:                                          ; preds = %if.then7, %if.then5
  br label %if.end10, !dbg !6561

if.end10:                                         ; preds = %if.end9, %for.body
  %8 = load i8*, i8** %blockbuf.addr, align 8, !dbg !6566
  %9 = load i32, i32* %i, align 4, !dbg !6567
  %idxprom11 = zext i32 %9 to i64, !dbg !6566
  %arrayidx12 = getelementptr i8, i8* %8, i64 %idxprom11, !dbg !6566
  %10 = load i8, i8* %arrayidx12, align 1, !dbg !6566
  %11 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6568
  %buffer = getelementptr inbounds %struct.saa6588, %struct.saa6588* %11, i32 0, i32 3, !dbg !6569
  %12 = load i8*, i8** %buffer, align 8, !dbg !6569
  %13 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6570
  %wr_index = getelementptr inbounds %struct.saa6588, %struct.saa6588* %13, i32 0, i32 6, !dbg !6571
  %14 = load i32, i32* %wr_index, align 8, !dbg !6571
  %idxprom13 = zext i32 %14 to i64, !dbg !6568
  %arrayidx14 = getelementptr i8, i8* %12, i64 %idxprom13, !dbg !6568
  store i8 %10, i8* %arrayidx14, align 1, !dbg !6572
  %15 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6573
  %wr_index15 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %15, i32 0, i32 6, !dbg !6574
  %16 = load i32, i32* %wr_index15, align 8, !dbg !6575
  %inc = add i32 %16, 1, !dbg !6575
  store i32 %inc, i32* %wr_index15, align 8, !dbg !6575
  br label %for.inc, !dbg !6576

for.inc:                                          ; preds = %if.end10
  %17 = load i32, i32* %i, align 4, !dbg !6577
  %inc16 = add i32 %17, 1, !dbg !6577
  store i32 %inc16, i32* %i, align 4, !dbg !6577
  br label %for.cond, !dbg !6578, !llvm.loop !6579

for.end:                                          ; preds = %for.cond
  %18 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6581
  %wr_index17 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %18, i32 0, i32 6, !dbg !6583
  %19 = load i32, i32* %wr_index17, align 8, !dbg !6583
  %20 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6584
  %buf_size = getelementptr inbounds %struct.saa6588, %struct.saa6588* %20, i32 0, i32 4, !dbg !6585
  %21 = load i32, i32* %buf_size, align 8, !dbg !6585
  %cmp18 = icmp uge i32 %19, %21, !dbg !6586
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !6587

if.then20:                                        ; preds = %for.end
  %22 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6588
  %wr_index21 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %22, i32 0, i32 6, !dbg !6589
  store i32 0, i32* %wr_index21, align 8, !dbg !6590
  br label %if.end22, !dbg !6588

if.end22:                                         ; preds = %if.then20, %for.end
  %23 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6591
  %wr_index23 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %23, i32 0, i32 6, !dbg !6593
  %24 = load i32, i32* %wr_index23, align 8, !dbg !6593
  %25 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6594
  %rd_index = getelementptr inbounds %struct.saa6588, %struct.saa6588* %25, i32 0, i32 5, !dbg !6595
  %26 = load i32, i32* %rd_index, align 4, !dbg !6595
  %cmp24 = icmp eq i32 %24, %26, !dbg !6596
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !6597

if.then26:                                        ; preds = %if.end22
  %27 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6598
  %rd_index27 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %27, i32 0, i32 5, !dbg !6600
  %28 = load i32, i32* %rd_index27, align 4, !dbg !6601
  %add = add i32 %28, 3, !dbg !6601
  store i32 %add, i32* %rd_index27, align 4, !dbg !6601
  %29 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6602
  %rd_index28 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %29, i32 0, i32 5, !dbg !6604
  %30 = load i32, i32* %rd_index28, align 4, !dbg !6604
  %31 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6605
  %buf_size29 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %31, i32 0, i32 4, !dbg !6606
  %32 = load i32, i32* %buf_size29, align 8, !dbg !6606
  %cmp30 = icmp uge i32 %30, %32, !dbg !6607
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !6608

if.then32:                                        ; preds = %if.then26
  %33 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6609
  %rd_index33 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %33, i32 0, i32 5, !dbg !6610
  store i32 0, i32* %rd_index33, align 4, !dbg !6611
  br label %if.end34, !dbg !6609

if.end34:                                         ; preds = %if.then32, %if.then26
  br label %if.end36, !dbg !6612

if.else:                                          ; preds = %if.end22
  %34 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6613
  %block_count = getelementptr inbounds %struct.saa6588, %struct.saa6588* %34, i32 0, i32 7, !dbg !6614
  %35 = load i32, i32* %block_count, align 4, !dbg !6615
  %inc35 = add i32 %35, 1, !dbg !6615
  store i32 %inc35, i32* %block_count, align 4, !dbg !6615
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end34
  %36 = load i32, i32* @debug, align 4, !dbg !6616
  %cmp37 = icmp ugt i32 %36, 3, !dbg !6618
  br i1 %cmp37, label %if.then39, label %if.end45, !dbg !6619

if.then39:                                        ; preds = %if.end36
  %37 = load i32, i32* @debug, align 4, !dbg !6620
  %tobool40 = icmp ne i32 %37, 0, !dbg !6620
  br i1 %tobool40, label %if.then41, label %if.end44, !dbg !6622

if.then41:                                        ; preds = %if.then39
  %38 = load %struct.saa6588*, %struct.saa6588** %s.addr, align 8, !dbg !6623
  %block_count42 = getelementptr inbounds %struct.saa6588, %struct.saa6588* %38, i32 0, i32 7, !dbg !6624
  %39 = load i32, i32* %block_count42, align 4, !dbg !6624
  %call43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %39) #10, !dbg !6620
  br label %if.end44, !dbg !6620

if.end44:                                         ; preds = %if.then41, %if.then39
  br label %if.end45, !dbg !6620

if.end45:                                         ; preds = %if.end44, %if.end36
  ret void, !dbg !6625
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #2 !dbg !6626 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6627, metadata !DIExpression()), !dbg !6628
  %0 = load i32, i32* %m.addr, align 4, !dbg !6629
  %conv = zext i32 %0 to i64, !dbg !6629
  %add = add i64 %conv, 4, !dbg !6630
  %sub = sub i64 %add, 1, !dbg !6631
  %div = sdiv i64 %sub, 4, !dbg !6632
  ret i64 %div, !dbg !6633
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %wq, %struct.delayed_work* %dwork, i64 %delay) #2 !dbg !6634 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !6637, metadata !DIExpression()), !dbg !6638
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !6639, metadata !DIExpression()), !dbg !6640
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !6641, metadata !DIExpression()), !dbg !6642
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !6643
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !6644
  %2 = load i64, i64* %delay.addr, align 8, !dbg !6645
  %call = call zeroext i1 @queue_delayed_work_on(i32 1, %struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #9, !dbg !6646
  ret i1 %call, !dbg !6647
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_clientdata(%struct.i2c_client* %client) #2 !dbg !6648 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6651, metadata !DIExpression()), !dbg !6652
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6653
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !6654
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6655
  ret i8* %call, !dbg !6656
}

; Function Attrs: noredzone
declare dso_local void @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6657 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6660, metadata !DIExpression()), !dbg !6661
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6662
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6663
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6663
  ret i8* %1, !dbg !6664
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5375}
!llvm.module.flags = !{!5376, !5377, !5378, !5379}
!llvm.ident = !{!5380}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 33, type: !5372, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !219, globals: !4982, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/i2c/saa6588.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !26, !34, !40, !47, !54, !60, !66, !72, !79, !87, !93, !107, !112, !121, !128, !133, !143, !148, !156, !160, !164, !174, !181, !214}
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
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !35, line: 26, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !41, line: 15, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!46 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !48, line: 59, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!52 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!53 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !55, line: 546, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !61, line: 16, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !67, line: 44, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !73, line: 343, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !80, line: 524, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !80, line: 502, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !94, line: 76, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!96 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!100 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!101 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!102 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!103 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!104 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!105 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!106 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "i2c_alert_protocol", file: !108, line: 215, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_ALERT", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "I2C_PROTOCOL_SMBUS_HOST_NOTIFY", value: 1, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !113, line: 19, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116, !117, !118, !119, !120}
!115 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!119 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_pad_signal_type", file: !122, line: 171, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/media/media-entity.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !125, !126, !127}
!124 = !DIEnumerator(name: "PAD_SIGNAL_DEFAULT", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "PAD_SIGNAL_ANALOG", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "PAD_SIGNAL_DV", value: 2, isUnsigned: true)
!127 = !DIEnumerator(name: "PAD_SIGNAL_AUDIO", value: 3, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_entity_type", file: !122, line: 244, baseType: !7, size: 32, elements: !129)
!129 = !{!130, !131, !132}
!130 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_BASE", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_VIDEO_DEVICE", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_V4L2_SUBDEV", value: 2, isUnsigned: true)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vfl_devnode_type", file: !134, line: 35, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/media/v4l2-dev.h", directory: "/home/lizy2001/genbc/linux")
!135 = !{!136, !137, !138, !139, !140, !141, !142}
!136 = !DIEnumerator(name: "VFL_TYPE_VIDEO", value: 0, isUnsigned: true)
!137 = !DIEnumerator(name: "VFL_TYPE_VBI", value: 1, isUnsigned: true)
!138 = !DIEnumerator(name: "VFL_TYPE_RADIO", value: 2, isUnsigned: true)
!139 = !DIEnumerator(name: "VFL_TYPE_SUBDEV", value: 3, isUnsigned: true)
!140 = !DIEnumerator(name: "VFL_TYPE_SDR", value: 4, isUnsigned: true)
!141 = !DIEnumerator(name: "VFL_TYPE_TOUCH", value: 5, isUnsigned: true)
!142 = !DIEnumerator(name: "VFL_TYPE_MAX", value: 6, isUnsigned: true)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vfl_devnode_direction", file: !134, line: 55, baseType: !7, size: 32, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIEnumerator(name: "VFL_DIR_RX", value: 0, isUnsigned: true)
!146 = !DIEnumerator(name: "VFL_DIR_TX", value: 1, isUnsigned: true)
!147 = !DIEnumerator(name: "VFL_DIR_M2M", value: 2, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_priority", file: !149, line: 406, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/uapi/linux/videodev2.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !152, !153, !154, !155}
!151 = !DIEnumerator(name: "V4L2_PRIORITY_UNSET", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "V4L2_PRIORITY_BACKGROUND", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "V4L2_PRIORITY_INTERACTIVE", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "V4L2_PRIORITY_RECORD", value: 3, isUnsigned: true)
!155 = !DIEnumerator(name: "V4L2_PRIORITY_DEFAULT", value: 2, isUnsigned: true)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_subdev_ir_mode", file: !157, line: 501, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/media/v4l2-subdev.h", directory: "/home/lizy2001/genbc/linux")
!158 = !{!159}
!159 = !DIEnumerator(name: "V4L2_SUBDEV_IR_MODE_PULSE_WIDTH", value: 0, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_mbus_frame_desc_flags", file: !157, line: 321, baseType: !7, size: 32, elements: !161)
!161 = !{!162, !163}
!162 = !DIEnumerator(name: "V4L2_MBUS_FRAME_DESC_FL_LEN_MAX", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "V4L2_MBUS_FRAME_DESC_FL_BLOB", value: 2, isUnsigned: true)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_mbus_type", file: !165, line: 107, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/media/v4l2-mediabus.h", directory: "/home/lizy2001/genbc/linux")
!166 = !{!167, !168, !169, !170, !171, !172, !173}
!167 = !DIEnumerator(name: "V4L2_MBUS_UNKNOWN", value: 0, isUnsigned: true)
!168 = !DIEnumerator(name: "V4L2_MBUS_PARALLEL", value: 1, isUnsigned: true)
!169 = !DIEnumerator(name: "V4L2_MBUS_BT656", value: 2, isUnsigned: true)
!170 = !DIEnumerator(name: "V4L2_MBUS_CSI1", value: 3, isUnsigned: true)
!171 = !DIEnumerator(name: "V4L2_MBUS_CCP2", value: 4, isUnsigned: true)
!172 = !DIEnumerator(name: "V4L2_MBUS_CSI2_DPHY", value: 5, isUnsigned: true)
!173 = !DIEnumerator(name: "V4L2_MBUS_CSI2_CPHY", value: 6, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_async_match_type", file: !175, line: 33, baseType: !7, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/media/v4l2-async.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !178, !179, !180}
!177 = !DIEnumerator(name: "V4L2_ASYNC_MATCH_CUSTOM", value: 0, isUnsigned: true)
!178 = !DIEnumerator(name: "V4L2_ASYNC_MATCH_DEVNAME", value: 1, isUnsigned: true)
!179 = !DIEnumerator(name: "V4L2_ASYNC_MATCH_I2C", value: 2, isUnsigned: true)
!180 = !DIEnumerator(name: "V4L2_ASYNC_MATCH_FWNODE", value: 3, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 30, baseType: !183, size: 64, elements: !184)
!182 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!183 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!185 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!186 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!187 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!188 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!189 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!190 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!191 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!192 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!193 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!194 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!195 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!196 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!197 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!198 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!199 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!200 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!201 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!202 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!203 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!204 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!205 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!206 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!207 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!208 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!209 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!210 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!211 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!212 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!213 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !215, line: 10, baseType: !7, size: 32, elements: !216)
!215 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !218}
!217 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!218 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!219 = !{!220, !223, !225, !226, !227, !229, !298, !314, !4980, !183}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !222, line: 76, flags: DIFlagFwdDecl)
!222 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !224, line: 148, baseType: !7)
!224 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!226 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !228, line: 52, baseType: !7)
!228 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "saa6588", file: !3, line: 55, size: 3712, elements: !231)
!231 = !{!232, !4962, !4969, !4970, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !230, file: !3, line: 56, baseType: !233, size: 2560)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev", file: !157, line: 866, size: 2560, elements: !234)
!234 = !{!235, !4162, !4163, !4164, !4165, !4166, !4197, !4868, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4924, !4952, !4953}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !233, file: !157, line: 868, baseType: !236, size: 1024)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity", file: !122, line: 290, size: 1024, elements: !237)
!237 = !{!238, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4151, !4152, !4153, !4154}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !236, file: !122, line: 291, baseType: !239, size: 256)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_gobj", file: !122, line: 57, size: 256, elements: !240)
!240 = !{!241, !4120, !4121}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !239, file: !122, line: 58, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_device", file: !244, line: 144, size: 5184, elements: !245)
!244 = !DIFile(filename: "./include/media/media-device.h", directory: "/home/lizy2001/genbc/linux")
!245 = !{!246, !3976, !4007, !4008, !4009, !4013, !4014, !4015, !4016, !4017, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4044, !4045, !4054, !4058, !4118, !4119}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !243, file: !244, line: 146, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !249)
!249 = !{!250, !3430, !3431, !3434, !3435, !3486, !3577, !3578, !3579, !3580, !3581, !3590, !3695, !3708, !3903, !3904, !3908, !3910, !3911, !3912, !3916, !3922, !3923, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3964, !3965, !3966, !3969, !3972, !3973, !3974, !3975}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !248, file: !73, line: 462, baseType: !251, size: 512)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !252, line: 64, size: 512, elements: !253)
!252 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!253 = !{!254, !258, !264, !266, !327, !3281, !3420, !3425, !3426, !3427, !3428, !3429}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !252, line: 65, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !251, file: !252, line: 66, baseType: !259, size: 128, offset: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !224, line: 178, size: 128, elements: !260)
!260 = !{!261, !263}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !224, line: 179, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !259, file: !224, line: 179, baseType: !262, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !251, file: !252, line: 67, baseType: !265, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !251, file: !252, line: 68, baseType: !267, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !252, line: 192, size: 704, elements: !269)
!269 = !{!270, !271, !287, !288}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !268, file: !252, line: 193, baseType: !259, size: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !268, file: !252, line: 194, baseType: !272, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !273, line: 83, baseType: !274)
!273 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !273, line: 71, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !273, line: 72, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !274, file: !273, line: 72, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !277, file: !273, line: 73, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !273, line: 20, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !280, file: !273, line: 21, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !284, line: 25, baseType: !285)
!284 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 25, elements: !286)
!286 = !{}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !268, file: !252, line: 195, baseType: !251, size: 512, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !268, file: !252, line: 196, baseType: !289, size: 64, offset: 640)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !252, line: 156, size: 192, elements: !292)
!292 = !{!293, !299, !304}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !291, file: !252, line: 157, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !267, !265}
!298 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !291, file: !252, line: 158, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!255, !267, !265}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !291, file: !252, line: 159, baseType: !305, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!298, !267, !265, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !252, line: 148, size: 20736, elements: !311)
!311 = !{!312, !317, !321, !322, !326}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !310, file: !252, line: 149, baseType: !313, size: 192)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 192, elements: !315)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!315 = !{!316}
!316 = !DISubrange(count: 3)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !310, file: !252, line: 150, baseType: !318, size: 4096, offset: 192)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 4096, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !310, file: !252, line: 151, baseType: !298, size: 32, offset: 4288)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !310, file: !252, line: 152, baseType: !323, size: 16384, offset: 4320)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 16384, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 2048)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !310, file: !252, line: 153, baseType: !298, size: 32, offset: 20704)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !251, file: !252, line: 69, baseType: !328, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !252, line: 138, size: 448, elements: !330)
!330 = !{!331, !335, !363, !365, !3243, !3271, !3275}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !329, file: !252, line: 139, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !265}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !329, file: !252, line: 140, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !339, line: 230, size: 128, elements: !340)
!339 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!340 = !{!341, !356}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !338, file: !339, line: 231, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!345, !265, !349, !314}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !224, line: 60, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !347, line: 73, baseType: !348)
!347 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !347, line: 15, baseType: !183)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !339, line: 30, size: 128, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !350, file: !339, line: 31, baseType: !255, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !350, file: !339, line: 32, baseType: !354, size: 16, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !224, line: 19, baseType: !355)
!355 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !338, file: !339, line: 232, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!345, !265, !349, !255, !360}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !224, line: 55, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !347, line: 72, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !347, line: 16, baseType: !226)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !329, file: !252, line: 141, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !329, file: !252, line: 142, baseType: !366, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !339, line: 84, size: 320, elements: !370)
!370 = !{!371, !372, !376, !3240, !3241}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !369, file: !339, line: 85, baseType: !255, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !369, file: !339, line: 86, baseType: !373, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!354, !265, !349, !298}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !369, file: !339, line: 88, baseType: !377, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!354, !265, !380, !298}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !339, line: 168, size: 448, elements: !382)
!382 = !{!383, !384, !385, !386, !3235, !3236}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !381, file: !339, line: 169, baseType: !350, size: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !381, file: !339, line: 170, baseType: !360, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !381, file: !339, line: 171, baseType: !225, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !381, file: !339, line: 172, baseType: !387, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!345, !390, !265, !380, !314, !569, !360}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !18, line: 916, size: 1856, align: 32, elements: !392)
!392 = !{!393, !411, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3218, !3219, !3228, !3229, !3230, !3231, !3232, !3233, !3234}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !391, file: !18, line: 920, baseType: !394, size: 128)
!394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !18, line: 917, size: 128, elements: !395)
!395 = !{!396, !402}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !394, file: !18, line: 918, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !398, line: 58, size: 64, elements: !399)
!398 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !398, line: 59, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !394, file: !18, line: 919, baseType: !403, size: 128, align: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !224, line: 216, size: 128, align: 64, elements: !404)
!404 = !{!405, !407}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !224, line: 217, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !403, file: !224, line: 218, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !406}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !391, file: !18, line: 921, baseType: !412, size: 128, offset: 128)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !413, line: 8, size: 128, elements: !414)
!413 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!414 = !{!415, !419}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !412, file: !413, line: 9, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !418, line: 18, flags: DIFlagFwdDecl)
!418 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!419 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !412, file: !413, line: 10, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !418, line: 89, size: 1536, elements: !422)
!422 = !{!423, !424, !434, !442, !443, !466, !3169, !3171, !3183, !3184, !3185, !3186, !3187, !3192, !3193, !3194}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !421, file: !418, line: 91, baseType: !7, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !421, file: !418, line: 92, baseType: !425, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !426, line: 277, baseType: !427)
!426 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !426, line: 277, size: 32, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !427, file: !426, line: 277, baseType: !430, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !426, line: 70, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !426, line: 65, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !431, file: !426, line: 66, baseType: !7, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !421, file: !418, line: 93, baseType: !435, size: 128, offset: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !436, line: 38, size: 128, elements: !437)
!436 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!437 = !{!438, !440}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !435, file: !436, line: 39, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !435, file: !436, line: 39, baseType: !441, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !421, file: !418, line: 94, baseType: !420, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !421, file: !418, line: 95, baseType: !444, size: 128, offset: 256)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !418, line: 47, size: 128, elements: !445)
!445 = !{!446, !462}
!446 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !418, line: 48, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !418, line: 48, size: 64, elements: !448)
!448 = !{!449, !458}
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !418, line: 49, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !447, file: !418, line: 49, size: 64, elements: !451)
!451 = !{!452, !457}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !450, file: !418, line: 50, baseType: !453, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !454, line: 21, baseType: !455)
!454 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !456, line: 27, baseType: !7)
!456 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!457 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !450, file: !418, line: 50, baseType: !453, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !447, file: !418, line: 52, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !454, line: 23, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !456, line: 31, baseType: !461)
!461 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !444, file: !418, line: 54, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !421, file: !418, line: 96, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !18, line: 610, size: 4224, elements: !469)
!469 = !{!470, !471, !472, !480, !487, !488, !636, !2865, !2866, !2867, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !3137, !3145, !3146, !3147, !3165, !3166, !3167, !3168}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !468, file: !18, line: 611, baseType: !354, size: 16)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !468, file: !18, line: 612, baseType: !355, size: 16, offset: 16)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !468, file: !18, line: 613, baseType: !473, size: 32, offset: 32)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !474, line: 23, baseType: !475)
!474 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 21, size: 32, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !475, file: !474, line: 22, baseType: !478, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !224, line: 32, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !347, line: 49, baseType: !7)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !468, file: !18, line: 614, baseType: !481, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !474, line: 28, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 26, size: 32, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !482, file: !474, line: 27, baseType: !485, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !224, line: 33, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !347, line: 50, baseType: !7)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !468, file: !18, line: 615, baseType: !7, size: 32, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !468, file: !18, line: 622, baseType: !489, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !18, line: 1864, size: 1536, align: 512, elements: !492)
!492 = !{!493, !497, !510, !514, !520, !524, !530, !534, !538, !542, !546, !547, !553, !557, !583, !612, !616, !622, !627, !631, !632}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !491, file: !18, line: 1865, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!420, !467, !420, !7}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !491, file: !18, line: 1866, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!255, !420, !467, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !503, line: 10, size: 128, elements: !504)
!503 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!504 = !{!505, !509}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !502, file: !503, line: 11, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !225}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !502, file: !503, line: 12, baseType: !225, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !491, file: !18, line: 1867, baseType: !511, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!298, !467, !298}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !491, file: !18, line: 1868, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!518, !467, !298}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !18, line: 581, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !491, file: !18, line: 1870, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!298, !420, !314, !298}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !491, file: !18, line: 1872, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!298, !467, !420, !354, !528}
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !224, line: 30, baseType: !529)
!529 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !491, file: !18, line: 1873, baseType: !531, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!298, !420, !467, !420}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !491, file: !18, line: 1874, baseType: !535, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!298, !467, !420}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !491, file: !18, line: 1875, baseType: !539, size: 64, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!298, !467, !420, !255}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !491, file: !18, line: 1876, baseType: !543, size: 64, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!298, !467, !420, !354}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !491, file: !18, line: 1877, baseType: !535, size: 64, offset: 640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !491, file: !18, line: 1878, baseType: !548, size: 64, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!298, !467, !420, !354, !551}
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !224, line: 16, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !224, line: 13, baseType: !453)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !491, file: !18, line: 1879, baseType: !554, size: 64, offset: 768)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!298, !467, !420, !467, !420, !7}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !491, file: !18, line: 1881, baseType: !558, size: 64, offset: 832)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!298, !420, !561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !18, line: 219, size: 640, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !572, !580, !581, !582}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !562, file: !18, line: 220, baseType: !7, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !562, file: !18, line: 221, baseType: !354, size: 16, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !562, file: !18, line: 222, baseType: !473, size: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !562, file: !18, line: 223, baseType: !481, size: 32, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !562, file: !18, line: 224, baseType: !569, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !224, line: 46, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !347, line: 88, baseType: !571)
!571 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !562, file: !18, line: 225, baseType: !573, size: 128, offset: 192)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !574, line: 13, size: 128, elements: !575)
!574 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!575 = !{!576, !579}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !573, file: !574, line: 14, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !574, line: 8, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !456, line: 30, baseType: !571)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !573, file: !574, line: 15, baseType: !183, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !562, file: !18, line: 226, baseType: !573, size: 128, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !562, file: !18, line: 227, baseType: !573, size: 128, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !562, file: !18, line: 234, baseType: !390, size: 64, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !491, file: !18, line: 1882, baseType: !584, size: 64, offset: 896)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!298, !587, !589, !453, !7}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !591, line: 22, size: 1152, elements: !592)
!591 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!592 = !{!593, !594, !595, !596, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !590, file: !591, line: 23, baseType: !453, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !590, file: !591, line: 24, baseType: !354, size: 16, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !590, file: !591, line: 25, baseType: !7, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !590, file: !591, line: 26, baseType: !597, size: 32, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !224, line: 104, baseType: !453)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !590, file: !591, line: 27, baseType: !459, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !590, file: !591, line: 28, baseType: !459, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !590, file: !591, line: 37, baseType: !459, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !590, file: !591, line: 38, baseType: !551, size: 32, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !590, file: !591, line: 39, baseType: !551, size: 32, offset: 352)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !590, file: !591, line: 40, baseType: !473, size: 32, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !590, file: !591, line: 41, baseType: !481, size: 32, offset: 416)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !590, file: !591, line: 42, baseType: !569, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !590, file: !591, line: 43, baseType: !573, size: 128, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !590, file: !591, line: 44, baseType: !573, size: 128, offset: 640)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !590, file: !591, line: 45, baseType: !573, size: 128, offset: 768)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !590, file: !591, line: 46, baseType: !573, size: 128, offset: 896)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !590, file: !591, line: 47, baseType: !459, size: 64, offset: 1024)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !590, file: !591, line: 48, baseType: !459, size: 64, offset: 1088)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !491, file: !18, line: 1883, baseType: !613, size: 64, offset: 960)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!345, !420, !314, !360}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !491, file: !18, line: 1884, baseType: !617, size: 64, offset: 1024)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!298, !467, !620, !459, !459}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !18, line: 50, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !491, file: !18, line: 1886, baseType: !623, size: 64, offset: 1088)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!298, !467, !626, !298}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !491, file: !18, line: 1887, baseType: !628, size: 64, offset: 1152)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!298, !467, !420, !390, !7, !354}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !491, file: !18, line: 1890, baseType: !543, size: 64, offset: 1216)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !491, file: !18, line: 1891, baseType: !633, size: 64, offset: 1280)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!298, !467, !518, !298}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !468, file: !18, line: 623, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !18, line: 1416, size: 9472, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !692, !2472, !2554, !2637, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2653, !2657, !2658, !2661, !2662, !2665, !2666, !2667, !2708, !2735, !2736, !2737, !2738, !2739, !2740, !2743, !2745, !2752, !2753, !2755, !2756, !2757, !2816, !2817, !2832, !2833, !2834, !2835, !2836, !2839, !2840, !2841, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !638, file: !18, line: 1417, baseType: !259, size: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !638, file: !18, line: 1418, baseType: !551, size: 32, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !638, file: !18, line: 1419, baseType: !465, size: 8, offset: 160)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !638, file: !18, line: 1420, baseType: !226, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !638, file: !18, line: 1421, baseType: !569, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !638, file: !18, line: 1422, baseType: !646, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !18, line: 2228, size: 576, elements: !648)
!648 = !{!649, !650, !651, !658, !662, !666, !670, !671, !672, !682, !685, !686, !687, !689, !690, !691}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !647, file: !18, line: 2229, baseType: !255, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !647, file: !18, line: 2230, baseType: !298, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !647, file: !18, line: 2238, baseType: !652, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!298, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !657, line: 28, flags: DIFlagFwdDecl)
!657 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !647, file: !18, line: 2239, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !18, line: 70, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !647, file: !18, line: 2240, baseType: !663, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!420, !646, !298, !255, !225}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !647, file: !18, line: 2242, baseType: !667, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !637}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !647, file: !18, line: 2243, baseType: !220, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !647, file: !18, line: 2244, baseType: !646, size: 64, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !647, file: !18, line: 2245, baseType: !673, size: 64, offset: 512)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !224, line: 182, size: 64, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !673, file: !224, line: 183, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !224, line: 186, size: 128, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !677, file: !224, line: 187, baseType: !676, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !677, file: !224, line: 187, baseType: !681, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !647, file: !18, line: 2247, baseType: !683, offset: 576)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !684, line: 187, elements: !286)
!684 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!685 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !647, file: !18, line: 2248, baseType: !683, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !647, file: !18, line: 2249, baseType: !683, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !647, file: !18, line: 2250, baseType: !688, offset: 576)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, elements: !315)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !647, file: !18, line: 2252, baseType: !683, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !647, file: !18, line: 2253, baseType: !683, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !647, file: !18, line: 2254, baseType: !683, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !638, file: !18, line: 1423, baseType: !693, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !18, line: 1935, size: 1472, elements: !696)
!696 = !{!697, !701, !705, !706, !710, !716, !720, !721, !722, !726, !730, !731, !732, !733, !739, !744, !745, !752, !753, !754, !755, !2456, !2471}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !695, file: !18, line: 1936, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!467, !637}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !695, file: !18, line: 1937, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !467}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !695, file: !18, line: 1938, baseType: !702, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !695, file: !18, line: 1940, baseType: !707, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !467, !298}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !695, file: !18, line: 1941, baseType: !711, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!298, !467, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !18, line: 289, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !695, file: !18, line: 1942, baseType: !717, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!298, !467}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !695, file: !18, line: 1943, baseType: !702, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !695, file: !18, line: 1944, baseType: !667, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !695, file: !18, line: 1945, baseType: !723, size: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!298, !637, !298}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !695, file: !18, line: 1946, baseType: !727, size: 64, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!298, !637}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !695, file: !18, line: 1947, baseType: !727, size: 64, offset: 640)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !695, file: !18, line: 1948, baseType: !727, size: 64, offset: 704)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !695, file: !18, line: 1949, baseType: !727, size: 64, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !695, file: !18, line: 1950, baseType: !734, size: 64, offset: 832)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!298, !420, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !18, line: 57, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !695, file: !18, line: 1951, baseType: !740, size: 64, offset: 896)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!298, !637, !743, !314}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !695, file: !18, line: 1952, baseType: !667, size: 64, offset: 960)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !695, file: !18, line: 1954, baseType: !746, size: 64, offset: 1024)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!298, !749, !420}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !751, line: 539, flags: DIFlagFwdDecl)
!751 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!752 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !695, file: !18, line: 1955, baseType: !746, size: 64, offset: 1088)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !695, file: !18, line: 1956, baseType: !746, size: 64, offset: 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !695, file: !18, line: 1957, baseType: !746, size: 64, offset: 1216)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !695, file: !18, line: 1963, baseType: !756, size: 64, offset: 1280)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!298, !637, !759, !223}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !761, line: 68, size: 512, align: 128, elements: !762)
!761 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !764, !2448, !2455}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !761, line: 69, baseType: !226, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !761, line: 77, baseType: !765, size: 320, offset: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !761, line: 77, size: 320, elements: !766)
!766 = !{!767, !954, !959, !987, !995, !1001, !2379, !2447}
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !761, line: 78, baseType: !768, size: 320)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !765, file: !761, line: 78, size: 320, elements: !769)
!769 = !{!770, !771, !952, !953}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !768, file: !761, line: 84, baseType: !259, size: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !768, file: !761, line: 86, baseType: !772, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !18, line: 451, size: 1216, align: 64, elements: !774)
!774 = !{!775, !776, !783, !784, !789, !804, !820, !821, !822, !823, !945, !946, !949, !950, !951}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !773, file: !18, line: 452, baseType: !467, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !773, file: !18, line: 453, baseType: !777, size: 128, offset: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !778, line: 292, size: 128, elements: !779)
!778 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!779 = !{!780, !781, !782}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !777, file: !778, line: 293, baseType: !272)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !777, file: !778, line: 295, baseType: !223, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !777, file: !778, line: 296, baseType: !225, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !773, file: !18, line: 454, baseType: !223, size: 32, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !773, file: !18, line: 455, baseType: !785, size: 32, offset: 224)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !224, line: 168, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 166, size: 32, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !786, file: !224, line: 167, baseType: !298, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !773, file: !18, line: 460, baseType: !790, size: 128, offset: 256)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !791, line: 125, size: 128, elements: !792)
!791 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !803}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !790, file: !791, line: 126, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !791, line: 31, size: 64, elements: !795)
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !794, file: !791, line: 32, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !791, line: 24, size: 192, align: 64, elements: !799)
!799 = !{!800, !801, !802}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !798, file: !791, line: 25, baseType: !226, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !798, file: !791, line: 26, baseType: !797, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !798, file: !791, line: 27, baseType: !797, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !790, file: !791, line: 127, baseType: !797, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !773, file: !18, line: 461, baseType: !805, size: 256, offset: 384)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !806, line: 35, size: 256, elements: !807)
!806 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !816, !817, !819}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !805, file: !806, line: 36, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !810, line: 13, baseType: !811)
!810 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !224, line: 175, baseType: !812)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 173, size: 64, elements: !813)
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !812, file: !224, line: 174, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !454, line: 22, baseType: !578)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !805, file: !806, line: 42, baseType: !809, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !805, file: !806, line: 46, baseType: !818, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !273, line: 29, baseType: !280)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !805, file: !806, line: 47, baseType: !259, size: 128, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !773, file: !18, line: 462, baseType: !226, size: 64, offset: 640)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !773, file: !18, line: 463, baseType: !226, size: 64, offset: 704)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !773, file: !18, line: 464, baseType: !226, size: 64, offset: 768)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !773, file: !18, line: 465, baseType: !824, size: 64, offset: 832)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !18, line: 367, size: 1408, elements: !827)
!827 = !{!828, !832, !836, !840, !844, !848, !854, !860, !864, !869, !873, !877, !881, !909, !913, !919, !920, !921, !925, !930, !934, !941}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !826, file: !18, line: 368, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!298, !759, !714}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !826, file: !18, line: 369, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!298, !390, !759}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !826, file: !18, line: 372, baseType: !837, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!298, !772, !714}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !826, file: !18, line: 375, baseType: !841, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!298, !759}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !826, file: !18, line: 381, baseType: !845, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!298, !390, !772, !262, !7}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !826, file: !18, line: 383, baseType: !849, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !852}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !18, line: 290, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !826, file: !18, line: 385, baseType: !855, size: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!298, !390, !772, !569, !7, !7, !858, !859}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !826, file: !18, line: 388, baseType: !861, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!298, !390, !772, !569, !7, !7, !759, !225}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !826, file: !18, line: 393, baseType: !865, size: 64, offset: 512)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!868, !772, !868}
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !224, line: 125, baseType: !459)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !826, file: !18, line: 394, baseType: !870, size: 64, offset: 576)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !759, !7, !7}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !826, file: !18, line: 395, baseType: !874, size: 64, offset: 640)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!298, !759, !223}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !826, file: !18, line: 396, baseType: !878, size: 64, offset: 704)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !759}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !826, file: !18, line: 397, baseType: !882, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!345, !885, !907}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !18, line: 320, size: 384, elements: !887)
!887 = !{!888, !889, !890, !894, !895, !896, !899, !900}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !886, file: !18, line: 321, baseType: !390, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !886, file: !18, line: 326, baseType: !569, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !886, file: !18, line: 327, baseType: !891, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !885, !183, !183}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !886, file: !18, line: 328, baseType: !225, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !886, file: !18, line: 329, baseType: !298, size: 32, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !886, file: !18, line: 330, baseType: !897, size: 16, offset: 288)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !454, line: 19, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !456, line: 24, baseType: !355)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !886, file: !18, line: 331, baseType: !897, size: 16, offset: 304)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !18, line: 332, baseType: !901, size: 64, offset: 320)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !18, line: 332, size: 64, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !901, file: !18, line: 333, baseType: !7, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !901, file: !18, line: 334, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !18, line: 334, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !18, line: 64, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !826, file: !18, line: 402, baseType: !910, size: 64, offset: 832)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!298, !772, !759, !759, !40}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !826, file: !18, line: 404, baseType: !914, size: 64, offset: 896)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!528, !759, !917}
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !918, line: 305, baseType: !7)
!918 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!919 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !826, file: !18, line: 405, baseType: !878, size: 64, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !826, file: !18, line: 406, baseType: !841, size: 64, offset: 1024)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !826, file: !18, line: 407, baseType: !922, size: 64, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!298, !759, !226, !226}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !826, file: !18, line: 409, baseType: !926, size: 64, offset: 1152)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !759, !929, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !826, file: !18, line: 410, baseType: !931, size: 64, offset: 1216)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!298, !772, !759}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !826, file: !18, line: 413, baseType: !935, size: 64, offset: 1280)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!298, !938, !390, !940}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !18, line: 61, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !826, file: !18, line: 415, baseType: !942, size: 64, offset: 1344)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !390}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !773, file: !18, line: 466, baseType: !226, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !773, file: !18, line: 467, baseType: !947, size: 32, offset: 960)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !948, line: 8, baseType: !453)
!948 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!949 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !773, file: !18, line: 468, baseType: !272, offset: 992)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !773, file: !18, line: 469, baseType: !259, size: 128, offset: 1024)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !773, file: !18, line: 470, baseType: !225, size: 64, offset: 1152)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !768, file: !761, line: 87, baseType: !226, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !768, file: !761, line: 94, baseType: !226, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !761, line: 96, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !765, file: !761, line: 96, size: 64, elements: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !955, file: !761, line: 101, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !224, line: 143, baseType: !459)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !761, line: 103, baseType: !960, size: 320)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !765, file: !761, line: 103, size: 320, elements: !961)
!961 = !{!962, !972, !975, !976}
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !761, line: 104, baseType: !963, size: 128)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !761, line: 104, size: 128, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !963, file: !761, line: 105, baseType: !259, size: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !761, line: 106, baseType: !967, size: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !761, line: 106, size: 128, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !967, file: !761, line: 107, baseType: !759, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !967, file: !761, line: 109, baseType: !298, size: 32, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !967, file: !761, line: 110, baseType: !298, size: 32, offset: 96)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !960, file: !761, line: 117, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !761, line: 117, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !960, file: !761, line: 119, baseType: !225, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !761, line: 120, baseType: !977, size: 64, offset: 256)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !761, line: 120, size: 64, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !977, file: !761, line: 121, baseType: !225, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !977, file: !761, line: 122, baseType: !226, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !761, line: 123, baseType: !982, size: 32)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !761, line: 123, size: 32, elements: !983)
!983 = !{!984, !985, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !982, file: !761, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !982, file: !761, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !982, file: !761, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !761, line: 130, baseType: !988, size: 192)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !765, file: !761, line: 130, size: 192, elements: !989)
!989 = !{!990, !991, !992, !993, !994}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !988, file: !761, line: 131, baseType: !226, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !988, file: !761, line: 134, baseType: !465, size: 8, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !988, file: !761, line: 135, baseType: !465, size: 8, offset: 72)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !988, file: !761, line: 136, baseType: !785, size: 32, offset: 96)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !988, file: !761, line: 137, baseType: !7, size: 32, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !761, line: 139, baseType: !996, size: 256)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !765, file: !761, line: 139, size: 256, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !996, file: !761, line: 140, baseType: !226, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !996, file: !761, line: 141, baseType: !785, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !996, file: !761, line: 143, baseType: !259, size: 128, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !761, line: 145, baseType: !1002, size: 256)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !765, file: !761, line: 145, size: 256, elements: !1003)
!1003 = !{!1004, !1005, !1007, !1008, !2378}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1002, file: !761, line: 146, baseType: !226, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1002, file: !761, line: 147, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !751, line: 509, baseType: !759)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1002, file: !761, line: 148, baseType: !226, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !1002, file: !761, line: 149, baseType: !1009, size: 64, offset: 192)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1002, file: !761, line: 149, size: 64, elements: !1010)
!1010 = !{!1011, !2377}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1009, file: !761, line: 150, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !761, line: 388, size: 7296, elements: !1014)
!1014 = !{!1015, !2373}
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !761, line: 389, baseType: !1016, size: 7296)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1013, file: !761, line: 389, size: 7296, elements: !1017)
!1017 = !{!1018, !1136, !1137, !1138, !1142, !1143, !1144, !1145, !1146, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1187, !1195, !1198, !1244, !1245, !2357, !2358, !2361, !2362, !2363, !2366, !2367, !2368, !2371, !2372}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1016, file: !761, line: 390, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !761, line: 305, size: 1472, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1036, !1037, !1042, !1043, !1046, !1130, !1131, !1132, !1133, !1134}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1020, file: !761, line: 308, baseType: !226, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1020, file: !761, line: 309, baseType: !226, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1020, file: !761, line: 313, baseType: !1019, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1020, file: !761, line: 313, baseType: !1019, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1020, file: !761, line: 315, baseType: !798, size: 192, align: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1020, file: !761, line: 323, baseType: !226, size: 64, offset: 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1020, file: !761, line: 327, baseType: !1012, size: 64, offset: 512)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1020, file: !761, line: 333, baseType: !1030, size: 64, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !751, line: 284, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !751, line: 284, size: 64, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1031, file: !751, line: 284, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1035, line: 19, baseType: !226)
!1035 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1020, file: !761, line: 334, baseType: !226, size: 64, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1020, file: !761, line: 343, baseType: !1038, size: 256, offset: 704)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !761, line: 340, size: 256, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1038, file: !761, line: 341, baseType: !798, size: 192, align: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1038, file: !761, line: 342, baseType: !226, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1020, file: !761, line: 351, baseType: !259, size: 128, offset: 960)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1020, file: !761, line: 353, baseType: !1044, size: 64, offset: 1088)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !761, line: 353, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1020, file: !761, line: 356, baseType: !1047, size: 64, offset: 1152)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !55, line: 557, size: 832, elements: !1050)
!1050 = !{!1051, !1055, !1056, !1060, !1064, !1104, !1108, !1112, !1116, !1117, !1118, !1122, !1126}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1049, file: !55, line: 558, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !1019}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1049, file: !55, line: 559, baseType: !1052, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1049, file: !55, line: 560, baseType: !1057, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!298, !1019, !226}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1049, file: !55, line: 561, baseType: !1061, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!298, !1019}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1049, file: !55, line: 562, baseType: !1065, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !761, line: 682, baseType: !7)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !55, line: 508, size: 768, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1084, !1091, !1097, !1098, !1099, !1101, !1103}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1070, file: !55, line: 509, baseType: !1019, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !55, line: 510, baseType: !7, size: 32, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1070, file: !55, line: 511, baseType: !223, size: 32, offset: 96)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1070, file: !55, line: 512, baseType: !226, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1070, file: !55, line: 513, baseType: !226, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1070, file: !55, line: 514, baseType: !1078, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !751, line: 385, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !751, line: 385, size: 64, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1080, file: !751, line: 385, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1035, line: 15, baseType: !226)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1070, file: !55, line: 516, baseType: !1085, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !751, line: 359, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !751, line: 359, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1087, file: !751, line: 359, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1035, line: 16, baseType: !226)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1070, file: !55, line: 519, baseType: !1092, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1035, line: 21, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1035, line: 21, size: 64, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1093, file: !1035, line: 21, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1035, line: 14, baseType: !226)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1070, file: !55, line: 521, baseType: !759, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1070, file: !55, line: 522, baseType: !759, size: 64, offset: 512)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1070, file: !55, line: 528, baseType: !1100, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1070, file: !55, line: 532, baseType: !1102, size: 64, offset: 640)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1070, file: !55, line: 536, baseType: !1006, size: 64, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1049, file: !55, line: 563, baseType: !1105, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!1068, !1069, !54}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1049, file: !55, line: 565, baseType: !1109, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !1069, !226, !226}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1049, file: !55, line: 567, baseType: !1113, size: 64, offset: 448)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!226, !1019}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1049, file: !55, line: 571, baseType: !1065, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1049, file: !55, line: 574, baseType: !1065, size: 64, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1049, file: !55, line: 579, baseType: !1119, size: 64, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!298, !1019, !226, !225, !298, !298}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1049, file: !55, line: 585, baseType: !1123, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!255, !1019}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1049, file: !55, line: 615, baseType: !1127, size: 64, offset: 768)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!759, !1019, !226}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1020, file: !761, line: 359, baseType: !226, size: 64, offset: 1216)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1020, file: !761, line: 361, baseType: !390, size: 64, offset: 1280)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1020, file: !761, line: 362, baseType: !225, size: 64, offset: 1344)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1020, file: !761, line: 365, baseType: !809, size: 64, offset: 1408)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1020, file: !761, line: 373, baseType: !1135, offset: 1472)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !761, line: 296, elements: !286)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1016, file: !761, line: 391, baseType: !794, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1016, file: !761, line: 392, baseType: !459, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1016, file: !761, line: 394, baseType: !1139, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!226, !390, !226, !226, !226, !226}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1016, file: !761, line: 398, baseType: !226, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1016, file: !761, line: 399, baseType: !226, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1016, file: !761, line: 405, baseType: !226, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1016, file: !761, line: 406, baseType: !226, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1016, file: !761, line: 407, baseType: !1147, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !751, line: 286, baseType: !1149)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !751, line: 286, size: 64, elements: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1149, file: !751, line: 286, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1035, line: 18, baseType: !226)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1016, file: !761, line: 416, baseType: !785, size: 32, offset: 576)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1016, file: !761, line: 428, baseType: !785, size: 32, offset: 608)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1016, file: !761, line: 437, baseType: !785, size: 32, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1016, file: !761, line: 447, baseType: !785, size: 32, offset: 672)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1016, file: !761, line: 450, baseType: !809, size: 64, offset: 704)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1016, file: !761, line: 452, baseType: !298, size: 32, offset: 768)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1016, file: !761, line: 454, baseType: !272, offset: 800)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1016, file: !761, line: 457, baseType: !805, size: 256, offset: 832)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1016, file: !761, line: 459, baseType: !259, size: 128, offset: 1088)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1016, file: !761, line: 466, baseType: !226, size: 64, offset: 1216)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1016, file: !761, line: 467, baseType: !226, size: 64, offset: 1280)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1016, file: !761, line: 469, baseType: !226, size: 64, offset: 1344)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1016, file: !761, line: 470, baseType: !226, size: 64, offset: 1408)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1016, file: !761, line: 471, baseType: !811, size: 64, offset: 1472)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1016, file: !761, line: 472, baseType: !226, size: 64, offset: 1536)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1016, file: !761, line: 473, baseType: !226, size: 64, offset: 1600)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1016, file: !761, line: 474, baseType: !226, size: 64, offset: 1664)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1016, file: !761, line: 475, baseType: !226, size: 64, offset: 1728)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1016, file: !761, line: 477, baseType: !272, offset: 1792)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1016, file: !761, line: 478, baseType: !226, size: 64, offset: 1792)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1016, file: !761, line: 478, baseType: !226, size: 64, offset: 1856)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1016, file: !761, line: 478, baseType: !226, size: 64, offset: 1920)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1016, file: !761, line: 478, baseType: !226, size: 64, offset: 1984)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1016, file: !761, line: 479, baseType: !226, size: 64, offset: 2048)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1016, file: !761, line: 479, baseType: !226, size: 64, offset: 2112)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1016, file: !761, line: 479, baseType: !226, size: 64, offset: 2176)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1016, file: !761, line: 480, baseType: !226, size: 64, offset: 2240)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1016, file: !761, line: 480, baseType: !226, size: 64, offset: 2304)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1016, file: !761, line: 480, baseType: !226, size: 64, offset: 2368)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1016, file: !761, line: 480, baseType: !226, size: 64, offset: 2432)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1016, file: !761, line: 482, baseType: !1184, size: 2816, offset: 2496)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 2816, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 44)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1016, file: !761, line: 488, baseType: !1188, size: 256, offset: 5312)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1189, line: 60, size: 256, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1190 = !{!1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1188, file: !1189, line: 61, baseType: !1192, size: 256)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 256, elements: !1193)
!1193 = !{!1194}
!1194 = !DISubrange(count: 4)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1016, file: !761, line: 490, baseType: !1196, size: 64, offset: 5568)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !761, line: 490, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1016, file: !761, line: 493, baseType: !1199, size: 896, offset: 5632)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1200, line: 53, baseType: !1201)
!1200 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 13, size: 896, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1209, !1210, !1217, !1218, !1238, !1239, !1240}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1201, file: !1200, line: 18, baseType: !459, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1201, file: !1200, line: 28, baseType: !811, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1201, file: !1200, line: 31, baseType: !805, size: 256, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1201, file: !1200, line: 32, baseType: !1207, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1200, line: 32, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1201, file: !1200, line: 37, baseType: !355, size: 16, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1201, file: !1200, line: 40, baseType: !1211, size: 192, offset: 512)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1212, line: 53, size: 192, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !{!1214, !1215, !1216}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1211, file: !1212, line: 54, baseType: !809, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1211, file: !1212, line: 55, baseType: !272, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1211, file: !1212, line: 59, baseType: !259, size: 128, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1201, file: !1200, line: 41, baseType: !225, size: 64, offset: 704)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1201, file: !1200, line: 42, baseType: !1219, size: 64, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1222, line: 13, size: 896, elements: !1223)
!1222 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1221, file: !1222, line: 14, baseType: !225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1221, file: !1222, line: 15, baseType: !226, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1221, file: !1222, line: 17, baseType: !226, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1221, file: !1222, line: 17, baseType: !226, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1221, file: !1222, line: 19, baseType: !183, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1221, file: !1222, line: 21, baseType: !183, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1221, file: !1222, line: 22, baseType: !183, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1221, file: !1222, line: 23, baseType: !183, size: 64, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1221, file: !1222, line: 24, baseType: !183, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1221, file: !1222, line: 25, baseType: !183, size: 64, offset: 576)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1221, file: !1222, line: 26, baseType: !183, size: 64, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1221, file: !1222, line: 27, baseType: !183, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1221, file: !1222, line: 28, baseType: !183, size: 64, offset: 768)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1221, file: !1222, line: 29, baseType: !183, size: 64, offset: 832)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1201, file: !1200, line: 44, baseType: !785, size: 32, offset: 832)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1201, file: !1200, line: 50, baseType: !897, size: 16, offset: 864)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1201, file: !1200, line: 51, baseType: !1241, size: 16, offset: 880)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !454, line: 18, baseType: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !456, line: 23, baseType: !1243)
!1243 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !761, line: 495, baseType: !226, size: 64, offset: 6528)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1016, file: !761, line: 497, baseType: !1246, size: 64, offset: 6592)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !761, line: 381, size: 384, elements: !1248)
!1248 = !{!1249, !1250, !2356}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1247, file: !761, line: 382, baseType: !785, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1247, file: !761, line: 383, baseType: !1251, size: 128, offset: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !761, line: 376, size: 128, elements: !1252)
!1252 = !{!1253, !2354}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1251, file: !761, line: 377, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1256, line: 640, size: 48640, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1257 = !{!1258, !1264, !1266, !1267, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1284, !1302, !1313, !1398, !1399, !1400, !1411, !1412, !1414, !1415, !1416, !1417, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1501, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1539, !1541, !1542, !1543, !1555, !1556, !1557, !1558, !1559, !1560, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1584, !1589, !1773, !1774, !1775, !1776, !1780, !1783, !1786, !1789, !1792, !1796, !1897, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1943, !1944, !1945, !1946, !1947, !1952, !1953, !1954, !1957, !1958, !1961, !1964, !1967, !1970, !2012, !2015, !2016, !2095, !2096, !2099, !2100, !2103, !2104, !2105, !2109, !2110, !2111, !2124, !2125, !2126, !2136, !2141, !2144, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1255, file: !1256, line: 646, baseType: !1259, size: 128)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1260, line: 56, size: 128, elements: !1261)
!1260 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !1260, line: 57, baseType: !226, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1259, file: !1260, line: 58, baseType: !453, size: 32, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1255, file: !1256, line: 649, baseType: !1265, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !183)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1255, file: !1256, line: 657, baseType: !225, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1255, file: !1256, line: 658, baseType: !1268, size: 32, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1269, line: 113, baseType: !1270)
!1269 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1269, line: 111, size: 32, elements: !1271)
!1271 = !{!1272}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1270, file: !1269, line: 112, baseType: !785, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1255, file: !1256, line: 660, baseType: !7, size: 32, offset: 288)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1255, file: !1256, line: 661, baseType: !7, size: 32, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1255, file: !1256, line: 684, baseType: !298, size: 32, offset: 352)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1255, file: !1256, line: 686, baseType: !298, size: 32, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1255, file: !1256, line: 687, baseType: !298, size: 32, offset: 416)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1255, file: !1256, line: 688, baseType: !298, size: 32, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1255, file: !1256, line: 689, baseType: !7, size: 32, offset: 480)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1255, file: !1256, line: 691, baseType: !1281, size: 64, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1283)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1256, line: 691, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1255, file: !1256, line: 692, baseType: !1285, size: 832, offset: 576)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1256, line: 451, size: 832, elements: !1286)
!1286 = !{!1287, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1285, file: !1256, line: 453, baseType: !1288, size: 128)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1256, line: 325, size: 128, elements: !1289)
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1288, file: !1256, line: 326, baseType: !226, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1288, file: !1256, line: 327, baseType: !453, size: 32, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1285, file: !1256, line: 454, baseType: !798, size: 192, align: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1285, file: !1256, line: 455, baseType: !259, size: 128, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1285, file: !1256, line: 456, baseType: !7, size: 32, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1285, file: !1256, line: 458, baseType: !459, size: 64, offset: 512)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1285, file: !1256, line: 459, baseType: !459, size: 64, offset: 576)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1285, file: !1256, line: 460, baseType: !459, size: 64, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1285, file: !1256, line: 461, baseType: !459, size: 64, offset: 704)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1285, file: !1256, line: 463, baseType: !459, size: 64, offset: 768)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1285, file: !1256, line: 465, baseType: !1301, offset: 832)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1256, line: 415, elements: !286)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1255, file: !1256, line: 693, baseType: !1303, size: 384, offset: 1408)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1256, line: 489, size: 384, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1303, file: !1256, line: 490, baseType: !259, size: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1303, file: !1256, line: 491, baseType: !226, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1303, file: !1256, line: 492, baseType: !226, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1303, file: !1256, line: 493, baseType: !7, size: 32, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1303, file: !1256, line: 494, baseType: !355, size: 16, offset: 288)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1303, file: !1256, line: 495, baseType: !355, size: 16, offset: 304)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1303, file: !1256, line: 497, baseType: !1312, size: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1255, file: !1256, line: 697, baseType: !1314, size: 1792, offset: 1792)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1256, line: 507, size: 1792, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1395, !1396}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1314, file: !1256, line: 508, baseType: !798, size: 192, align: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1314, file: !1256, line: 515, baseType: !459, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1314, file: !1256, line: 516, baseType: !459, size: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1314, file: !1256, line: 517, baseType: !459, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1314, file: !1256, line: 518, baseType: !459, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1314, file: !1256, line: 519, baseType: !459, size: 64, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1314, file: !1256, line: 526, baseType: !815, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1314, file: !1256, line: 527, baseType: !459, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1314, file: !1256, line: 528, baseType: !7, size: 32, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1314, file: !1256, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1314, file: !1256, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1314, file: !1256, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1314, file: !1256, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1314, file: !1256, line: 563, baseType: !1330, size: 512, offset: 704)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !1331)
!1331 = !{!1332, !1340, !1341, !1346, !1389, !1392, !1393, !1394}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1330, file: !6, line: 119, baseType: !1333, size: 256)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1334, line: 9, size: 256, elements: !1335)
!1334 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1333, file: !1334, line: 10, baseType: !798, size: 192, align: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1333, file: !1334, line: 11, baseType: !1338, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1339, line: 29, baseType: !815)
!1339 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1330, file: !6, line: 120, baseType: !1338, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1330, file: !6, line: 121, baseType: !1342, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!5, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1330, file: !6, line: 122, baseType: !1347, size: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !1349)
!1349 = !{!1350, !1370, !1371, !1374, !1379, !1380, !1384, !1388}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1348, file: !6, line: 160, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !6, line: 215, baseType: !818)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1352, file: !6, line: 216, baseType: !7, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1352, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1352, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1352, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1352, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1352, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1352, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1352, file: !6, line: 233, baseType: !1338, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1352, file: !6, line: 234, baseType: !1345, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1352, file: !6, line: 235, baseType: !1338, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1352, file: !6, line: 236, baseType: !1345, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1352, file: !6, line: 237, baseType: !1367, size: 4096, offset: 512)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 4096, elements: !1368)
!1368 = !{!1369}
!1369 = !DISubrange(count: 8)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1348, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1348, file: !6, line: 162, baseType: !1372, size: 32, offset: 96)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !224, line: 27, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !347, line: 96, baseType: !298)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1348, file: !6, line: 163, baseType: !1375, size: 32, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !426, line: 276, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !426, line: 276, size: 32, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1376, file: !426, line: 276, baseType: !430, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1348, file: !6, line: 164, baseType: !1345, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1348, file: !6, line: 165, baseType: !1381, size: 128, offset: 256)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1334, line: 14, size: 128, elements: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1381, file: !1334, line: 15, baseType: !790, size: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1348, file: !6, line: 166, baseType: !1385, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1338}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1348, file: !6, line: 167, baseType: !1338, size: 64, offset: 448)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1330, file: !6, line: 123, baseType: !1390, size: 8, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !454, line: 17, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !456, line: 21, baseType: !465)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1330, file: !6, line: 124, baseType: !1390, size: 8, offset: 456)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1330, file: !6, line: 125, baseType: !1390, size: 8, offset: 464)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1330, file: !6, line: 126, baseType: !1390, size: 8, offset: 472)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1314, file: !1256, line: 572, baseType: !1330, size: 512, offset: 1216)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1314, file: !1256, line: 580, baseType: !1397, size: 64, offset: 1728)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1255, file: !1256, line: 721, baseType: !7, size: 32, offset: 3584)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1255, file: !1256, line: 722, baseType: !298, size: 32, offset: 3616)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1255, file: !1256, line: 723, baseType: !1401, size: 64, offset: 3648)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1404, line: 17, baseType: !1405)
!1404 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1404, line: 17, size: 64, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1405, file: !1404, line: 17, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 64, elements: !1409)
!1409 = !{!1410}
!1410 = !DISubrange(count: 1)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1255, file: !1256, line: 724, baseType: !1403, size: 64, offset: 3712)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1255, file: !1256, line: 749, baseType: !1413, offset: 3776)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1256, line: 290, elements: !286)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1255, file: !1256, line: 751, baseType: !259, size: 128, offset: 3776)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1255, file: !1256, line: 757, baseType: !1012, size: 64, offset: 3904)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1255, file: !1256, line: 758, baseType: !1012, size: 64, offset: 3968)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1255, file: !1256, line: 761, baseType: !1418, size: 320, offset: 4032)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1189, line: 34, size: 320, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1418, file: !1189, line: 35, baseType: !459, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1418, file: !1189, line: 36, baseType: !1422, size: 256, offset: 64)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 256, elements: !1193)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1255, file: !1256, line: 766, baseType: !298, size: 32, offset: 4352)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1255, file: !1256, line: 767, baseType: !298, size: 32, offset: 4384)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1255, file: !1256, line: 768, baseType: !298, size: 32, offset: 4416)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1255, file: !1256, line: 770, baseType: !298, size: 32, offset: 4448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1255, file: !1256, line: 772, baseType: !226, size: 64, offset: 4480)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1255, file: !1256, line: 775, baseType: !7, size: 32, offset: 4544)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1255, file: !1256, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1255, file: !1256, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1255, file: !1256, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1255, file: !1256, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1255, file: !1256, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1255, file: !1256, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1255, file: !1256, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1255, file: !1256, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1255, file: !1256, line: 831, baseType: !226, size: 64, offset: 4672)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1255, file: !1256, line: 833, baseType: !1439, size: 384, offset: 4736)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !61, line: 25, size: 384, elements: !1440)
!1440 = !{!1441, !1446}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1439, file: !61, line: 26, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!183, !1445}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1439, file: !61, line: 27, baseType: !1447, size: 320, offset: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1439, file: !61, line: 27, size: 320, elements: !1448)
!1448 = !{!1449, !1459, !1486}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1447, file: !61, line: 36, baseType: !1450, size: 320)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1447, file: !61, line: 29, size: 320, elements: !1451)
!1451 = !{!1452, !1454, !1455, !1456, !1457, !1458}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1450, file: !61, line: 30, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1450, file: !61, line: 31, baseType: !453, size: 32, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1450, file: !61, line: 32, baseType: !453, size: 32, offset: 96)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1450, file: !61, line: 33, baseType: !453, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1450, file: !61, line: 34, baseType: !459, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1450, file: !61, line: 35, baseType: !1453, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1447, file: !61, line: 46, baseType: !1460, size: 192)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1447, file: !61, line: 38, size: 192, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1485}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1460, file: !61, line: 39, baseType: !1372, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1460, file: !61, line: 40, baseType: !60, size: 32, offset: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !61, line: 41, baseType: !1465, size: 64, offset: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !61, line: 41, size: 64, elements: !1466)
!1466 = !{!1467, !1475}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1465, file: !61, line: 42, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1470, line: 7, size: 128, elements: !1471)
!1470 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1474}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1469, file: !1470, line: 8, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !347, line: 93, baseType: !571)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1469, file: !1470, line: 9, baseType: !571, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1465, file: !61, line: 43, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1478, line: 7, size: 64, elements: !1479)
!1478 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1479 = !{!1480, !1484}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1477, file: !1478, line: 8, baseType: !1481, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1478, line: 5, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !454, line: 20, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !456, line: 26, baseType: !298)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1477, file: !1478, line: 9, baseType: !1482, size: 32, offset: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1460, file: !61, line: 45, baseType: !459, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1447, file: !61, line: 54, baseType: !1487, size: 256)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1447, file: !61, line: 48, size: 256, elements: !1488)
!1488 = !{!1489, !1497, !1498, !1499, !1500}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1487, file: !61, line: 49, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1492, line: 36, size: 64, elements: !1493)
!1492 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1493 = !{!1494, !1495, !1496}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1491, file: !1492, line: 37, baseType: !298, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1491, file: !1492, line: 38, baseType: !1243, size: 16, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1491, file: !1492, line: 39, baseType: !1243, size: 16, offset: 48)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1487, file: !61, line: 50, baseType: !298, size: 32, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1487, file: !61, line: 51, baseType: !298, size: 32, offset: 96)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1487, file: !61, line: 52, baseType: !226, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1487, file: !61, line: 53, baseType: !226, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1255, file: !1256, line: 835, baseType: !1502, size: 32, offset: 5120)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !224, line: 22, baseType: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !347, line: 28, baseType: !298)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1255, file: !1256, line: 836, baseType: !1502, size: 32, offset: 5152)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1255, file: !1256, line: 840, baseType: !226, size: 64, offset: 5184)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1255, file: !1256, line: 849, baseType: !1254, size: 64, offset: 5248)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1255, file: !1256, line: 852, baseType: !1254, size: 64, offset: 5312)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1255, file: !1256, line: 857, baseType: !259, size: 128, offset: 5376)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1255, file: !1256, line: 858, baseType: !259, size: 128, offset: 5504)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1255, file: !1256, line: 859, baseType: !1254, size: 64, offset: 5632)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1255, file: !1256, line: 867, baseType: !259, size: 128, offset: 5696)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1255, file: !1256, line: 868, baseType: !259, size: 128, offset: 5824)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1255, file: !1256, line: 871, baseType: !1514, size: 64, offset: 5952)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !27, line: 59, size: 768, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520, !1522, !1523, !1530, !1531}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1515, file: !27, line: 61, baseType: !1268, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1515, file: !27, line: 62, baseType: !7, size: 32, offset: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1515, file: !27, line: 63, baseType: !272, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1515, file: !27, line: 65, baseType: !1521, size: 256, offset: 64)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 256, elements: !1193)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1515, file: !27, line: 66, baseType: !673, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1515, file: !27, line: 68, baseType: !1524, size: 128, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1525, line: 40, baseType: !1526)
!1525 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1525, line: 36, size: 128, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1526, file: !1525, line: 37, baseType: !272)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1526, file: !1525, line: 38, baseType: !259, size: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1515, file: !27, line: 69, baseType: !403, size: 128, align: 64, offset: 512)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1515, file: !27, line: 70, baseType: !1532, size: 128, offset: 640)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1533, size: 128, elements: !1409)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !27, line: 54, size: 128, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1533, file: !27, line: 55, baseType: !298, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1533, file: !27, line: 56, baseType: !1537, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !27, line: 56, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1255, file: !1256, line: 872, baseType: !1540, size: 512, offset: 6016)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 512, elements: !1193)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1255, file: !1256, line: 873, baseType: !259, size: 128, offset: 6528)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1255, file: !1256, line: 874, baseType: !259, size: 128, offset: 6656)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1255, file: !1256, line: 876, baseType: !1544, size: 64, offset: 6784)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1546, line: 26, size: 192, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1545, file: !1546, line: 27, baseType: !7, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1545, file: !1546, line: 28, baseType: !1550, size: 128, offset: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1551, line: 43, size: 128, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1550, file: !1551, line: 44, baseType: !818)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1550, file: !1551, line: 45, baseType: !259, size: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1255, file: !1256, line: 879, baseType: !743, size: 64, offset: 6848)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1255, file: !1256, line: 882, baseType: !743, size: 64, offset: 6912)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1255, file: !1256, line: 884, baseType: !459, size: 64, offset: 6976)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1255, file: !1256, line: 885, baseType: !459, size: 64, offset: 7040)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1255, file: !1256, line: 890, baseType: !459, size: 64, offset: 7104)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1255, file: !1256, line: 891, baseType: !1561, size: 128, offset: 7168)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1256, line: 242, size: 128, elements: !1562)
!1562 = !{!1563, !1564, !1565}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1561, file: !1256, line: 244, baseType: !459, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1561, file: !1256, line: 245, baseType: !459, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1561, file: !1256, line: 246, baseType: !818, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1255, file: !1256, line: 900, baseType: !226, size: 64, offset: 7296)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1255, file: !1256, line: 901, baseType: !226, size: 64, offset: 7360)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1255, file: !1256, line: 904, baseType: !459, size: 64, offset: 7424)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1255, file: !1256, line: 907, baseType: !459, size: 64, offset: 7488)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1255, file: !1256, line: 910, baseType: !226, size: 64, offset: 7552)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1255, file: !1256, line: 911, baseType: !226, size: 64, offset: 7616)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1255, file: !1256, line: 914, baseType: !1573, size: 640, offset: 7680)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1574, line: 123, size: 640, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1582, !1583}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1573, file: !1574, line: 124, baseType: !1577, size: 576)
!1577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1578, size: 576, elements: !315)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1574, line: 108, size: 192, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1578, file: !1574, line: 109, baseType: !459, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1578, file: !1574, line: 110, baseType: !1381, size: 128, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1573, file: !1574, line: 125, baseType: !7, size: 32, offset: 576)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1573, file: !1574, line: 126, baseType: !7, size: 32, offset: 608)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1255, file: !1256, line: 917, baseType: !1585, size: 192, offset: 8320)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1574, line: 134, size: 192, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1585, file: !1574, line: 135, baseType: !403, size: 128, align: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1585, file: !1574, line: 136, baseType: !7, size: 32, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1255, file: !1256, line: 923, baseType: !1590, size: 64, offset: 8512)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1593, line: 111, size: 1280, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1614, !1615, !1616, !1617, !1618, !1619, !1726, !1727, !1728, !1729, !1755, !1758, !1768}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1592, file: !1593, line: 112, baseType: !785, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1592, file: !1593, line: 120, baseType: !473, size: 32, offset: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1592, file: !1593, line: 121, baseType: !481, size: 32, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1592, file: !1593, line: 122, baseType: !473, size: 32, offset: 96)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1592, file: !1593, line: 123, baseType: !481, size: 32, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1592, file: !1593, line: 124, baseType: !473, size: 32, offset: 160)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1592, file: !1593, line: 125, baseType: !481, size: 32, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1592, file: !1593, line: 126, baseType: !473, size: 32, offset: 224)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1592, file: !1593, line: 127, baseType: !481, size: 32, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1592, file: !1593, line: 128, baseType: !7, size: 32, offset: 288)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1592, file: !1593, line: 129, baseType: !1606, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1607, line: 26, baseType: !1608)
!1607 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1607, line: 24, size: 64, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1608, file: !1607, line: 25, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 64, elements: !1612)
!1612 = !{!1613}
!1613 = !DISubrange(count: 2)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1592, file: !1593, line: 130, baseType: !1606, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1592, file: !1593, line: 131, baseType: !1606, size: 64, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1592, file: !1593, line: 132, baseType: !1606, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1592, file: !1593, line: 133, baseType: !1606, size: 64, offset: 576)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1592, file: !1593, line: 135, baseType: !465, size: 8, offset: 640)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1592, file: !1593, line: 137, baseType: !1620, size: 64, offset: 704)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1622, line: 189, size: 1664, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1623 = !{!1624, !1625, !1628, !1633, !1634, !1637, !1638, !1643, !1644, !1645, !1646, !1648, !1649, !1650, !1651, !1652, !1690, !1711}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1621, file: !1622, line: 190, baseType: !1268, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1621, file: !1622, line: 191, baseType: !1626, size: 32, offset: 32)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1622, line: 28, baseType: !1627)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !224, line: 98, baseType: !1482)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !1622, line: 192, baseType: !1629, size: 192, offset: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !1622, line: 192, size: 192, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1629, file: !1622, line: 193, baseType: !259, size: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1629, file: !1622, line: 194, baseType: !798, size: 192, align: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1621, file: !1622, line: 199, baseType: !805, size: 256, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1621, file: !1622, line: 200, baseType: !1635, size: 64, offset: 512)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1622, line: 200, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1621, file: !1622, line: 201, baseType: !225, size: 64, offset: 576)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !1622, line: 202, baseType: !1639, size: 64, offset: 640)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !1622, line: 202, size: 64, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1639, file: !1622, line: 203, baseType: !577, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1639, file: !1622, line: 204, baseType: !577, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1621, file: !1622, line: 206, baseType: !577, size: 64, offset: 704)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1621, file: !1622, line: 207, baseType: !473, size: 32, offset: 768)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1621, file: !1622, line: 208, baseType: !481, size: 32, offset: 800)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1621, file: !1622, line: 209, baseType: !1647, size: 32, offset: 832)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1622, line: 31, baseType: !597)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1621, file: !1622, line: 210, baseType: !355, size: 16, offset: 864)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1621, file: !1622, line: 211, baseType: !355, size: 16, offset: 880)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1621, file: !1622, line: 215, baseType: !1243, size: 16, offset: 896)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1621, file: !1622, line: 222, baseType: !226, size: 64, offset: 960)
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !1622, line: 239, baseType: !1653, size: 320, offset: 1024)
!1653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !1622, line: 239, size: 320, elements: !1654)
!1654 = !{!1655, !1682}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1653, file: !1622, line: 240, baseType: !1656, size: 320)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1622, line: 108, size: 320, elements: !1657)
!1657 = !{!1658, !1659, !1671, !1674, !1681}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1656, file: !1622, line: 110, baseType: !226, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !1622, line: 111, baseType: !1660, size: 64, offset: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1656, file: !1622, line: 111, size: 64, elements: !1661)
!1661 = !{!1662, !1670}
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1660, file: !1622, line: 112, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1660, file: !1622, line: 112, size: 64, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1663, file: !1622, line: 114, baseType: !897, size: 16)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1663, file: !1622, line: 115, baseType: !1667, size: 48, offset: 16)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 48, elements: !1668)
!1668 = !{!1669}
!1669 = !DISubrange(count: 6)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1660, file: !1622, line: 121, baseType: !226, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1656, file: !1622, line: 123, baseType: !1672, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1622, line: 96, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1656, file: !1622, line: 124, baseType: !1675, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1622, line: 102, size: 192, elements: !1677)
!1677 = !{!1678, !1679, !1680}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1676, file: !1622, line: 103, baseType: !403, size: 128, align: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1676, file: !1622, line: 104, baseType: !1268, size: 32, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1676, file: !1622, line: 105, baseType: !528, size: 8, offset: 160)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1656, file: !1622, line: 125, baseType: !255, size: 64, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1622, line: 241, baseType: !1683, size: 320)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1653, file: !1622, line: 241, size: 320, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688, !1689}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1683, file: !1622, line: 242, baseType: !226, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1683, file: !1622, line: 243, baseType: !226, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1683, file: !1622, line: 244, baseType: !1672, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1683, file: !1622, line: 245, baseType: !1675, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1683, file: !1622, line: 246, baseType: !314, size: 64, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !1622, line: 254, baseType: !1691, size: 256, offset: 1344)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !1622, line: 254, size: 256, elements: !1692)
!1692 = !{!1693, !1699}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1691, file: !1622, line: 255, baseType: !1694, size: 256)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1622, line: 128, size: 256, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1694, file: !1622, line: 129, baseType: !225, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1694, file: !1622, line: 130, baseType: !1698, size: 256)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !1193)
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !1622, line: 256, baseType: !1700, size: 256)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !1622, line: 256, size: 256, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1700, file: !1622, line: 258, baseType: !259, size: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1700, file: !1622, line: 259, baseType: !1704, size: 128, offset: 128)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1705, line: 22, size: 128, elements: !1706)
!1705 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1706 = !{!1707, !1710}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1704, file: !1705, line: 23, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1705, line: 23, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1704, file: !1705, line: 24, baseType: !226, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1621, file: !1622, line: 274, baseType: !1712, size: 64, offset: 1600)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1622, line: 170, size: 192, elements: !1714)
!1714 = !{!1715, !1724, !1725}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1713, file: !1622, line: 171, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1622, line: 165, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!298, !1620, !1720, !1722, !1620}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1713, file: !1622, line: 172, baseType: !1620, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1713, file: !1622, line: 173, baseType: !1672, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1592, file: !1593, line: 138, baseType: !1620, size: 64, offset: 768)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1592, file: !1593, line: 139, baseType: !1620, size: 64, offset: 832)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1592, file: !1593, line: 140, baseType: !1620, size: 64, offset: 896)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1592, file: !1593, line: 145, baseType: !1730, size: 64, offset: 960)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1732, line: 13, size: 896, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1731, file: !1732, line: 14, baseType: !1268, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1731, file: !1732, line: 15, baseType: !785, size: 32, offset: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1731, file: !1732, line: 16, baseType: !785, size: 32, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1731, file: !1732, line: 21, baseType: !809, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1731, file: !1732, line: 27, baseType: !226, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1731, file: !1732, line: 28, baseType: !226, size: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1731, file: !1732, line: 29, baseType: !809, size: 64, offset: 320)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1731, file: !1732, line: 32, baseType: !677, size: 128, offset: 384)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1731, file: !1732, line: 33, baseType: !473, size: 32, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1731, file: !1732, line: 37, baseType: !809, size: 64, offset: 576)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1731, file: !1732, line: 44, baseType: !1745, size: 256, offset: 640)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1746, line: 15, size: 256, elements: !1747)
!1746 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1753, !1754}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1745, file: !1746, line: 16, baseType: !818)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1745, file: !1746, line: 18, baseType: !298, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1745, file: !1746, line: 19, baseType: !298, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1745, file: !1746, line: 20, baseType: !298, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1745, file: !1746, line: 21, baseType: !298, size: 32, offset: 96)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1745, file: !1746, line: 22, baseType: !226, size: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1745, file: !1746, line: 23, baseType: !226, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1592, file: !1593, line: 146, baseType: !1756, size: 64, offset: 1024)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !474, line: 18, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1592, file: !1593, line: 147, baseType: !1759, size: 64, offset: 1088)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1593, line: 25, size: 64, elements: !1761)
!1761 = !{!1762, !1763, !1764}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1760, file: !1593, line: 26, baseType: !785, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1760, file: !1593, line: 27, baseType: !298, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1760, file: !1593, line: 28, baseType: !1765, offset: 64)
!1765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, elements: !1766)
!1766 = !{!1767}
!1767 = !DISubrange(count: 0)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1592, file: !1593, line: 149, baseType: !1769, size: 128, offset: 1152)
!1769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1592, file: !1593, line: 149, size: 128, elements: !1770)
!1770 = !{!1771, !1772}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1769, file: !1593, line: 150, baseType: !298, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1769, file: !1593, line: 151, baseType: !403, size: 128, align: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1255, file: !1256, line: 926, baseType: !1590, size: 64, offset: 8576)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1255, file: !1256, line: 929, baseType: !1590, size: 64, offset: 8640)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1255, file: !1256, line: 933, baseType: !1620, size: 64, offset: 8704)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1255, file: !1256, line: 943, baseType: !1777, size: 128, offset: 8768)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 128, elements: !1778)
!1778 = !{!1779}
!1779 = !DISubrange(count: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1255, file: !1256, line: 945, baseType: !1781, size: 64, offset: 8896)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1256, line: 49, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1255, file: !1256, line: 956, baseType: !1784, size: 64, offset: 8960)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1256, line: 45, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1255, file: !1256, line: 959, baseType: !1787, size: 64, offset: 9024)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1256, line: 959, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1255, file: !1256, line: 962, baseType: !1790, size: 64, offset: 9088)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1256, line: 66, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1255, file: !1256, line: 966, baseType: !1793, size: 64, offset: 9152)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1795, line: 35, flags: DIFlagFwdDecl)
!1795 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1255, file: !1256, line: 969, baseType: !1797, size: 64, offset: 9216)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1799, line: 82, size: 7296, elements: !1800)
!1799 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806, !1807, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1836, !1845, !1846, !1848, !1849, !1850, !1853, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1883, !1884, !1891, !1892, !1893, !1894, !1895, !1896}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1798, file: !1799, line: 83, baseType: !1268, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1798, file: !1799, line: 84, baseType: !785, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1798, file: !1799, line: 85, baseType: !298, size: 32, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1798, file: !1799, line: 86, baseType: !259, size: 128, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1798, file: !1799, line: 88, baseType: !1524, size: 128, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1798, file: !1799, line: 91, baseType: !1254, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1798, file: !1799, line: 94, baseType: !1808, size: 192, offset: 448)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1809, line: 30, size: 192, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1808, file: !1809, line: 31, baseType: !259, size: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1808, file: !1809, line: 32, baseType: !1813, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1814, line: 25, baseType: !1815)
!1814 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1814, line: 23, size: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1815, file: !1814, line: 24, baseType: !1408, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1798, file: !1799, line: 97, baseType: !673, size: 64, offset: 640)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1798, file: !1799, line: 100, baseType: !298, size: 32, offset: 704)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1798, file: !1799, line: 106, baseType: !298, size: 32, offset: 736)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1798, file: !1799, line: 107, baseType: !1254, size: 64, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1798, file: !1799, line: 110, baseType: !298, size: 32, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1798, file: !1799, line: 111, baseType: !7, size: 32, offset: 864)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1798, file: !1799, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1798, file: !1799, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1798, file: !1799, line: 128, baseType: !298, size: 32, offset: 928)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1798, file: !1799, line: 129, baseType: !259, size: 128, offset: 960)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1798, file: !1799, line: 132, baseType: !1330, size: 512, offset: 1088)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1798, file: !1799, line: 133, baseType: !1338, size: 64, offset: 1600)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1798, file: !1799, line: 140, baseType: !1831, size: 256, offset: 1664)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1832, size: 256, elements: !1612)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1799, line: 38, size: 128, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1832, file: !1799, line: 39, baseType: !459, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1832, file: !1799, line: 40, baseType: !459, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1798, file: !1799, line: 146, baseType: !1837, size: 192, offset: 1920)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1799, line: 66, size: 192, elements: !1838)
!1838 = !{!1839}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1837, file: !1799, line: 67, baseType: !1840, size: 192)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1799, line: 47, size: 192, elements: !1841)
!1841 = !{!1842, !1843, !1844}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1840, file: !1799, line: 48, baseType: !811, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1840, file: !1799, line: 49, baseType: !811, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1840, file: !1799, line: 50, baseType: !811, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1798, file: !1799, line: 150, baseType: !1573, size: 640, offset: 2112)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1798, file: !1799, line: 153, baseType: !1847, size: 256, offset: 2752)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1514, size: 256, elements: !1193)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1798, file: !1799, line: 159, baseType: !1514, size: 64, offset: 3008)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1798, file: !1799, line: 162, baseType: !298, size: 32, offset: 3072)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1798, file: !1799, line: 164, baseType: !1851, size: 64, offset: 3136)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1799, line: 164, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1798, file: !1799, line: 175, baseType: !1854, size: 32, offset: 3200)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !426, line: 805, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !426, line: 798, size: 32, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1855, file: !426, line: 803, baseType: !425, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1855, file: !426, line: 804, baseType: !272, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1798, file: !1799, line: 176, baseType: !459, size: 64, offset: 3264)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1798, file: !1799, line: 176, baseType: !459, size: 64, offset: 3328)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1798, file: !1799, line: 176, baseType: !459, size: 64, offset: 3392)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1798, file: !1799, line: 176, baseType: !459, size: 64, offset: 3456)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1798, file: !1799, line: 177, baseType: !459, size: 64, offset: 3520)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1798, file: !1799, line: 178, baseType: !459, size: 64, offset: 3584)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1798, file: !1799, line: 179, baseType: !1561, size: 128, offset: 3648)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1798, file: !1799, line: 180, baseType: !226, size: 64, offset: 3776)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1798, file: !1799, line: 180, baseType: !226, size: 64, offset: 3840)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1798, file: !1799, line: 180, baseType: !226, size: 64, offset: 3904)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1798, file: !1799, line: 180, baseType: !226, size: 64, offset: 3968)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1798, file: !1799, line: 181, baseType: !226, size: 64, offset: 4032)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1798, file: !1799, line: 181, baseType: !226, size: 64, offset: 4096)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1798, file: !1799, line: 181, baseType: !226, size: 64, offset: 4160)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1798, file: !1799, line: 181, baseType: !226, size: 64, offset: 4224)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1798, file: !1799, line: 182, baseType: !226, size: 64, offset: 4288)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1798, file: !1799, line: 182, baseType: !226, size: 64, offset: 4352)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1798, file: !1799, line: 182, baseType: !226, size: 64, offset: 4416)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1798, file: !1799, line: 182, baseType: !226, size: 64, offset: 4480)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1798, file: !1799, line: 183, baseType: !226, size: 64, offset: 4544)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1798, file: !1799, line: 183, baseType: !226, size: 64, offset: 4608)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1798, file: !1799, line: 184, baseType: !1881, offset: 4672)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1882, line: 12, elements: !286)
!1882 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1798, file: !1799, line: 192, baseType: !461, size: 64, offset: 4672)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1798, file: !1799, line: 203, baseType: !1885, size: 2048, offset: 4736)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1886, size: 2048, elements: !1778)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1887, line: 43, size: 128, elements: !1888)
!1887 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1886, file: !1887, line: 44, baseType: !362, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1886, file: !1887, line: 45, baseType: !362, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1798, file: !1799, line: 220, baseType: !528, size: 8, offset: 6784)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1798, file: !1799, line: 221, baseType: !1243, size: 16, offset: 6800)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1798, file: !1799, line: 222, baseType: !1243, size: 16, offset: 6816)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1798, file: !1799, line: 224, baseType: !1012, size: 64, offset: 6848)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1798, file: !1799, line: 227, baseType: !1211, size: 192, offset: 6912)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1798, file: !1799, line: 233, baseType: !1211, size: 192, offset: 7104)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1255, file: !1256, line: 970, baseType: !1898, size: 64, offset: 9280)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1799, line: 20, size: 16576, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1899, file: !1799, line: 21, baseType: !272)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1899, file: !1799, line: 22, baseType: !1268, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1899, file: !1799, line: 23, baseType: !1524, size: 128, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1899, file: !1799, line: 24, baseType: !1905, size: 16384, offset: 192)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1906, size: 16384, elements: !319)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1809, line: 49, size: 256, elements: !1907)
!1907 = !{!1908}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1906, file: !1809, line: 50, baseType: !1909, size: 256)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1809, line: 35, size: 256, elements: !1910)
!1910 = !{!1911, !1918, !1919, !1925}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1909, file: !1809, line: 37, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1913, line: 19, baseType: !1914)
!1913 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1913, line: 18, baseType: !1916)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !298}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1909, file: !1809, line: 38, baseType: !226, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1909, file: !1809, line: 44, baseType: !1920, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1913, line: 22, baseType: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1913, line: 21, baseType: !1923)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1909, file: !1809, line: 46, baseType: !1813, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1255, file: !1256, line: 971, baseType: !1813, size: 64, offset: 9344)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1255, file: !1256, line: 972, baseType: !1813, size: 64, offset: 9408)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1255, file: !1256, line: 974, baseType: !1813, size: 64, offset: 9472)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1255, file: !1256, line: 975, baseType: !1808, size: 192, offset: 9536)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1255, file: !1256, line: 976, baseType: !226, size: 64, offset: 9728)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1255, file: !1256, line: 977, baseType: !360, size: 64, offset: 9792)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1255, file: !1256, line: 978, baseType: !7, size: 32, offset: 9856)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1255, file: !1256, line: 980, baseType: !406, size: 64, offset: 9920)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1255, file: !1256, line: 989, baseType: !1935, size: 128, offset: 9984)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1936, line: 35, size: 128, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1935, file: !1936, line: 36, baseType: !298, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1935, file: !1936, line: 37, baseType: !785, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1935, file: !1936, line: 38, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1936, line: 23, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1255, file: !1256, line: 992, baseType: !459, size: 64, offset: 10112)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1255, file: !1256, line: 993, baseType: !459, size: 64, offset: 10176)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1255, file: !1256, line: 996, baseType: !272, offset: 10240)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1255, file: !1256, line: 999, baseType: !818, offset: 10240)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1255, file: !1256, line: 1001, baseType: !1948, size: 64, offset: 10240)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1256, line: 636, size: 64, elements: !1949)
!1949 = !{!1950}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1948, file: !1256, line: 637, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1255, file: !1256, line: 1005, baseType: !790, size: 128, offset: 10304)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1255, file: !1256, line: 1007, baseType: !1254, size: 64, offset: 10432)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1255, file: !1256, line: 1009, baseType: !1955, size: 64, offset: 10496)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1256, line: 1009, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1255, file: !1256, line: 1043, baseType: !225, size: 64, offset: 10560)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1255, file: !1256, line: 1046, baseType: !1959, size: 64, offset: 10624)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1256, line: 41, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1255, file: !1256, line: 1050, baseType: !1962, size: 64, offset: 10688)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1256, line: 42, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1255, file: !1256, line: 1054, baseType: !1965, size: 64, offset: 10752)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1256, line: 55, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1255, file: !1256, line: 1056, baseType: !1968, size: 64, offset: 10816)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1256, line: 40, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1255, file: !1256, line: 1058, baseType: !1971, size: 64, offset: 10880)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1973, line: 99, size: 704, elements: !1974)
!1973 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1974 = !{!1975, !1976, !1977, !1978, !1979, !1980, !1981, !2000, !2001}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1972, file: !1973, line: 100, baseType: !809, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1972, file: !1973, line: 101, baseType: !785, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1972, file: !1973, line: 102, baseType: !785, size: 32, offset: 96)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1972, file: !1973, line: 105, baseType: !272, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1972, file: !1973, line: 107, baseType: !355, size: 16, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1972, file: !1973, line: 109, baseType: !777, size: 128, offset: 192)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1972, file: !1973, line: 110, baseType: !1982, size: 64, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1973, line: 73, size: 448, elements: !1984)
!1984 = !{!1985, !1988, !1989, !1994, !1999}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1983, file: !1973, line: 74, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1973, line: 74, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1983, file: !1973, line: 75, baseType: !1971, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1973, line: 83, baseType: !1990, size: 128, offset: 128)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !1973, line: 83, size: 128, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1990, file: !1973, line: 84, baseType: !259, size: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1990, file: !1973, line: 85, baseType: !973, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1973, line: 87, baseType: !1995, size: 128, offset: 256)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !1973, line: 87, size: 128, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1995, file: !1973, line: 88, baseType: !677, size: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1995, file: !1973, line: 89, baseType: !403, size: 128, align: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1983, file: !1973, line: 92, baseType: !7, size: 32, offset: 384)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1972, file: !1973, line: 111, baseType: !673, size: 64, offset: 384)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1972, file: !1973, line: 113, baseType: !2002, size: 256, offset: 448)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !182, line: 102, size: 256, elements: !2003)
!2003 = !{!2004, !2005, !2006}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2002, file: !182, line: 103, baseType: !809, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2002, file: !182, line: 104, baseType: !259, size: 128, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2002, file: !182, line: 105, baseType: !2007, size: 64, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !182, line: 21, baseType: !2008)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null, !2011}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1255, file: !1256, line: 1061, baseType: !2013, size: 64, offset: 10944)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1256, line: 43, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1255, file: !1256, line: 1064, baseType: !226, size: 64, offset: 11008)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1255, file: !1256, line: 1065, baseType: !2017, size: 64, offset: 11072)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1809, line: 14, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1809, line: 12, size: 384, elements: !2020)
!2020 = !{!2021}
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2019, file: !1809, line: 13, baseType: !2022, size: 384)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2019, file: !1809, line: 13, size: 384, elements: !2023)
!2023 = !{!2024, !2025, !2026, !2027}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2022, file: !1809, line: 13, baseType: !298, size: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2022, file: !1809, line: 13, baseType: !298, size: 32, offset: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2022, file: !1809, line: 13, baseType: !298, size: 32, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2022, file: !1809, line: 13, baseType: !2028, size: 256, offset: 128)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2029, line: 32, size: 256, elements: !2030)
!2029 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2030 = !{!2031, !2036, !2049, !2055, !2064, !2084, !2089}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2028, file: !2029, line: 37, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 34, size: 64, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2032, file: !2029, line: 35, baseType: !1503, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2032, file: !2029, line: 36, baseType: !479, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2028, file: !2029, line: 45, baseType: !2037, size: 192)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 40, size: 192, elements: !2038)
!2038 = !{!2039, !2041, !2042, !2048}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2037, file: !2029, line: 41, baseType: !2040, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !347, line: 95, baseType: !298)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2037, file: !2029, line: 42, baseType: !298, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2037, file: !2029, line: 43, baseType: !2043, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2029, line: 11, baseType: !2044)
!2044 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2029, line: 8, size: 64, elements: !2045)
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2044, file: !2029, line: 9, baseType: !298, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2044, file: !2029, line: 10, baseType: !225, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2037, file: !2029, line: 44, baseType: !298, size: 32, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2028, file: !2029, line: 52, baseType: !2050, size: 128)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 48, size: 128, elements: !2051)
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2050, file: !2029, line: 49, baseType: !1503, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2050, file: !2029, line: 50, baseType: !479, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2050, file: !2029, line: 51, baseType: !2043, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2028, file: !2029, line: 61, baseType: !2056, size: 256)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 55, size: 256, elements: !2057)
!2057 = !{!2058, !2059, !2060, !2061, !2063}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2056, file: !2029, line: 56, baseType: !1503, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2056, file: !2029, line: 57, baseType: !479, size: 32, offset: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2056, file: !2029, line: 58, baseType: !298, size: 32, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2056, file: !2029, line: 59, baseType: !2062, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !347, line: 94, baseType: !348)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2056, file: !2029, line: 60, baseType: !2062, size: 64, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2028, file: !2029, line: 95, baseType: !2065, size: 256)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 64, size: 256, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2065, file: !2029, line: 65, baseType: !225, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2065, file: !2029, line: 77, baseType: !2069, size: 192, offset: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2065, file: !2029, line: 77, size: 192, elements: !2070)
!2070 = !{!2071, !2072, !2079}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2069, file: !2029, line: 82, baseType: !1243, size: 16)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2069, file: !2029, line: 88, baseType: !2073, size: 192)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !2029, line: 84, size: 192, elements: !2074)
!2074 = !{!2075, !2077, !2078}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2073, file: !2029, line: 85, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 64, elements: !1368)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2073, file: !2029, line: 86, baseType: !225, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2073, file: !2029, line: 87, baseType: !225, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2069, file: !2029, line: 93, baseType: !2080, size: 96)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !2029, line: 90, size: 96, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2080, file: !2029, line: 91, baseType: !2076, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2080, file: !2029, line: 92, baseType: !455, size: 32, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2028, file: !2029, line: 101, baseType: !2085, size: 128)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 98, size: 128, elements: !2086)
!2086 = !{!2087, !2088}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2085, file: !2029, line: 99, baseType: !183, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2085, file: !2029, line: 100, baseType: !298, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2028, file: !2029, line: 108, baseType: !2090, size: 128)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 104, size: 128, elements: !2091)
!2091 = !{!2092, !2093, !2094}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2090, file: !2029, line: 105, baseType: !225, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2090, file: !2029, line: 106, baseType: !298, size: 32, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2090, file: !2029, line: 107, baseType: !7, size: 32, offset: 96)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1255, file: !1256, line: 1067, baseType: !1881, offset: 11136)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1255, file: !1256, line: 1099, baseType: !2097, size: 64, offset: 11136)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1256, line: 56, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1255, file: !1256, line: 1103, baseType: !259, size: 128, offset: 11200)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1255, file: !1256, line: 1104, baseType: !2101, size: 64, offset: 11328)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1256, line: 46, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1255, file: !1256, line: 1105, baseType: !1211, size: 192, offset: 11392)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1255, file: !1256, line: 1106, baseType: !7, size: 32, offset: 11584)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1255, file: !1256, line: 1109, baseType: !2106, size: 128, offset: 11648)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2107, size: 128, elements: !1612)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1256, line: 51, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1255, file: !1256, line: 1110, baseType: !1211, size: 192, offset: 11776)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1255, file: !1256, line: 1111, baseType: !259, size: 128, offset: 11968)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1255, file: !1256, line: 1173, baseType: !2112, size: 64, offset: 12096)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2114, line: 62, size: 256, align: 256, elements: !2115)
!2114 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116, !2117, !2118, !2123}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2113, file: !2114, line: 75, baseType: !455, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2113, file: !2114, line: 90, baseType: !455, size: 32, offset: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2113, file: !2114, line: 124, baseType: !2119, size: 64, offset: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2113, file: !2114, line: 109, size: 64, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2119, file: !2114, line: 110, baseType: !460, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2119, file: !2114, line: 112, baseType: !460, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2113, file: !2114, line: 144, baseType: !455, size: 32, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1255, file: !1256, line: 1174, baseType: !453, size: 32, offset: 12160)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1255, file: !1256, line: 1179, baseType: !226, size: 64, offset: 12224)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1255, file: !1256, line: 1182, baseType: !2127, size: 128, offset: 12288)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1189, line: 76, size: 128, elements: !2128)
!2128 = !{!2129, !2134, !2135}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2127, file: !1189, line: 85, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2131, line: 7, size: 64, elements: !2132)
!2131 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2132 = !{!2133}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2130, file: !2131, line: 12, baseType: !1405, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2127, file: !1189, line: 88, baseType: !528, size: 8, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2127, file: !1189, line: 95, baseType: !528, size: 8, offset: 72)
!2136 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !1256, line: 1184, baseType: !2137, size: 128, offset: 12416)
!2137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !1256, line: 1184, size: 128, elements: !2138)
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2137, file: !1256, line: 1185, baseType: !1268, size: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2137, file: !1256, line: 1186, baseType: !403, size: 128, align: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1255, file: !1256, line: 1190, baseType: !2142, size: 64, offset: 12544)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1256, line: 53, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1255, file: !1256, line: 1192, baseType: !2145, size: 128, offset: 12608)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1189, line: 64, size: 128, elements: !2146)
!2146 = !{!2147, !2148, !2149}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2145, file: !1189, line: 65, baseType: !759, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2145, file: !1189, line: 67, baseType: !455, size: 32, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2145, file: !1189, line: 68, baseType: !455, size: 32, offset: 96)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1255, file: !1256, line: 1206, baseType: !298, size: 32, offset: 12736)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1255, file: !1256, line: 1207, baseType: !298, size: 32, offset: 12768)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1255, file: !1256, line: 1209, baseType: !226, size: 64, offset: 12800)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1255, file: !1256, line: 1219, baseType: !459, size: 64, offset: 12864)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1255, file: !1256, line: 1220, baseType: !459, size: 64, offset: 12928)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1255, file: !1256, line: 1317, baseType: !298, size: 32, offset: 12992)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1255, file: !1256, line: 1319, baseType: !1254, size: 64, offset: 13056)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1255, file: !1256, line: 1322, baseType: !2158, size: 64, offset: 13120)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2160, line: 56, size: 512, elements: !2161)
!2160 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2170}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2159, file: !2160, line: 57, baseType: !2158, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2159, file: !2160, line: 58, baseType: !225, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2159, file: !2160, line: 59, baseType: !226, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2159, file: !2160, line: 60, baseType: !226, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2159, file: !2160, line: 61, baseType: !858, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2159, file: !2160, line: 62, baseType: !7, size: 32, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2159, file: !2160, line: 63, baseType: !2169, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !224, line: 153, baseType: !459)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2159, file: !2160, line: 64, baseType: !2171, size: 64, offset: 448)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1255, file: !1256, line: 1326, baseType: !1268, size: 32, offset: 13184)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1255, file: !1256, line: 1342, baseType: !225, size: 64, offset: 13248)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1255, file: !1256, line: 1343, baseType: !460, size: 64, offset: 13312)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1255, file: !1256, line: 1344, baseType: !459, size: 64, offset: 13376)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1255, file: !1256, line: 1345, baseType: !460, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1255, file: !1256, line: 1346, baseType: !460, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1255, file: !1256, line: 1347, baseType: !460, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1255, file: !1256, line: 1348, baseType: !403, size: 128, align: 64, offset: 13504)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1255, file: !1256, line: 1358, baseType: !2182, size: 34816, offset: 13824)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2183, line: 485, size: 34816, elements: !2184)
!2183 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2184 = !{!2185, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2214, !2215, !2216, !2217, !2218, !2219, !2222, !2223, !2224}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2182, file: !2183, line: 487, baseType: !2186, size: 192)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2187, size: 192, elements: !315)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2188, line: 16, size: 64, elements: !2189)
!2188 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2187, file: !2188, line: 17, baseType: !897, size: 16)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2187, file: !2188, line: 18, baseType: !897, size: 16, offset: 16)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2187, file: !2188, line: 19, baseType: !897, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2187, file: !2188, line: 19, baseType: !897, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2187, file: !2188, line: 19, baseType: !897, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2187, file: !2188, line: 19, baseType: !897, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2187, file: !2188, line: 19, baseType: !897, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2187, file: !2188, line: 20, baseType: !897, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2187, file: !2188, line: 20, baseType: !897, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2187, file: !2188, line: 20, baseType: !897, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2187, file: !2188, line: 20, baseType: !897, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2187, file: !2188, line: 20, baseType: !897, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2187, file: !2188, line: 20, baseType: !897, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2182, file: !2183, line: 491, baseType: !226, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2182, file: !2183, line: 495, baseType: !355, size: 16, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2182, file: !2183, line: 496, baseType: !355, size: 16, offset: 272)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2182, file: !2183, line: 497, baseType: !355, size: 16, offset: 288)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2182, file: !2183, line: 498, baseType: !355, size: 16, offset: 304)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2182, file: !2183, line: 502, baseType: !226, size: 64, offset: 320)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2182, file: !2183, line: 503, baseType: !226, size: 64, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2182, file: !2183, line: 514, baseType: !2211, size: 256, offset: 448)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2212, size: 256, elements: !1193)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2183, line: 483, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2182, file: !2183, line: 516, baseType: !226, size: 64, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2182, file: !2183, line: 518, baseType: !226, size: 64, offset: 768)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2182, file: !2183, line: 520, baseType: !226, size: 64, offset: 832)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2182, file: !2183, line: 521, baseType: !226, size: 64, offset: 896)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2182, file: !2183, line: 522, baseType: !226, size: 64, offset: 960)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2182, file: !2183, line: 528, baseType: !2220, size: 64, offset: 1024)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2183, line: 10, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2182, file: !2183, line: 535, baseType: !226, size: 64, offset: 1088)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2182, file: !2183, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2182, file: !2183, line: 540, baseType: !2225, size: 33280, offset: 1536)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2226, line: 317, size: 33280, elements: !2227)
!2226 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2227 = !{!2228, !2229, !2230}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2225, file: !2226, line: 330, baseType: !7, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2225, file: !2226, line: 337, baseType: !226, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2225, file: !2226, line: 348, baseType: !2231, size: 32768, offset: 512)
!2231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2226, line: 304, size: 32768, elements: !2232)
!2232 = !{!2233, !2248, !2287, !2337, !2350}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2231, file: !2226, line: 305, baseType: !2234, size: 896)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2226, line: 12, size: 896, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2247}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2234, file: !2226, line: 13, baseType: !453, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2234, file: !2226, line: 14, baseType: !453, size: 32, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2234, file: !2226, line: 15, baseType: !453, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2234, file: !2226, line: 16, baseType: !453, size: 32, offset: 96)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2234, file: !2226, line: 17, baseType: !453, size: 32, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2234, file: !2226, line: 18, baseType: !453, size: 32, offset: 160)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2234, file: !2226, line: 19, baseType: !453, size: 32, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2234, file: !2226, line: 22, baseType: !2244, size: 640, offset: 224)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 640, elements: !2245)
!2245 = !{!2246}
!2246 = !DISubrange(count: 20)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2234, file: !2226, line: 25, baseType: !453, size: 32, offset: 864)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2231, file: !2226, line: 306, baseType: !2249, size: 4096, align: 128)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2226, line: 34, size: 4096, align: 128, elements: !2250)
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2270, !2271, !2272, !2276, !2278, !2282}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2249, file: !2226, line: 35, baseType: !897, size: 16)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2249, file: !2226, line: 36, baseType: !897, size: 16, offset: 16)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2249, file: !2226, line: 37, baseType: !897, size: 16, offset: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2249, file: !2226, line: 38, baseType: !897, size: 16, offset: 48)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !2226, line: 39, baseType: !2256, size: 128, offset: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !2226, line: 39, size: 128, elements: !2257)
!2257 = !{!2258, !2263}
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !2226, line: 40, baseType: !2259, size: 128)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2256, file: !2226, line: 40, size: 128, elements: !2260)
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2259, file: !2226, line: 41, baseType: !459, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2259, file: !2226, line: 42, baseType: !459, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !2226, line: 44, baseType: !2264, size: 128)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2256, file: !2226, line: 44, size: 128, elements: !2265)
!2265 = !{!2266, !2267, !2268, !2269}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2264, file: !2226, line: 45, baseType: !453, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2264, file: !2226, line: 46, baseType: !453, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2264, file: !2226, line: 47, baseType: !453, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2264, file: !2226, line: 48, baseType: !453, size: 32, offset: 96)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2249, file: !2226, line: 51, baseType: !453, size: 32, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2249, file: !2226, line: 52, baseType: !453, size: 32, offset: 224)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2249, file: !2226, line: 55, baseType: !2273, size: 1024, offset: 256)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 1024, elements: !2274)
!2274 = !{!2275}
!2275 = !DISubrange(count: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2249, file: !2226, line: 58, baseType: !2277, size: 2048, offset: 1280)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 2048, elements: !319)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2249, file: !2226, line: 60, baseType: !2279, size: 384, offset: 3328)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 384, elements: !2280)
!2280 = !{!2281}
!2281 = !DISubrange(count: 12)
!2282 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !2226, line: 62, baseType: !2283, size: 384, offset: 3712)
!2283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !2226, line: 62, size: 384, elements: !2284)
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2283, file: !2226, line: 63, baseType: !2279, size: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2283, file: !2226, line: 64, baseType: !2279, size: 384)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2231, file: !2226, line: 307, baseType: !2288, size: 1088)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2226, line: 79, size: 1088, elements: !2289)
!2289 = !{!2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2336}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2288, file: !2226, line: 80, baseType: !453, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2288, file: !2226, line: 81, baseType: !453, size: 32, offset: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2288, file: !2226, line: 82, baseType: !453, size: 32, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2288, file: !2226, line: 83, baseType: !453, size: 32, offset: 96)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2288, file: !2226, line: 84, baseType: !453, size: 32, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2288, file: !2226, line: 85, baseType: !453, size: 32, offset: 160)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2288, file: !2226, line: 86, baseType: !453, size: 32, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2288, file: !2226, line: 88, baseType: !2244, size: 640, offset: 224)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2288, file: !2226, line: 89, baseType: !1390, size: 8, offset: 864)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2288, file: !2226, line: 90, baseType: !1390, size: 8, offset: 872)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2288, file: !2226, line: 91, baseType: !1390, size: 8, offset: 880)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2288, file: !2226, line: 92, baseType: !1390, size: 8, offset: 888)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2288, file: !2226, line: 93, baseType: !1390, size: 8, offset: 896)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2288, file: !2226, line: 94, baseType: !1390, size: 8, offset: 904)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2288, file: !2226, line: 95, baseType: !2305, size: 64, offset: 960)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2307, line: 11, size: 128, elements: !2308)
!2307 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2306, file: !2307, line: 12, baseType: !183, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2306, file: !2307, line: 13, baseType: !2311, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2313, line: 56, size: 1344, elements: !2314)
!2313 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2312, file: !2313, line: 61, baseType: !226, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2312, file: !2313, line: 62, baseType: !226, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2312, file: !2313, line: 63, baseType: !226, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2312, file: !2313, line: 64, baseType: !226, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2312, file: !2313, line: 65, baseType: !226, size: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2312, file: !2313, line: 66, baseType: !226, size: 64, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2312, file: !2313, line: 68, baseType: !226, size: 64, offset: 384)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2312, file: !2313, line: 69, baseType: !226, size: 64, offset: 448)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2312, file: !2313, line: 70, baseType: !226, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2312, file: !2313, line: 71, baseType: !226, size: 64, offset: 576)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2312, file: !2313, line: 72, baseType: !226, size: 64, offset: 640)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2312, file: !2313, line: 73, baseType: !226, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2312, file: !2313, line: 74, baseType: !226, size: 64, offset: 768)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2312, file: !2313, line: 75, baseType: !226, size: 64, offset: 832)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2312, file: !2313, line: 76, baseType: !226, size: 64, offset: 896)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2312, file: !2313, line: 81, baseType: !226, size: 64, offset: 960)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2312, file: !2313, line: 83, baseType: !226, size: 64, offset: 1024)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2312, file: !2313, line: 84, baseType: !226, size: 64, offset: 1088)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !2313, line: 85, baseType: !226, size: 64, offset: 1152)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2312, file: !2313, line: 86, baseType: !226, size: 64, offset: 1216)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2312, file: !2313, line: 87, baseType: !226, size: 64, offset: 1280)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2288, file: !2226, line: 96, baseType: !453, size: 32, offset: 1024)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2231, file: !2226, line: 308, baseType: !2338, size: 4608, align: 512)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2226, line: 289, size: 4608, align: 512, elements: !2339)
!2339 = !{!2340, !2341, !2348}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2338, file: !2226, line: 290, baseType: !2249, size: 4096, align: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2338, file: !2226, line: 291, baseType: !2342, size: 512, offset: 4096)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2226, line: 268, size: 512, elements: !2343)
!2343 = !{!2344, !2345, !2346}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2342, file: !2226, line: 269, baseType: !459, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2342, file: !2226, line: 270, baseType: !459, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2342, file: !2226, line: 271, baseType: !2347, size: 384, offset: 128)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 384, elements: !1668)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2338, file: !2226, line: 292, baseType: !2349, offset: 4608)
!2349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, elements: !1766)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2231, file: !2226, line: 309, baseType: !2351, size: 32768)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 32768, elements: !2352)
!2352 = !{!2353}
!2353 = !DISubrange(count: 4096)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1251, file: !761, line: 378, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1247, file: !761, line: 384, baseType: !1545, size: 192, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1016, file: !761, line: 500, baseType: !272, offset: 6656)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1016, file: !761, line: 501, baseType: !2359, size: 64, offset: 6656)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !761, line: 387, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1016, file: !761, line: 516, baseType: !1756, size: 64, offset: 6720)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1016, file: !761, line: 519, baseType: !390, size: 64, offset: 6784)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1016, file: !761, line: 521, baseType: !2364, size: 64, offset: 6848)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !761, line: 521, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1016, file: !761, line: 545, baseType: !785, size: 32, offset: 6912)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1016, file: !761, line: 548, baseType: !528, size: 8, offset: 6944)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1016, file: !761, line: 550, baseType: !2369, offset: 6952)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2370, line: 142, elements: !286)
!2370 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1016, file: !761, line: 554, baseType: !2002, size: 256, offset: 6976)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1016, file: !761, line: 557, baseType: !453, size: 32, offset: 7232)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1013, file: !761, line: 565, baseType: !2374, offset: 7296)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, elements: !2375)
!2375 = !{!2376}
!2376 = !DISubrange(count: -1)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1009, file: !761, line: 151, baseType: !785, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1002, file: !761, line: 156, baseType: !272, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !761, line: 159, baseType: !2380, size: 128)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !765, file: !761, line: 159, size: 128, elements: !2381)
!2381 = !{!2382, !2446}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2380, file: !761, line: 161, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !48, line: 110, size: 1152, elements: !2385)
!2385 = !{!2386, !2396, !2417, !2418, !2419, !2420, !2421, !2433, !2434, !2435}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2384, file: !48, line: 111, baseType: !2387, size: 384)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !48, line: 19, size: 384, elements: !2388)
!2388 = !{!2389, !2391, !2392, !2393, !2394, !2395}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2387, file: !48, line: 20, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2387, file: !48, line: 21, baseType: !2390, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2387, file: !48, line: 22, baseType: !2390, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2387, file: !48, line: 23, baseType: !226, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2387, file: !48, line: 24, baseType: !226, size: 64, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2387, file: !48, line: 25, baseType: !226, size: 64, offset: 320)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2384, file: !48, line: 112, baseType: !2397, size: 64, offset: 384)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2399, line: 105, size: 128, elements: !2400)
!2399 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2398, file: !2399, line: 110, baseType: !226, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2398, file: !2399, line: 118, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2399, line: 95, size: 448, elements: !2405)
!2405 = !{!2406, !2407, !2412, !2413, !2414, !2415, !2416}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2404, file: !2399, line: 96, baseType: !809, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2404, file: !2399, line: 97, baseType: !2408, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2399, line: 60, baseType: !2410)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !2397}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2404, file: !2399, line: 98, baseType: !2408, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2404, file: !2399, line: 99, baseType: !528, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2404, file: !2399, line: 100, baseType: !528, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2404, file: !2399, line: 101, baseType: !403, size: 128, align: 64, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2404, file: !2399, line: 102, baseType: !2397, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2384, file: !48, line: 113, baseType: !2398, size: 128, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2384, file: !48, line: 114, baseType: !1545, size: 192, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2384, file: !48, line: 115, baseType: !47, size: 32, offset: 768)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2384, file: !48, line: 116, baseType: !7, size: 32, offset: 800)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2384, file: !48, line: 117, baseType: !2422, size: 64, offset: 832)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2424)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !48, line: 67, size: 256, elements: !2425)
!2425 = !{!2426, !2427, !2431, !2432}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2424, file: !48, line: 73, baseType: !878, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2424, file: !48, line: 78, baseType: !2428, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{null, !2383}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2424, file: !48, line: 83, baseType: !2428, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2424, file: !48, line: 89, baseType: !1065, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2384, file: !48, line: 118, baseType: !225, size: 64, offset: 896)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2384, file: !48, line: 119, baseType: !298, size: 32, offset: 960)
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !2384, file: !48, line: 120, baseType: !2436, size: 128, offset: 1024)
!2436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2384, file: !48, line: 120, size: 128, elements: !2437)
!2437 = !{!2438, !2444}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2436, file: !48, line: 121, baseType: !2439, size: 128)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2440, line: 6, size: 128, elements: !2441)
!2440 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2441 = !{!2442, !2443}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2439, file: !2440, line: 7, baseType: !459, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2439, file: !2440, line: 8, baseType: !459, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2436, file: !48, line: 122, baseType: !2445)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2439, elements: !1766)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2380, file: !761, line: 162, baseType: !225, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !765, file: !761, line: 176, baseType: !403, size: 128, align: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !761, line: 179, baseType: !2449, size: 32, offset: 384)
!2449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !761, line: 179, size: 32, elements: !2450)
!2450 = !{!2451, !2452, !2453, !2454}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2449, file: !761, line: 184, baseType: !785, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2449, file: !761, line: 192, baseType: !7, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2449, file: !761, line: 194, baseType: !7, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2449, file: !761, line: 195, baseType: !298, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !760, file: !761, line: 199, baseType: !785, size: 32, offset: 416)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !695, file: !18, line: 1964, baseType: !2457, size: 64, offset: 1344)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!183, !637, !2460}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2462, line: 12, size: 256, elements: !2463)
!2462 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2463 = !{!2464, !2465, !2466, !2467, !2468}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2461, file: !2462, line: 13, baseType: !223, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2461, file: !2462, line: 16, baseType: !298, size: 32, offset: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2461, file: !2462, line: 23, baseType: !226, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2461, file: !2462, line: 30, baseType: !226, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2461, file: !2462, line: 33, baseType: !2469, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !761, line: 27, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !695, file: !18, line: 1966, baseType: !2457, size: 64, offset: 1408)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !638, file: !18, line: 1424, baseType: !2473, size: 64, offset: 448)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2475)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !12, line: 322, size: 704, elements: !2476)
!2476 = !{!2477, !2523, !2527, !2531, !2532, !2533, !2534, !2535, !2540, !2545, !2549}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2475, file: !12, line: 323, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!298, !2481}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !12, line: 294, size: 1600, elements: !2483)
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2508, !2509, !2510}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2482, file: !12, line: 295, baseType: !677, size: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2482, file: !12, line: 296, baseType: !259, size: 128, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2482, file: !12, line: 297, baseType: !259, size: 128, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2482, file: !12, line: 298, baseType: !259, size: 128, offset: 384)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2482, file: !12, line: 299, baseType: !1211, size: 192, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2482, file: !12, line: 300, baseType: !272, offset: 704)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2482, file: !12, line: 301, baseType: !785, size: 32, offset: 704)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2482, file: !12, line: 302, baseType: !637, size: 64, offset: 768)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2482, file: !12, line: 303, baseType: !2493, size: 64, offset: 832)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !12, line: 68, size: 64, elements: !2494)
!2494 = !{!2495, !2507}
!2495 = !DIDerivedType(tag: DW_TAG_member, scope: !2493, file: !12, line: 69, baseType: !2496, size: 32)
!2496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2493, file: !12, line: 69, size: 32, elements: !2497)
!2497 = !{!2498, !2499, !2500}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2496, file: !12, line: 70, baseType: !473, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2496, file: !12, line: 71, baseType: !481, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2496, file: !12, line: 72, baseType: !2501, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2502, line: 24, baseType: !2503)
!2502 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2502, line: 22, size: 32, elements: !2504)
!2504 = !{!2505}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2503, file: !2502, line: 23, baseType: !2506, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2502, line: 20, baseType: !479)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2493, file: !12, line: 74, baseType: !11, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2482, file: !12, line: 304, baseType: !569, size: 64, offset: 896)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2482, file: !12, line: 305, baseType: !226, size: 64, offset: 960)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2482, file: !12, line: 306, baseType: !2511, size: 576, offset: 1024)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !12, line: 205, size: 576, elements: !2512)
!2512 = !{!2513, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2511, file: !12, line: 206, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !12, line: 66, baseType: !571)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2511, file: !12, line: 207, baseType: !2514, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2511, file: !12, line: 208, baseType: !2514, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2511, file: !12, line: 209, baseType: !2514, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2511, file: !12, line: 210, baseType: !2514, size: 64, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2511, file: !12, line: 211, baseType: !2514, size: 64, offset: 320)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2511, file: !12, line: 212, baseType: !2514, size: 64, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2511, file: !12, line: 213, baseType: !577, size: 64, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2511, file: !12, line: 214, baseType: !577, size: 64, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2475, file: !12, line: 324, baseType: !2524, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!2481, !637, !298}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2475, file: !12, line: 325, baseType: !2528, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !2481}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2475, file: !12, line: 326, baseType: !2478, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2475, file: !12, line: 327, baseType: !2478, size: 64, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2475, file: !12, line: 328, baseType: !2478, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2475, file: !12, line: 329, baseType: !723, size: 64, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2475, file: !12, line: 332, baseType: !2536, size: 64, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!2539, !467}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2475, file: !12, line: 333, baseType: !2541, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!298, !467, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2475, file: !12, line: 335, baseType: !2546, size: 64, offset: 576)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!298, !467, !2539}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2475, file: !12, line: 337, baseType: !2550, size: 64, offset: 640)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!298, !637, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !638, file: !18, line: 1425, baseType: !2555, size: 64, offset: 512)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2557)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !12, line: 428, size: 704, elements: !2558)
!2558 = !{!2559, !2563, !2564, !2568, !2569, !2570, !2585, !2608, !2612, !2613, !2636}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2557, file: !12, line: 429, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!298, !637, !298, !298, !587}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2557, file: !12, line: 430, baseType: !723, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2557, file: !12, line: 431, baseType: !2565, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!298, !637, !7}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2557, file: !12, line: 432, baseType: !2565, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2557, file: !12, line: 433, baseType: !723, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2557, file: !12, line: 434, baseType: !2571, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!298, !637, !298, !2574}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !12, line: 415, size: 256, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2575, file: !12, line: 416, baseType: !298, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2575, file: !12, line: 417, baseType: !7, size: 32, offset: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2575, file: !12, line: 418, baseType: !7, size: 32, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2575, file: !12, line: 420, baseType: !7, size: 32, offset: 96)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2575, file: !12, line: 421, baseType: !7, size: 32, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2575, file: !12, line: 422, baseType: !7, size: 32, offset: 160)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2575, file: !12, line: 423, baseType: !7, size: 32, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2575, file: !12, line: 424, baseType: !7, size: 32, offset: 224)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2557, file: !12, line: 435, baseType: !2586, size: 64, offset: 384)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!298, !637, !2493, !2589}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !12, line: 343, size: 960, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2590, file: !12, line: 344, baseType: !298, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2590, file: !12, line: 345, baseType: !459, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2590, file: !12, line: 346, baseType: !459, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2590, file: !12, line: 347, baseType: !459, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2590, file: !12, line: 348, baseType: !459, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2590, file: !12, line: 349, baseType: !459, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2590, file: !12, line: 350, baseType: !459, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2590, file: !12, line: 351, baseType: !815, size: 64, offset: 448)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2590, file: !12, line: 353, baseType: !815, size: 64, offset: 512)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2590, file: !12, line: 354, baseType: !298, size: 32, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2590, file: !12, line: 355, baseType: !298, size: 32, offset: 608)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2590, file: !12, line: 356, baseType: !459, size: 64, offset: 640)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2590, file: !12, line: 357, baseType: !459, size: 64, offset: 704)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2590, file: !12, line: 358, baseType: !459, size: 64, offset: 768)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2590, file: !12, line: 359, baseType: !815, size: 64, offset: 832)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2590, file: !12, line: 360, baseType: !298, size: 32, offset: 896)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2557, file: !12, line: 436, baseType: !2609, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!298, !637, !2553, !2589}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2557, file: !12, line: 438, baseType: !2586, size: 64, offset: 512)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2557, file: !12, line: 439, baseType: !2614, size: 64, offset: 576)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!298, !637, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !12, line: 409, size: 1408, elements: !2619)
!2619 = !{!2620, !2621}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2618, file: !12, line: 410, baseType: !7, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2618, file: !12, line: 411, baseType: !2622, size: 1344, offset: 64)
!2622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2623, size: 1344, elements: !315)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !12, line: 395, size: 448, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2635}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2623, file: !12, line: 396, baseType: !7, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2623, file: !12, line: 397, baseType: !7, size: 32, offset: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2623, file: !12, line: 399, baseType: !7, size: 32, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2623, file: !12, line: 400, baseType: !7, size: 32, offset: 96)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2623, file: !12, line: 401, baseType: !7, size: 32, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2623, file: !12, line: 402, baseType: !7, size: 32, offset: 160)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2623, file: !12, line: 403, baseType: !7, size: 32, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2623, file: !12, line: 404, baseType: !461, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2623, file: !12, line: 405, baseType: !2634, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !224, line: 126, baseType: !459)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2623, file: !12, line: 406, baseType: !2634, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2557, file: !12, line: 440, baseType: !2565, size: 64, offset: 640)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !638, file: !18, line: 1426, baseType: !2638, size: 64, offset: 576)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2640)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !18, line: 49, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !638, file: !18, line: 1427, baseType: !226, size: 64, offset: 640)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !638, file: !18, line: 1428, baseType: !226, size: 64, offset: 704)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !638, file: !18, line: 1429, baseType: !226, size: 64, offset: 768)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !638, file: !18, line: 1430, baseType: !420, size: 64, offset: 832)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !638, file: !18, line: 1431, baseType: !805, size: 256, offset: 896)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !638, file: !18, line: 1432, baseType: !298, size: 32, offset: 1152)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !638, file: !18, line: 1433, baseType: !785, size: 32, offset: 1184)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !638, file: !18, line: 1437, baseType: !2649, size: 64, offset: 1216)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !18, line: 1437, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !638, file: !18, line: 1449, baseType: !2654, size: 64, offset: 1280)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !436, line: 34, size: 64, elements: !2655)
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2654, file: !436, line: 35, baseType: !439, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !638, file: !18, line: 1450, baseType: !259, size: 128, offset: 1344)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !638, file: !18, line: 1451, baseType: !2659, size: 64, offset: 1472)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !18, line: 699, flags: DIFlagFwdDecl)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !638, file: !18, line: 1452, baseType: !1968, size: 64, offset: 1536)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !638, file: !18, line: 1453, baseType: !2663, size: 64, offset: 1600)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !18, line: 1453, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !638, file: !18, line: 1454, baseType: !677, size: 128, offset: 1664)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !638, file: !18, line: 1455, baseType: !7, size: 32, offset: 1792)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !638, file: !18, line: 1456, baseType: !2668, size: 2432, offset: 1856)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !12, line: 518, size: 2432, elements: !2669)
!2669 = !{!2670, !2671, !2672, !2674, !2706}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2668, file: !12, line: 519, baseType: !7, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2668, file: !12, line: 520, baseType: !805, size: 256, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2668, file: !12, line: 521, baseType: !2673, size: 192, offset: 320)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 192, elements: !315)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2668, file: !12, line: 522, baseType: !2675, size: 1728, offset: 512)
!2675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2676, size: 1728, elements: !315)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !12, line: 222, size: 576, elements: !2677)
!2677 = !{!2678, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2676, file: !12, line: 223, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !12, line: 443, size: 256, elements: !2681)
!2681 = !{!2682, !2683, !2696, !2697}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2680, file: !12, line: 444, baseType: !298, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2680, file: !12, line: 445, baseType: !2684, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !12, line: 310, size: 512, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2686, file: !12, line: 311, baseType: !723, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2686, file: !12, line: 312, baseType: !723, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2686, file: !12, line: 313, baseType: !723, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2686, file: !12, line: 314, baseType: !723, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2686, file: !12, line: 315, baseType: !2478, size: 64, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2686, file: !12, line: 316, baseType: !2478, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2686, file: !12, line: 317, baseType: !2478, size: 64, offset: 384)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2686, file: !12, line: 318, baseType: !2550, size: 64, offset: 448)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2680, file: !12, line: 446, baseType: !220, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2680, file: !12, line: 447, baseType: !2679, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2676, file: !12, line: 224, baseType: !298, size: 32, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2676, file: !12, line: 226, baseType: !259, size: 128, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2676, file: !12, line: 227, baseType: !226, size: 64, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2676, file: !12, line: 228, baseType: !7, size: 32, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2676, file: !12, line: 229, baseType: !7, size: 32, offset: 352)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2676, file: !12, line: 230, baseType: !2514, size: 64, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2676, file: !12, line: 231, baseType: !2514, size: 64, offset: 448)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2676, file: !12, line: 232, baseType: !225, size: 64, offset: 512)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2668, file: !12, line: 523, baseType: !2707, size: 192, offset: 2240)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2684, size: 192, elements: !315)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !638, file: !18, line: 1458, baseType: !2709, size: 2112, offset: 4288)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !18, line: 1410, size: 2112, elements: !2710)
!2710 = !{!2711, !2712, !2713}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2709, file: !18, line: 1411, baseType: !298, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2709, file: !18, line: 1412, baseType: !1524, size: 128, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2709, file: !18, line: 1413, baseType: !2714, size: 1920, offset: 192)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2715, size: 1920, elements: !315)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2716, line: 12, size: 640, elements: !2717)
!2716 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2717 = !{!2718, !2726, !2728, !2733, !2734}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2715, file: !2716, line: 13, baseType: !2719, size: 320)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2720, line: 17, size: 320, elements: !2721)
!2720 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2719, file: !2720, line: 18, baseType: !298, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2719, file: !2720, line: 19, baseType: !298, size: 32, offset: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2719, file: !2720, line: 20, baseType: !1524, size: 128, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2719, file: !2720, line: 22, baseType: !403, size: 128, align: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2715, file: !2716, line: 14, baseType: !2727, size: 64, offset: 320)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2715, file: !2716, line: 15, baseType: !2729, size: 64, offset: 384)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2730, line: 16, size: 64, elements: !2731)
!2730 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2731 = !{!2732}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2729, file: !2730, line: 17, baseType: !1254, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2715, file: !2716, line: 16, baseType: !1524, size: 128, offset: 448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2715, file: !2716, line: 17, baseType: !785, size: 32, offset: 576)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !638, file: !18, line: 1465, baseType: !225, size: 64, offset: 6400)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !638, file: !18, line: 1468, baseType: !453, size: 32, offset: 6464)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !638, file: !18, line: 1470, baseType: !577, size: 64, offset: 6528)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !638, file: !18, line: 1471, baseType: !577, size: 64, offset: 6592)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !638, file: !18, line: 1473, baseType: !455, size: 32, offset: 6656)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !638, file: !18, line: 1474, baseType: !2741, size: 64, offset: 6720)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !18, line: 603, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !638, file: !18, line: 1477, baseType: !2744, size: 256, offset: 6784)
!2744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 256, elements: !2274)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !638, file: !18, line: 1478, baseType: !2746, size: 128, offset: 7040)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2747, line: 18, baseType: !2748)
!2747 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2747, line: 16, size: 128, elements: !2749)
!2749 = !{!2750}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2748, file: !2747, line: 17, baseType: !2751, size: 128)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 128, elements: !1778)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !638, file: !18, line: 1480, baseType: !7, size: 32, offset: 7168)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !638, file: !18, line: 1481, baseType: !2754, size: 32, offset: 7200)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !224, line: 150, baseType: !7)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !638, file: !18, line: 1487, baseType: !1211, size: 192, offset: 7232)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !638, file: !18, line: 1493, baseType: !255, size: 64, offset: 7424)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !638, file: !18, line: 1495, baseType: !2758, size: 64, offset: 7488)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !418, line: 135, size: 1024, align: 512, elements: !2761)
!2761 = !{!2762, !2766, !2767, !2774, !2780, !2784, !2788, !2792, !2793, !2797, !2801, !2806, !2810}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2760, file: !418, line: 136, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!298, !420, !7}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2760, file: !418, line: 137, baseType: !2763, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2760, file: !418, line: 138, baseType: !2768, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!298, !2771, !2773}
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2760, file: !418, line: 139, baseType: !2775, size: 64, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!298, !2771, !7, !255, !2778}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2760, file: !418, line: 141, baseType: !2781, size: 64, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!298, !2771}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2760, file: !418, line: 142, baseType: !2785, size: 64, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!298, !420}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2760, file: !418, line: 143, baseType: !2789, size: 64, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !420}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2760, file: !418, line: 144, baseType: !2789, size: 64, offset: 448)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2760, file: !418, line: 145, baseType: !2794, size: 64, offset: 512)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !420, !467}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2760, file: !418, line: 146, baseType: !2798, size: 64, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!314, !420, !314, !298}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2760, file: !418, line: 147, baseType: !2802, size: 64, offset: 640)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!416, !2805}
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2760, file: !418, line: 148, baseType: !2807, size: 64, offset: 704)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!298, !587, !528}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2760, file: !418, line: 149, baseType: !2811, size: 64, offset: 768)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!420, !420, !2814}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !638, file: !18, line: 1500, baseType: !298, size: 32, offset: 7552)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !638, file: !18, line: 1502, baseType: !2818, size: 448, offset: 7616)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2462, line: 60, size: 448, elements: !2819)
!2819 = !{!2820, !2825, !2826, !2827, !2828, !2829, !2830}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2818, file: !2462, line: 61, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!226, !2824, !2460}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2818, file: !2462, line: 63, baseType: !2821, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2818, file: !2462, line: 66, baseType: !183, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2818, file: !2462, line: 67, baseType: !298, size: 32, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2818, file: !2462, line: 68, baseType: !7, size: 32, offset: 224)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2818, file: !2462, line: 71, baseType: !259, size: 128, offset: 256)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2818, file: !2462, line: 77, baseType: !2831, size: 64, offset: 384)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !638, file: !18, line: 1505, baseType: !809, size: 64, offset: 8064)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !638, file: !18, line: 1508, baseType: !809, size: 64, offset: 8128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !638, file: !18, line: 1511, baseType: !298, size: 32, offset: 8192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !638, file: !18, line: 1514, baseType: !947, size: 32, offset: 8224)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !638, file: !18, line: 1517, baseType: !2837, size: 64, offset: 8256)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !182, line: 18, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !638, file: !18, line: 1518, baseType: !673, size: 64, offset: 8320)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !638, file: !18, line: 1525, baseType: !1756, size: 64, offset: 8384)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !638, file: !18, line: 1532, baseType: !2842, size: 64, offset: 8448)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2843, line: 52, size: 64, elements: !2844)
!2843 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2844 = !{!2845}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2842, file: !2843, line: 53, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2843, line: 40, size: 256, elements: !2848)
!2848 = !{!2849, !2850, !2855}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2847, file: !2843, line: 42, baseType: !272)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2847, file: !2843, line: 44, baseType: !2851, size: 192)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2843, line: 28, size: 192, elements: !2852)
!2852 = !{!2853, !2854}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2851, file: !2843, line: 29, baseType: !259, size: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2851, file: !2843, line: 31, baseType: !183, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2847, file: !2843, line: 49, baseType: !183, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !638, file: !18, line: 1533, baseType: !2842, size: 64, offset: 8512)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !638, file: !18, line: 1534, baseType: !403, size: 128, align: 64, offset: 8576)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !638, file: !18, line: 1535, baseType: !2002, size: 256, offset: 8704)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !638, file: !18, line: 1537, baseType: !1211, size: 192, offset: 8960)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !638, file: !18, line: 1542, baseType: !298, size: 32, offset: 9152)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !638, file: !18, line: 1545, baseType: !272, offset: 9184)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !638, file: !18, line: 1546, baseType: !259, size: 128, offset: 9216)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !638, file: !18, line: 1548, baseType: !272, offset: 9344)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !638, file: !18, line: 1549, baseType: !259, size: 128, offset: 9344)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !468, file: !18, line: 624, baseType: !772, size: 64, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !468, file: !18, line: 631, baseType: !226, size: 64, offset: 320)
!2867 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !18, line: 639, baseType: !2868, size: 32, offset: 384)
!2868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !18, line: 639, size: 32, elements: !2869)
!2869 = !{!2870, !2872}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2868, file: !18, line: 640, baseType: !2871, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2868, file: !18, line: 641, baseType: !7, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !468, file: !18, line: 643, baseType: !551, size: 32, offset: 416)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !468, file: !18, line: 644, baseType: !569, size: 64, offset: 448)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !468, file: !18, line: 645, baseType: !573, size: 128, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !468, file: !18, line: 646, baseType: !573, size: 128, offset: 640)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !468, file: !18, line: 647, baseType: !573, size: 128, offset: 768)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !468, file: !18, line: 648, baseType: !272, offset: 896)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !468, file: !18, line: 649, baseType: !355, size: 16, offset: 896)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !468, file: !18, line: 650, baseType: !1390, size: 8, offset: 912)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !468, file: !18, line: 651, baseType: !1390, size: 8, offset: 920)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !468, file: !18, line: 652, baseType: !2634, size: 64, offset: 960)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !468, file: !18, line: 659, baseType: !226, size: 64, offset: 1024)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !468, file: !18, line: 660, baseType: !805, size: 256, offset: 1088)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !468, file: !18, line: 662, baseType: !226, size: 64, offset: 1344)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !468, file: !18, line: 663, baseType: !226, size: 64, offset: 1408)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !468, file: !18, line: 665, baseType: !677, size: 128, offset: 1472)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !468, file: !18, line: 666, baseType: !259, size: 128, offset: 1600)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !468, file: !18, line: 675, baseType: !259, size: 128, offset: 1728)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !468, file: !18, line: 676, baseType: !259, size: 128, offset: 1856)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !468, file: !18, line: 677, baseType: !259, size: 128, offset: 1984)
!2892 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !18, line: 678, baseType: !2893, size: 128, offset: 2112)
!2893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !18, line: 678, size: 128, elements: !2894)
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2893, file: !18, line: 679, baseType: !673, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2893, file: !18, line: 680, baseType: !403, size: 128, align: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !468, file: !18, line: 682, baseType: !811, size: 64, offset: 2240)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !468, file: !18, line: 683, baseType: !811, size: 64, offset: 2304)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !468, file: !18, line: 684, baseType: !785, size: 32, offset: 2368)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !468, file: !18, line: 685, baseType: !785, size: 32, offset: 2400)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !468, file: !18, line: 686, baseType: !785, size: 32, offset: 2432)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !468, file: !18, line: 688, baseType: !785, size: 32, offset: 2464)
!2903 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !18, line: 690, baseType: !2904, size: 64, offset: 2496)
!2904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !18, line: 690, size: 64, elements: !2905)
!2905 = !{!2906, !3136}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2904, file: !18, line: 691, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2909)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !18, line: 1822, size: 2048, elements: !2910)
!2910 = !{!2911, !2912, !2916, !2921, !2925, !2926, !2927, !2931, !2944, !2945, !2960, !2964, !2965, !2969, !2970, !2974, !2979, !2980, !2984, !2988, !3096, !3100, !3101, !3105, !3106, !3110, !3114, !3119, !3123, !3127, !3131, !3135}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2909, file: !18, line: 1823, baseType: !220, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2909, file: !18, line: 1824, baseType: !2913, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!569, !390, !569, !298}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2909, file: !18, line: 1825, baseType: !2917, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!345, !390, !314, !360, !2920}
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2909, file: !18, line: 1826, baseType: !2922, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!345, !390, !255, !360, !2920}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2909, file: !18, line: 1827, baseType: !882, size: 64, offset: 256)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2909, file: !18, line: 1828, baseType: !882, size: 64, offset: 320)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2909, file: !18, line: 1829, baseType: !2928, size: 64, offset: 384)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!298, !885, !528}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2909, file: !18, line: 1830, baseType: !2932, size: 64, offset: 448)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!298, !390, !2935}
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !18, line: 1776, size: 128, elements: !2937)
!2937 = !{!2938, !2943}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2936, file: !18, line: 1777, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !18, line: 1773, baseType: !2940)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!298, !2935, !255, !298, !569, !459, !7}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2936, file: !18, line: 1778, baseType: !569, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2909, file: !18, line: 1831, baseType: !2932, size: 64, offset: 512)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2909, file: !18, line: 1832, baseType: !2946, size: 64, offset: 576)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!227, !390, !2949}
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2951, line: 43, size: 128, elements: !2952)
!2951 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2952 = !{!2953, !2959}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2950, file: !2951, line: 44, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2951, line: 37, baseType: !2955)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{null, !390, !2958, !2949}
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2950, file: !2951, line: 45, baseType: !227, size: 32, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2909, file: !18, line: 1833, baseType: !2961, size: 64, offset: 640)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!183, !390, !7, !226}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2909, file: !18, line: 1834, baseType: !2961, size: 64, offset: 704)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2909, file: !18, line: 1835, baseType: !2966, size: 64, offset: 768)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!298, !390, !1019}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2909, file: !18, line: 1836, baseType: !226, size: 64, offset: 832)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2909, file: !18, line: 1837, baseType: !2971, size: 64, offset: 896)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!298, !467, !390}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2909, file: !18, line: 1838, baseType: !2975, size: 64, offset: 960)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!298, !390, !2978}
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !18, line: 1007, baseType: !225)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2909, file: !18, line: 1839, baseType: !2971, size: 64, offset: 1024)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2909, file: !18, line: 1840, baseType: !2981, size: 64, offset: 1088)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!298, !390, !569, !569, !298}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2909, file: !18, line: 1841, baseType: !2985, size: 64, offset: 1152)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!298, !298, !390, !298}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2909, file: !18, line: 1842, baseType: !2989, size: 64, offset: 1216)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!298, !390, !298, !2992}
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !18, line: 1062, size: 1664, elements: !2994)
!2994 = !{!2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3026, !3027, !3028, !3041, !3072}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2993, file: !18, line: 1063, baseType: !2992, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2993, file: !18, line: 1064, baseType: !259, size: 128, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2993, file: !18, line: 1065, baseType: !677, size: 128, offset: 192)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2993, file: !18, line: 1066, baseType: !259, size: 128, offset: 320)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2993, file: !18, line: 1069, baseType: !259, size: 128, offset: 448)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2993, file: !18, line: 1072, baseType: !2978, size: 64, offset: 576)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2993, file: !18, line: 1073, baseType: !7, size: 32, offset: 640)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2993, file: !18, line: 1074, baseType: !465, size: 8, offset: 672)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2993, file: !18, line: 1075, baseType: !7, size: 32, offset: 704)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2993, file: !18, line: 1076, baseType: !298, size: 32, offset: 736)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2993, file: !18, line: 1077, baseType: !1524, size: 128, offset: 768)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2993, file: !18, line: 1078, baseType: !390, size: 64, offset: 896)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2993, file: !18, line: 1079, baseType: !569, size: 64, offset: 960)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2993, file: !18, line: 1080, baseType: !569, size: 64, offset: 1024)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2993, file: !18, line: 1082, baseType: !3010, size: 64, offset: 1088)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !18, line: 1314, size: 320, elements: !3012)
!3012 = !{!3013, !3021, !3022, !3023, !3024, !3025}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3011, file: !18, line: 1315, baseType: !3014)
!3014 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3015, line: 20, baseType: !3016)
!3015 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3015, line: 11, elements: !3017)
!3017 = !{!3018}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3016, file: !3015, line: 12, baseType: !3019)
!3019 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !284, line: 33, baseType: !3020)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 31, elements: !286)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3011, file: !18, line: 1316, baseType: !298, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3011, file: !18, line: 1317, baseType: !298, size: 32, offset: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3011, file: !18, line: 1318, baseType: !3010, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3011, file: !18, line: 1319, baseType: !390, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3011, file: !18, line: 1320, baseType: !403, size: 128, align: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2993, file: !18, line: 1084, baseType: !226, size: 64, offset: 1152)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2993, file: !18, line: 1085, baseType: !226, size: 64, offset: 1216)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2993, file: !18, line: 1087, baseType: !3029, size: 64, offset: 1280)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3031)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !18, line: 1011, size: 128, elements: !3032)
!3032 = !{!3033, !3037}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3031, file: !18, line: 1012, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !2992, !2992}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3031, file: !18, line: 1013, baseType: !3038, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2992}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2993, file: !18, line: 1088, baseType: !3042, size: 64, offset: 1344)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3044)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !18, line: 1016, size: 512, elements: !3045)
!3045 = !{!3046, !3050, !3054, !3055, !3059, !3063, !3067, !3071}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3044, file: !18, line: 1017, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!2978, !2978}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3044, file: !18, line: 1018, baseType: !3051, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !2978}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3044, file: !18, line: 1019, baseType: !3038, size: 64, offset: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3044, file: !18, line: 1020, baseType: !3056, size: 64, offset: 192)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!298, !2992, !298}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3044, file: !18, line: 1021, baseType: !3060, size: 64, offset: 256)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!528, !2992}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3044, file: !18, line: 1022, baseType: !3064, size: 64, offset: 320)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!298, !2992, !298, !262}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3044, file: !18, line: 1023, baseType: !3068, size: 64, offset: 384)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{null, !2992, !859}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3044, file: !18, line: 1024, baseType: !3060, size: 64, offset: 448)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2993, file: !18, line: 1097, baseType: !3073, size: 256, offset: 1408)
!3073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2993, file: !18, line: 1089, size: 256, elements: !3074)
!3074 = !{!3075, !3084, !3090}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3073, file: !18, line: 1090, baseType: !3076, size: 256)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3077, line: 10, size: 256, elements: !3078)
!3077 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3078 = !{!3079, !3080, !3083}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3076, file: !3077, line: 11, baseType: !453, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3076, file: !3077, line: 12, baseType: !3081, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3077, line: 5, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3076, file: !3077, line: 13, baseType: !259, size: 128, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3073, file: !18, line: 1091, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3077, line: 17, size: 64, elements: !3086)
!3086 = !{!3087}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3085, file: !3077, line: 18, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3077, line: 16, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3073, file: !18, line: 1096, baseType: !3091, size: 192)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3073, file: !18, line: 1092, size: 192, elements: !3092)
!3092 = !{!3093, !3094, !3095}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3091, file: !18, line: 1093, baseType: !259, size: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3091, file: !18, line: 1094, baseType: !298, size: 32, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3091, file: !18, line: 1095, baseType: !7, size: 32, offset: 160)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2909, file: !18, line: 1843, baseType: !3097, size: 64, offset: 1280)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!345, !390, !759, !298, !360, !2920, !298}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2909, file: !18, line: 1844, baseType: !1139, size: 64, offset: 1344)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2909, file: !18, line: 1845, baseType: !3102, size: 64, offset: 1408)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!298, !298}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2909, file: !18, line: 1846, baseType: !2989, size: 64, offset: 1472)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2909, file: !18, line: 1847, baseType: !3107, size: 64, offset: 1536)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!345, !2142, !390, !2920, !360, !7}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2909, file: !18, line: 1848, baseType: !3111, size: 64, offset: 1600)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!345, !390, !2920, !2142, !360, !7}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2909, file: !18, line: 1849, baseType: !3115, size: 64, offset: 1664)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!298, !390, !183, !3118, !859}
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2909, file: !18, line: 1850, baseType: !3120, size: 64, offset: 1728)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!183, !390, !298, !569, !569}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2909, file: !18, line: 1852, baseType: !3124, size: 64, offset: 1792)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{null, !749, !390}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2909, file: !18, line: 1856, baseType: !3128, size: 64, offset: 1856)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!345, !390, !569, !390, !569, !360, !7}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2909, file: !18, line: 1858, baseType: !3132, size: 64, offset: 1920)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!569, !390, !569, !390, !569, !569, !7}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2909, file: !18, line: 1861, baseType: !2981, size: 64, offset: 1984)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2904, file: !18, line: 692, baseType: !702, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !468, file: !18, line: 694, baseType: !3138, size: 64, offset: 2560)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !18, line: 1100, size: 384, elements: !3140)
!3140 = !{!3141, !3142, !3143, !3144}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3139, file: !18, line: 1101, baseType: !272)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3139, file: !18, line: 1102, baseType: !259, size: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3139, file: !18, line: 1103, baseType: !259, size: 128, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3139, file: !18, line: 1104, baseType: !259, size: 128, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !468, file: !18, line: 695, baseType: !773, size: 1216, align: 64, offset: 2624)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !468, file: !18, line: 696, baseType: !259, size: 128, offset: 3840)
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !18, line: 697, baseType: !3148, size: 64, offset: 3968)
!3148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !18, line: 697, size: 64, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3163, !3164}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3148, file: !18, line: 698, baseType: !2142, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3148, file: !18, line: 699, baseType: !2659, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3148, file: !18, line: 700, baseType: !3153, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3155, line: 14, size: 832, elements: !3156)
!3155 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3154, file: !3155, line: 15, baseType: !251, size: 512)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3154, file: !3155, line: 16, baseType: !220, size: 64, offset: 512)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3154, file: !3155, line: 17, baseType: !2907, size: 64, offset: 576)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3154, file: !3155, line: 18, baseType: !259, size: 128, offset: 640)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3154, file: !3155, line: 19, baseType: !551, size: 32, offset: 768)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3154, file: !3155, line: 20, baseType: !7, size: 32, offset: 800)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3148, file: !18, line: 701, baseType: !314, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3148, file: !18, line: 702, baseType: !7, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !468, file: !18, line: 705, baseType: !455, size: 32, offset: 4032)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !468, file: !18, line: 708, baseType: !455, size: 32, offset: 4064)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !468, file: !18, line: 709, baseType: !2741, size: 64, offset: 4096)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !468, file: !18, line: 720, baseType: !225, size: 64, offset: 4160)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !421, file: !418, line: 98, baseType: !3170, size: 256, offset: 448)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 256, elements: !2274)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !421, file: !418, line: 101, baseType: !3172, size: 32, offset: 704)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3173, line: 25, size: 32, elements: !3174)
!3173 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3174 = !{!3175}
!3175 = !DIDerivedType(tag: DW_TAG_member, scope: !3172, file: !3173, line: 26, baseType: !3176, size: 32)
!3176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3172, file: !3173, line: 26, size: 32, elements: !3177)
!3177 = !{!3178}
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !3176, file: !3173, line: 30, baseType: !3179, size: 32)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3176, file: !3173, line: 30, size: 32, elements: !3180)
!3180 = !{!3181, !3182}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3179, file: !3173, line: 31, baseType: !272)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3179, file: !3173, line: 32, baseType: !298, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !421, file: !418, line: 102, baseType: !2758, size: 64, offset: 768)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !421, file: !418, line: 103, baseType: !637, size: 64, offset: 832)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !421, file: !418, line: 104, baseType: !226, size: 64, offset: 896)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !421, file: !418, line: 105, baseType: !225, size: 64, offset: 960)
!3187 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !418, line: 107, baseType: !3188, size: 128, offset: 1024)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !421, file: !418, line: 107, size: 128, elements: !3189)
!3189 = !{!3190, !3191}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3188, file: !418, line: 108, baseType: !259, size: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3188, file: !418, line: 109, baseType: !2958, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !421, file: !418, line: 111, baseType: !259, size: 128, offset: 1152)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !421, file: !418, line: 112, baseType: !259, size: 128, offset: 1280)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !421, file: !418, line: 120, baseType: !3195, size: 128, offset: 1408)
!3195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !421, file: !418, line: 116, size: 128, elements: !3196)
!3196 = !{!3197, !3198, !3199}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3195, file: !418, line: 117, baseType: !677, size: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3195, file: !418, line: 118, baseType: !435, size: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3195, file: !418, line: 119, baseType: !403, size: 128, align: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !391, file: !18, line: 922, baseType: !467, size: 64, offset: 256)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !391, file: !18, line: 923, baseType: !2907, size: 64, offset: 320)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !391, file: !18, line: 929, baseType: !272, offset: 384)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !391, file: !18, line: 930, baseType: !17, size: 32, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !391, file: !18, line: 931, baseType: !809, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !391, file: !18, line: 932, baseType: !7, size: 32, offset: 512)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !391, file: !18, line: 933, baseType: !2754, size: 32, offset: 544)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !391, file: !18, line: 934, baseType: !1211, size: 192, offset: 576)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !391, file: !18, line: 935, baseType: !569, size: 64, offset: 768)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !391, file: !18, line: 936, baseType: !3210, size: 192, offset: 832)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !18, line: 885, size: 192, elements: !3211)
!3211 = !{!3212, !3213, !3214, !3215, !3216, !3217}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3210, file: !18, line: 886, baseType: !3014)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3210, file: !18, line: 887, baseType: !1514, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3210, file: !18, line: 888, baseType: !26, size: 32, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3210, file: !18, line: 889, baseType: !473, size: 32, offset: 96)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3210, file: !18, line: 889, baseType: !473, size: 32, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3210, file: !18, line: 890, baseType: !298, size: 32, offset: 160)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !391, file: !18, line: 937, baseType: !1590, size: 64, offset: 1024)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !391, file: !18, line: 938, baseType: !3220, size: 256, offset: 1088)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !18, line: 896, size: 256, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3220, file: !18, line: 897, baseType: !226, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3220, file: !18, line: 898, baseType: !7, size: 32, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3220, file: !18, line: 899, baseType: !7, size: 32, offset: 96)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3220, file: !18, line: 902, baseType: !7, size: 32, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3220, file: !18, line: 903, baseType: !7, size: 32, offset: 160)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3220, file: !18, line: 904, baseType: !569, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !391, file: !18, line: 940, baseType: !459, size: 64, offset: 1344)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !391, file: !18, line: 945, baseType: !225, size: 64, offset: 1408)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !391, file: !18, line: 949, baseType: !259, size: 128, offset: 1472)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !391, file: !18, line: 950, baseType: !259, size: 128, offset: 1600)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !391, file: !18, line: 952, baseType: !772, size: 64, offset: 1728)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !391, file: !18, line: 953, baseType: !947, size: 32, offset: 1792)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !391, file: !18, line: 954, baseType: !947, size: 32, offset: 1824)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !381, file: !339, line: 174, baseType: !387, size: 64, offset: 320)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !381, file: !339, line: 176, baseType: !3237, size: 64, offset: 384)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!298, !390, !265, !380, !1019}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !369, file: !339, line: 90, baseType: !364, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !369, file: !339, line: 91, baseType: !3242, size: 64, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !329, file: !252, line: 143, baseType: !3244, size: 64, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!3247, !265}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3249)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !35, line: 39, size: 384, elements: !3250)
!3250 = !{!3251, !3252, !3256, !3260, !3266, !3270}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3249, file: !35, line: 40, baseType: !34, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3249, file: !35, line: 41, baseType: !3253, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!528}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3249, file: !35, line: 42, baseType: !3257, size: 64, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!225}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3249, file: !35, line: 43, baseType: !3261, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!2171, !3264}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !35, line: 19, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3249, file: !35, line: 44, baseType: !3267, size: 64, offset: 256)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!2171}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3249, file: !35, line: 45, baseType: !506, size: 64, offset: 320)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !329, file: !252, line: 144, baseType: !3272, size: 64, offset: 320)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!2171, !265}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !329, file: !252, line: 145, baseType: !3276, size: 64, offset: 384)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{null, !265, !3279, !3280}
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !251, file: !252, line: 70, baseType: !3282, size: 64, offset: 384)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !657, line: 123, size: 1024, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3413, !3414, !3415, !3416, !3417}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3283, file: !657, line: 124, baseType: !785, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3283, file: !657, line: 125, baseType: !785, size: 32, offset: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3283, file: !657, line: 135, baseType: !3282, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3283, file: !657, line: 136, baseType: !255, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3283, file: !657, line: 138, baseType: !798, size: 192, align: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3283, file: !657, line: 140, baseType: !2171, size: 64, offset: 384)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3283, file: !657, line: 141, baseType: !7, size: 32, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, scope: !3283, file: !657, line: 142, baseType: !3293, size: 256, offset: 512)
!3293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3283, file: !657, line: 142, size: 256, elements: !3294)
!3294 = !{!3295, !3341, !3345}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3293, file: !657, line: 143, baseType: !3296, size: 192)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !657, line: 91, size: 192, elements: !3297)
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3296, file: !657, line: 92, baseType: !226, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3296, file: !657, line: 94, baseType: !794, size: 64, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3296, file: !657, line: 100, baseType: !3301, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !657, line: 180, size: 704, elements: !3303)
!3303 = !{!3304, !3305, !3306, !3313, !3314, !3315, !3339, !3340}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3302, file: !657, line: 182, baseType: !3282, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3302, file: !657, line: 183, baseType: !7, size: 32, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3302, file: !657, line: 186, baseType: !3307, size: 192, offset: 128)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3308, line: 19, size: 192, elements: !3309)
!3308 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3309 = !{!3310, !3311, !3312}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3307, file: !3308, line: 20, baseType: !777, size: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3307, file: !3308, line: 21, baseType: !7, size: 32, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3307, file: !3308, line: 22, baseType: !7, size: 32, offset: 160)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3302, file: !657, line: 187, baseType: !453, size: 32, offset: 320)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3302, file: !657, line: 188, baseType: !453, size: 32, offset: 352)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3302, file: !657, line: 189, baseType: !3316, size: 64, offset: 384)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !657, line: 168, size: 320, elements: !3318)
!3318 = !{!3319, !3323, !3327, !3331, !3335}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3317, file: !657, line: 169, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!298, !749, !3301}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3317, file: !657, line: 171, baseType: !3324, size: 64, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!298, !3282, !255, !354}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3317, file: !657, line: 173, baseType: !3328, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!298, !3282}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3317, file: !657, line: 174, baseType: !3332, size: 64, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!298, !3282, !3282, !255}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3317, file: !657, line: 176, baseType: !3336, size: 64, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!298, !749, !3282, !3301}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3302, file: !657, line: 192, baseType: !259, size: 128, offset: 448)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3302, file: !657, line: 194, baseType: !1524, size: 128, offset: 576)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3293, file: !657, line: 144, baseType: !3342, size: 64)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !657, line: 103, size: 64, elements: !3343)
!3343 = !{!3344}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3342, file: !657, line: 104, baseType: !3282, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3293, file: !657, line: 145, baseType: !3346, size: 256)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !657, line: 107, size: 256, elements: !3347)
!3347 = !{!3348, !3408, !3411, !3412}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3346, file: !657, line: 108, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3351)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !657, line: 217, size: 768, elements: !3352)
!3352 = !{!3353, !3373, !3377, !3381, !3385, !3389, !3393, !3397, !3398, !3399, !3400, !3404}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3351, file: !657, line: 222, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!298, !3357}
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !657, line: 197, size: 1088, elements: !3359)
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3358, file: !657, line: 199, baseType: !3282, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3358, file: !657, line: 200, baseType: !390, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3358, file: !657, line: 201, baseType: !749, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3358, file: !657, line: 202, baseType: !225, size: 64, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3358, file: !657, line: 205, baseType: !1211, size: 192, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3358, file: !657, line: 206, baseType: !1211, size: 192, offset: 448)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3358, file: !657, line: 207, baseType: !298, size: 32, offset: 640)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3358, file: !657, line: 208, baseType: !259, size: 128, offset: 704)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3358, file: !657, line: 209, baseType: !314, size: 64, offset: 832)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3358, file: !657, line: 211, baseType: !360, size: 64, offset: 896)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3358, file: !657, line: 212, baseType: !528, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3358, file: !657, line: 213, baseType: !528, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3358, file: !657, line: 214, baseType: !1047, size: 64, offset: 1024)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3351, file: !657, line: 223, baseType: !3374, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{null, !3357}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3351, file: !657, line: 236, baseType: !3378, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!298, !749, !225}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3351, file: !657, line: 238, baseType: !3382, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!225, !749, !2920}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3351, file: !657, line: 239, baseType: !3386, size: 64, offset: 256)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!225, !749, !225, !2920}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3351, file: !657, line: 240, baseType: !3390, size: 64, offset: 320)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !749, !225}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3351, file: !657, line: 242, baseType: !3394, size: 64, offset: 384)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!345, !3357, !314, !360, !569}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3351, file: !657, line: 252, baseType: !360, size: 64, offset: 448)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3351, file: !657, line: 259, baseType: !528, size: 8, offset: 512)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3351, file: !657, line: 260, baseType: !3394, size: 64, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3351, file: !657, line: 263, baseType: !3401, size: 64, offset: 640)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!227, !3357, !2949}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3351, file: !657, line: 266, baseType: !3405, size: 64, offset: 704)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!298, !3357, !1019}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3346, file: !657, line: 109, baseType: !3409, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !657, line: 31, flags: DIFlagFwdDecl)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3346, file: !657, line: 110, baseType: !569, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3346, file: !657, line: 111, baseType: !3282, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3283, file: !657, line: 148, baseType: !225, size: 64, offset: 768)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3283, file: !657, line: 154, baseType: !459, size: 64, offset: 832)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3283, file: !657, line: 156, baseType: !355, size: 16, offset: 896)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3283, file: !657, line: 157, baseType: !354, size: 16, offset: 912)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3283, file: !657, line: 158, baseType: !3418, size: 64, offset: 960)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !657, line: 32, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !251, file: !252, line: 71, baseType: !3421, size: 32, offset: 448)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3422, line: 19, size: 32, elements: !3423)
!3422 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3423 = !{!3424}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3421, file: !3422, line: 20, baseType: !1268, size: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !251, file: !252, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !251, file: !252, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !251, file: !252, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !251, file: !252, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !251, file: !252, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !248, file: !73, line: 463, baseType: !247, size: 64, offset: 512)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !248, file: !73, line: 465, baseType: !3432, size: 64, offset: 576)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !248, file: !73, line: 467, baseType: !255, size: 64, offset: 640)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !248, file: !73, line: 468, baseType: !3436, size: 64, offset: 704)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3439)
!3439 = !{!3440, !3441, !3442, !3446, !3451, !3455}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3438, file: !73, line: 88, baseType: !255, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3438, file: !73, line: 89, baseType: !366, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3438, file: !73, line: 90, baseType: !3443, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!298, !247, !309}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3438, file: !73, line: 91, baseType: !3447, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!314, !247, !3450, !3279, !3280}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3438, file: !73, line: 93, baseType: !3452, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{null, !247}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3438, file: !73, line: 95, baseType: !3456, size: 64, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3458)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3459)
!3459 = !{!3460, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3458, file: !80, line: 279, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!298, !247}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3458, file: !80, line: 280, baseType: !3452, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3458, file: !80, line: 281, baseType: !3461, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3458, file: !80, line: 282, baseType: !3461, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3458, file: !80, line: 283, baseType: !3461, size: 64, offset: 256)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3458, file: !80, line: 284, baseType: !3461, size: 64, offset: 320)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3458, file: !80, line: 285, baseType: !3461, size: 64, offset: 384)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3458, file: !80, line: 286, baseType: !3461, size: 64, offset: 448)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3458, file: !80, line: 287, baseType: !3461, size: 64, offset: 512)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3458, file: !80, line: 288, baseType: !3461, size: 64, offset: 576)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3458, file: !80, line: 289, baseType: !3461, size: 64, offset: 640)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3458, file: !80, line: 290, baseType: !3461, size: 64, offset: 704)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3458, file: !80, line: 291, baseType: !3461, size: 64, offset: 768)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3458, file: !80, line: 292, baseType: !3461, size: 64, offset: 832)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3458, file: !80, line: 293, baseType: !3461, size: 64, offset: 896)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3458, file: !80, line: 294, baseType: !3461, size: 64, offset: 960)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3458, file: !80, line: 295, baseType: !3461, size: 64, offset: 1024)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3458, file: !80, line: 296, baseType: !3461, size: 64, offset: 1088)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3458, file: !80, line: 297, baseType: !3461, size: 64, offset: 1152)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3458, file: !80, line: 298, baseType: !3461, size: 64, offset: 1216)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3458, file: !80, line: 299, baseType: !3461, size: 64, offset: 1280)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3458, file: !80, line: 300, baseType: !3461, size: 64, offset: 1344)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3458, file: !80, line: 301, baseType: !3461, size: 64, offset: 1408)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !248, file: !73, line: 470, baseType: !3487, size: 64, offset: 768)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3489, line: 82, size: 1408, elements: !3490)
!3489 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496, !3497, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3572, !3575, !3576}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3488, file: !3489, line: 83, baseType: !255, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3488, file: !3489, line: 84, baseType: !255, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3488, file: !3489, line: 85, baseType: !247, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3488, file: !3489, line: 86, baseType: !366, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3488, file: !3489, line: 87, baseType: !366, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3488, file: !3489, line: 88, baseType: !366, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3488, file: !3489, line: 90, baseType: !3498, size: 64, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!298, !247, !3501}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510, !3523, !3536, !3537, !3538, !3539, !3540, !3548, !3549, !3550, !3551, !3552, !3553}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3502, file: !67, line: 96, baseType: !255, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3502, file: !67, line: 97, baseType: !3487, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3502, file: !67, line: 99, baseType: !220, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3502, file: !67, line: 100, baseType: !255, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3502, file: !67, line: 102, baseType: !528, size: 8, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3502, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3502, file: !67, line: 105, baseType: !3511, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3514, line: 262, size: 1600, elements: !3515)
!3514 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3515 = !{!3516, !3517, !3518, !3522}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3513, file: !3514, line: 263, baseType: !2744, size: 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3513, file: !3514, line: 264, baseType: !2744, size: 256, offset: 256)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3513, file: !3514, line: 265, baseType: !3519, size: 1024, offset: 512)
!3519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 1024, elements: !3520)
!3520 = !{!3521}
!3521 = !DISubrange(count: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3513, file: !3514, line: 266, baseType: !2171, size: 64, offset: 1536)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3502, file: !67, line: 106, baseType: !3524, size: 64, offset: 384)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3514, line: 210, size: 256, elements: !3527)
!3527 = !{!3528, !3532, !3534, !3535}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3526, file: !3514, line: 211, baseType: !3529, size: 72)
!3529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 72, elements: !3530)
!3530 = !{!3531}
!3531 = !DISubrange(count: 9)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3526, file: !3514, line: 212, baseType: !3533, size: 64, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3514, line: 14, baseType: !226)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3526, file: !3514, line: 213, baseType: !455, size: 32, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3526, file: !3514, line: 214, baseType: !455, size: 32, offset: 224)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3502, file: !67, line: 108, baseType: !3461, size: 64, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3502, file: !67, line: 109, baseType: !3452, size: 64, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3502, file: !67, line: 110, baseType: !3461, size: 64, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3502, file: !67, line: 111, baseType: !3452, size: 64, offset: 640)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3502, file: !67, line: 112, baseType: !3541, size: 64, offset: 704)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!298, !247, !3544}
!3544 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3545)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3546)
!3546 = !{!3547}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3545, file: !80, line: 51, baseType: !298, size: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3502, file: !67, line: 113, baseType: !3461, size: 64, offset: 768)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3502, file: !67, line: 114, baseType: !366, size: 64, offset: 832)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3502, file: !67, line: 115, baseType: !366, size: 64, offset: 896)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3502, file: !67, line: 117, baseType: !3456, size: 64, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3502, file: !67, line: 118, baseType: !3452, size: 64, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3502, file: !67, line: 120, baseType: !3554, size: 64, offset: 1088)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3488, file: !3489, line: 91, baseType: !3443, size: 64, offset: 448)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3488, file: !3489, line: 92, baseType: !3461, size: 64, offset: 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3488, file: !3489, line: 93, baseType: !3452, size: 64, offset: 576)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3488, file: !3489, line: 94, baseType: !3461, size: 64, offset: 640)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3488, file: !3489, line: 95, baseType: !3452, size: 64, offset: 704)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3488, file: !3489, line: 97, baseType: !3461, size: 64, offset: 768)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3488, file: !3489, line: 98, baseType: !3461, size: 64, offset: 832)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3488, file: !3489, line: 100, baseType: !3541, size: 64, offset: 896)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3488, file: !3489, line: 101, baseType: !3461, size: 64, offset: 960)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3488, file: !3489, line: 103, baseType: !3461, size: 64, offset: 1024)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3488, file: !3489, line: 105, baseType: !3461, size: 64, offset: 1088)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3488, file: !3489, line: 107, baseType: !3456, size: 64, offset: 1152)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3488, file: !3489, line: 109, baseType: !3569, size: 64, offset: 1216)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3571)
!3571 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3489, line: 109, flags: DIFlagFwdDecl)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3488, file: !3489, line: 111, baseType: !3573, size: 64, offset: 1280)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3489, line: 111, flags: DIFlagFwdDecl)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3488, file: !3489, line: 112, baseType: !683, offset: 1344)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3488, file: !3489, line: 114, baseType: !528, size: 8, offset: 1344)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !248, file: !73, line: 471, baseType: !3501, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !248, file: !73, line: 473, baseType: !225, size: 64, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !248, file: !73, line: 475, baseType: !225, size: 64, offset: 960)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !248, file: !73, line: 480, baseType: !1211, size: 192, offset: 1024)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !248, file: !73, line: 484, baseType: !3582, size: 576, offset: 1216)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3589}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3582, file: !73, line: 362, baseType: !259, size: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3582, file: !73, line: 363, baseType: !259, size: 128, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3582, file: !73, line: 364, baseType: !259, size: 128, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3582, file: !73, line: 365, baseType: !259, size: 128, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3582, file: !73, line: 366, baseType: !528, size: 8, offset: 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3582, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !248, file: !73, line: 485, baseType: !3591, size: 2304, offset: 1792)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3688, !3692}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3591, file: !80, line: 566, baseType: !3544, size: 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3591, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3591, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3591, file: !80, line: 569, baseType: !528, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3591, file: !80, line: 570, baseType: !528, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3591, file: !80, line: 571, baseType: !528, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3591, file: !80, line: 572, baseType: !528, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3591, file: !80, line: 573, baseType: !528, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3591, file: !80, line: 574, baseType: !528, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3591, file: !80, line: 575, baseType: !528, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3591, file: !80, line: 576, baseType: !528, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3591, file: !80, line: 577, baseType: !453, size: 32, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3591, file: !80, line: 578, baseType: !272, offset: 96)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3591, file: !80, line: 580, baseType: !259, size: 128, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3591, file: !80, line: 581, baseType: !1545, size: 192, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3591, file: !80, line: 582, baseType: !3609, size: 64, offset: 448)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3611, line: 43, size: 1472, elements: !3612)
!3611 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3620, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3610, file: !3611, line: 44, baseType: !255, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3610, file: !3611, line: 45, baseType: !298, size: 32, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3610, file: !3611, line: 46, baseType: !259, size: 128, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3610, file: !3611, line: 47, baseType: !272, offset: 256)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3610, file: !3611, line: 48, baseType: !3618, size: 64, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3610, file: !3611, line: 49, baseType: !3621, size: 320, offset: 320)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3622, line: 11, size: 320, elements: !3623)
!3622 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3623 = !{!3624, !3625, !3626, !3631}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3621, file: !3622, line: 16, baseType: !677, size: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3621, file: !3622, line: 17, baseType: !226, size: 64, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3621, file: !3622, line: 18, baseType: !3627, size: 64, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !3630}
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3621, file: !3622, line: 19, baseType: !453, size: 32, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3610, file: !3611, line: 50, baseType: !226, size: 64, offset: 640)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3610, file: !3611, line: 51, baseType: !1338, size: 64, offset: 704)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3610, file: !3611, line: 52, baseType: !1338, size: 64, offset: 768)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3610, file: !3611, line: 53, baseType: !1338, size: 64, offset: 832)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3610, file: !3611, line: 54, baseType: !1338, size: 64, offset: 896)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3610, file: !3611, line: 55, baseType: !1338, size: 64, offset: 960)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3610, file: !3611, line: 56, baseType: !226, size: 64, offset: 1024)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3610, file: !3611, line: 57, baseType: !226, size: 64, offset: 1088)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3610, file: !3611, line: 58, baseType: !226, size: 64, offset: 1152)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3610, file: !3611, line: 59, baseType: !226, size: 64, offset: 1216)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3610, file: !3611, line: 60, baseType: !226, size: 64, offset: 1280)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3610, file: !3611, line: 61, baseType: !247, size: 64, offset: 1344)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3610, file: !3611, line: 62, baseType: !528, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3610, file: !3611, line: 63, baseType: !528, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3591, file: !80, line: 583, baseType: !528, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3591, file: !80, line: 584, baseType: !528, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3591, file: !80, line: 585, baseType: !528, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3591, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3591, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3591, file: !80, line: 592, baseType: !1330, size: 512, offset: 576)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3591, file: !80, line: 593, baseType: !459, size: 64, offset: 1088)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3591, file: !80, line: 594, baseType: !2002, size: 256, offset: 1152)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3591, file: !80, line: 595, baseType: !1524, size: 128, offset: 1408)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3591, file: !80, line: 596, baseType: !3618, size: 64, offset: 1536)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3591, file: !80, line: 597, baseType: !785, size: 32, offset: 1600)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3591, file: !80, line: 598, baseType: !785, size: 32, offset: 1632)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3591, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3591, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3591, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3591, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3591, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3591, file: !80, line: 604, baseType: !528, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3591, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3591, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3591, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3591, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3591, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3591, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3591, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3591, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3591, file: !80, line: 613, baseType: !298, size: 32, offset: 1792)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3591, file: !80, line: 614, baseType: !298, size: 32, offset: 1824)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3591, file: !80, line: 615, baseType: !459, size: 64, offset: 1856)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3591, file: !80, line: 616, baseType: !459, size: 64, offset: 1920)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3591, file: !80, line: 617, baseType: !459, size: 64, offset: 1984)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3591, file: !80, line: 618, baseType: !459, size: 64, offset: 2048)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3591, file: !80, line: 620, baseType: !3679, size: 64, offset: 2112)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3681)
!3681 = !{!3682, !3683, !3684, !3685}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3680, file: !80, line: 537, baseType: !272)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3680, file: !80, line: 538, baseType: !7, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3680, file: !80, line: 540, baseType: !259, size: 128, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3680, file: !80, line: 543, baseType: !3686, size: 64, offset: 192)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3591, file: !80, line: 621, baseType: !3689, size: 64, offset: 2176)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !247, !1482}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3591, file: !80, line: 622, baseType: !3693, size: 64, offset: 2240)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !248, file: !73, line: 486, baseType: !3696, size: 64, offset: 4096)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3705, !3706, !3707}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3697, file: !80, line: 643, baseType: !3458, size: 1472)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3697, file: !80, line: 644, baseType: !3461, size: 64, offset: 1472)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3697, file: !80, line: 645, baseType: !3702, size: 64, offset: 1536)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !247, !528}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3697, file: !80, line: 646, baseType: !3461, size: 64, offset: 1600)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3697, file: !80, line: 647, baseType: !3452, size: 64, offset: 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3697, file: !80, line: 648, baseType: !3452, size: 64, offset: 1728)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !248, file: !73, line: 493, baseType: !3709, size: 64, offset: 4160)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3711)
!3711 = !{!3712, !3713, !3714, !3887, !3888, !3889, !3890, !3891, !3892, !3895, !3896, !3897, !3898, !3899, !3900, !3901}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3710, file: !94, line: 163, baseType: !259, size: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3710, file: !94, line: 164, baseType: !255, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3710, file: !94, line: 165, baseType: !3715, size: 64, offset: 192)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3717)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3718)
!3718 = !{!3719, !3837, !3848, !3853, !3857, !3864, !3868, !3872, !3879, !3883}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3717, file: !94, line: 106, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!298, !3709, !3723, !93}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3725, line: 51, size: 1344, elements: !3726)
!3725 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3726 = !{!3727, !3728, !3730, !3731, !3821, !3830, !3831, !3832, !3833, !3834, !3835, !3836}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3724, file: !3725, line: 52, baseType: !255, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3724, file: !3725, line: 53, baseType: !3729, size: 32, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3725, line: 28, baseType: !453)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3724, file: !3725, line: 54, baseType: !255, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3724, file: !3725, line: 55, baseType: !3732, size: 192, offset: 192)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3733, line: 17, size: 192, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3734 = !{!3735, !3737, !3820}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3732, file: !3733, line: 18, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3732, file: !3733, line: 19, baseType: !3738, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3740)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3733, line: 110, size: 1152, elements: !3741)
!3741 = !{!3742, !3746, !3750, !3756, !3762, !3766, !3770, !3775, !3779, !3780, !3784, !3788, !3792, !3803, !3804, !3805, !3806, !3816}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3740, file: !3733, line: 111, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!3736, !3736}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3740, file: !3733, line: 112, baseType: !3747, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !3736}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3740, file: !3733, line: 113, baseType: !3751, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!528, !3754}
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3732)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3740, file: !3733, line: 114, baseType: !3757, size: 64, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!2171, !3754, !3760}
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3740, file: !3733, line: 116, baseType: !3763, size: 64, offset: 256)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!528, !3754, !255}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3740, file: !3733, line: 118, baseType: !3767, size: 64, offset: 320)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!298, !3754, !255, !7, !225, !360}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3740, file: !3733, line: 123, baseType: !3771, size: 64, offset: 384)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!298, !3754, !255, !3774, !360}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3740, file: !3733, line: 126, baseType: !3776, size: 64, offset: 448)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!255, !3754}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3740, file: !3733, line: 127, baseType: !3776, size: 64, offset: 512)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3740, file: !3733, line: 128, baseType: !3781, size: 64, offset: 576)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!3736, !3754}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3740, file: !3733, line: 130, baseType: !3785, size: 64, offset: 640)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!3736, !3754, !3736}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3740, file: !3733, line: 133, baseType: !3789, size: 64, offset: 704)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!3736, !3754, !255}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3740, file: !3733, line: 135, baseType: !3793, size: 64, offset: 768)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!298, !3754, !255, !255, !7, !7, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3733, line: 43, size: 640, elements: !3798)
!3798 = !{!3799, !3800, !3801}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3797, file: !3733, line: 44, baseType: !3736, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3797, file: !3733, line: 45, baseType: !7, size: 32, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3797, file: !3733, line: 46, baseType: !3802, size: 512, offset: 128)
!3802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 512, elements: !1368)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3740, file: !3733, line: 140, baseType: !3785, size: 64, offset: 832)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3740, file: !3733, line: 143, baseType: !3781, size: 64, offset: 896)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3740, file: !3733, line: 145, baseType: !3743, size: 64, offset: 960)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3740, file: !3733, line: 146, baseType: !3807, size: 64, offset: 1024)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!298, !3754, !3810}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3733, line: 29, size: 128, elements: !3812)
!3812 = !{!3813, !3814, !3815}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3811, file: !3733, line: 30, baseType: !7, size: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3811, file: !3733, line: 31, baseType: !7, size: 32, offset: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3811, file: !3733, line: 32, baseType: !3754, size: 64, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3740, file: !3733, line: 148, baseType: !3817, size: 64, offset: 1088)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!298, !3754, !247}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3732, file: !3733, line: 20, baseType: !247, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3724, file: !3725, line: 57, baseType: !3822, size: 64, offset: 384)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3725, line: 31, size: 704, elements: !3824)
!3824 = !{!3825, !3826, !3827, !3828, !3829}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3823, file: !3725, line: 32, baseType: !314, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3823, file: !3725, line: 33, baseType: !298, size: 32, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3823, file: !3725, line: 34, baseType: !225, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3823, file: !3725, line: 35, baseType: !3822, size: 64, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3823, file: !3725, line: 43, baseType: !381, size: 448, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3724, file: !3725, line: 58, baseType: !3822, size: 64, offset: 448)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3724, file: !3725, line: 59, baseType: !3723, size: 64, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3724, file: !3725, line: 60, baseType: !3723, size: 64, offset: 576)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3724, file: !3725, line: 61, baseType: !3723, size: 64, offset: 640)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3724, file: !3725, line: 63, baseType: !251, size: 512, offset: 704)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3724, file: !3725, line: 65, baseType: !226, size: 64, offset: 1216)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3724, file: !3725, line: 66, baseType: !225, size: 64, offset: 1280)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3717, file: !94, line: 108, baseType: !3838, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!298, !3709, !3841, !93}
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3843)
!3843 = !{!3844, !3845, !3846}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3842, file: !94, line: 64, baseType: !3736, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3842, file: !94, line: 65, baseType: !298, size: 32, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3842, file: !94, line: 66, baseType: !3847, size: 512, offset: 96)
!3847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 512, elements: !1778)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3717, file: !94, line: 110, baseType: !3849, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!298, !3709, !7, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !224, line: 164, baseType: !226)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3717, file: !94, line: 111, baseType: !3854, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !3709, !7}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3717, file: !94, line: 112, baseType: !3858, size: 64, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!298, !3709, !3723, !3861, !7, !3863, !2727}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3717, file: !94, line: 117, baseType: !3865, size: 64, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!298, !3709, !7, !7, !225}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3717, file: !94, line: 119, baseType: !3869, size: 64, offset: 384)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{null, !3709, !7, !7}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3717, file: !94, line: 121, baseType: !3873, size: 64, offset: 448)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!298, !3709, !3876, !528}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3878, line: 11, flags: DIFlagFwdDecl)
!3878 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3717, file: !94, line: 122, baseType: !3880, size: 64, offset: 512)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{null, !3709, !3876}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3717, file: !94, line: 123, baseType: !3884, size: 64, offset: 576)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!298, !3709, !3841, !3863, !2727}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3710, file: !94, line: 166, baseType: !225, size: 64, offset: 256)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3710, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3710, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3710, file: !94, line: 171, baseType: !3736, size: 64, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3710, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3710, file: !94, line: 173, baseType: !3893, size: 64, offset: 512)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3710, file: !94, line: 175, baseType: !3709, size: 64, offset: 576)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3710, file: !94, line: 182, baseType: !3852, size: 64, offset: 640)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3710, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3710, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3710, file: !94, line: 185, baseType: !777, size: 128, offset: 768)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3710, file: !94, line: 186, baseType: !1211, size: 192, offset: 896)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3710, file: !94, line: 187, baseType: !3902, offset: 1088)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2375)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !248, file: !73, line: 499, baseType: !259, size: 128, offset: 4224)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !248, file: !73, line: 502, baseType: !3905, size: 64, offset: 4352)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3907)
!3907 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !248, file: !73, line: 504, baseType: !3909, size: 64, offset: 4416)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !248, file: !73, line: 505, baseType: !459, size: 64, offset: 4480)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !248, file: !73, line: 510, baseType: !459, size: 64, offset: 4544)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !248, file: !73, line: 511, baseType: !3913, size: 64, offset: 4608)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3915)
!3915 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !248, file: !73, line: 513, baseType: !3917, size: 64, offset: 4672)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3919)
!3919 = !{!3920, !3921}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3918, file: !73, line: 293, baseType: !7, size: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3918, file: !73, line: 294, baseType: !226, size: 64, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !248, file: !73, line: 515, baseType: !259, size: 128, offset: 4736)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !248, file: !73, line: 526, baseType: !3924, offset: 4864)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3925, line: 5, elements: !286)
!3925 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !248, file: !73, line: 528, baseType: !3723, size: 64, offset: 4864)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !248, file: !73, line: 529, baseType: !3736, size: 64, offset: 4928)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !248, file: !73, line: 534, baseType: !551, size: 32, offset: 4992)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !248, file: !73, line: 535, baseType: !453, size: 32, offset: 5024)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !248, file: !73, line: 537, baseType: !272, offset: 5056)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !248, file: !73, line: 538, baseType: !259, size: 128, offset: 5056)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !248, file: !73, line: 540, baseType: !3933, size: 64, offset: 5184)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3935, line: 54, size: 960, elements: !3936)
!3935 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3936 = !{!3937, !3938, !3939, !3940, !3941, !3942, !3943, !3947, !3951, !3952, !3953, !3954, !3958, !3962, !3963}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3934, file: !3935, line: 55, baseType: !255, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3934, file: !3935, line: 56, baseType: !220, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3934, file: !3935, line: 58, baseType: !366, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3934, file: !3935, line: 59, baseType: !366, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3934, file: !3935, line: 60, baseType: !265, size: 64, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3934, file: !3935, line: 62, baseType: !3443, size: 64, offset: 320)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3934, file: !3935, line: 63, baseType: !3944, size: 64, offset: 384)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!314, !247, !3450}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3934, file: !3935, line: 65, baseType: !3948, size: 64, offset: 448)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !3933}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3934, file: !3935, line: 66, baseType: !3452, size: 64, offset: 512)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3934, file: !3935, line: 68, baseType: !3461, size: 64, offset: 576)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3934, file: !3935, line: 70, baseType: !3247, size: 64, offset: 640)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3934, file: !3935, line: 71, baseType: !3955, size: 64, offset: 704)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!2171, !247}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3934, file: !3935, line: 73, baseType: !3959, size: 64, offset: 768)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{null, !247, !3279, !3280}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3934, file: !3935, line: 75, baseType: !3456, size: 64, offset: 832)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3934, file: !3935, line: 77, baseType: !3573, size: 64, offset: 896)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !248, file: !73, line: 541, baseType: !366, size: 64, offset: 5248)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !248, file: !73, line: 543, baseType: !3452, size: 64, offset: 5312)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !248, file: !73, line: 544, baseType: !3967, size: 64, offset: 5376)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !248, file: !73, line: 545, baseType: !3970, size: 64, offset: 5440)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !248, file: !73, line: 547, baseType: !528, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !248, file: !73, line: 548, baseType: !528, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !248, file: !73, line: 549, baseType: !528, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !248, file: !73, line: 550, baseType: !528, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !243, file: !244, line: 147, baseType: !3977, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_devnode", file: !3979, line: 75, size: 6784, elements: !3980)
!3979 = !DIFile(filename: "./include/media/media-devnode.h", directory: "/home/lizy2001/genbc/linux")
!3980 = !{!3981, !3982, !3998, !3999, !4000, !4001, !4002, !4003}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "media_dev", scope: !3978, file: !3979, line: 76, baseType: !242, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3978, file: !3979, line: 79, baseType: !3983, size: 64, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3985)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_file_operations", file: !3979, line: 47, size: 512, elements: !3986)
!3986 = !{!3987, !3988, !3989, !3990, !3991, !3992, !3993, !3997}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3985, file: !3979, line: 48, baseType: !220, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3985, file: !3979, line: 49, baseType: !2917, size: 64, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3985, file: !3979, line: 50, baseType: !2922, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3985, file: !3979, line: 51, baseType: !2946, size: 64, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3985, file: !3979, line: 52, baseType: !2961, size: 64, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3985, file: !3979, line: 53, baseType: !2961, size: 64, offset: 320)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3985, file: !3979, line: 54, baseType: !3994, size: 64, offset: 384)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!298, !390}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3985, file: !3979, line: 55, baseType: !3994, size: 64, offset: 448)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3978, file: !3979, line: 82, baseType: !248, size: 5568, offset: 128)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !3978, file: !3979, line: 83, baseType: !3154, size: 832, offset: 5696)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3978, file: !3979, line: 84, baseType: !247, size: 64, offset: 6528)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3978, file: !3979, line: 87, baseType: !298, size: 32, offset: 6592)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3978, file: !3979, line: 88, baseType: !226, size: 64, offset: 6656)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3978, file: !3979, line: 91, baseType: !4004, size: 64, offset: 6720)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{null, !3977}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !243, file: !244, line: 149, baseType: !2744, size: 256, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !243, file: !244, line: 150, baseType: !2744, size: 256, offset: 384)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !243, file: !244, line: 151, baseType: !4010, size: 320, offset: 640)
!4010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 320, elements: !4011)
!4011 = !{!4012}
!4012 = !DISubrange(count: 40)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "bus_info", scope: !243, file: !244, line: 152, baseType: !2744, size: 256, offset: 960)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "hw_revision", scope: !243, file: !244, line: 153, baseType: !453, size: 32, offset: 1216)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "topology_version", scope: !243, file: !244, line: 155, baseType: !459, size: 64, offset: 1280)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !243, file: !244, line: 157, baseType: !453, size: 32, offset: 1344)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "entity_internal_idx", scope: !243, file: !244, line: 158, baseType: !4018, size: 128, offset: 1408)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3308, line: 244, size: 128, elements: !4019)
!4019 = !{!4020}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4018, file: !3308, line: 245, baseType: !777, size: 128)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "entity_internal_idx_max", scope: !243, file: !244, line: 159, baseType: !298, size: 32, offset: 1536)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !243, file: !244, line: 161, baseType: !259, size: 128, offset: 1600)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !243, file: !244, line: 162, baseType: !259, size: 128, offset: 1728)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "pads", scope: !243, file: !244, line: 163, baseType: !259, size: 128, offset: 1856)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !243, file: !244, line: 164, baseType: !259, size: 128, offset: 1984)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "entity_notify", scope: !243, file: !244, line: 167, baseType: !259, size: 128, offset: 2112)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "graph_mutex", scope: !243, file: !244, line: 170, baseType: !1211, size: 192, offset: 2240)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "pm_count_walk", scope: !243, file: !244, line: 171, baseType: !4029, size: 2240, offset: 2432)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_graph", file: !122, line: 88, size: 2240, elements: !4030)
!4030 = !{!4031, !4038, !4043}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4029, file: !122, line: 92, baseType: !4032, size: 2048)
!4032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4033, size: 2048, elements: !1778)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4029, file: !122, line: 89, size: 128, elements: !4034)
!4034 = !{!4035, !4037}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4033, file: !122, line: 90, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4033, file: !122, line: 91, baseType: !262, size: 64, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "ent_enum", scope: !4029, file: !122, line: 94, baseType: !4039, size: 128, offset: 2048)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity_enum", file: !122, line: 72, size: 128, elements: !4040)
!4040 = !{!4041, !4042}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4039, file: !122, line: 73, baseType: !3863, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "idx_max", scope: !4039, file: !122, line: 74, baseType: !298, size: 32, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !4029, file: !122, line: 95, baseType: !298, size: 32, offset: 2176)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "source_priv", scope: !243, file: !244, line: 173, baseType: !225, size: 64, offset: 4672)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "enable_source", scope: !243, file: !244, line: 174, baseType: !4046, size: 64, offset: 4736)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!298, !4036, !4049}
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_pipeline", file: !122, line: 104, size: 2304, elements: !4051)
!4051 = !{!4052, !4053}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "streaming_count", scope: !4050, file: !122, line: 105, baseType: !298, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !4050, file: !122, line: 106, baseType: !4029, size: 2240, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "disable_source", scope: !243, file: !244, line: 176, baseType: !4055, size: 64, offset: 4800)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{null, !4036}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !243, file: !244, line: 178, baseType: !4059, size: 64, offset: 4864)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4061)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_device_ops", file: !244, line: 65, size: 320, elements: !4062)
!4062 = !{!4063, !4103, !4109, !4113, !4117}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "link_notify", scope: !4061, file: !244, line: 66, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!298, !4067, !453, !7}
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_link", file: !122, line: 132, size: 704, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4094, !4100, !4101, !4102}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !4068, file: !122, line: 133, baseType: !239, size: 256)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4068, file: !122, line: 134, baseType: !259, size: 128, offset: 256)
!4072 = !DIDerivedType(tag: DW_TAG_member, scope: !4068, file: !122, line: 135, baseType: !4073, size: 64, offset: 384)
!4073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4068, file: !122, line: 135, size: 64, elements: !4074)
!4074 = !{!4075, !4077, !4086}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "gobj0", scope: !4073, file: !122, line: 136, baseType: !4076, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4073, file: !122, line: 137, baseType: !4078, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_pad", file: !122, line: 189, size: 448, elements: !4080)
!4080 = !{!4081, !4082, !4083, !4084, !4085}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !4079, file: !122, line: 190, baseType: !239, size: 256)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4079, file: !122, line: 191, baseType: !4036, size: 64, offset: 256)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4079, file: !122, line: 192, baseType: !897, size: 16, offset: 320)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "sig_type", scope: !4079, file: !122, line: 193, baseType: !121, size: 32, offset: 352)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4079, file: !122, line: 194, baseType: !226, size: 64, offset: 384)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !4073, file: !122, line: 138, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_interface", file: !122, line: 336, size: 448, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4093}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !4088, file: !122, line: 337, baseType: !239, size: 256)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4088, file: !122, line: 338, baseType: !259, size: 128, offset: 256)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4088, file: !122, line: 339, baseType: !453, size: 32, offset: 384)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4088, file: !122, line: 340, baseType: !453, size: 32, offset: 416)
!4094 = !DIDerivedType(tag: DW_TAG_member, scope: !4068, file: !122, line: 140, baseType: !4095, size: 64, offset: 448)
!4095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4068, file: !122, line: 140, size: 64, elements: !4096)
!4096 = !{!4097, !4098, !4099}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "gobj1", scope: !4095, file: !122, line: 141, baseType: !4076, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "sink", scope: !4095, file: !122, line: 142, baseType: !4078, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4095, file: !122, line: 143, baseType: !4036, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !4068, file: !122, line: 145, baseType: !4067, size: 64, offset: 512)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4068, file: !122, line: 146, baseType: !226, size: 64, offset: 576)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "is_backlink", scope: !4068, file: !122, line: 147, baseType: !528, size: 8, offset: 640)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "req_alloc", scope: !4061, file: !244, line: 68, baseType: !4104, size: 64, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!4107, !242}
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DICompositeType(tag: DW_TAG_structure_type, name: "media_request", file: !244, line: 68, flags: DIFlagFwdDecl)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "req_free", scope: !4061, file: !244, line: 69, baseType: !4110, size: 64, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{null, !4107}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "req_validate", scope: !4061, file: !244, line: 70, baseType: !4114, size: 64, offset: 192)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!298, !4107}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "req_queue", scope: !4061, file: !244, line: 71, baseType: !4110, size: 64, offset: 256)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "req_queue_mutex", scope: !243, file: !244, line: 180, baseType: !1211, size: 192, offset: 4928)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !243, file: !244, line: 181, baseType: !785, size: 32, offset: 5120)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !239, file: !122, line: 59, baseType: !453, size: 32, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !239, file: !122, line: 60, baseType: !259, size: 128, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !122, line: 292, baseType: !255, size: 64, offset: 256)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "obj_type", scope: !236, file: !122, line: 293, baseType: !128, size: 32, offset: 320)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !236, file: !122, line: 294, baseType: !453, size: 32, offset: 352)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !122, line: 295, baseType: !226, size: 64, offset: 384)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "num_pads", scope: !236, file: !122, line: 297, baseType: !897, size: 16, offset: 448)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "num_links", scope: !236, file: !122, line: 298, baseType: !897, size: 16, offset: 464)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "num_backlinks", scope: !236, file: !122, line: 299, baseType: !897, size: 16, offset: 480)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "internal_idx", scope: !236, file: !122, line: 300, baseType: !298, size: 32, offset: 512)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "pads", scope: !236, file: !122, line: 302, baseType: !4078, size: 64, offset: 576)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !236, file: !122, line: 303, baseType: !259, size: 128, offset: 640)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !236, file: !122, line: 305, baseType: !4133, size: 64, offset: 768)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4135)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity_operations", file: !122, line: 214, size: 192, elements: !4136)
!4136 = !{!4137, !4141, !4147}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "get_fwnode_pad", scope: !4135, file: !122, line: 215, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!298, !4036, !3810}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "link_setup", scope: !4135, file: !122, line: 217, baseType: !4142, size: 64, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!298, !4036, !4145, !4145, !453}
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4079)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "link_validate", scope: !4135, file: !122, line: 220, baseType: !4148, size: 64, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!298, !4067}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "stream_count", scope: !236, file: !122, line: 307, baseType: !298, size: 32, offset: 832)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !236, file: !122, line: 308, baseType: !298, size: 32, offset: 864)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !236, file: !122, line: 310, baseType: !4049, size: 64, offset: 896)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !236, file: !122, line: 317, baseType: !4155, size: 64, offset: 960)
!4155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !122, line: 312, size: 64, elements: !4156)
!4156 = !{!4157}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4155, file: !122, line: 316, baseType: !4158, size: 64)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4155, file: !122, line: 313, size: 64, elements: !4159)
!4159 = !{!4160, !4161}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4158, file: !122, line: 314, baseType: !453, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4158, file: !122, line: 315, baseType: !453, size: 32, offset: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !233, file: !157, line: 870, baseType: !259, size: 128, offset: 1024)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !233, file: !157, line: 871, baseType: !220, size: 64, offset: 1152)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "owner_v4l2_dev", scope: !233, file: !157, line: 872, baseType: !528, size: 8, offset: 1216)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !233, file: !157, line: 873, baseType: !453, size: 32, offset: 1248)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "v4l2_dev", scope: !233, file: !157, line: 874, baseType: !4167, size: 64, offset: 1280)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_device", file: !4169, line: 47, size: 960, elements: !4170)
!4169 = !DIFile(filename: "./include/media/v4l2-device.h", directory: "/home/lizy2001/genbc/linux")
!4170 = !{!4171, !4172, !4173, !4174, !4175, !4179, !4184, !4187, !4192, !4193}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4168, file: !4169, line: 48, baseType: !247, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !4168, file: !4169, line: 49, baseType: !242, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "subdevs", scope: !4168, file: !4169, line: 50, baseType: !259, size: 128, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4168, file: !4169, line: 51, baseType: !272, offset: 256)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4168, file: !4169, line: 52, baseType: !4176, size: 288, offset: 256)
!4176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 288, elements: !4177)
!4177 = !{!4178}
!4178 = !DISubrange(count: 36)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4168, file: !4169, line: 53, baseType: !4180, size: 64, offset: 576)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{null, !4183, !7, !225}
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !4168, file: !4169, line: 55, baseType: !4185, size: 64, offset: 640)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_handler", file: !134, line: 64, flags: DIFlagFwdDecl)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4168, file: !4169, line: 56, baseType: !4188, size: 128, offset: 704)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_prio_state", file: !134, line: 111, size: 128, elements: !4189)
!4189 = !{!4190}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "prios", scope: !4188, file: !134, line: 112, baseType: !4191, size: 128)
!4191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 128, elements: !1193)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4168, file: !4169, line: 57, baseType: !3421, size: 32, offset: 832)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4168, file: !4169, line: 58, baseType: !4194, size: 64, offset: 896)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !4167}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !233, file: !157, line: 875, baseType: !4198, size: 64, offset: 1344)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4200)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_ops", file: !157, line: 745, size: 512, elements: !4201)
!4201 = !{!4202, !4335, !4441, !4453, !4548, !4628, !4664, !4671}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !4200, file: !157, line: 746, baseType: !4203, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4205)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_core_ops", file: !157, line: 188, size: 704, elements: !4206)
!4206 = !{!4207, !4211, !4223, !4227, !4228, !4229, !4230, !4234, !4238, !4242, !4334}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "log_status", scope: !4205, file: !157, line: 189, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!298, !4183}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "s_io_pin_config", scope: !4205, file: !157, line: 190, baseType: !4212, size: 64, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!298, !4183, !360, !4215}
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_io_pin_config", file: !157, line: 132, size: 64, elements: !4217)
!4217 = !{!4218, !4219, !4220, !4221, !4222}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4216, file: !157, line: 133, baseType: !453, size: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4216, file: !157, line: 134, baseType: !1390, size: 8, offset: 32)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !4216, file: !157, line: 135, baseType: !1390, size: 8, offset: 40)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4216, file: !157, line: 136, baseType: !1390, size: 8, offset: 48)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4216, file: !157, line: 137, baseType: !1390, size: 8, offset: 56)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4205, file: !157, line: 192, baseType: !4224, size: 64, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!298, !4183, !453}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "load_fw", scope: !4205, file: !157, line: 193, baseType: !4208, size: 64, offset: 192)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4205, file: !157, line: 194, baseType: !4224, size: 64, offset: 256)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "s_gpio", scope: !4205, file: !157, line: 195, baseType: !4224, size: 64, offset: 320)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4205, file: !157, line: 196, baseType: !4231, size: 64, offset: 384)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!183, !4183, !7, !225}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "s_power", scope: !4205, file: !157, line: 205, baseType: !4235, size: 64, offset: 448)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!298, !4183, !298}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_service_routine", scope: !4205, file: !157, line: 206, baseType: !4239, size: 64, offset: 512)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!298, !4183, !453, !929}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "subscribe_event", scope: !4205, file: !157, line: 208, baseType: !4243, size: 64, offset: 576)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!298, !4183, !4246, !4324}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_fh", file: !4248, line: 42, size: 1024, elements: !4249)
!4248 = !DIFile(filename: "./include/media/v4l2-fh.h", directory: "/home/lizy2001/genbc/linux")
!4249 = !{!4250, !4251, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4247, file: !4248, line: 43, baseType: !259, size: 128)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !4247, file: !4248, line: 44, baseType: !4252, size: 64, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_device", file: !134, line: 263, size: 10624, elements: !4254)
!4254 = !{!4255, !4256, !4263, !4264, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4287, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4301, !4305, !4309, !4311}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !4253, file: !134, line: 266, baseType: !236, size: 1024)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "intf_devnode", scope: !4253, file: !134, line: 267, baseType: !4257, size: 64, offset: 1024)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_intf_devnode", file: !122, line: 350, size: 512, elements: !4259)
!4259 = !{!4260, !4261, !4262}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !4258, file: !122, line: 351, baseType: !4088, size: 448)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4258, file: !122, line: 354, baseType: !453, size: 32, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4258, file: !122, line: 355, baseType: !453, size: 32, offset: 480)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4253, file: !134, line: 268, baseType: !4050, size: 2304, offset: 1088)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4253, file: !134, line: 270, baseType: !4265, size: 64, offset: 3392)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4267)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_file_operations", file: !134, line: 200, size: 576, elements: !4268)
!4268 = !{!4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4267, file: !134, line: 201, baseType: !220, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4267, file: !134, line: 202, baseType: !2917, size: 64, offset: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4267, file: !134, line: 203, baseType: !2922, size: 64, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4267, file: !134, line: 204, baseType: !2946, size: 64, offset: 192)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4267, file: !134, line: 205, baseType: !2961, size: 64, offset: 256)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4267, file: !134, line: 209, baseType: !1139, size: 64, offset: 320)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4267, file: !134, line: 211, baseType: !2966, size: 64, offset: 384)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4267, file: !134, line: 212, baseType: !3994, size: 64, offset: 448)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4267, file: !134, line: 213, baseType: !3994, size: 64, offset: 512)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "device_caps", scope: !4253, file: !134, line: 272, baseType: !453, size: 32, offset: 3456)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4253, file: !134, line: 275, baseType: !248, size: 5568, offset: 3520)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !4253, file: !134, line: 276, baseType: !3153, size: 64, offset: 9088)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "v4l2_dev", scope: !4253, file: !134, line: 278, baseType: !4167, size: 64, offset: 9152)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "dev_parent", scope: !4253, file: !134, line: 279, baseType: !247, size: 64, offset: 9216)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !4253, file: !134, line: 281, baseType: !4185, size: 64, offset: 9280)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4253, file: !134, line: 283, baseType: !4285, size: 64, offset: 9344)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_queue", file: !134, line: 283, flags: DIFlagFwdDecl)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4253, file: !134, line: 285, baseType: !4288, size: 64, offset: 9408)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4253, file: !134, line: 288, baseType: !2744, size: 256, offset: 9472)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "vfl_type", scope: !4253, file: !134, line: 289, baseType: !133, size: 32, offset: 9728)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "vfl_dir", scope: !4253, file: !134, line: 290, baseType: !143, size: 32, offset: 9760)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4253, file: !134, line: 291, baseType: !298, size: 32, offset: 9792)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4253, file: !134, line: 292, baseType: !897, size: 16, offset: 9824)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4253, file: !134, line: 293, baseType: !226, size: 64, offset: 9856)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4253, file: !134, line: 294, baseType: !298, size: 32, offset: 9920)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "fh_lock", scope: !4253, file: !134, line: 297, baseType: !272, offset: 9952)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "fh_list", scope: !4253, file: !134, line: 298, baseType: !259, size: 128, offset: 9984)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "dev_debug", scope: !4253, file: !134, line: 300, baseType: !298, size: 32, offset: 10112)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "tvnorms", scope: !4253, file: !134, line: 302, baseType: !4300, size: 64, offset: 10176)
!4300 = !DIDerivedType(tag: DW_TAG_typedef, name: "v4l2_std_id", file: !149, line: 1260, baseType: !460)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4253, file: !134, line: 305, baseType: !4302, size: 64, offset: 10240)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{null, !4252}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl_ops", scope: !4253, file: !134, line: 306, baseType: !4306, size: 64, offset: 10304)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4308)
!4308 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ioctl_ops", file: !134, line: 306, flags: DIFlagFwdDecl)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "valid_ioctls", scope: !4253, file: !134, line: 307, baseType: !4310, size: 192, offset: 10368)
!4310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 192, elements: !315)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4253, file: !134, line: 309, baseType: !4312, size: 64, offset: 10560)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !4247, file: !4248, line: 45, baseType: !4185, size: 64, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4247, file: !4248, line: 46, baseType: !148, size: 32, offset: 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4247, file: !4248, line: 49, baseType: !1524, size: 128, offset: 320)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "subscribe_lock", scope: !4247, file: !4248, line: 50, baseType: !1211, size: 192, offset: 448)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "subscribed", scope: !4247, file: !4248, line: 51, baseType: !259, size: 128, offset: 640)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !4247, file: !4248, line: 52, baseType: !259, size: 128, offset: 768)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "navailable", scope: !4247, file: !4248, line: 53, baseType: !7, size: 32, offset: 896)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !4247, file: !4248, line: 54, baseType: !453, size: 32, offset: 928)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "m2m_ctx", scope: !4247, file: !4248, line: 56, baseType: !4322, size: 64, offset: 960)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_m2m_ctx", file: !4248, line: 56, flags: DIFlagFwdDecl)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_event_subscription", file: !149, line: 2400, size: 256, elements: !4326)
!4326 = !{!4327, !4328, !4329, !4330}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4325, file: !149, line: 2401, baseType: !455, size: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4325, file: !149, line: 2402, baseType: !455, size: 32, offset: 32)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4325, file: !149, line: 2403, baseType: !455, size: 32, offset: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4325, file: !149, line: 2404, baseType: !4331, size: 160, offset: 96)
!4331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 160, elements: !4332)
!4332 = !{!4333}
!4333 = !DISubrange(count: 5)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "unsubscribe_event", scope: !4205, file: !157, line: 210, baseType: !4243, size: 64, offset: 640)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !4200, file: !157, line: 747, baseType: !4336, size: 64, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4338)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_tuner_ops", file: !157, line: 264, size: 704, elements: !4339)
!4339 = !{!4340, !4341, !4342, !4355, !4360, !4376, !4396, !4402, !4418, !4424, !4430}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4338, file: !157, line: 265, baseType: !4208, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "s_radio", scope: !4338, file: !157, line: 266, baseType: !4208, size: 64, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "s_frequency", scope: !4338, file: !157, line: 267, baseType: !4343, size: 64, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!298, !4183, !4346}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4348)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_frequency", file: !149, line: 1906, size: 352, elements: !4349)
!4349 = !{!4350, !4351, !4352, !4353}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !4348, file: !149, line: 1907, baseType: !455, size: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4348, file: !149, line: 1908, baseType: !455, size: 32, offset: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4348, file: !149, line: 1909, baseType: !455, size: 32, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4348, file: !149, line: 1910, baseType: !4354, size: 256, offset: 96)
!4354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 256, elements: !1368)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "g_frequency", scope: !4338, file: !157, line: 268, baseType: !4356, size: 64, offset: 192)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!298, !4183, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "enum_freq_bands", scope: !4338, file: !157, line: 269, baseType: !4361, size: 64, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!298, !4183, !4364}
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_frequency_band", file: !149, line: 1917, size: 512, elements: !4366)
!4366 = !{!4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !4365, file: !149, line: 1918, baseType: !455, size: 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4365, file: !149, line: 1919, baseType: !455, size: 32, offset: 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4365, file: !149, line: 1920, baseType: !455, size: 32, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !4365, file: !149, line: 1921, baseType: !455, size: 32, offset: 96)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "rangelow", scope: !4365, file: !149, line: 1922, baseType: !455, size: 32, offset: 128)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "rangehigh", scope: !4365, file: !149, line: 1923, baseType: !455, size: 32, offset: 160)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4365, file: !149, line: 1924, baseType: !455, size: 32, offset: 192)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4365, file: !149, line: 1925, baseType: !4375, size: 288, offset: 224)
!4375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 288, elements: !3530)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "g_tuner", scope: !4338, file: !157, line: 270, baseType: !4377, size: 64, offset: 320)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!298, !4183, !4380}
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_tuner", file: !149, line: 1849, size: 672, elements: !4382)
!4382 = !{!4383, !4384, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4381, file: !149, line: 1850, baseType: !455, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4381, file: !149, line: 1851, baseType: !4385, size: 256, offset: 32)
!4385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 256, elements: !2274)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4381, file: !149, line: 1852, baseType: !455, size: 32, offset: 288)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !4381, file: !149, line: 1853, baseType: !455, size: 32, offset: 320)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "rangelow", scope: !4381, file: !149, line: 1854, baseType: !455, size: 32, offset: 352)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "rangehigh", scope: !4381, file: !149, line: 1855, baseType: !455, size: 32, offset: 384)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "rxsubchans", scope: !4381, file: !149, line: 1856, baseType: !455, size: 32, offset: 416)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4381, file: !149, line: 1857, baseType: !455, size: 32, offset: 448)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4381, file: !149, line: 1858, baseType: !1483, size: 32, offset: 480)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "afc", scope: !4381, file: !149, line: 1859, baseType: !1483, size: 32, offset: 512)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4381, file: !149, line: 1860, baseType: !4395, size: 128, offset: 544)
!4395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 128, elements: !1193)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "s_tuner", scope: !4338, file: !157, line: 271, baseType: !4397, size: 64, offset: 384)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!298, !4183, !4400}
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4381)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "g_modulator", scope: !4338, file: !157, line: 272, baseType: !4403, size: 64, offset: 448)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!298, !4183, !4406}
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_modulator", file: !149, line: 1863, size: 544, elements: !4408)
!4408 = !{!4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4407, file: !149, line: 1864, baseType: !455, size: 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4407, file: !149, line: 1865, baseType: !4385, size: 256, offset: 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !4407, file: !149, line: 1866, baseType: !455, size: 32, offset: 288)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "rangelow", scope: !4407, file: !149, line: 1867, baseType: !455, size: 32, offset: 320)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "rangehigh", scope: !4407, file: !149, line: 1868, baseType: !455, size: 32, offset: 352)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "txsubchans", scope: !4407, file: !149, line: 1869, baseType: !455, size: 32, offset: 384)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4407, file: !149, line: 1870, baseType: !455, size: 32, offset: 416)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4407, file: !149, line: 1871, baseType: !4417, size: 96, offset: 448)
!4417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 96, elements: !315)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "s_modulator", scope: !4338, file: !157, line: 273, baseType: !4419, size: 64, offset: 512)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!298, !4183, !4422}
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4407)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "s_type_addr", scope: !4338, file: !157, line: 274, baseType: !4425, size: 64, offset: 576)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!298, !4183, !4428}
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DICompositeType(tag: DW_TAG_structure_type, name: "tuner_setup", file: !157, line: 39, flags: DIFlagFwdDecl)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "s_config", scope: !4338, file: !157, line: 275, baseType: !4431, size: 64, offset: 640)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!298, !4183, !4434}
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4436)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_priv_tun_config", file: !4437, line: 336, size: 128, elements: !4438)
!4437 = !DIFile(filename: "./include/media/v4l2-common.h", directory: "/home/lizy2001/genbc/linux")
!4438 = !{!4439, !4440}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "tuner", scope: !4436, file: !4437, line: 337, baseType: !298, size: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4436, file: !4437, line: 338, baseType: !225, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "audio", scope: !4200, file: !157, line: 748, baseType: !4442, size: 64, offset: 128)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4444)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_audio_ops", file: !157, line: 304, size: 256, elements: !4445)
!4445 = !{!4446, !4447, !4448, !4452}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "s_clock_freq", scope: !4444, file: !157, line: 305, baseType: !4224, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "s_i2s_clock_freq", scope: !4444, file: !157, line: 306, baseType: !4224, size: 64, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "s_routing", scope: !4444, file: !157, line: 307, baseType: !4449, size: 64, offset: 128)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!298, !4183, !453, !453, !453}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "s_stream", scope: !4444, file: !157, line: 308, baseType: !4235, size: 64, offset: 192)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "video", scope: !4200, file: !157, line: 749, baseType: !4454, size: 64, offset: 192)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4456)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_video_ops", file: !157, line: 409, size: 1152, elements: !4457)
!4457 = !{!4458, !4459, !4463, !4468, !4472, !4473, !4474, !4475, !4476, !4477, !4481, !4482, !4491, !4502, !4503, !4542, !4543, !4544}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "s_routing", scope: !4456, file: !157, line: 410, baseType: !4449, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "s_crystal_freq", scope: !4456, file: !157, line: 411, baseType: !4460, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!298, !4183, !453, !453}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "g_std", scope: !4456, file: !157, line: 412, baseType: !4464, size: 64, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!298, !4183, !4467}
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "s_std", scope: !4456, file: !157, line: 413, baseType: !4469, size: 64, offset: 192)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!298, !4183, !4300}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "s_std_output", scope: !4456, file: !157, line: 414, baseType: !4469, size: 64, offset: 256)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "g_std_output", scope: !4456, file: !157, line: 415, baseType: !4464, size: 64, offset: 320)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "querystd", scope: !4456, file: !157, line: 416, baseType: !4464, size: 64, offset: 384)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "g_tvnorms", scope: !4456, file: !157, line: 417, baseType: !4464, size: 64, offset: 448)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "g_tvnorms_output", scope: !4456, file: !157, line: 418, baseType: !4464, size: 64, offset: 512)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "g_input_status", scope: !4456, file: !157, line: 419, baseType: !4478, size: 64, offset: 576)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!298, !4183, !1453}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "s_stream", scope: !4456, file: !157, line: 420, baseType: !4235, size: 64, offset: 640)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "g_pixelaspect", scope: !4456, file: !157, line: 421, baseType: !4483, size: 64, offset: 704)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!298, !4183, !4486}
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_fract", file: !149, line: 421, size: 64, elements: !4488)
!4488 = !{!4489, !4490}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "numerator", scope: !4487, file: !149, line: 422, baseType: !455, size: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "denominator", scope: !4487, file: !149, line: 423, baseType: !455, size: 32, offset: 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "g_frame_interval", scope: !4456, file: !157, line: 422, baseType: !4492, size: 64, offset: 768)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!298, !4183, !4495}
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_frame_interval", file: !4497, line: 115, size: 384, elements: !4498)
!4497 = !DIFile(filename: "./include/uapi/linux/v4l2-subdev.h", directory: "/home/lizy2001/genbc/linux")
!4498 = !{!4499, !4500, !4501}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4496, file: !4497, line: 116, baseType: !455, size: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4496, file: !4497, line: 117, baseType: !4487, size: 64, offset: 32)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4496, file: !4497, line: 118, baseType: !4375, size: 288, offset: 96)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "s_frame_interval", scope: !4456, file: !157, line: 424, baseType: !4492, size: 64, offset: 832)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "s_dv_timings", scope: !4456, file: !157, line: 426, baseType: !4504, size: 64, offset: 896)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!298, !4183, !4507}
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_dv_timings", file: !149, line: 1563, size: 1056, elements: !4509)
!4509 = !{!4510, !4511}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4508, file: !149, line: 1564, baseType: !455, size: 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, scope: !4508, file: !149, line: 1565, baseType: !4512, size: 1024, offset: 32)
!4512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4508, file: !149, line: 1565, size: 1024, elements: !4513)
!4513 = !{!4514, !4540}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "bt", scope: !4512, file: !149, line: 1566, baseType: !4515, size: 992)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_bt_timings", file: !149, line: 1440, size: 992, elements: !4516)
!4516 = !{!4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4515, file: !149, line: 1441, baseType: !455, size: 32)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4515, file: !149, line: 1442, baseType: !455, size: 32, offset: 32)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !4515, file: !149, line: 1443, baseType: !455, size: 32, offset: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "polarities", scope: !4515, file: !149, line: 1444, baseType: !455, size: 32, offset: 96)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "pixelclock", scope: !4515, file: !149, line: 1445, baseType: !460, size: 64, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "hfrontporch", scope: !4515, file: !149, line: 1446, baseType: !455, size: 32, offset: 192)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "hsync", scope: !4515, file: !149, line: 1447, baseType: !455, size: 32, offset: 224)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "hbackporch", scope: !4515, file: !149, line: 1448, baseType: !455, size: 32, offset: 256)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "vfrontporch", scope: !4515, file: !149, line: 1449, baseType: !455, size: 32, offset: 288)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "vsync", scope: !4515, file: !149, line: 1450, baseType: !455, size: 32, offset: 320)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "vbackporch", scope: !4515, file: !149, line: 1451, baseType: !455, size: 32, offset: 352)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "il_vfrontporch", scope: !4515, file: !149, line: 1452, baseType: !455, size: 32, offset: 384)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "il_vsync", scope: !4515, file: !149, line: 1453, baseType: !455, size: 32, offset: 416)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "il_vbackporch", scope: !4515, file: !149, line: 1454, baseType: !455, size: 32, offset: 448)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "standards", scope: !4515, file: !149, line: 1455, baseType: !455, size: 32, offset: 480)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4515, file: !149, line: 1456, baseType: !455, size: 32, offset: 512)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect", scope: !4515, file: !149, line: 1457, baseType: !4487, size: 64, offset: 544)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "cea861_vic", scope: !4515, file: !149, line: 1458, baseType: !1391, size: 8, offset: 608)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_vic", scope: !4515, file: !149, line: 1459, baseType: !1391, size: 8, offset: 616)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4515, file: !149, line: 1460, baseType: !4537, size: 368, offset: 624)
!4537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 368, elements: !4538)
!4538 = !{!4539}
!4539 = !DISubrange(count: 46)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4512, file: !149, line: 1567, baseType: !4541, size: 1024)
!4541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 1024, elements: !2274)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "g_dv_timings", scope: !4456, file: !157, line: 428, baseType: !4504, size: 64, offset: 960)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "query_dv_timings", scope: !4456, file: !157, line: 430, baseType: !4504, size: 64, offset: 1024)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "s_rx_buffer", scope: !4456, file: !157, line: 432, baseType: !4545, size: 64, offset: 1088)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!298, !4183, !225, !2727}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "vbi", scope: !4200, file: !157, line: 750, baseType: !4549, size: 64, offset: 256)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4551)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_vbi_ops", file: !157, line: 471, size: 448, elements: !4552)
!4552 = !{!4553, !4565, !4581, !4586, !4600, !4616, !4627}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "decode_vbi_line", scope: !4551, file: !157, line: 472, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!298, !4183, !4557}
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_decode_vbi_line", file: !157, line: 52, size: 192, elements: !4559)
!4559 = !{!4560, !4561, !4563, !4564}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "is_second_field", scope: !4558, file: !157, line: 53, baseType: !453, size: 32)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4558, file: !157, line: 54, baseType: !4562, size: 64, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4558, file: !157, line: 55, baseType: !453, size: 32, offset: 128)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4558, file: !157, line: 56, baseType: !453, size: 32, offset: 160)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "s_vbi_data", scope: !4551, file: !157, line: 473, baseType: !4566, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!298, !4183, !4569}
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4571)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_sliced_vbi_data", file: !149, line: 2152, size: 512, elements: !4572)
!4572 = !{!4573, !4574, !4575, !4576, !4577}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4571, file: !149, line: 2153, baseType: !455, size: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !4571, file: !149, line: 2154, baseType: !455, size: 32, offset: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4571, file: !149, line: 2155, baseType: !455, size: 32, offset: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4571, file: !149, line: 2156, baseType: !455, size: 32, offset: 96)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4571, file: !149, line: 2157, baseType: !4578, size: 384, offset: 128)
!4578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 384, elements: !4579)
!4579 = !{!4580}
!4580 = !DISubrange(count: 48)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "g_vbi_data", scope: !4551, file: !157, line: 474, baseType: !4582, size: 64, offset: 128)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!298, !4183, !4585}
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "g_sliced_vbi_cap", scope: !4551, file: !157, line: 475, baseType: !4587, size: 64, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!298, !4183, !4590}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_sliced_vbi_cap", file: !149, line: 2141, size: 928, elements: !4592)
!4592 = !{!4593, !4594, !4598, !4599}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "service_set", scope: !4591, file: !149, line: 2142, baseType: !898, size: 16)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "service_lines", scope: !4591, file: !149, line: 2147, baseType: !4595, size: 768, offset: 16)
!4595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 768, elements: !4596)
!4596 = !{!1613, !4597}
!4597 = !DISubrange(count: 24)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4591, file: !149, line: 2148, baseType: !455, size: 32, offset: 800)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4591, file: !149, line: 2149, baseType: !4417, size: 96, offset: 832)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "s_raw_fmt", scope: !4551, file: !157, line: 476, baseType: !4601, size: 64, offset: 256)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!298, !4183, !4604}
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_vbi_format", file: !149, line: 2089, size: 352, elements: !4606)
!4606 = !{!4607, !4608, !4609, !4610, !4611, !4613, !4614, !4615}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_rate", scope: !4605, file: !149, line: 2090, baseType: !455, size: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4605, file: !149, line: 2091, baseType: !455, size: 32, offset: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "samples_per_line", scope: !4605, file: !149, line: 2092, baseType: !455, size: 32, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "sample_format", scope: !4605, file: !149, line: 2093, baseType: !455, size: 32, offset: 96)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4605, file: !149, line: 2094, baseType: !4612, size: 64, offset: 128)
!4612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1483, size: 64, elements: !1612)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4605, file: !149, line: 2095, baseType: !1611, size: 64, offset: 192)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4605, file: !149, line: 2096, baseType: !455, size: 32, offset: 256)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4605, file: !149, line: 2097, baseType: !1611, size: 64, offset: 288)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "g_sliced_fmt", scope: !4551, file: !157, line: 477, baseType: !4617, size: 64, offset: 320)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!298, !4183, !4620}
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_sliced_vbi_format", file: !149, line: 2117, size: 896, elements: !4622)
!4622 = !{!4623, !4624, !4625, !4626}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "service_set", scope: !4621, file: !149, line: 2118, baseType: !898, size: 16)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "service_lines", scope: !4621, file: !149, line: 2123, baseType: !4595, size: 768, offset: 16)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "io_size", scope: !4621, file: !149, line: 2124, baseType: !455, size: 32, offset: 800)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4621, file: !149, line: 2125, baseType: !1611, size: 64, offset: 832)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "s_sliced_fmt", scope: !4551, file: !157, line: 478, baseType: !4617, size: 64, offset: 384)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ir", scope: !4200, file: !157, line: 751, baseType: !4629, size: 64, offset: 320)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4631)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_ir_ops", file: !157, line: 589, size: 384, elements: !4632)
!4632 = !{!4633, !4638, !4660, !4661, !4662, !4663}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "rx_read", scope: !4631, file: !157, line: 591, baseType: !4634, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!298, !4183, !4562, !360, !4637}
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "rx_g_parameters", scope: !4631, file: !157, line: 594, baseType: !4639, size: 64, offset: 64)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!298, !4183, !4642}
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_ir_parameters", file: !157, line: 530, size: 352, elements: !4644)
!4644 = !{!4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_data_element", scope: !4643, file: !157, line: 531, baseType: !7, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4643, file: !157, line: 532, baseType: !156, size: 32, offset: 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4643, file: !157, line: 534, baseType: !528, size: 8, offset: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_enable", scope: !4643, file: !157, line: 535, baseType: !528, size: 8, offset: 72)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4643, file: !157, line: 536, baseType: !528, size: 8, offset: 80)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4643, file: !157, line: 538, baseType: !528, size: 8, offset: 88)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "max_pulse_width", scope: !4643, file: !157, line: 539, baseType: !453, size: 32, offset: 96)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_freq", scope: !4643, file: !157, line: 540, baseType: !7, size: 32, offset: 128)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !4643, file: !157, line: 541, baseType: !7, size: 32, offset: 160)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "invert_level", scope: !4643, file: !157, line: 542, baseType: !528, size: 8, offset: 192)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "invert_carrier_sense", scope: !4643, file: !157, line: 545, baseType: !528, size: 8, offset: 200)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "noise_filter_min_width", scope: !4643, file: !157, line: 548, baseType: !453, size: 32, offset: 224)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_range_lower", scope: !4643, file: !157, line: 549, baseType: !7, size: 32, offset: 256)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_range_upper", scope: !4643, file: !157, line: 550, baseType: !7, size: 32, offset: 288)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4643, file: !157, line: 551, baseType: !453, size: 32, offset: 320)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "rx_s_parameters", scope: !4631, file: !157, line: 596, baseType: !4639, size: 64, offset: 128)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "tx_write", scope: !4631, file: !157, line: 600, baseType: !4634, size: 64, offset: 192)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "tx_g_parameters", scope: !4631, file: !157, line: 603, baseType: !4639, size: 64, offset: 256)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "tx_s_parameters", scope: !4631, file: !157, line: 605, baseType: !4639, size: 64, offset: 320)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "sensor", scope: !4200, file: !157, line: 752, baseType: !4665, size: 64, offset: 384)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4667)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_sensor_ops", file: !157, line: 491, size: 128, elements: !4668)
!4668 = !{!4669, !4670}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "g_skip_top_lines", scope: !4667, file: !157, line: 492, baseType: !4478, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "g_skip_frames", scope: !4667, file: !157, line: 493, baseType: !4478, size: 64, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4200, file: !157, line: 753, baseType: !4672, size: 64, offset: 448)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4674)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_pad_ops", file: !157, line: 688, size: 1088, elements: !4675)
!4675 = !{!4676, !4712, !4728, !4744, !4759, !4770, !4771, !4784, !4785, !4799, !4800, !4827, !4838, !4842, !4857, !4858, !4867}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "init_cfg", scope: !4674, file: !157, line: 689, baseType: !4677, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!298, !4183, !4680}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_pad_config", file: !157, line: 620, size: 640, elements: !4682)
!4682 = !{!4683, !4704, !4711}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "try_fmt", scope: !4681, file: !157, line: 621, baseType: !4684, size: 384)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mbus_framefmt", file: !4685, line: 35, size: 384, elements: !4686)
!4685 = !DIFile(filename: "./include/uapi/linux/v4l2-mediabus.h", directory: "/home/lizy2001/genbc/linux")
!4686 = !{!4687, !4688, !4689, !4690, !4691, !4692, !4697, !4698, !4699, !4700}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4684, file: !4685, line: 36, baseType: !455, size: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4684, file: !4685, line: 37, baseType: !455, size: 32, offset: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4684, file: !4685, line: 38, baseType: !455, size: 32, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !4684, file: !4685, line: 39, baseType: !455, size: 32, offset: 96)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4684, file: !4685, line: 40, baseType: !455, size: 32, offset: 128)
!4692 = !DIDerivedType(tag: DW_TAG_member, scope: !4684, file: !4685, line: 41, baseType: !4693, size: 16, offset: 160)
!4693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4684, file: !4685, line: 41, size: 16, elements: !4694)
!4694 = !{!4695, !4696}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_enc", scope: !4693, file: !4685, line: 43, baseType: !898, size: 16)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "hsv_enc", scope: !4693, file: !4685, line: 45, baseType: !898, size: 16)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "quantization", scope: !4684, file: !4685, line: 47, baseType: !898, size: 16, offset: 176)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_func", scope: !4684, file: !4685, line: 48, baseType: !898, size: 16, offset: 192)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4684, file: !4685, line: 49, baseType: !898, size: 16, offset: 208)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4684, file: !4685, line: 50, baseType: !4701, size: 160, offset: 224)
!4701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 160, elements: !4702)
!4702 = !{!4703}
!4703 = !DISubrange(count: 10)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "try_crop", scope: !4681, file: !157, line: 622, baseType: !4705, size: 128, offset: 384)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_rect", file: !149, line: 414, size: 128, elements: !4706)
!4706 = !{!4707, !4708, !4709, !4710}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !4705, file: !149, line: 415, baseType: !1483, size: 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !4705, file: !149, line: 416, baseType: !1483, size: 32, offset: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4705, file: !149, line: 417, baseType: !455, size: 32, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4705, file: !149, line: 418, baseType: !455, size: 32, offset: 96)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "try_compose", scope: !4681, file: !157, line: 623, baseType: !4705, size: 128, offset: 512)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "enum_mbus_code", scope: !4674, file: !157, line: 691, baseType: !4713, size: 64, offset: 64)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!298, !4183, !4680, !4716}
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_mbus_code_enum", file: !4497, line: 82, size: 384, elements: !4718)
!4718 = !{!4719, !4720, !4721, !4722, !4723, !4724}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4717, file: !4497, line: 83, baseType: !455, size: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4717, file: !4497, line: 84, baseType: !455, size: 32, offset: 32)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4717, file: !4497, line: 85, baseType: !455, size: 32, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !4717, file: !4497, line: 86, baseType: !455, size: 32, offset: 96)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4717, file: !4497, line: 87, baseType: !455, size: 32, offset: 128)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4717, file: !4497, line: 88, baseType: !4725, size: 224, offset: 160)
!4725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 224, elements: !4726)
!4726 = !{!4727}
!4727 = !DISubrange(count: 7)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "enum_frame_size", scope: !4674, file: !157, line: 694, baseType: !4729, size: 64, offset: 128)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!298, !4183, !4680, !4732}
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_frame_size_enum", file: !4497, line: 98, size: 512, elements: !4734)
!4734 = !{!4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4733, file: !4497, line: 99, baseType: !455, size: 32)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4733, file: !4497, line: 100, baseType: !455, size: 32, offset: 32)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4733, file: !4497, line: 101, baseType: !455, size: 32, offset: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4733, file: !4497, line: 102, baseType: !455, size: 32, offset: 96)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4733, file: !4497, line: 103, baseType: !455, size: 32, offset: 128)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4733, file: !4497, line: 104, baseType: !455, size: 32, offset: 160)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4733, file: !4497, line: 105, baseType: !455, size: 32, offset: 192)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !4733, file: !4497, line: 106, baseType: !455, size: 32, offset: 224)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4733, file: !4497, line: 107, baseType: !4354, size: 256, offset: 256)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "enum_frame_interval", scope: !4674, file: !157, line: 697, baseType: !4745, size: 64, offset: 192)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!298, !4183, !4680, !4748}
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_frame_interval_enum", file: !4497, line: 131, size: 512, elements: !4750)
!4750 = !{!4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4749, file: !4497, line: 132, baseType: !455, size: 32)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4749, file: !4497, line: 133, baseType: !455, size: 32, offset: 32)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4749, file: !4497, line: 134, baseType: !455, size: 32, offset: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4749, file: !4497, line: 135, baseType: !455, size: 32, offset: 96)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4749, file: !4497, line: 136, baseType: !455, size: 32, offset: 128)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4749, file: !4497, line: 137, baseType: !4487, size: 64, offset: 160)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !4749, file: !4497, line: 138, baseType: !455, size: 32, offset: 224)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4749, file: !4497, line: 139, baseType: !4354, size: 256, offset: 256)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "get_fmt", scope: !4674, file: !157, line: 700, baseType: !4760, size: 64, offset: 256)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!298, !4183, !4680, !4763}
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_format", file: !4497, line: 48, size: 704, elements: !4765)
!4765 = !{!4766, !4767, !4768, !4769}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !4764, file: !4497, line: 49, baseType: !455, size: 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4764, file: !4497, line: 50, baseType: !455, size: 32, offset: 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !4764, file: !4497, line: 51, baseType: !4684, size: 384, offset: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4764, file: !4497, line: 52, baseType: !4354, size: 256, offset: 448)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "set_fmt", scope: !4674, file: !157, line: 703, baseType: !4760, size: 64, offset: 320)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "get_selection", scope: !4674, file: !157, line: 706, baseType: !4772, size: 64, offset: 384)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!298, !4183, !4680, !4775}
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_selection", file: !4497, line: 157, size: 512, elements: !4777)
!4777 = !{!4778, !4779, !4780, !4781, !4782, !4783}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !4776, file: !4497, line: 158, baseType: !455, size: 32)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4776, file: !4497, line: 159, baseType: !455, size: 32, offset: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4776, file: !4497, line: 160, baseType: !455, size: 32, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4776, file: !4497, line: 161, baseType: !455, size: 32, offset: 96)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !4776, file: !4497, line: 162, baseType: !4705, size: 128, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4776, file: !4497, line: 163, baseType: !4354, size: 256, offset: 256)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "set_selection", scope: !4674, file: !157, line: 709, baseType: !4772, size: 64, offset: 448)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "get_edid", scope: !4674, file: !157, line: 712, baseType: !4786, size: 64, offset: 512)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!298, !4183, !4789}
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_edid", file: !4791, line: 87, size: 320, elements: !4792)
!4791 = !DIFile(filename: "./include/uapi/linux/v4l2-common.h", directory: "/home/lizy2001/genbc/linux")
!4792 = !{!4793, !4794, !4795, !4796, !4797}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4790, file: !4791, line: 88, baseType: !455, size: 32)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "start_block", scope: !4790, file: !4791, line: 89, baseType: !455, size: 32, offset: 32)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4790, file: !4791, line: 90, baseType: !455, size: 32, offset: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4790, file: !4791, line: 91, baseType: !4331, size: 160, offset: 96)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "edid", scope: !4790, file: !4791, line: 92, baseType: !4798, size: 64, offset: 256)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "set_edid", scope: !4674, file: !157, line: 713, baseType: !4786, size: 64, offset: 576)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "dv_timings_cap", scope: !4674, file: !157, line: 714, baseType: !4801, size: 64, offset: 640)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!298, !4183, !4804}
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_dv_timings_cap", file: !149, line: 1627, size: 1152, elements: !4806)
!4806 = !{!4807, !4808, !4809, !4810}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4805, file: !149, line: 1628, baseType: !455, size: 32)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4805, file: !149, line: 1629, baseType: !455, size: 32, offset: 32)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4805, file: !149, line: 1630, baseType: !1611, size: 64, offset: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, scope: !4805, file: !149, line: 1631, baseType: !4811, size: 1024, offset: 128)
!4811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4805, file: !149, line: 1631, size: 1024, elements: !4812)
!4812 = !{!4813, !4826}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "bt", scope: !4811, file: !149, line: 1632, baseType: !4814, size: 832)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_bt_timings_cap", file: !149, line: 1600, size: 832, elements: !4815)
!4815 = !{!4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4814, file: !149, line: 1601, baseType: !455, size: 32)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4814, file: !149, line: 1602, baseType: !455, size: 32, offset: 32)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4814, file: !149, line: 1603, baseType: !455, size: 32, offset: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4814, file: !149, line: 1604, baseType: !455, size: 32, offset: 96)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "min_pixelclock", scope: !4814, file: !149, line: 1605, baseType: !460, size: 64, offset: 128)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "max_pixelclock", scope: !4814, file: !149, line: 1606, baseType: !460, size: 64, offset: 192)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "standards", scope: !4814, file: !149, line: 1607, baseType: !455, size: 32, offset: 256)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4814, file: !149, line: 1608, baseType: !455, size: 32, offset: 288)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4814, file: !149, line: 1609, baseType: !4825, size: 512, offset: 320)
!4825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 512, elements: !1778)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !4811, file: !149, line: 1633, baseType: !4541, size: 1024)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "enum_dv_timings", scope: !4674, file: !157, line: 716, baseType: !4828, size: 64, offset: 704)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!298, !4183, !4831}
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_enum_dv_timings", file: !149, line: 1582, size: 1184, elements: !4833)
!4833 = !{!4834, !4835, !4836, !4837}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4832, file: !149, line: 1583, baseType: !455, size: 32)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4832, file: !149, line: 1584, baseType: !455, size: 32, offset: 32)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4832, file: !149, line: 1585, baseType: !1611, size: 64, offset: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !4832, file: !149, line: 1586, baseType: !4508, size: 1056, offset: 128)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "link_validate", scope: !4674, file: !157, line: 719, baseType: !4839, size: 64, offset: 768)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!298, !4183, !4067, !4763, !4763}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_desc", scope: !4674, file: !157, line: 723, baseType: !4843, size: 64, offset: 832)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!298, !4183, !7, !4846}
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mbus_frame_desc", file: !157, line: 348, size: 416, elements: !4848)
!4848 = !{!4849, !4856}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4847, file: !157, line: 349, baseType: !4850, size: 384)
!4850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4851, size: 384, elements: !1193)
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mbus_frame_desc_entry", file: !157, line: 335, size: 96, elements: !4852)
!4852 = !{!4853, !4854, !4855}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4851, file: !157, line: 336, baseType: !160, size: 32)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "pixelcode", scope: !4851, file: !157, line: 337, baseType: !453, size: 32, offset: 32)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4851, file: !157, line: 338, baseType: !453, size: 32, offset: 64)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !4847, file: !157, line: 350, baseType: !355, size: 16, offset: 384)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "set_frame_desc", scope: !4674, file: !157, line: 725, baseType: !4843, size: 64, offset: 896)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "get_mbus_config", scope: !4674, file: !157, line: 727, baseType: !4859, size: 64, offset: 960)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!298, !4183, !7, !4862}
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_mbus_config", file: !165, line: 122, size: 64, elements: !4864)
!4864 = !{!4865, !4866}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4863, file: !165, line: 123, baseType: !164, size: 32)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4863, file: !165, line: 124, baseType: !7, size: 32, offset: 32)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "set_mbus_config", scope: !4674, file: !157, line: 729, baseType: !4859, size: 64, offset: 1024)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ops", scope: !233, file: !157, line: 876, baseType: !4869, size: 64, offset: 1408)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4871)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_internal_ops", file: !157, line: 783, size: 320, elements: !4872)
!4872 = !{!4873, !4874, !4878, !4888, !4889}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4871, file: !157, line: 784, baseType: !4208, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "unregistered", scope: !4871, file: !157, line: 785, baseType: !4875, size: 64, offset: 64)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{null, !4183}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4871, file: !157, line: 786, baseType: !4879, size: 64, offset: 128)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!298, !4183, !4882}
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_fh", file: !157, line: 924, size: 1152, elements: !4884)
!4884 = !{!4885, !4886, !4887}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "vfh", scope: !4883, file: !157, line: 925, baseType: !4247, size: 1024)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4883, file: !157, line: 926, baseType: !220, size: 64, offset: 1024)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4883, file: !157, line: 928, baseType: !4680, size: 64, offset: 1088)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4871, file: !157, line: 787, baseType: !4879, size: 64, offset: 192)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4871, file: !157, line: 788, baseType: !4875, size: 64, offset: 256)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !233, file: !157, line: 877, baseType: !4185, size: 64, offset: 1472)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !157, line: 878, baseType: !2744, size: 256, offset: 1536)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "grp_id", scope: !233, file: !157, line: 879, baseType: !453, size: 32, offset: 1792)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "dev_priv", scope: !233, file: !157, line: 880, baseType: !225, size: 64, offset: 1856)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "host_priv", scope: !233, file: !157, line: 881, baseType: !225, size: 64, offset: 1920)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !233, file: !157, line: 882, baseType: !4252, size: 64, offset: 1984)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !233, file: !157, line: 883, baseType: !247, size: 64, offset: 2048)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !233, file: !157, line: 884, baseType: !3736, size: 64, offset: 2112)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "async_list", scope: !233, file: !157, line: 885, baseType: !259, size: 128, offset: 2176)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "asd", scope: !233, file: !157, line: 886, baseType: !4900, size: 64, offset: 2304)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_async_subdev", file: !175, line: 79, size: 448, elements: !4902)
!4902 = !{!4903, !4904, !4922, !4923}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "match_type", scope: !4901, file: !175, line: 80, baseType: !174, size: 32)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4901, file: !175, line: 93, baseType: !4905, size: 128, offset: 64)
!4905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4901, file: !175, line: 81, size: 128, elements: !4906)
!4906 = !{!4907, !4908, !4909, !4914}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4905, file: !175, line: 82, baseType: !3736, size: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4905, file: !175, line: 83, baseType: !255, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4905, file: !175, line: 87, baseType: !4910, size: 64)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4905, file: !175, line: 84, size: 64, elements: !4911)
!4911 = !{!4912, !4913}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "adapter_id", scope: !4910, file: !175, line: 85, baseType: !298, size: 32)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4910, file: !175, line: 86, baseType: !355, size: 16, offset: 32)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "custom", scope: !4905, file: !175, line: 92, baseType: !4915, size: 128)
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4905, file: !175, line: 88, size: 128, elements: !4916)
!4916 = !{!4917, !4921}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4915, file: !175, line: 89, baseType: !4918, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{!528, !247, !4900}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4915, file: !175, line: 91, baseType: !225, size: 64, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4901, file: !175, line: 96, baseType: !259, size: 128, offset: 192)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "asd_list", scope: !4901, file: !175, line: 97, baseType: !259, size: 128, offset: 320)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "notifier", scope: !233, file: !157, line: 887, baseType: !4925, size: 64, offset: 2368)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_async_notifier", file: !175, line: 129, size: 768, elements: !4927)
!4927 = !{!4928, !4945, !4946, !4947, !4948, !4949, !4950, !4951}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4926, file: !175, line: 130, baseType: !4929, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4931)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_async_notifier_operations", file: !175, line: 107, size: 192, elements: !4932)
!4932 = !{!4933, !4937, !4941}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !4931, file: !175, line: 108, baseType: !4934, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!298, !4925, !4183, !4900}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4931, file: !175, line: 111, baseType: !4938, size: 64, offset: 64)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!298, !4925}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4931, file: !175, line: 112, baseType: !4942, size: 64, offset: 128)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{null, !4925, !4183, !4900}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "v4l2_dev", scope: !4926, file: !175, line: 131, baseType: !4167, size: 64, offset: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !4926, file: !175, line: 132, baseType: !4183, size: 64, offset: 128)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4926, file: !175, line: 133, baseType: !4925, size: 64, offset: 192)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "asd_list", scope: !4926, file: !175, line: 134, baseType: !259, size: 128, offset: 256)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !4926, file: !175, line: 135, baseType: !259, size: 128, offset: 384)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4926, file: !175, line: 136, baseType: !259, size: 128, offset: 512)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4926, file: !175, line: 137, baseType: !259, size: 128, offset: 640)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_notifier", scope: !233, file: !157, line: 888, baseType: !4925, size: 64, offset: 2432)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !233, file: !157, line: 889, baseType: !4954, size: 64, offset: 2496)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev_platform_data", file: !157, line: 815, size: 192, elements: !4956)
!4956 = !{!4957, !4960, !4961}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "regulators", scope: !4955, file: !157, line: 816, baseType: !4958, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator_bulk_data", file: !157, line: 806, flags: DIFlagFwdDecl)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "num_regulators", scope: !4955, file: !157, line: 817, baseType: !298, size: 32, offset: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "host_priv", scope: !4955, file: !157, line: 819, baseType: !225, size: 64, offset: 128)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !230, file: !3, line: 57, baseType: !4963, size: 704, offset: 2560)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !182, line: 115, size: 704, elements: !4964)
!4964 = !{!4965, !4966, !4967, !4968}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4963, file: !182, line: 116, baseType: !2002, size: 256)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4963, file: !182, line: 117, baseType: !3621, size: 320, offset: 256)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4963, file: !182, line: 120, baseType: !2837, size: 64, offset: 576)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4963, file: !182, line: 121, baseType: !298, size: 32, offset: 640)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !230, file: !3, line: 58, baseType: !272, offset: 3264)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !230, file: !3, line: 59, baseType: !4971, size: 64, offset: 3264)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !230, file: !3, line: 60, baseType: !7, size: 32, offset: 3328)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "rd_index", scope: !230, file: !3, line: 61, baseType: !7, size: 32, offset: 3360)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "wr_index", scope: !230, file: !3, line: 62, baseType: !7, size: 32, offset: 3392)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !230, file: !3, line: 63, baseType: !7, size: 32, offset: 3424)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "last_blocknum", scope: !230, file: !3, line: 64, baseType: !465, size: 8, offset: 3456)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "read_queue", scope: !230, file: !3, line: 65, baseType: !1524, size: 128, offset: 3520)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "data_available_for_read", scope: !230, file: !3, line: 66, baseType: !298, size: 32, offset: 3648)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !230, file: !3, line: 67, baseType: !1390, size: 8, offset: 3680)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !262)
!4982 = !{!4983, !5035, !5040, !5045, !5047, !5052, !5055, !5057, !5059, !5064, !5066, !5068, !5073, !5075, !5080, !5085, !5090, !5095, !5100, !5103, !5105, !5110, !5112, !5114, !5116, !0, !5118, !5123, !5125, !5127, !5132, !5134, !5360, !5363, !5365, !5367, !5369}
!4983 = !DIGlobalVariableExpression(var: !4984, expr: !DIExpression())
!4984 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 33, type: !4985, isLocal: true, isDefinition: true, align: 64)
!4985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4986)
!4986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4987, line: 69, size: 320, elements: !4988)
!4987 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4988 = !{!4989, !4990, !4991, !5007, !5009, !5013, !5014}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4986, file: !4987, line: 70, baseType: !255, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4986, file: !4987, line: 71, baseType: !220, size: 64, offset: 64)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4986, file: !4987, line: 72, baseType: !4992, size: 64, offset: 128)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4994)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4987, line: 47, size: 256, elements: !4995)
!4995 = !{!4996, !4997, !5002, !5006}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4994, file: !4987, line: 49, baseType: !7, size: 32)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4994, file: !4987, line: 51, baseType: !4998, size: 64, offset: 64)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!298, !255, !5001}
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4994, file: !4987, line: 53, baseType: !5003, size: 64, offset: 128)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!298, !314, !5001}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4994, file: !4987, line: 55, baseType: !506, size: 64, offset: 192)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4986, file: !4987, line: 73, baseType: !5008, size: 16, offset: 192)
!5008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4986, file: !4987, line: 74, baseType: !5010, size: 8, offset: 208)
!5010 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !454, line: 16, baseType: !5011)
!5011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !456, line: 20, baseType: !5012)
!5012 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4986, file: !4987, line: 75, baseType: !1390, size: 8, offset: 216)
!5014 = !DIDerivedType(tag: DW_TAG_member, scope: !4986, file: !4987, line: 76, baseType: !5015, size: 64, offset: 256)
!5015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4986, file: !4987, line: 76, size: 64, elements: !5016)
!5016 = !{!5017, !5018, !5025}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5015, file: !4987, line: 77, baseType: !225, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5015, file: !4987, line: 78, baseType: !5019, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5021)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4987, line: 86, size: 128, elements: !5022)
!5022 = !{!5023, !5024}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5021, file: !4987, line: 87, baseType: !7, size: 32)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5021, file: !4987, line: 88, baseType: !314, size: 64, offset: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5015, file: !4987, line: 79, baseType: !5026, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5028)
!5028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4987, line: 92, size: 256, elements: !5029)
!5029 = !{!5030, !5031, !5032, !5033, !5034}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5028, file: !4987, line: 94, baseType: !7, size: 32)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5028, file: !4987, line: 95, baseType: !7, size: 32, offset: 32)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5028, file: !4987, line: 96, baseType: !2727, size: 64, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5028, file: !4987, line: 97, baseType: !4992, size: 64, offset: 128)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5028, file: !4987, line: 98, baseType: !225, size: 64, offset: 192)
!5035 = !DIGlobalVariableExpression(var: !5036, expr: !DIExpression())
!5036 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype250", scope: !2, file: !3, line: 33, type: !5037, isLocal: true, isDefinition: true, align: 8)
!5037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 216, elements: !5038)
!5038 = !{!5039}
!5039 = !DISubrange(count: 27)
!5040 = !DIGlobalVariableExpression(var: !5041, expr: !DIExpression())
!5041 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug251", scope: !2, file: !3, line: 34, type: !5042, isLocal: true, isDefinition: true, align: 8)
!5042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 328, elements: !5043)
!5043 = !{!5044}
!5044 = !DISubrange(count: 41)
!5045 = !DIGlobalVariableExpression(var: !5046, expr: !DIExpression())
!5046 = distinct !DIGlobalVariable(name: "__param_xtal", scope: !2, file: !3, line: 35, type: !4985, isLocal: true, isDefinition: true, align: 64)
!5047 = !DIGlobalVariableExpression(var: !5048, expr: !DIExpression())
!5048 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_xtaltype252", scope: !2, file: !3, line: 35, type: !5049, isLocal: true, isDefinition: true, align: 8)
!5049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 208, elements: !5050)
!5050 = !{!5051}
!5051 = !DISubrange(count: 26)
!5052 = !DIGlobalVariableExpression(var: !5053, expr: !DIExpression())
!5053 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_xtal253", scope: !2, file: !3, line: 36, type: !5054, isLocal: true, isDefinition: true, align: 8)
!5054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 512, elements: !319)
!5055 = !DIGlobalVariableExpression(var: !5056, expr: !DIExpression())
!5056 = distinct !DIGlobalVariable(name: "__param_mmbs", scope: !2, file: !3, line: 37, type: !4985, isLocal: true, isDefinition: true, align: 64)
!5057 = !DIGlobalVariableExpression(var: !5058, expr: !DIExpression())
!5058 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_mmbstype254", scope: !2, file: !3, line: 37, type: !5049, isLocal: true, isDefinition: true, align: 8)
!5059 = !DIGlobalVariableExpression(var: !5060, expr: !DIExpression())
!5060 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_mmbs255", scope: !2, file: !3, line: 38, type: !5061, isLocal: true, isDefinition: true, align: 8)
!5061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 464, elements: !5062)
!5062 = !{!5063}
!5063 = !DISubrange(count: 58)
!5064 = !DIGlobalVariableExpression(var: !5065, expr: !DIExpression())
!5065 = distinct !DIGlobalVariable(name: "__param_plvl", scope: !2, file: !3, line: 39, type: !4985, isLocal: true, isDefinition: true, align: 64)
!5066 = !DIGlobalVariableExpression(var: !5067, expr: !DIExpression())
!5067 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_plvltype256", scope: !2, file: !3, line: 39, type: !5049, isLocal: true, isDefinition: true, align: 8)
!5068 = !DIGlobalVariableExpression(var: !5069, expr: !DIExpression())
!5069 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_plvl257", scope: !2, file: !3, line: 40, type: !5070, isLocal: true, isDefinition: true, align: 8)
!5070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 440, elements: !5071)
!5071 = !{!5072}
!5072 = !DISubrange(count: 55)
!5073 = !DIGlobalVariableExpression(var: !5074, expr: !DIExpression())
!5074 = distinct !DIGlobalVariable(name: "__param_bufblocks", scope: !2, file: !3, line: 41, type: !4985, isLocal: true, isDefinition: true, align: 64)
!5075 = !DIGlobalVariableExpression(var: !5076, expr: !DIExpression())
!5076 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_bufblockstype258", scope: !2, file: !3, line: 41, type: !5077, isLocal: true, isDefinition: true, align: 8)
!5077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 248, elements: !5078)
!5078 = !{!5079}
!5079 = !DISubrange(count: 31)
!5080 = !DIGlobalVariableExpression(var: !5081, expr: !DIExpression())
!5081 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_bufblocks259", scope: !2, file: !3, line: 42, type: !5082, isLocal: true, isDefinition: true, align: 8)
!5082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 496, elements: !5083)
!5083 = !{!5084}
!5084 = !DISubrange(count: 62)
!5085 = !DIGlobalVariableExpression(var: !5086, expr: !DIExpression())
!5086 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description260", scope: !2, file: !3, line: 44, type: !5087, isLocal: true, isDefinition: true, align: 8)
!5087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 504, elements: !5088)
!5088 = !{!5089}
!5089 = !DISubrange(count: 63)
!5090 = !DIGlobalVariableExpression(var: !5091, expr: !DIExpression())
!5091 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author261", scope: !2, file: !3, line: 45, type: !5092, isLocal: true, isDefinition: true, align: 8)
!5092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 360, elements: !5093)
!5093 = !{!5094}
!5094 = !DISubrange(count: 45)
!5095 = !DIGlobalVariableExpression(var: !5096, expr: !DIExpression())
!5096 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file262", scope: !2, file: !3, line: 47, type: !5097, isLocal: true, isDefinition: true, align: 8)
!5097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 312, elements: !5098)
!5098 = !{!5099}
!5099 = !DISubrange(count: 39)
!5100 = !DIGlobalVariableExpression(var: !5101, expr: !DIExpression())
!5101 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license263", scope: !2, file: !3, line: 47, type: !5102, isLocal: true, isDefinition: true, align: 8)
!5102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 160, elements: !2245)
!5103 = !DIGlobalVariableExpression(var: !5104, expr: !DIExpression())
!5104 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_saa6588_driver_init266", scope: !2, file: !3, line: 516, type: !225, isLocal: true, isDefinition: true)
!5105 = !DIGlobalVariableExpression(var: !5106, expr: !DIExpression())
!5106 = distinct !DIGlobalVariable(name: "__exitcall_saa6588_driver_exit", scope: !2, file: !3, line: 516, type: !5107, isLocal: true, isDefinition: true)
!5107 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5108, line: 117, baseType: !5109)
!5108 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!5110 = !DIGlobalVariableExpression(var: !5111, expr: !DIExpression())
!5111 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 27, type: !7, isLocal: true, isDefinition: true)
!5112 = !DIGlobalVariableExpression(var: !5113, expr: !DIExpression())
!5113 = distinct !DIGlobalVariable(name: "xtal", scope: !2, file: !3, line: 28, type: !7, isLocal: true, isDefinition: true)
!5114 = !DIGlobalVariableExpression(var: !5115, expr: !DIExpression())
!5115 = distinct !DIGlobalVariable(name: "mmbs", scope: !2, file: !3, line: 29, type: !7, isLocal: true, isDefinition: true)
!5116 = !DIGlobalVariableExpression(var: !5117, expr: !DIExpression())
!5117 = distinct !DIGlobalVariable(name: "plvl", scope: !2, file: !3, line: 30, type: !7, isLocal: true, isDefinition: true)
!5118 = !DIGlobalVariableExpression(var: !5119, expr: !DIExpression())
!5119 = distinct !DIGlobalVariable(name: "__param_str_xtal", scope: !2, file: !3, line: 35, type: !5120, isLocal: true, isDefinition: true)
!5120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 104, elements: !5121)
!5121 = !{!5122}
!5122 = !DISubrange(count: 13)
!5123 = !DIGlobalVariableExpression(var: !5124, expr: !DIExpression())
!5124 = distinct !DIGlobalVariable(name: "__param_str_mmbs", scope: !2, file: !3, line: 37, type: !5120, isLocal: true, isDefinition: true)
!5125 = !DIGlobalVariableExpression(var: !5126, expr: !DIExpression())
!5126 = distinct !DIGlobalVariable(name: "__param_str_plvl", scope: !2, file: !3, line: 39, type: !5120, isLocal: true, isDefinition: true)
!5127 = !DIGlobalVariableExpression(var: !5128, expr: !DIExpression())
!5128 = distinct !DIGlobalVariable(name: "__param_str_bufblocks", scope: !2, file: !3, line: 41, type: !5129, isLocal: true, isDefinition: true)
!5129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 144, elements: !5130)
!5130 = !{!5131}
!5131 = !DISubrange(count: 18)
!5132 = !DIGlobalVariableExpression(var: !5133, expr: !DIExpression())
!5133 = distinct !DIGlobalVariable(name: "bufblocks", scope: !2, file: !3, line: 31, type: !7, isLocal: true, isDefinition: true)
!5134 = !DIGlobalVariableExpression(var: !5135, expr: !DIExpression())
!5135 = distinct !DIGlobalVariable(name: "saa6588_driver", scope: !2, file: !3, line: 507, type: !5136, isLocal: true, isDefinition: true)
!5136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_driver", file: !108, line: 255, size: 1920, elements: !5137)
!5137 = !{!5138, !5139, !5279, !5283, !5284, !5288, !5292, !5296, !5297, !5298, !5356, !5359}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5136, file: !108, line: 256, baseType: !7, size: 32)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5136, file: !108, line: 259, baseType: !5140, size: 64, offset: 64)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!298, !5143, !5273}
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !108, line: 314, size: 6016, elements: !5145)
!5145 = !{!5146, !5147, !5148, !5150, !5269, !5270, !5271, !5272}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5144, file: !108, line: 315, baseType: !355, size: 16)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5144, file: !108, line: 325, baseType: !355, size: 16, offset: 16)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5144, file: !108, line: 328, baseType: !5149, size: 160, offset: 32)
!5149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 160, elements: !2245)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !5144, file: !108, line: 329, baseType: !5151, size: 64, offset: 192)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !108, line: 695, size: 7552, elements: !5153)
!5153 = !{!5154, !5155, !5156, !5192, !5193, !5207, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5222, !5223, !5224, !5225, !5257, !5268}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5152, file: !108, line: 696, baseType: !220, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5152, file: !108, line: 697, baseType: !7, size: 32, offset: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !5152, file: !108, line: 698, baseType: !5157, size: 64, offset: 128)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5159)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !108, line: 519, size: 320, elements: !5160)
!5160 = !{!5161, !5173, !5174, !5187, !5188}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !5159, file: !108, line: 529, baseType: !5162, size: 64)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!298, !5151, !5165, !298}
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !5167, line: 69, size: 128, elements: !5168)
!5167 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!5168 = !{!5169, !5170, !5171, !5172}
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5166, file: !5167, line: 70, baseType: !898, size: 16)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5166, file: !5167, line: 71, baseType: !898, size: 16, offset: 16)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5166, file: !5167, line: 84, baseType: !898, size: 16, offset: 32)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5166, file: !5167, line: 85, baseType: !4798, size: 64, offset: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !5159, file: !108, line: 531, baseType: !5162, size: 64, offset: 64)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !5159, file: !108, line: 533, baseType: !5175, size: 64, offset: 128)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{!298, !5151, !897, !355, !257, !1390, !298, !5178}
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !5167, line: 135, size: 272, elements: !5180)
!5180 = !{!5181, !5182, !5183}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !5179, file: !5167, line: 136, baseType: !1391, size: 8)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !5179, file: !5167, line: 137, baseType: !898, size: 16)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5179, file: !5167, line: 138, baseType: !5184, size: 272)
!5184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 272, elements: !5185)
!5185 = !{!5186}
!5186 = !DISubrange(count: 34)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !5159, file: !108, line: 536, baseType: !5175, size: 64, offset: 192)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !5159, file: !108, line: 541, baseType: !5189, size: 64, offset: 256)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!453, !5151}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !5152, file: !108, line: 699, baseType: !225, size: 64, offset: 192)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !5152, file: !108, line: 702, baseType: !5194, size: 64, offset: 256)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5196)
!5196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !108, line: 557, size: 192, elements: !5197)
!5197 = !{!5198, !5202, !5206}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !5196, file: !108, line: 558, baseType: !5199, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{null, !5151, !7}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !5196, file: !108, line: 559, baseType: !5203, size: 64, offset: 64)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!298, !5151, !7}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !5196, file: !108, line: 560, baseType: !5199, size: 64, offset: 128)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !5152, file: !108, line: 703, baseType: !5208, size: 192, offset: 320)
!5208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !5209, line: 30, size: 192, elements: !5210)
!5209 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!5210 = !{!5211, !5212, !5213}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !5208, file: !5209, line: 31, baseType: !818)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5208, file: !5209, line: 32, baseType: !790, size: 128)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5208, file: !5209, line: 33, baseType: !1254, size: 64, offset: 128)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !5152, file: !108, line: 704, baseType: !5208, size: 192, offset: 512)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5152, file: !108, line: 706, baseType: !298, size: 32, offset: 704)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5152, file: !108, line: 707, baseType: !298, size: 32, offset: 736)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5152, file: !108, line: 708, baseType: !248, size: 5568, offset: 768)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !5152, file: !108, line: 709, baseType: !226, size: 64, offset: 6336)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5152, file: !108, line: 713, baseType: !298, size: 32, offset: 6400)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5152, file: !108, line: 714, baseType: !5221, size: 384, offset: 6432)
!5221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 384, elements: !4579)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !5152, file: !108, line: 715, baseType: !1545, size: 192, offset: 6848)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !5152, file: !108, line: 717, baseType: !1211, size: 192, offset: 7040)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !5152, file: !108, line: 718, baseType: !259, size: 128, offset: 7232)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !5152, file: !108, line: 720, baseType: !5226, size: 64, offset: 7360)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !108, line: 618, size: 832, elements: !5228)
!5228 = !{!5229, !5233, !5234, !5238, !5239, !5240, !5241, !5245, !5246, !5249, !5250, !5253, !5256}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !5227, file: !108, line: 619, baseType: !5230, size: 64)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!298, !5151}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !5227, file: !108, line: 621, baseType: !5230, size: 64, offset: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !5227, file: !108, line: 622, baseType: !5235, size: 64, offset: 128)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{null, !5151, !298}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !5227, file: !108, line: 623, baseType: !5230, size: 64, offset: 192)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !5227, file: !108, line: 624, baseType: !5235, size: 64, offset: 256)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !5227, file: !108, line: 625, baseType: !5230, size: 64, offset: 320)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !5227, file: !108, line: 627, baseType: !5242, size: 64, offset: 384)
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{null, !5151}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !5227, file: !108, line: 628, baseType: !5242, size: 64, offset: 448)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !5227, file: !108, line: 631, baseType: !5247, size: 64, offset: 512)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !108, line: 631, flags: DIFlagFwdDecl)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !5227, file: !108, line: 632, baseType: !5247, size: 64, offset: 576)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !5227, file: !108, line: 633, baseType: !5251, size: 64, offset: 640)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !108, line: 633, flags: DIFlagFwdDecl)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !5227, file: !108, line: 634, baseType: !5254, size: 64, offset: 704)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !108, line: 634, flags: DIFlagFwdDecl)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !5227, file: !108, line: 635, baseType: !5254, size: 64, offset: 768)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5152, file: !108, line: 721, baseType: !5258, size: 64, offset: 7424)
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5260)
!5260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !108, line: 664, size: 192, elements: !5261)
!5261 = !{!5262, !5263, !5264, !5265, !5266, !5267}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5260, file: !108, line: 665, baseType: !459, size: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !5260, file: !108, line: 666, baseType: !298, size: 32, offset: 64)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5260, file: !108, line: 667, baseType: !897, size: 16, offset: 96)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !5260, file: !108, line: 668, baseType: !897, size: 16, offset: 112)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !5260, file: !108, line: 669, baseType: !897, size: 16, offset: 128)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !5260, file: !108, line: 670, baseType: !897, size: 16, offset: 144)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !5152, file: !108, line: 723, baseType: !3709, size: 64, offset: 7488)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5144, file: !108, line: 330, baseType: !248, size: 5568, offset: 256)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !5144, file: !108, line: 331, baseType: !298, size: 32, offset: 5824)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5144, file: !108, line: 332, baseType: !298, size: 32, offset: 5856)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !5144, file: !108, line: 333, baseType: !259, size: 128, offset: 5888)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5275)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_device_id", file: !3514, line: 457, size: 256, elements: !5276)
!5276 = !{!5277, !5278}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5275, file: !3514, line: 458, baseType: !5149, size: 160)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5275, file: !3514, line: 459, baseType: !3533, size: 64, offset: 192)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5136, file: !108, line: 260, baseType: !5280, size: 64, offset: 128)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!298, !5143}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "probe_new", scope: !5136, file: !108, line: 265, baseType: !5280, size: 64, offset: 192)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5136, file: !108, line: 268, baseType: !5285, size: 64, offset: 256)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{null, !5143}
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "alert", scope: !5136, file: !108, line: 277, baseType: !5289, size: 64, offset: 320)
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{null, !5143, !107, !7}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !5136, file: !108, line: 283, baseType: !5293, size: 64, offset: 384)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!298, !5143, !7, !225}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5136, file: !108, line: 285, baseType: !3502, size: 1152, offset: 448)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5136, file: !108, line: 286, baseType: !5273, size: 64, offset: 1600)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5136, file: !108, line: 289, baseType: !5299, size: 64, offset: 1664)
!5299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5300, size: 64)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{!298, !5143, !5302}
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !108, line: 410, size: 640, elements: !5304)
!5304 = !{!5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5338, !5354, !5355}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5303, file: !108, line: 411, baseType: !5149, size: 160)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5303, file: !108, line: 412, baseType: !355, size: 16, offset: 160)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5303, file: !108, line: 413, baseType: !355, size: 16, offset: 176)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !5303, file: !108, line: 414, baseType: !255, size: 64, offset: 192)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !5303, file: !108, line: 415, baseType: !225, size: 64, offset: 256)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !5303, file: !108, line: 416, baseType: !3723, size: 64, offset: 320)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5303, file: !108, line: 417, baseType: !3736, size: 64, offset: 384)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5303, file: !108, line: 418, baseType: !5313, size: 64, offset: 448)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5315)
!5315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !113, line: 263, size: 256, elements: !5316)
!5316 = !{!5317, !5318, !5319, !5320, !5321}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5315, file: !113, line: 264, baseType: !255, size: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5315, file: !113, line: 265, baseType: !360, size: 64, offset: 64)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !5315, file: !113, line: 266, baseType: !528, size: 8, offset: 128)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5315, file: !113, line: 267, baseType: !112, size: 32, offset: 160)
!5321 = !DIDerivedType(tag: DW_TAG_member, scope: !5315, file: !113, line: 268, baseType: !5322, size: 64, offset: 192)
!5322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5315, file: !113, line: 268, size: 64, elements: !5323)
!5323 = !{!5324, !5325}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5322, file: !113, line: 269, baseType: !2171, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5322, file: !113, line: 276, baseType: !5326, size: 64)
!5326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5322, file: !113, line: 270, size: 64, elements: !5327)
!5327 = !{!5328, !5330, !5332, !5334, !5336}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !5326, file: !113, line: 271, baseType: !5329, size: 64)
!5329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 64, elements: !1368)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !5326, file: !113, line: 272, baseType: !5331, size: 64)
!5331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 64, elements: !1193)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !5326, file: !113, line: 273, baseType: !5333, size: 64)
!5333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 64, elements: !1612)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !5326, file: !113, line: 274, baseType: !5335, size: 64)
!5335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 64, elements: !1409)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5326, file: !113, line: 275, baseType: !5337, size: 64)
!5337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 64, elements: !1409)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5303, file: !108, line: 419, baseType: !5339, size: 64, offset: 512)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5341)
!5341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !5342, line: 20, size: 512, elements: !5343)
!5342 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!5343 = !{!5344, !5346, !5347, !5348, !5349, !5350, !5352, !5353}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5341, file: !5342, line: 21, baseType: !5345, size: 64)
!5345 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !224, line: 158, baseType: !2169)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5341, file: !5342, line: 22, baseType: !5345, size: 64, offset: 64)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5341, file: !5342, line: 23, baseType: !255, size: 64, offset: 128)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5341, file: !5342, line: 24, baseType: !226, size: 64, offset: 192)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5341, file: !5342, line: 25, baseType: !226, size: 64, offset: 256)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5341, file: !5342, line: 26, baseType: !5351, size: 64, offset: 320)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5341, file: !5342, line: 26, baseType: !5351, size: 64, offset: 384)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5341, file: !5342, line: 26, baseType: !5351, size: 64, offset: 448)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !5303, file: !108, line: 420, baseType: !7, size: 32, offset: 576)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5303, file: !108, line: 421, baseType: !298, size: 32, offset: 608)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "address_list", scope: !5136, file: !108, line: 290, baseType: !5357, size: 64, offset: 1728)
!5357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5358, size: 64)
!5358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !5136, file: !108, line: 291, baseType: !259, size: 128, offset: 1792)
!5360 = !DIGlobalVariableExpression(var: !5361, expr: !DIExpression())
!5361 = distinct !DIGlobalVariable(name: "__key", scope: !5362, file: !3, line: 476, type: !683, isLocal: true, isDefinition: true)
!5362 = distinct !DISubprogram(name: "saa6588_probe", scope: !3, file: !3, line: 451, type: !5141, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5363 = !DIGlobalVariableExpression(var: !5364, expr: !DIExpression())
!5364 = distinct !DIGlobalVariable(name: "saa6588_ops", scope: !2, file: !3, line: 444, type: !4199, isLocal: true, isDefinition: true)
!5365 = !DIGlobalVariableExpression(var: !5366, expr: !DIExpression())
!5366 = distinct !DIGlobalVariable(name: "saa6588_core_ops", scope: !2, file: !3, line: 435, type: !4204, isLocal: true, isDefinition: true)
!5367 = !DIGlobalVariableExpression(var: !5368, expr: !DIExpression())
!5368 = distinct !DIGlobalVariable(name: "saa6588_tuner_ops", scope: !2, file: !3, line: 439, type: !4337, isLocal: true, isDefinition: true)
!5369 = !DIGlobalVariableExpression(var: !5370, expr: !DIExpression())
!5370 = distinct !DIGlobalVariable(name: "saa6588_id", scope: !2, file: !3, line: 501, type: !5371, isLocal: true, isDefinition: true)
!5371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5274, size: 512, elements: !1612)
!5372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 112, elements: !5373)
!5373 = !{!5374}
!5374 = !DISubrange(count: 14)
!5375 = !{!"rsp"}
!5376 = !{i32 7, !"Dwarf Version", i32 4}
!5377 = !{i32 2, !"Debug Info Version", i32 3}
!5378 = !{i32 1, !"wchar_size", i32 2}
!5379 = !{i32 1, !"Code Model", i32 2}
!5380 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5381 = distinct !DISubprogram(name: "saa6588_driver_init", scope: !3, file: !3, line: 516, type: !5382, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!298}
!5384 = !DILocation(line: 516, column: 1, scope: !5381)
!5385 = distinct !DISubprogram(name: "saa6588_driver_exit", scope: !3, file: !3, line: 516, type: !1923, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5386 = !DILocation(line: 516, column: 1, scope: !5385)
!5387 = !DILocalVariable(name: "lock", arg: 1, scope: !5388, file: !5389, line: 327, type: !1102)
!5388 = distinct !DISubprogram(name: "spinlock_check", scope: !5389, file: !5389, line: 327, type: !5390, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5389 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!5390 = !DISubroutineType(types: !5391)
!5391 = !{!5392, !1102}
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!5393 = !DILocation(line: 327, column: 67, scope: !5388, inlinedAt: !5394)
!5394 = distinct !DILocation(line: 471, column: 2, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 471, column: 2)
!5396 = !DILocalVariable(name: "client", arg: 1, scope: !5362, file: !3, line: 451, type: !5143)
!5397 = !DILocation(line: 451, column: 45, scope: !5362)
!5398 = !DILocalVariable(name: "id", arg: 2, scope: !5362, file: !3, line: 452, type: !5273)
!5399 = !DILocation(line: 452, column: 33, scope: !5362)
!5400 = !DILocalVariable(name: "s", scope: !5362, file: !3, line: 454, type: !229)
!5401 = !DILocation(line: 454, column: 18, scope: !5362)
!5402 = !DILocalVariable(name: "sd", scope: !5362, file: !3, line: 455, type: !4183)
!5403 = !DILocation(line: 455, column: 22, scope: !5362)
!5404 = !DILocation(line: 457, column: 2, scope: !5362)
!5405 = !DILocation(line: 460, column: 20, scope: !5362)
!5406 = !DILocation(line: 460, column: 28, scope: !5362)
!5407 = !DILocation(line: 460, column: 6, scope: !5362)
!5408 = !DILocation(line: 460, column: 4, scope: !5362)
!5409 = !DILocation(line: 461, column: 6, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 461, column: 6)
!5411 = !DILocation(line: 461, column: 8, scope: !5410)
!5412 = !DILocation(line: 461, column: 6, scope: !5362)
!5413 = !DILocation(line: 462, column: 3, scope: !5410)
!5414 = !DILocation(line: 464, column: 16, scope: !5362)
!5415 = !DILocation(line: 464, column: 26, scope: !5362)
!5416 = !DILocation(line: 464, column: 2, scope: !5362)
!5417 = !DILocation(line: 464, column: 5, scope: !5362)
!5418 = !DILocation(line: 464, column: 14, scope: !5362)
!5419 = !DILocation(line: 466, column: 28, scope: !5362)
!5420 = !DILocation(line: 466, column: 36, scope: !5362)
!5421 = !DILocation(line: 466, column: 41, scope: !5362)
!5422 = !DILocation(line: 466, column: 44, scope: !5362)
!5423 = !DILocation(line: 466, column: 14, scope: !5362)
!5424 = !DILocation(line: 466, column: 2, scope: !5362)
!5425 = !DILocation(line: 466, column: 5, scope: !5362)
!5426 = !DILocation(line: 466, column: 12, scope: !5362)
!5427 = !DILocation(line: 467, column: 6, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 467, column: 6)
!5429 = !DILocation(line: 467, column: 9, scope: !5428)
!5430 = !DILocation(line: 467, column: 16, scope: !5428)
!5431 = !DILocation(line: 467, column: 6, scope: !5362)
!5432 = !DILocation(line: 468, column: 3, scope: !5428)
!5433 = !DILocation(line: 469, column: 8, scope: !5362)
!5434 = !DILocation(line: 469, column: 11, scope: !5362)
!5435 = !DILocation(line: 469, column: 5, scope: !5362)
!5436 = !DILocation(line: 470, column: 23, scope: !5362)
!5437 = !DILocation(line: 470, column: 27, scope: !5362)
!5438 = !DILocation(line: 470, column: 2, scope: !5362)
!5439 = !DILocation(line: 471, column: 2, scope: !5362)
!5440 = !DILocation(line: 471, column: 2, scope: !5395)
!5441 = !DILocation(line: 329, column: 10, scope: !5388, inlinedAt: !5394)
!5442 = !DILocation(line: 329, column: 16, scope: !5388, inlinedAt: !5394)
!5443 = !DILocation(line: 472, column: 2, scope: !5362)
!5444 = !DILocation(line: 472, column: 5, scope: !5362)
!5445 = !DILocation(line: 472, column: 17, scope: !5362)
!5446 = !DILocation(line: 473, column: 2, scope: !5362)
!5447 = !DILocation(line: 473, column: 5, scope: !5362)
!5448 = !DILocation(line: 473, column: 14, scope: !5362)
!5449 = !DILocation(line: 474, column: 2, scope: !5362)
!5450 = !DILocation(line: 474, column: 5, scope: !5362)
!5451 = !DILocation(line: 474, column: 14, scope: !5362)
!5452 = !DILocation(line: 475, column: 2, scope: !5362)
!5453 = !DILocation(line: 475, column: 5, scope: !5362)
!5454 = !DILocation(line: 475, column: 19, scope: !5362)
!5455 = !DILocation(line: 476, column: 2, scope: !5362)
!5456 = !DILocation(line: 476, column: 2, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 476, column: 2)
!5458 = !DILocation(line: 477, column: 2, scope: !5362)
!5459 = !DILocation(line: 477, column: 5, scope: !5362)
!5460 = !DILocation(line: 477, column: 29, scope: !5362)
!5461 = !DILocation(line: 479, column: 20, scope: !5362)
!5462 = !DILocation(line: 479, column: 2, scope: !5362)
!5463 = !DILocation(line: 482, column: 2, scope: !5362)
!5464 = !DILocation(line: 482, column: 2, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 482, column: 2)
!5466 = !DILocation(line: 482, column: 2, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 482, column: 2)
!5468 = !DILocation(line: 483, column: 25, scope: !5362)
!5469 = !DILocation(line: 483, column: 28, scope: !5362)
!5470 = !DILocation(line: 483, column: 2, scope: !5362)
!5471 = !DILocation(line: 484, column: 2, scope: !5362)
!5472 = !DILocation(line: 485, column: 1, scope: !5362)
!5473 = distinct !DISubprogram(name: "saa6588_remove", scope: !3, file: !3, line: 487, type: !5281, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5474 = !DILocalVariable(name: "client", arg: 1, scope: !5473, file: !3, line: 487, type: !5143)
!5475 = !DILocation(line: 487, column: 46, scope: !5473)
!5476 = !DILocalVariable(name: "sd", scope: !5473, file: !3, line: 489, type: !4183)
!5477 = !DILocation(line: 489, column: 22, scope: !5473)
!5478 = !DILocation(line: 489, column: 46, scope: !5473)
!5479 = !DILocation(line: 489, column: 27, scope: !5473)
!5480 = !DILocalVariable(name: "s", scope: !5473, file: !3, line: 490, type: !229)
!5481 = !DILocation(line: 490, column: 18, scope: !5473)
!5482 = !DILocation(line: 490, column: 33, scope: !5473)
!5483 = !DILocation(line: 490, column: 22, scope: !5473)
!5484 = !DILocation(line: 492, column: 32, scope: !5473)
!5485 = !DILocation(line: 492, column: 2, scope: !5473)
!5486 = !DILocation(line: 494, column: 28, scope: !5473)
!5487 = !DILocation(line: 494, column: 31, scope: !5473)
!5488 = !DILocation(line: 494, column: 2, scope: !5473)
!5489 = !DILocation(line: 496, column: 2, scope: !5473)
!5490 = distinct !DISubprogram(name: "i2c_adapter_id", scope: !108, file: !108, line: 900, type: !5231, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5491 = !DILocalVariable(name: "adap", arg: 1, scope: !5490, file: !108, line: 900, type: !5151)
!5492 = !DILocation(line: 900, column: 54, scope: !5490)
!5493 = !DILocation(line: 902, column: 9, scope: !5490)
!5494 = !DILocation(line: 902, column: 15, scope: !5490)
!5495 = !DILocation(line: 902, column: 2, scope: !5490)
!5496 = distinct !DISubprogram(name: "devm_kzalloc", scope: !73, file: !73, line: 215, type: !5497, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5497 = !DISubroutineType(types: !5498)
!5498 = !{!225, !247, !360, !223}
!5499 = !DILocalVariable(name: "dev", arg: 1, scope: !5496, file: !73, line: 215, type: !247)
!5500 = !DILocation(line: 215, column: 49, scope: !5496)
!5501 = !DILocalVariable(name: "size", arg: 2, scope: !5496, file: !73, line: 215, type: !360)
!5502 = !DILocation(line: 215, column: 61, scope: !5496)
!5503 = !DILocalVariable(name: "gfp", arg: 3, scope: !5496, file: !73, line: 215, type: !223)
!5504 = !DILocation(line: 215, column: 73, scope: !5496)
!5505 = !DILocation(line: 217, column: 22, scope: !5496)
!5506 = !DILocation(line: 217, column: 27, scope: !5496)
!5507 = !DILocation(line: 217, column: 33, scope: !5496)
!5508 = !DILocation(line: 217, column: 37, scope: !5496)
!5509 = !DILocation(line: 217, column: 9, scope: !5496)
!5510 = !DILocation(line: 217, column: 2, scope: !5496)
!5511 = distinct !DISubprogram(name: "saa6588_configure", scope: !3, file: !3, line: 326, type: !5512, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{null, !229}
!5514 = !DILocalVariable(name: "s", arg: 1, scope: !5511, file: !3, line: 326, type: !229)
!5515 = !DILocation(line: 326, column: 47, scope: !5511)
!5516 = !DILocalVariable(name: "client", scope: !5511, file: !3, line: 328, type: !5143)
!5517 = !DILocation(line: 328, column: 21, scope: !5511)
!5518 = !DILocation(line: 328, column: 51, scope: !5511)
!5519 = !DILocation(line: 328, column: 54, scope: !5511)
!5520 = !DILocation(line: 328, column: 30, scope: !5511)
!5521 = !DILocalVariable(name: "buf", scope: !5511, file: !3, line: 329, type: !5522)
!5522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 24, elements: !315)
!5523 = !DILocation(line: 329, column: 16, scope: !5511)
!5524 = !DILocalVariable(name: "rc", scope: !5511, file: !3, line: 330, type: !298)
!5525 = !DILocation(line: 330, column: 6, scope: !5511)
!5526 = !DILocation(line: 332, column: 2, scope: !5511)
!5527 = !DILocation(line: 332, column: 9, scope: !5511)
!5528 = !DILocation(line: 333, column: 6, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 333, column: 6)
!5530 = !DILocation(line: 333, column: 6, scope: !5511)
!5531 = !DILocation(line: 334, column: 3, scope: !5529)
!5532 = !DILocation(line: 334, column: 10, scope: !5529)
!5533 = !DILocation(line: 336, column: 2, scope: !5511)
!5534 = !DILocation(line: 336, column: 9, scope: !5511)
!5535 = !DILocation(line: 337, column: 10, scope: !5511)
!5536 = !DILocation(line: 337, column: 2, scope: !5511)
!5537 = !DILocation(line: 339, column: 3, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 337, column: 16)
!5539 = !DILocation(line: 339, column: 10, scope: !5538)
!5540 = !DILocation(line: 340, column: 3, scope: !5538)
!5541 = !DILocation(line: 342, column: 3, scope: !5538)
!5542 = !DILocation(line: 342, column: 10, scope: !5538)
!5543 = !DILocation(line: 343, column: 3, scope: !5538)
!5544 = !DILocation(line: 345, column: 3, scope: !5538)
!5545 = !DILocation(line: 345, column: 10, scope: !5538)
!5546 = !DILocation(line: 346, column: 3, scope: !5538)
!5547 = !DILocation(line: 348, column: 3, scope: !5538)
!5548 = !DILocation(line: 348, column: 10, scope: !5538)
!5549 = !DILocation(line: 349, column: 3, scope: !5538)
!5550 = !DILocation(line: 351, column: 3, scope: !5538)
!5551 = !DILocation(line: 354, column: 2, scope: !5511)
!5552 = !DILocation(line: 354, column: 9, scope: !5511)
!5553 = !DILocation(line: 356, column: 10, scope: !5511)
!5554 = !DILocation(line: 356, column: 2, scope: !5511)
!5555 = !DILocation(line: 358, column: 3, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 356, column: 16)
!5557 = !DILocation(line: 358, column: 10, scope: !5556)
!5558 = !DILocation(line: 359, column: 3, scope: !5556)
!5559 = !DILocation(line: 361, column: 3, scope: !5556)
!5560 = !DILocation(line: 361, column: 10, scope: !5556)
!5561 = !DILocation(line: 362, column: 3, scope: !5556)
!5562 = !DILocation(line: 364, column: 3, scope: !5556)
!5563 = !DILocation(line: 364, column: 10, scope: !5556)
!5564 = !DILocation(line: 365, column: 3, scope: !5556)
!5565 = !DILocation(line: 367, column: 3, scope: !5556)
!5566 = !DILocation(line: 367, column: 10, scope: !5556)
!5567 = !DILocation(line: 368, column: 3, scope: !5556)
!5568 = !DILocation(line: 370, column: 3, scope: !5556)
!5569 = !DILocation(line: 373, column: 2, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 373, column: 2)
!5571 = !DILocation(line: 373, column: 2, scope: !5511)
!5572 = !DILocation(line: 374, column: 3, scope: !5570)
!5573 = !DILocation(line: 374, column: 11, scope: !5570)
!5574 = !DILocation(line: 374, column: 19, scope: !5570)
!5575 = !DILocation(line: 376, column: 23, scope: !5511)
!5576 = !DILocation(line: 376, column: 31, scope: !5511)
!5577 = !DILocation(line: 376, column: 7, scope: !5511)
!5578 = !DILocation(line: 376, column: 5, scope: !5511)
!5579 = !DILocation(line: 377, column: 6, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 377, column: 6)
!5581 = !DILocation(line: 377, column: 9, scope: !5580)
!5582 = !DILocation(line: 377, column: 6, scope: !5511)
!5583 = !DILocation(line: 378, column: 60, scope: !5580)
!5584 = !DILocation(line: 378, column: 3, scope: !5580)
!5585 = !DILocation(line: 379, column: 1, scope: !5511)
!5586 = distinct !DISubprogram(name: "__init_work", scope: !182, file: !182, line: 215, type: !5587, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{null, !2011, !298}
!5589 = !DILocalVariable(name: "work", arg: 1, scope: !5586, file: !182, line: 215, type: !2011)
!5590 = !DILocation(line: 215, column: 52, scope: !5586)
!5591 = !DILocalVariable(name: "onstack", arg: 2, scope: !5586, file: !182, line: 215, type: !298)
!5592 = !DILocation(line: 215, column: 62, scope: !5586)
!5593 = !DILocation(line: 215, column: 73, scope: !5586)
!5594 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5595, file: !5595, line: 33, type: !5596, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5595 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5596 = !DISubroutineType(types: !5597)
!5597 = !{null, !262}
!5598 = !DILocalVariable(name: "list", arg: 1, scope: !5594, file: !5595, line: 33, type: !262)
!5599 = !DILocation(line: 33, column: 53, scope: !5594)
!5600 = !DILocation(line: 35, column: 2, scope: !5594)
!5601 = !DILocation(line: 35, column: 2, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5594, file: !5595, line: 35, column: 2)
!5603 = !DILocation(line: 35, column: 2, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5602, file: !5595, line: 35, column: 2)
!5605 = !DILocation(line: 35, column: 2, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5602, file: !5595, line: 35, column: 2)
!5607 = !DILocation(line: 36, column: 15, scope: !5594)
!5608 = !DILocation(line: 36, column: 2, scope: !5594)
!5609 = !DILocation(line: 36, column: 8, scope: !5594)
!5610 = !DILocation(line: 36, column: 13, scope: !5594)
!5611 = !DILocation(line: 37, column: 1, scope: !5594)
!5612 = distinct !DISubprogram(name: "saa6588_work", scope: !3, file: !3, line: 318, type: !2009, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5613 = !DILocalVariable(name: "m", arg: 1, scope: !5614, file: !5615, line: 363, type: !2871)
!5614 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5615, file: !5615, line: 363, type: !5616, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5615 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!5616 = !DISubroutineType(types: !5617)
!5617 = !{!226, !2871}
!5618 = !DILocation(line: 363, column: 74, scope: !5614, inlinedAt: !5619)
!5619 = distinct !DILocation(line: 323, column: 34, scope: !5612)
!5620 = !DILocalVariable(name: "work", arg: 1, scope: !5612, file: !3, line: 318, type: !2011)
!5621 = !DILocation(line: 318, column: 46, scope: !5612)
!5622 = !DILocalVariable(name: "s", scope: !5612, file: !3, line: 320, type: !229)
!5623 = !DILocation(line: 320, column: 18, scope: !5612)
!5624 = !DILocalVariable(name: "__mptr", scope: !5625, file: !3, line: 320, type: !225)
!5625 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 320, column: 22)
!5626 = !DILocation(line: 320, column: 22, scope: !5625)
!5627 = !DILocation(line: 320, column: 22, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 320, column: 22)
!5629 = !DILocation(line: 322, column: 19, scope: !5612)
!5630 = !DILocation(line: 322, column: 2, scope: !5612)
!5631 = !DILocation(line: 323, column: 25, scope: !5612)
!5632 = !DILocation(line: 323, column: 28, scope: !5612)
!5633 = !DILocation(line: 365, column: 27, scope: !5634, inlinedAt: !5619)
!5634 = distinct !DILexicalBlock(scope: !5614, file: !5615, line: 365, column: 6)
!5635 = !DILocation(line: 365, column: 6, scope: !5634, inlinedAt: !5619)
!5636 = !DILocation(line: 365, column: 6, scope: !5614, inlinedAt: !5619)
!5637 = !DILocation(line: 366, column: 12, scope: !5638, inlinedAt: !5619)
!5638 = distinct !DILexicalBlock(scope: !5639, file: !5615, line: 366, column: 7)
!5639 = distinct !DILexicalBlock(scope: !5634, file: !5615, line: 365, column: 31)
!5640 = !DILocation(line: 366, column: 14, scope: !5638, inlinedAt: !5619)
!5641 = !DILocation(line: 366, column: 7, scope: !5639, inlinedAt: !5619)
!5642 = !DILocation(line: 367, column: 4, scope: !5638, inlinedAt: !5619)
!5643 = !DILocation(line: 368, column: 28, scope: !5639, inlinedAt: !5619)
!5644 = !DILocation(line: 368, column: 10, scope: !5639, inlinedAt: !5619)
!5645 = !DILocation(line: 368, column: 3, scope: !5639, inlinedAt: !5619)
!5646 = !DILocation(line: 370, column: 29, scope: !5647, inlinedAt: !5619)
!5647 = distinct !DILexicalBlock(scope: !5634, file: !5615, line: 369, column: 9)
!5648 = !DILocation(line: 370, column: 10, scope: !5647, inlinedAt: !5619)
!5649 = !DILocation(line: 370, column: 3, scope: !5647, inlinedAt: !5619)
!5650 = !DILocation(line: 372, column: 1, scope: !5614, inlinedAt: !5619)
!5651 = !DILocation(line: 323, column: 2, scope: !5612)
!5652 = !DILocation(line: 324, column: 1, scope: !5612)
!5653 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !182, file: !182, line: 623, type: !5654, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5654 = !DISubroutineType(types: !5655)
!5655 = !{!528, !5656, !226}
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!5657 = !DILocalVariable(name: "dwork", arg: 1, scope: !5653, file: !182, line: 623, type: !5656)
!5658 = !DILocation(line: 623, column: 63, scope: !5653)
!5659 = !DILocalVariable(name: "delay", arg: 2, scope: !5653, file: !182, line: 624, type: !226)
!5660 = !DILocation(line: 624, column: 21, scope: !5653)
!5661 = !DILocation(line: 626, column: 28, scope: !5653)
!5662 = !DILocation(line: 626, column: 39, scope: !5653)
!5663 = !DILocation(line: 626, column: 46, scope: !5653)
!5664 = !DILocation(line: 626, column: 9, scope: !5653)
!5665 = !DILocation(line: 626, column: 2, scope: !5653)
!5666 = distinct !DISubprogram(name: "saa6588_ioctl", scope: !3, file: !3, line: 383, type: !4232, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5667 = !DILocalVariable(name: "sd", arg: 1, scope: !5666, file: !3, line: 383, type: !4183)
!5668 = !DILocation(line: 383, column: 47, scope: !5666)
!5669 = !DILocalVariable(name: "cmd", arg: 2, scope: !5666, file: !3, line: 383, type: !7)
!5670 = !DILocation(line: 383, column: 64, scope: !5666)
!5671 = !DILocalVariable(name: "arg", arg: 3, scope: !5666, file: !3, line: 383, type: !225)
!5672 = !DILocation(line: 383, column: 75, scope: !5666)
!5673 = !DILocalVariable(name: "s", scope: !5666, file: !3, line: 385, type: !229)
!5674 = !DILocation(line: 385, column: 18, scope: !5666)
!5675 = !DILocation(line: 385, column: 33, scope: !5666)
!5676 = !DILocation(line: 385, column: 22, scope: !5666)
!5677 = !DILocalVariable(name: "a", scope: !5666, file: !3, line: 386, type: !5678)
!5678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5679, size: 64)
!5679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "saa6588_command", file: !5680, line: 16, size: 384, elements: !5681)
!5680 = !DIFile(filename: "./include/media/i2c/saa6588.h", directory: "/home/lizy2001/genbc/linux")
!5681 = !{!5682, !5683, !5684, !5685, !5686, !5687, !5690}
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !5679, file: !5680, line: 17, baseType: !7, size: 32)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking", scope: !5679, file: !5680, line: 18, baseType: !528, size: 8, offset: 32)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !5679, file: !5680, line: 19, baseType: !298, size: 32, offset: 64)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5679, file: !5680, line: 20, baseType: !4971, size: 64, offset: 128)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !5679, file: !5680, line: 21, baseType: !390, size: 64, offset: 192)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !5679, file: !5680, line: 22, baseType: !5688, size: 64, offset: 256)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !2951, line: 46, baseType: !2950)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "poll_mask", scope: !5679, file: !5680, line: 23, baseType: !227, size: 32, offset: 320)
!5691 = !DILocation(line: 386, column: 26, scope: !5666)
!5692 = !DILocation(line: 386, column: 30, scope: !5666)
!5693 = !DILocation(line: 388, column: 10, scope: !5666)
!5694 = !DILocation(line: 388, column: 2, scope: !5666)
!5695 = !DILocation(line: 391, column: 3, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5666, file: !3, line: 388, column: 15)
!5697 = !DILocation(line: 391, column: 6, scope: !5696)
!5698 = !DILocation(line: 391, column: 30, scope: !5696)
!5699 = !DILocation(line: 392, column: 3, scope: !5696)
!5700 = !DILocation(line: 393, column: 3, scope: !5696)
!5701 = !DILocation(line: 393, column: 6, scope: !5696)
!5702 = !DILocation(line: 393, column: 30, scope: !5696)
!5703 = !DILocation(line: 394, column: 3, scope: !5696)
!5704 = !DILocation(line: 394, column: 6, scope: !5696)
!5705 = !DILocation(line: 394, column: 13, scope: !5696)
!5706 = !DILocation(line: 395, column: 3, scope: !5696)
!5707 = !DILocation(line: 398, column: 17, scope: !5696)
!5708 = !DILocation(line: 398, column: 20, scope: !5696)
!5709 = !DILocation(line: 398, column: 3, scope: !5696)
!5710 = !DILocation(line: 399, column: 3, scope: !5696)
!5711 = !DILocation(line: 402, column: 3, scope: !5696)
!5712 = !DILocation(line: 402, column: 6, scope: !5696)
!5713 = !DILocation(line: 402, column: 16, scope: !5696)
!5714 = !DILocation(line: 403, column: 7, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 403, column: 7)
!5716 = !DILocation(line: 403, column: 10, scope: !5715)
!5717 = !DILocation(line: 403, column: 7, scope: !5696)
!5718 = !DILocation(line: 404, column: 4, scope: !5715)
!5719 = !DILocation(line: 404, column: 7, scope: !5715)
!5720 = !DILocation(line: 404, column: 17, scope: !5715)
!5721 = !DILocation(line: 405, column: 13, scope: !5696)
!5722 = !DILocation(line: 405, column: 16, scope: !5696)
!5723 = !DILocation(line: 405, column: 27, scope: !5696)
!5724 = !DILocation(line: 405, column: 30, scope: !5696)
!5725 = !DILocation(line: 405, column: 42, scope: !5696)
!5726 = !DILocation(line: 405, column: 45, scope: !5696)
!5727 = !DILocation(line: 405, column: 3, scope: !5696)
!5728 = !DILocation(line: 406, column: 3, scope: !5696)
!5729 = !DILocation(line: 410, column: 3, scope: !5696)
!5730 = !DILocation(line: 412, column: 2, scope: !5666)
!5731 = !DILocation(line: 413, column: 1, scope: !5666)
!5732 = distinct !DISubprogram(name: "to_saa6588", scope: !3, file: !3, line: 70, type: !5733, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5733 = !DISubroutineType(types: !5734)
!5734 = !{!229, !4183}
!5735 = !DILocalVariable(name: "sd", arg: 1, scope: !5732, file: !3, line: 70, type: !4183)
!5736 = !DILocation(line: 70, column: 62, scope: !5732)
!5737 = !DILocalVariable(name: "__mptr", scope: !5738, file: !3, line: 72, type: !225)
!5738 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 72, column: 9)
!5739 = !DILocation(line: 72, column: 9, scope: !5738)
!5740 = !DILocation(line: 72, column: 9, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 72, column: 9)
!5742 = !DILocation(line: 72, column: 2, scope: !5732)
!5743 = distinct !DISubprogram(name: "read_from_buf", scope: !3, file: !3, line: 170, type: !5744, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5744 = !DISubroutineType(types: !5745)
!5745 = !{null, !229, !5678}
!5746 = !DILocation(line: 327, column: 67, scope: !5388, inlinedAt: !5747)
!5747 = distinct !DILocation(line: 215, column: 2, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 215, column: 2)
!5749 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 215, column: 2)
!5750 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 215, column: 2)
!5751 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 215, column: 2)
!5752 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 215, column: 2)
!5753 = !DILocalVariable(name: "addr", arg: 1, scope: !5754, file: !5755, line: 138, type: !2171)
!5754 = distinct !DISubprogram(name: "check_copy_size", scope: !5755, file: !5755, line: 138, type: !5756, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5755 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!528, !2171, !360, !528}
!5758 = !DILocation(line: 138, column: 29, scope: !5754, inlinedAt: !5759)
!5759 = distinct !DILocation(line: 199, column: 6, scope: !5760, inlinedAt: !5765)
!5760 = distinct !DILexicalBlock(scope: !5762, file: !5761, line: 199, column: 6)
!5761 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!5762 = distinct !DISubprogram(name: "copy_to_user", scope: !5761, file: !5761, line: 197, type: !5763, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{!226, !225, !2171, !226}
!5765 = distinct !DILocation(line: 208, column: 7, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 208, column: 7)
!5767 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 200, column: 34)
!5768 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 200, column: 2)
!5769 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 200, column: 2)
!5770 = !DILocalVariable(name: "bytes", arg: 2, scope: !5754, file: !5755, line: 138, type: !360)
!5771 = !DILocation(line: 138, column: 42, scope: !5754, inlinedAt: !5759)
!5772 = !DILocalVariable(name: "is_source", arg: 3, scope: !5754, file: !5755, line: 138, type: !528)
!5773 = !DILocation(line: 138, column: 54, scope: !5754, inlinedAt: !5759)
!5774 = !DILocalVariable(name: "sz", scope: !5754, file: !5755, line: 140, type: !298)
!5775 = !DILocation(line: 140, column: 6, scope: !5754, inlinedAt: !5759)
!5776 = !DILocalVariable(name: "__ret_warn_on", scope: !5777, file: !5755, line: 150, type: !298)
!5777 = distinct !DILexicalBlock(scope: !5778, file: !5755, line: 150, column: 6)
!5778 = distinct !DILexicalBlock(scope: !5754, file: !5755, line: 150, column: 6)
!5779 = !DILocation(line: 150, column: 6, scope: !5777, inlinedAt: !5759)
!5780 = !DILocalVariable(name: "to", arg: 1, scope: !5762, file: !5761, line: 197, type: !225)
!5781 = !DILocation(line: 197, column: 27, scope: !5762, inlinedAt: !5765)
!5782 = !DILocalVariable(name: "from", arg: 2, scope: !5762, file: !5761, line: 197, type: !2171)
!5783 = !DILocation(line: 197, column: 43, scope: !5762, inlinedAt: !5765)
!5784 = !DILocalVariable(name: "n", arg: 3, scope: !5762, file: !5761, line: 197, type: !226)
!5785 = !DILocation(line: 197, column: 63, scope: !5762, inlinedAt: !5765)
!5786 = !DILocalVariable(name: "lock", arg: 1, scope: !5787, file: !5389, line: 407, type: !1102)
!5787 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5389, file: !5389, line: 407, type: !5788, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!5788 = !DISubroutineType(types: !5789)
!5789 = !{null, !1102, !226}
!5790 = !DILocation(line: 407, column: 64, scope: !5787, inlinedAt: !5791)
!5791 = distinct !DILocation(line: 205, column: 3, scope: !5767)
!5792 = !DILocalVariable(name: "flags", arg: 2, scope: !5787, file: !5389, line: 407, type: !226)
!5793 = !DILocation(line: 407, column: 84, scope: !5787, inlinedAt: !5791)
!5794 = !DILocation(line: 327, column: 67, scope: !5388, inlinedAt: !5795)
!5795 = distinct !DILocation(line: 203, column: 3, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 203, column: 3)
!5797 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 203, column: 3)
!5798 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 203, column: 3)
!5799 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 203, column: 3)
!5800 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 203, column: 3)
!5801 = !DILocation(line: 407, column: 64, scope: !5787, inlinedAt: !5802)
!5802 = distinct !DILocation(line: 195, column: 2, scope: !5743)
!5803 = !DILocation(line: 407, column: 84, scope: !5787, inlinedAt: !5802)
!5804 = !DILocation(line: 407, column: 64, scope: !5787, inlinedAt: !5805)
!5805 = distinct !DILocation(line: 217, column: 2, scope: !5743)
!5806 = !DILocation(line: 407, column: 84, scope: !5787, inlinedAt: !5805)
!5807 = !DILocation(line: 327, column: 67, scope: !5388, inlinedAt: !5808)
!5808 = distinct !DILocation(line: 192, column: 2, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 192, column: 2)
!5810 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 192, column: 2)
!5811 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 192, column: 2)
!5812 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 192, column: 2)
!5813 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 192, column: 2)
!5814 = !DILocalVariable(name: "s", arg: 1, scope: !5743, file: !3, line: 170, type: !229)
!5815 = !DILocation(line: 170, column: 43, scope: !5743)
!5816 = !DILocalVariable(name: "a", arg: 2, scope: !5743, file: !3, line: 170, type: !5678)
!5817 = !DILocation(line: 170, column: 70, scope: !5743)
!5818 = !DILocalVariable(name: "buf_ptr", scope: !5743, file: !3, line: 172, type: !4971)
!5819 = !DILocation(line: 172, column: 24, scope: !5743)
!5820 = !DILocation(line: 172, column: 34, scope: !5743)
!5821 = !DILocation(line: 172, column: 37, scope: !5743)
!5822 = !DILocalVariable(name: "buf", scope: !5743, file: !3, line: 173, type: !5522)
!5823 = !DILocation(line: 173, column: 16, scope: !5743)
!5824 = !DILocalVariable(name: "flags", scope: !5743, file: !3, line: 174, type: !226)
!5825 = !DILocation(line: 174, column: 16, scope: !5743)
!5826 = !DILocalVariable(name: "rd_blocks", scope: !5743, file: !3, line: 175, type: !7)
!5827 = !DILocation(line: 175, column: 15, scope: !5743)
!5828 = !DILocalVariable(name: "i", scope: !5743, file: !3, line: 176, type: !7)
!5829 = !DILocation(line: 176, column: 15, scope: !5743)
!5830 = !DILocation(line: 178, column: 2, scope: !5743)
!5831 = !DILocation(line: 178, column: 5, scope: !5743)
!5832 = !DILocation(line: 178, column: 12, scope: !5743)
!5833 = !DILocation(line: 179, column: 7, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 179, column: 6)
!5835 = !DILocation(line: 179, column: 10, scope: !5834)
!5836 = !DILocation(line: 179, column: 6, scope: !5743)
!5837 = !DILocation(line: 180, column: 3, scope: !5834)
!5838 = !DILocation(line: 182, column: 2, scope: !5743)
!5839 = !DILocation(line: 182, column: 10, scope: !5743)
!5840 = !DILocation(line: 182, column: 13, scope: !5743)
!5841 = !DILocation(line: 182, column: 25, scope: !5743)
!5842 = !DILocation(line: 182, column: 29, scope: !5743)
!5843 = !DILocation(line: 182, column: 32, scope: !5743)
!5844 = !DILocation(line: 182, column: 28, scope: !5743)
!5845 = !DILocation(line: 0, scope: !5743)
!5846 = !DILocalVariable(name: "ret", scope: !5847, file: !3, line: 183, type: !298)
!5847 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 182, column: 57)
!5848 = !DILocation(line: 183, column: 7, scope: !5847)
!5849 = !DILocalVariable(name: "__ret", scope: !5850, file: !3, line: 183, type: !298)
!5850 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 183, column: 13)
!5851 = !DILocation(line: 183, column: 13, scope: !5850)
!5852 = !DILocation(line: 183, column: 13, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 183, column: 13)
!5854 = !DILocation(line: 183, column: 13, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 183, column: 13)
!5856 = !DILocation(line: 183, column: 13, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 183, column: 13)
!5858 = !DILocalVariable(name: "__wq_entry", scope: !5859, file: !3, line: 183, type: !5860)
!5859 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 183, column: 13)
!5860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1525, line: 29, size: 320, elements: !5861)
!5861 = !{!5862, !5863, !5864, !5870}
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5860, file: !1525, line: 30, baseType: !7, size: 32)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5860, file: !1525, line: 31, baseType: !225, size: 64, offset: 64)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5860, file: !1525, line: 32, baseType: !5865, size: 64, offset: 128)
!5865 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1525, line: 16, baseType: !5866)
!5866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5867, size: 64)
!5867 = !DISubroutineType(types: !5868)
!5868 = !{!298, !5869, !7, !298, !225}
!5869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5860, size: 64)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5860, file: !1525, line: 33, baseType: !259, size: 128, offset: 192)
!5871 = !DILocation(line: 183, column: 13, scope: !5859)
!5872 = !DILocalVariable(name: "__ret", scope: !5859, file: !3, line: 183, type: !183)
!5873 = !DILocalVariable(name: "__int", scope: !5874, file: !3, line: 183, type: !183)
!5874 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 183, column: 13)
!5875 = distinct !DILexicalBlock(scope: !5876, file: !3, line: 183, column: 13)
!5876 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 183, column: 13)
!5877 = !DILocation(line: 183, column: 13, scope: !5874)
!5878 = !DILocation(line: 183, column: 13, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 183, column: 13)
!5880 = !DILocation(line: 183, column: 13, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 183, column: 13)
!5882 = !DILocation(line: 183, column: 13, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 183, column: 13)
!5884 = !DILocation(line: 183, column: 13, scope: !5875)
!5885 = distinct !{!5885, !5886, !5886}
!5886 = !DILocation(line: 183, column: 13, scope: !5876)
!5887 = !DILabel(scope: !5859, name: "__out", file: !3, line: 183)
!5888 = !DILocation(line: 185, column: 7, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 185, column: 7)
!5890 = !DILocation(line: 185, column: 11, scope: !5889)
!5891 = !DILocation(line: 185, column: 7, scope: !5847)
!5892 = !DILocation(line: 186, column: 4, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 185, column: 28)
!5894 = !DILocation(line: 186, column: 7, scope: !5893)
!5895 = !DILocation(line: 186, column: 14, scope: !5893)
!5896 = !DILocation(line: 187, column: 4, scope: !5893)
!5897 = distinct !{!5897, !5838, !5898}
!5898 = !DILocation(line: 189, column: 2, scope: !5743)
!5899 = !DILocation(line: 191, column: 14, scope: !5743)
!5900 = !DILocation(line: 191, column: 17, scope: !5743)
!5901 = !DILocation(line: 191, column: 12, scope: !5743)
!5902 = !DILocation(line: 192, column: 2, scope: !5743)
!5903 = !DILocation(line: 192, column: 2, scope: !5813)
!5904 = !DILocalVariable(name: "__dummy", scope: !5905, file: !3, line: 192, type: !226)
!5905 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 192, column: 2)
!5906 = !DILocation(line: 192, column: 2, scope: !5905)
!5907 = !DILocalVariable(name: "__dummy2", scope: !5905, file: !3, line: 192, type: !226)
!5908 = !DILocation(line: 192, column: 2, scope: !5812)
!5909 = !DILocation(line: 192, column: 2, scope: !5811)
!5910 = !DILocation(line: 192, column: 2, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 192, column: 2)
!5912 = !DILocalVariable(name: "__dummy", scope: !5913, file: !3, line: 192, type: !226)
!5913 = distinct !DILexicalBlock(scope: !5914, file: !3, line: 192, column: 2)
!5914 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 192, column: 2)
!5915 = !DILocation(line: 192, column: 2, scope: !5913)
!5916 = !DILocalVariable(name: "__dummy2", scope: !5913, file: !3, line: 192, type: !226)
!5917 = !DILocation(line: 192, column: 2, scope: !5914)
!5918 = !DILocation(line: 192, column: 2, scope: !5810)
!5919 = !{i32 -2140919660}
!5920 = !DILocation(line: 192, column: 2, scope: !5809)
!5921 = !DILocation(line: 329, column: 10, scope: !5388, inlinedAt: !5808)
!5922 = !DILocation(line: 329, column: 16, scope: !5388, inlinedAt: !5808)
!5923 = !DILocation(line: 193, column: 6, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 193, column: 6)
!5925 = !DILocation(line: 193, column: 18, scope: !5924)
!5926 = !DILocation(line: 193, column: 21, scope: !5924)
!5927 = !DILocation(line: 193, column: 16, scope: !5924)
!5928 = !DILocation(line: 193, column: 6, scope: !5743)
!5929 = !DILocation(line: 194, column: 15, scope: !5924)
!5930 = !DILocation(line: 194, column: 18, scope: !5924)
!5931 = !DILocation(line: 194, column: 13, scope: !5924)
!5932 = !DILocation(line: 194, column: 3, scope: !5924)
!5933 = !DILocation(line: 195, column: 26, scope: !5743)
!5934 = !DILocation(line: 195, column: 29, scope: !5743)
!5935 = !DILocation(line: 195, column: 35, scope: !5743)
!5936 = !DILocalVariable(name: "__dummy", scope: !5937, file: !5389, line: 409, type: !226)
!5937 = distinct !DILexicalBlock(scope: !5938, file: !5389, line: 409, column: 2)
!5938 = distinct !DILexicalBlock(scope: !5787, file: !5389, line: 409, column: 2)
!5939 = !DILocation(line: 409, column: 2, scope: !5937, inlinedAt: !5802)
!5940 = !DILocalVariable(name: "__dummy2", scope: !5937, file: !5389, line: 409, type: !226)
!5941 = !DILocalVariable(name: "__dummy", scope: !5942, file: !5389, line: 409, type: !226)
!5942 = distinct !DILexicalBlock(scope: !5943, file: !5389, line: 409, column: 2)
!5943 = distinct !DILexicalBlock(scope: !5944, file: !5389, line: 409, column: 2)
!5944 = distinct !DILexicalBlock(scope: !5945, file: !5389, line: 409, column: 2)
!5945 = distinct !DILexicalBlock(scope: !5938, file: !5389, line: 409, column: 2)
!5946 = !DILocation(line: 409, column: 2, scope: !5942, inlinedAt: !5802)
!5947 = !DILocalVariable(name: "__dummy2", scope: !5942, file: !5389, line: 409, type: !226)
!5948 = !DILocation(line: 409, column: 2, scope: !5943, inlinedAt: !5802)
!5949 = !DILocation(line: 409, column: 2, scope: !5950, inlinedAt: !5802)
!5950 = distinct !DILexicalBlock(scope: !5945, file: !5389, line: 409, column: 2)
!5951 = !{i32 -2145465515}
!5952 = !DILocation(line: 409, column: 2, scope: !5953, inlinedAt: !5802)
!5953 = distinct !DILexicalBlock(scope: !5950, file: !5389, line: 409, column: 2)
!5954 = !DILocation(line: 197, column: 7, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 197, column: 6)
!5956 = !DILocation(line: 197, column: 6, scope: !5743)
!5957 = !DILocation(line: 198, column: 3, scope: !5955)
!5958 = !DILocation(line: 200, column: 9, scope: !5769)
!5959 = !DILocation(line: 200, column: 7, scope: !5769)
!5960 = !DILocation(line: 200, column: 14, scope: !5768)
!5961 = !DILocation(line: 200, column: 18, scope: !5768)
!5962 = !DILocation(line: 200, column: 16, scope: !5768)
!5963 = !DILocation(line: 200, column: 2, scope: !5769)
!5964 = !DILocalVariable(name: "got_block", scope: !5767, file: !3, line: 201, type: !528)
!5965 = !DILocation(line: 201, column: 8, scope: !5767)
!5966 = !DILocation(line: 203, column: 3, scope: !5767)
!5967 = !DILocation(line: 203, column: 3, scope: !5800)
!5968 = !DILocalVariable(name: "__dummy", scope: !5969, file: !3, line: 203, type: !226)
!5969 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 203, column: 3)
!5970 = !DILocation(line: 203, column: 3, scope: !5969)
!5971 = !DILocalVariable(name: "__dummy2", scope: !5969, file: !3, line: 203, type: !226)
!5972 = !DILocation(line: 203, column: 3, scope: !5799)
!5973 = !DILocation(line: 203, column: 3, scope: !5798)
!5974 = !DILocation(line: 203, column: 3, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 203, column: 3)
!5976 = !DILocalVariable(name: "__dummy", scope: !5977, file: !3, line: 203, type: !226)
!5977 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 203, column: 3)
!5978 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 203, column: 3)
!5979 = !DILocation(line: 203, column: 3, scope: !5977)
!5980 = !DILocalVariable(name: "__dummy2", scope: !5977, file: !3, line: 203, type: !226)
!5981 = !DILocation(line: 203, column: 3, scope: !5978)
!5982 = !DILocation(line: 203, column: 3, scope: !5797)
!5983 = !{i32 -2140918662}
!5984 = !DILocation(line: 203, column: 3, scope: !5796)
!5985 = !DILocation(line: 329, column: 10, scope: !5388, inlinedAt: !5795)
!5986 = !DILocation(line: 329, column: 16, scope: !5388, inlinedAt: !5795)
!5987 = !DILocation(line: 204, column: 30, scope: !5767)
!5988 = !DILocation(line: 204, column: 33, scope: !5767)
!5989 = !DILocation(line: 204, column: 15, scope: !5767)
!5990 = !DILocation(line: 204, column: 13, scope: !5767)
!5991 = !DILocation(line: 205, column: 27, scope: !5767)
!5992 = !DILocation(line: 205, column: 30, scope: !5767)
!5993 = !DILocation(line: 205, column: 36, scope: !5767)
!5994 = !DILocation(line: 409, column: 2, scope: !5937, inlinedAt: !5791)
!5995 = !DILocation(line: 409, column: 2, scope: !5942, inlinedAt: !5791)
!5996 = !DILocation(line: 409, column: 2, scope: !5943, inlinedAt: !5791)
!5997 = !DILocation(line: 409, column: 2, scope: !5950, inlinedAt: !5791)
!5998 = !DILocation(line: 409, column: 2, scope: !5953, inlinedAt: !5791)
!5999 = !DILocation(line: 206, column: 8, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 206, column: 7)
!6001 = !DILocation(line: 206, column: 7, scope: !5767)
!6002 = !DILocation(line: 207, column: 4, scope: !6000)
!6003 = !DILocation(line: 208, column: 20, scope: !5766)
!6004 = !DILocation(line: 208, column: 29, scope: !5766)
!6005 = !DILocation(line: 199, column: 6, scope: !5760, inlinedAt: !5765)
!6006 = !DILocation(line: 141, column: 6, scope: !6007, inlinedAt: !5759)
!6007 = distinct !DILexicalBlock(scope: !5754, file: !5755, line: 141, column: 6)
!6008 = !DILocation(line: 0, scope: !6007, inlinedAt: !5759)
!6009 = !DILocation(line: 141, column: 6, scope: !5754, inlinedAt: !5759)
!6010 = !DILocation(line: 142, column: 29, scope: !6011, inlinedAt: !5759)
!6011 = distinct !DILexicalBlock(scope: !6012, file: !5755, line: 142, column: 7)
!6012 = distinct !DILexicalBlock(scope: !6007, file: !5755, line: 141, column: 39)
!6013 = !DILocation(line: 142, column: 8, scope: !6011, inlinedAt: !5759)
!6014 = !DILocation(line: 142, column: 7, scope: !6012, inlinedAt: !5759)
!6015 = !DILocation(line: 143, column: 18, scope: !6011, inlinedAt: !5759)
!6016 = !DILocation(line: 143, column: 22, scope: !6011, inlinedAt: !5759)
!6017 = !DILocation(line: 143, column: 4, scope: !6011, inlinedAt: !5759)
!6018 = !DILocation(line: 144, column: 12, scope: !6019, inlinedAt: !5759)
!6019 = distinct !DILexicalBlock(scope: !6011, file: !5755, line: 144, column: 12)
!6020 = !DILocation(line: 144, column: 12, scope: !6011, inlinedAt: !5759)
!6021 = !DILocation(line: 145, column: 4, scope: !6019, inlinedAt: !5759)
!6022 = !DILocation(line: 147, column: 4, scope: !6019, inlinedAt: !5759)
!6023 = !DILocation(line: 148, column: 3, scope: !6012, inlinedAt: !5759)
!6024 = !DILocation(line: 150, column: 6, scope: !6025, inlinedAt: !5759)
!6025 = distinct !DILexicalBlock(scope: !5777, file: !5755, line: 150, column: 6)
!6026 = !DILocation(line: 150, column: 6, scope: !6027, inlinedAt: !5759)
!6027 = distinct !DILexicalBlock(scope: !6028, file: !5755, line: 150, column: 6)
!6028 = distinct !DILexicalBlock(scope: !6025, file: !5755, line: 150, column: 6)
!6029 = !{i32 -2145547957, i32 -2145547928, i32 -2145547882, i32 -2145547824, i32 -2145547770, i32 -2145547716, i32 -2145547661, i32 -2145547630}
!6030 = !DILocation(line: 150, column: 6, scope: !6031, inlinedAt: !5759)
!6031 = distinct !DILexicalBlock(scope: !6028, file: !5755, line: 150, column: 6)
!6032 = !{i32 -2145547210, i32 -2145547203, i32 -2145547151, i32 -2145547120, i32 -2145547090}
!6033 = !DILocation(line: 150, column: 6, scope: !6028, inlinedAt: !5759)
!6034 = !DILocation(line: 150, column: 6, scope: !5778, inlinedAt: !5759)
!6035 = !DILocation(line: 150, column: 6, scope: !5754, inlinedAt: !5759)
!6036 = !DILocation(line: 151, column: 3, scope: !5778, inlinedAt: !5759)
!6037 = !DILocation(line: 152, column: 20, scope: !5754, inlinedAt: !5759)
!6038 = !DILocation(line: 152, column: 26, scope: !5754, inlinedAt: !5759)
!6039 = !DILocation(line: 152, column: 33, scope: !5754, inlinedAt: !5759)
!6040 = !DILocation(line: 152, column: 2, scope: !5754, inlinedAt: !5759)
!6041 = !DILocation(line: 153, column: 2, scope: !5754, inlinedAt: !5759)
!6042 = !DILocation(line: 154, column: 1, scope: !5754, inlinedAt: !5759)
!6043 = !DILocation(line: 199, column: 6, scope: !5762, inlinedAt: !5765)
!6044 = !DILocation(line: 200, column: 21, scope: !5760, inlinedAt: !5765)
!6045 = !DILocation(line: 200, column: 25, scope: !5760, inlinedAt: !5765)
!6046 = !DILocation(line: 200, column: 31, scope: !5760, inlinedAt: !5765)
!6047 = !DILocation(line: 200, column: 7, scope: !5760, inlinedAt: !5765)
!6048 = !DILocation(line: 200, column: 5, scope: !5760, inlinedAt: !5765)
!6049 = !DILocation(line: 200, column: 3, scope: !5760, inlinedAt: !5765)
!6050 = !DILocation(line: 201, column: 9, scope: !5762, inlinedAt: !5765)
!6051 = !DILocation(line: 208, column: 7, scope: !5766)
!6052 = !DILocation(line: 208, column: 7, scope: !5767)
!6053 = !DILocation(line: 209, column: 4, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 208, column: 38)
!6055 = !DILocation(line: 209, column: 7, scope: !6054)
!6056 = !DILocation(line: 209, column: 14, scope: !6054)
!6057 = !DILocation(line: 210, column: 4, scope: !6054)
!6058 = !DILocation(line: 212, column: 11, scope: !5767)
!6059 = !DILocation(line: 213, column: 3, scope: !5767)
!6060 = !DILocation(line: 213, column: 6, scope: !5767)
!6061 = !DILocation(line: 213, column: 13, scope: !5767)
!6062 = !DILocation(line: 214, column: 2, scope: !5767)
!6063 = !DILocation(line: 200, column: 30, scope: !5768)
!6064 = !DILocation(line: 200, column: 2, scope: !5768)
!6065 = distinct !{!6065, !5963, !6066}
!6066 = !DILocation(line: 214, column: 2, scope: !5769)
!6067 = !DILocation(line: 215, column: 2, scope: !5743)
!6068 = !DILocation(line: 215, column: 2, scope: !5752)
!6069 = !DILocalVariable(name: "__dummy", scope: !6070, file: !3, line: 215, type: !226)
!6070 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 215, column: 2)
!6071 = !DILocation(line: 215, column: 2, scope: !6070)
!6072 = !DILocalVariable(name: "__dummy2", scope: !6070, file: !3, line: 215, type: !226)
!6073 = !DILocation(line: 215, column: 2, scope: !5751)
!6074 = !DILocation(line: 215, column: 2, scope: !5750)
!6075 = !DILocation(line: 215, column: 2, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 215, column: 2)
!6077 = !DILocalVariable(name: "__dummy", scope: !6078, file: !3, line: 215, type: !226)
!6078 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 215, column: 2)
!6079 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 215, column: 2)
!6080 = !DILocation(line: 215, column: 2, scope: !6078)
!6081 = !DILocalVariable(name: "__dummy2", scope: !6078, file: !3, line: 215, type: !226)
!6082 = !DILocation(line: 215, column: 2, scope: !6079)
!6083 = !DILocation(line: 215, column: 2, scope: !5749)
!6084 = !{i32 -2140917661}
!6085 = !DILocation(line: 215, column: 2, scope: !5748)
!6086 = !DILocation(line: 329, column: 10, scope: !5388, inlinedAt: !5747)
!6087 = !DILocation(line: 329, column: 16, scope: !5388, inlinedAt: !5747)
!6088 = !DILocation(line: 216, column: 32, scope: !5743)
!6089 = !DILocation(line: 216, column: 35, scope: !5743)
!6090 = !DILocation(line: 216, column: 47, scope: !5743)
!6091 = !DILocation(line: 216, column: 2, scope: !5743)
!6092 = !DILocation(line: 216, column: 5, scope: !5743)
!6093 = !DILocation(line: 216, column: 29, scope: !5743)
!6094 = !DILocation(line: 217, column: 26, scope: !5743)
!6095 = !DILocation(line: 217, column: 29, scope: !5743)
!6096 = !DILocation(line: 217, column: 35, scope: !5743)
!6097 = !DILocation(line: 409, column: 2, scope: !5937, inlinedAt: !5805)
!6098 = !DILocation(line: 409, column: 2, scope: !5942, inlinedAt: !5805)
!6099 = !DILocation(line: 409, column: 2, scope: !5943, inlinedAt: !5805)
!6100 = !DILocation(line: 409, column: 2, scope: !5950, inlinedAt: !5805)
!6101 = !DILocation(line: 409, column: 2, scope: !5953, inlinedAt: !5805)
!6102 = !DILocation(line: 218, column: 1, scope: !5743)
!6103 = distinct !DISubprogram(name: "poll_wait", scope: !2951, file: !2951, line: 48, type: !6104, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6104 = !DISubroutineType(types: !6105)
!6105 = !{null, !390, !2958, !5688}
!6106 = !DILocalVariable(name: "filp", arg: 1, scope: !6103, file: !2951, line: 48, type: !390)
!6107 = !DILocation(line: 48, column: 44, scope: !6103)
!6108 = !DILocalVariable(name: "wait_address", arg: 2, scope: !6103, file: !2951, line: 48, type: !2958)
!6109 = !DILocation(line: 48, column: 70, scope: !6103)
!6110 = !DILocalVariable(name: "p", arg: 3, scope: !6103, file: !2951, line: 48, type: !5688)
!6111 = !DILocation(line: 48, column: 96, scope: !6103)
!6112 = !DILocation(line: 50, column: 6, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6103, file: !2951, line: 50, column: 6)
!6114 = !DILocation(line: 50, column: 8, scope: !6113)
!6115 = !DILocation(line: 50, column: 11, scope: !6113)
!6116 = !DILocation(line: 50, column: 14, scope: !6113)
!6117 = !DILocation(line: 50, column: 21, scope: !6113)
!6118 = !DILocation(line: 50, column: 24, scope: !6113)
!6119 = !DILocation(line: 50, column: 6, scope: !6103)
!6120 = !DILocation(line: 51, column: 3, scope: !6113)
!6121 = !DILocation(line: 51, column: 6, scope: !6113)
!6122 = !DILocation(line: 51, column: 13, scope: !6113)
!6123 = !DILocation(line: 51, column: 19, scope: !6113)
!6124 = !DILocation(line: 51, column: 33, scope: !6113)
!6125 = !DILocation(line: 52, column: 1, scope: !6103)
!6126 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !6127, file: !6127, line: 666, type: !6128, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6127 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6128 = !DISubroutineType(types: !6129)
!6129 = !{!226}
!6130 = !DILocalVariable(name: "f", scope: !6126, file: !6127, line: 668, type: !226)
!6131 = !DILocation(line: 668, column: 16, scope: !6126)
!6132 = !DILocation(line: 670, column: 6, scope: !6126)
!6133 = !DILocation(line: 670, column: 4, scope: !6126)
!6134 = !DILocation(line: 671, column: 2, scope: !6126)
!6135 = !DILocation(line: 672, column: 9, scope: !6126)
!6136 = !DILocation(line: 672, column: 2, scope: !6126)
!6137 = distinct !DISubprogram(name: "block_from_buf", scope: !3, file: !3, line: 141, type: !6138, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6138 = !DISubroutineType(types: !6139)
!6139 = !{!528, !229, !4971}
!6140 = !DILocalVariable(name: "s", arg: 1, scope: !6137, file: !3, line: 141, type: !229)
!6141 = !DILocation(line: 141, column: 44, scope: !6137)
!6142 = !DILocalVariable(name: "buf", arg: 2, scope: !6137, file: !3, line: 141, type: !4971)
!6143 = !DILocation(line: 141, column: 62, scope: !6137)
!6144 = !DILocalVariable(name: "i", scope: !6137, file: !3, line: 143, type: !298)
!6145 = !DILocation(line: 143, column: 6, scope: !6137)
!6146 = !DILocation(line: 145, column: 6, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 145, column: 6)
!6148 = !DILocation(line: 145, column: 9, scope: !6147)
!6149 = !DILocation(line: 145, column: 21, scope: !6147)
!6150 = !DILocation(line: 145, column: 24, scope: !6147)
!6151 = !DILocation(line: 145, column: 18, scope: !6147)
!6152 = !DILocation(line: 145, column: 6, scope: !6137)
!6153 = !DILocation(line: 146, column: 7, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6155, file: !3, line: 146, column: 7)
!6155 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 145, column: 34)
!6156 = !DILocation(line: 146, column: 13, scope: !6154)
!6157 = !DILocation(line: 146, column: 7, scope: !6155)
!6158 = !DILocation(line: 147, column: 4, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6154, file: !3, line: 147, column: 4)
!6160 = !DILocation(line: 147, column: 4, scope: !6154)
!6161 = !DILocation(line: 148, column: 3, scope: !6155)
!6162 = !DILocation(line: 151, column: 6, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 151, column: 6)
!6164 = !DILocation(line: 151, column: 12, scope: !6163)
!6165 = !DILocation(line: 151, column: 6, scope: !6137)
!6166 = !DILocation(line: 152, column: 3, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6168, file: !3, line: 152, column: 3)
!6168 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 151, column: 17)
!6169 = !DILocation(line: 152, column: 3, scope: !6168)
!6170 = !DILocation(line: 153, column: 12, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6168, file: !3, line: 153, column: 3)
!6172 = !DILocation(line: 153, column: 15, scope: !6171)
!6173 = !DILocation(line: 153, column: 10, scope: !6171)
!6174 = !DILocation(line: 153, column: 8, scope: !6171)
!6175 = !DILocation(line: 153, column: 25, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 153, column: 3)
!6177 = !DILocation(line: 153, column: 29, scope: !6176)
!6178 = !DILocation(line: 153, column: 32, scope: !6176)
!6179 = !DILocation(line: 153, column: 41, scope: !6176)
!6180 = !DILocation(line: 153, column: 27, scope: !6176)
!6181 = !DILocation(line: 153, column: 3, scope: !6171)
!6182 = !DILocation(line: 154, column: 4, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 154, column: 4)
!6184 = !DILocation(line: 154, column: 4, scope: !6176)
!6185 = !DILocation(line: 154, column: 23, scope: !6183)
!6186 = !DILocation(line: 154, column: 26, scope: !6183)
!6187 = !DILocation(line: 154, column: 33, scope: !6183)
!6188 = !DILocation(line: 153, column: 47, scope: !6176)
!6189 = !DILocation(line: 153, column: 3, scope: !6176)
!6190 = distinct !{!6190, !6181, !6191}
!6191 = !DILocation(line: 154, column: 35, scope: !6171)
!6192 = !DILocation(line: 155, column: 2, scope: !6168)
!6193 = !DILocation(line: 157, column: 9, scope: !6137)
!6194 = !DILocation(line: 157, column: 15, scope: !6137)
!6195 = !DILocation(line: 157, column: 18, scope: !6137)
!6196 = !DILocation(line: 157, column: 25, scope: !6137)
!6197 = !DILocation(line: 157, column: 28, scope: !6137)
!6198 = !DILocation(line: 157, column: 2, scope: !6137)
!6199 = !DILocation(line: 159, column: 2, scope: !6137)
!6200 = !DILocation(line: 159, column: 5, scope: !6137)
!6201 = !DILocation(line: 159, column: 14, scope: !6137)
!6202 = !DILocation(line: 160, column: 6, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 160, column: 6)
!6204 = !DILocation(line: 160, column: 9, scope: !6203)
!6205 = !DILocation(line: 160, column: 21, scope: !6203)
!6206 = !DILocation(line: 160, column: 24, scope: !6203)
!6207 = !DILocation(line: 160, column: 18, scope: !6203)
!6208 = !DILocation(line: 160, column: 6, scope: !6137)
!6209 = !DILocation(line: 161, column: 3, scope: !6203)
!6210 = !DILocation(line: 161, column: 6, scope: !6203)
!6211 = !DILocation(line: 161, column: 15, scope: !6203)
!6212 = !DILocation(line: 162, column: 2, scope: !6137)
!6213 = !DILocation(line: 162, column: 5, scope: !6137)
!6214 = !DILocation(line: 162, column: 16, scope: !6137)
!6215 = !DILocation(line: 164, column: 6, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 164, column: 6)
!6217 = !DILocation(line: 164, column: 12, scope: !6216)
!6218 = !DILocation(line: 164, column: 6, scope: !6137)
!6219 = !DILocation(line: 165, column: 3, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6216, file: !3, line: 165, column: 3)
!6221 = !DILocation(line: 165, column: 3, scope: !6216)
!6222 = !DILocation(line: 165, column: 33, scope: !6220)
!6223 = !DILocation(line: 165, column: 36, scope: !6220)
!6224 = !DILocation(line: 167, column: 2, scope: !6137)
!6225 = !DILocation(line: 168, column: 1, scope: !6137)
!6226 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !6127, file: !6127, line: 646, type: !6128, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6227 = !DILocalVariable(name: "__ret", scope: !6228, file: !6127, line: 648, type: !226)
!6228 = distinct !DILexicalBlock(scope: !6226, file: !6127, line: 648, column: 9)
!6229 = !DILocation(line: 648, column: 9, scope: !6228)
!6230 = !DILocalVariable(name: "__edi", scope: !6228, file: !6127, line: 648, type: !226)
!6231 = !DILocalVariable(name: "__esi", scope: !6228, file: !6127, line: 648, type: !226)
!6232 = !DILocalVariable(name: "__edx", scope: !6228, file: !6127, line: 648, type: !226)
!6233 = !DILocalVariable(name: "__ecx", scope: !6228, file: !6127, line: 648, type: !226)
!6234 = !DILocalVariable(name: "__eax", scope: !6228, file: !6127, line: 648, type: !226)
!6235 = !DILocation(line: 648, column: 9, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6237, file: !6127, line: 648, column: 9)
!6237 = distinct !DILexicalBlock(scope: !6228, file: !6127, line: 648, column: 9)
!6238 = !{i32 -2145779084, i32 -2145776769, i32 -2145776535, i32 -2145776484, i32 -2145776456, i32 -2145776431, i32 -2145776747, i32 -2145776734, i32 -2145776296, i32 -2145776177, i32 -2145776642, i32 -2145776615, i32 -2145776587, i32 -2145776557}
!6239 = !DILocalVariable(name: "__mask", scope: !6240, file: !6127, line: 648, type: !226)
!6240 = distinct !DILexicalBlock(scope: !6236, file: !6127, line: 648, column: 9)
!6241 = !DILocation(line: 648, column: 9, scope: !6240)
!6242 = !DILocation(line: 648, column: 9, scope: !6237)
!6243 = !DILocation(line: 648, column: 2, scope: !6226)
!6244 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6127, file: !6127, line: 656, type: !1923, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6245 = !DILocalVariable(name: "__edi", scope: !6246, file: !6127, line: 658, type: !226)
!6246 = distinct !DILexicalBlock(scope: !6244, file: !6127, line: 658, column: 2)
!6247 = !DILocation(line: 658, column: 2, scope: !6246)
!6248 = !DILocalVariable(name: "__esi", scope: !6246, file: !6127, line: 658, type: !226)
!6249 = !DILocalVariable(name: "__edx", scope: !6246, file: !6127, line: 658, type: !226)
!6250 = !DILocalVariable(name: "__ecx", scope: !6246, file: !6127, line: 658, type: !226)
!6251 = !DILocalVariable(name: "__eax", scope: !6246, file: !6127, line: 658, type: !226)
!6252 = !{i32 -2145771990, i32 -2145771258, i32 -2145771024, i32 -2145770973, i32 -2145770945, i32 -2145770920, i32 -2145771236, i32 -2145771223, i32 -2145770785, i32 -2145770666, i32 -2145771131, i32 -2145771104, i32 -2145771076, i32 -2145771046}
!6253 = !DILocation(line: 659, column: 1, scope: !6244)
!6254 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !6127, file: !6127, line: 651, type: !6255, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6255 = !DISubroutineType(types: !6256)
!6256 = !{null, !226}
!6257 = !DILocalVariable(name: "f", arg: 1, scope: !6254, file: !6127, line: 651, type: !226)
!6258 = !DILocation(line: 651, column: 65, scope: !6254)
!6259 = !DILocalVariable(name: "__edi", scope: !6260, file: !6127, line: 653, type: !226)
!6260 = distinct !DILexicalBlock(scope: !6254, file: !6127, line: 653, column: 2)
!6261 = !DILocation(line: 653, column: 2, scope: !6260)
!6262 = !DILocalVariable(name: "__esi", scope: !6260, file: !6127, line: 653, type: !226)
!6263 = !DILocalVariable(name: "__edx", scope: !6260, file: !6127, line: 653, type: !226)
!6264 = !DILocalVariable(name: "__ecx", scope: !6260, file: !6127, line: 653, type: !226)
!6265 = !DILocalVariable(name: "__eax", scope: !6260, file: !6127, line: 653, type: !226)
!6266 = !{i32 -2145774617, i32 -2145773867, i32 -2145773633, i32 -2145773582, i32 -2145773554, i32 -2145773529, i32 -2145773845, i32 -2145773832, i32 -2145773394, i32 -2145773275, i32 -2145773740, i32 -2145773713, i32 -2145773685, i32 -2145773655}
!6267 = !DILocation(line: 654, column: 1, scope: !6254)
!6268 = distinct !DISubprogram(name: "copy_overflow", scope: !5755, file: !5755, line: 132, type: !6269, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6269 = !DISubroutineType(types: !6270)
!6270 = !{null, !298, !226}
!6271 = !DILocalVariable(name: "size", arg: 1, scope: !6268, file: !5755, line: 132, type: !298)
!6272 = !DILocation(line: 132, column: 38, scope: !6268)
!6273 = !DILocalVariable(name: "count", arg: 2, scope: !6268, file: !5755, line: 132, type: !226)
!6274 = !DILocation(line: 132, column: 58, scope: !6268)
!6275 = !DILocalVariable(name: "__ret_warn_on", scope: !6276, file: !5755, line: 134, type: !298)
!6276 = distinct !DILexicalBlock(scope: !6268, file: !5755, line: 134, column: 2)
!6277 = !DILocation(line: 134, column: 2, scope: !6276)
!6278 = !DILocation(line: 134, column: 2, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6276, file: !5755, line: 134, column: 2)
!6280 = !DILocation(line: 134, column: 2, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6279, file: !5755, line: 134, column: 2)
!6282 = !DILocation(line: 134, column: 2, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !6281, file: !5755, line: 134, column: 2)
!6284 = !DILocation(line: 134, column: 2, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6281, file: !5755, line: 134, column: 2)
!6286 = !DILocation(line: 134, column: 2, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6285, file: !5755, line: 134, column: 2)
!6288 = !DILocation(line: 134, column: 2, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6285, file: !5755, line: 134, column: 2)
!6290 = !{i32 -2145549781, i32 -2145549752, i32 -2145549706, i32 -2145549648, i32 -2145549594, i32 -2145549540, i32 -2145549485, i32 -2145549454}
!6291 = !DILocation(line: 134, column: 2, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6285, file: !5755, line: 134, column: 2)
!6293 = !{i32 -2145549034, i32 -2145549027, i32 -2145548975, i32 -2145548944, i32 -2145548914}
!6294 = !DILocation(line: 134, column: 2, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6285, file: !5755, line: 134, column: 2)
!6296 = !DILocation(line: 134, column: 2, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6281, file: !5755, line: 134, column: 2)
!6298 = !DILocation(line: 135, column: 1, scope: !6268)
!6299 = distinct !DISubprogram(name: "check_object_size", scope: !5755, file: !5755, line: 122, type: !6300, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6300 = !DISubroutineType(types: !6301)
!6301 = !{null, !2171, !226, !528}
!6302 = !DILocalVariable(name: "ptr", arg: 1, scope: !6299, file: !5755, line: 122, type: !2171)
!6303 = !DILocation(line: 122, column: 50, scope: !6299)
!6304 = !DILocalVariable(name: "n", arg: 2, scope: !6299, file: !5755, line: 122, type: !226)
!6305 = !DILocation(line: 122, column: 69, scope: !6299)
!6306 = !DILocalVariable(name: "to_user", arg: 3, scope: !6299, file: !5755, line: 123, type: !528)
!6307 = !DILocation(line: 123, column: 15, scope: !6299)
!6308 = !DILocation(line: 124, column: 3, scope: !6299)
!6309 = distinct !DISubprogram(name: "saa6588_g_tuner", scope: !3, file: !3, line: 415, type: !4378, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6310 = !DILocalVariable(name: "sd", arg: 1, scope: !6309, file: !3, line: 415, type: !4183)
!6311 = !DILocation(line: 415, column: 48, scope: !6309)
!6312 = !DILocalVariable(name: "vt", arg: 2, scope: !6309, file: !3, line: 415, type: !4380)
!6313 = !DILocation(line: 415, column: 71, scope: !6309)
!6314 = !DILocalVariable(name: "s", scope: !6309, file: !3, line: 417, type: !229)
!6315 = !DILocation(line: 417, column: 18, scope: !6309)
!6316 = !DILocation(line: 417, column: 33, scope: !6309)
!6317 = !DILocation(line: 417, column: 22, scope: !6309)
!6318 = !DILocation(line: 419, column: 2, scope: !6309)
!6319 = !DILocation(line: 419, column: 6, scope: !6309)
!6320 = !DILocation(line: 419, column: 17, scope: !6309)
!6321 = !DILocation(line: 420, column: 6, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 420, column: 6)
!6323 = !DILocation(line: 420, column: 9, scope: !6322)
!6324 = !DILocation(line: 420, column: 6, scope: !6309)
!6325 = !DILocation(line: 421, column: 3, scope: !6322)
!6326 = !DILocation(line: 421, column: 7, scope: !6322)
!6327 = !DILocation(line: 421, column: 18, scope: !6322)
!6328 = !DILocation(line: 422, column: 2, scope: !6309)
!6329 = distinct !DISubprogram(name: "saa6588_s_tuner", scope: !3, file: !3, line: 425, type: !4398, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6330 = !DILocalVariable(name: "sd", arg: 1, scope: !6329, file: !3, line: 425, type: !4183)
!6331 = !DILocation(line: 425, column: 48, scope: !6329)
!6332 = !DILocalVariable(name: "vt", arg: 2, scope: !6329, file: !3, line: 425, type: !4400)
!6333 = !DILocation(line: 425, column: 77, scope: !6329)
!6334 = !DILocalVariable(name: "s", scope: !6329, file: !3, line: 427, type: !229)
!6335 = !DILocation(line: 427, column: 18, scope: !6329)
!6336 = !DILocation(line: 427, column: 33, scope: !6329)
!6337 = !DILocation(line: 427, column: 22, scope: !6329)
!6338 = !DILocation(line: 429, column: 20, scope: !6329)
!6339 = !DILocation(line: 429, column: 2, scope: !6329)
!6340 = !DILocation(line: 430, column: 2, scope: !6329)
!6341 = distinct !DISubprogram(name: "v4l2_get_subdevdata", scope: !157, file: !157, line: 1019, type: !6342, scopeLine: 1020, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6342 = !DISubroutineType(types: !6343)
!6343 = !{!225, !6344}
!6344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6345, size: 64)
!6345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!6346 = !DILocalVariable(name: "sd", arg: 1, scope: !6341, file: !157, line: 1019, type: !6344)
!6347 = !DILocation(line: 1019, column: 67, scope: !6341)
!6348 = !DILocation(line: 1021, column: 9, scope: !6341)
!6349 = !DILocation(line: 1021, column: 13, scope: !6341)
!6350 = !DILocation(line: 1021, column: 2, scope: !6341)
!6351 = distinct !DISubprogram(name: "i2c_master_send", scope: !108, file: !108, line: 102, type: !6352, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6352 = !DISubroutineType(types: !6353)
!6353 = !{!298, !6354, !255, !298}
!6354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6355, size: 64)
!6355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5144)
!6356 = !DILocalVariable(name: "client", arg: 1, scope: !6351, file: !108, line: 102, type: !6354)
!6357 = !DILocation(line: 102, column: 60, scope: !6351)
!6358 = !DILocalVariable(name: "buf", arg: 2, scope: !6351, file: !108, line: 103, type: !255)
!6359 = !DILocation(line: 103, column: 19, scope: !6351)
!6360 = !DILocalVariable(name: "count", arg: 3, scope: !6351, file: !108, line: 103, type: !298)
!6361 = !DILocation(line: 103, column: 28, scope: !6351)
!6362 = !DILocation(line: 105, column: 35, scope: !6351)
!6363 = !DILocation(line: 105, column: 51, scope: !6351)
!6364 = !DILocation(line: 105, column: 56, scope: !6351)
!6365 = !DILocation(line: 105, column: 9, scope: !6351)
!6366 = !DILocation(line: 105, column: 2, scope: !6351)
!6367 = distinct !DISubprogram(name: "saa6588_i2c_poll", scope: !3, file: !3, line: 248, type: !5512, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6368 = !DILocation(line: 407, column: 64, scope: !5787, inlinedAt: !6369)
!6369 = distinct !DILocation(line: 313, column: 2, scope: !6367)
!6370 = !DILocation(line: 407, column: 84, scope: !5787, inlinedAt: !6369)
!6371 = !DILocation(line: 327, column: 67, scope: !5388, inlinedAt: !6372)
!6372 = distinct !DILocation(line: 311, column: 2, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 311, column: 2)
!6374 = distinct !DILexicalBlock(scope: !6375, file: !3, line: 311, column: 2)
!6375 = distinct !DILexicalBlock(scope: !6376, file: !3, line: 311, column: 2)
!6376 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 311, column: 2)
!6377 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 311, column: 2)
!6378 = !DILocalVariable(name: "s", arg: 1, scope: !6367, file: !3, line: 248, type: !229)
!6379 = !DILocation(line: 248, column: 46, scope: !6367)
!6380 = !DILocalVariable(name: "client", scope: !6367, file: !3, line: 250, type: !5143)
!6381 = !DILocation(line: 250, column: 21, scope: !6367)
!6382 = !DILocation(line: 250, column: 51, scope: !6367)
!6383 = !DILocation(line: 250, column: 54, scope: !6367)
!6384 = !DILocation(line: 250, column: 30, scope: !6367)
!6385 = !DILocalVariable(name: "flags", scope: !6367, file: !3, line: 251, type: !226)
!6386 = !DILocation(line: 251, column: 16, scope: !6367)
!6387 = !DILocalVariable(name: "tmpbuf", scope: !6367, file: !3, line: 252, type: !6388)
!6388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 48, elements: !1668)
!6389 = !DILocation(line: 252, column: 16, scope: !6367)
!6390 = !DILocalVariable(name: "blocknum", scope: !6367, file: !3, line: 253, type: !465)
!6391 = !DILocation(line: 253, column: 16, scope: !6367)
!6392 = !DILocalVariable(name: "tmp", scope: !6367, file: !3, line: 254, type: !465)
!6393 = !DILocation(line: 254, column: 16, scope: !6367)
!6394 = !DILocation(line: 258, column: 27, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 258, column: 6)
!6396 = !DILocation(line: 258, column: 36, scope: !6395)
!6397 = !DILocation(line: 258, column: 11, scope: !6395)
!6398 = !DILocation(line: 258, column: 8, scope: !6395)
!6399 = !DILocation(line: 258, column: 6, scope: !6367)
!6400 = !DILocation(line: 259, column: 7, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6402, file: !3, line: 259, column: 7)
!6402 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 258, column: 51)
!6403 = !DILocation(line: 259, column: 13, scope: !6401)
!6404 = !DILocation(line: 259, column: 7, scope: !6402)
!6405 = !DILocation(line: 260, column: 4, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6401, file: !3, line: 260, column: 4)
!6407 = !DILocation(line: 260, column: 4, scope: !6401)
!6408 = !DILocation(line: 261, column: 3, scope: !6402)
!6409 = !DILocation(line: 264, column: 12, scope: !6367)
!6410 = !DILocation(line: 264, column: 22, scope: !6367)
!6411 = !DILocation(line: 264, column: 2, scope: !6367)
!6412 = !DILocation(line: 264, column: 5, scope: !6367)
!6413 = !DILocation(line: 264, column: 10, scope: !6367)
!6414 = !DILocation(line: 265, column: 7, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 265, column: 6)
!6416 = !DILocation(line: 265, column: 10, scope: !6415)
!6417 = !DILocation(line: 265, column: 6, scope: !6367)
!6418 = !DILocation(line: 266, column: 3, scope: !6415)
!6419 = !DILocation(line: 267, column: 13, scope: !6367)
!6420 = !DILocation(line: 267, column: 23, scope: !6367)
!6421 = !DILocation(line: 267, column: 11, scope: !6367)
!6422 = !DILocation(line: 268, column: 6, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 268, column: 6)
!6424 = !DILocation(line: 268, column: 18, scope: !6423)
!6425 = !DILocation(line: 268, column: 21, scope: !6423)
!6426 = !DILocation(line: 268, column: 15, scope: !6423)
!6427 = !DILocation(line: 268, column: 6, scope: !6367)
!6428 = !DILocation(line: 269, column: 7, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 269, column: 7)
!6430 = distinct !DILexicalBlock(scope: !6423, file: !3, line: 268, column: 36)
!6431 = !DILocation(line: 269, column: 13, scope: !6429)
!6432 = !DILocation(line: 269, column: 7, scope: !6430)
!6433 = !DILocation(line: 270, column: 4, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 270, column: 4)
!6435 = !DILocation(line: 270, column: 4, scope: !6429)
!6436 = !DILocation(line: 270, column: 37, scope: !6434)
!6437 = !DILocation(line: 271, column: 3, scope: !6430)
!6438 = !DILocation(line: 274, column: 21, scope: !6367)
!6439 = !DILocation(line: 274, column: 2, scope: !6367)
!6440 = !DILocation(line: 274, column: 5, scope: !6367)
!6441 = !DILocation(line: 274, column: 19, scope: !6367)
!6442 = !DILocation(line: 292, column: 2, scope: !6367)
!6443 = !DILocalVariable(name: "__tmp", scope: !6444, file: !3, line: 292, type: !465)
!6444 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 292, column: 2)
!6445 = !DILocation(line: 292, column: 2, scope: !6444)
!6446 = !DILocation(line: 295, column: 6, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 295, column: 6)
!6448 = !DILocation(line: 295, column: 15, scope: !6447)
!6449 = !DILocation(line: 295, column: 6, scope: !6367)
!6450 = !DILocation(line: 296, column: 12, scope: !6447)
!6451 = !DILocation(line: 296, column: 3, scope: !6447)
!6452 = !DILocation(line: 301, column: 12, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 301, column: 11)
!6454 = !DILocation(line: 301, column: 17, scope: !6453)
!6455 = !DILocation(line: 301, column: 20, scope: !6453)
!6456 = !DILocation(line: 301, column: 29, scope: !6453)
!6457 = !DILocation(line: 301, column: 11, scope: !6447)
!6458 = !DILocation(line: 302, column: 12, scope: !6453)
!6459 = !DILocation(line: 302, column: 3, scope: !6453)
!6460 = !DILocation(line: 303, column: 8, scope: !6367)
!6461 = !DILocation(line: 303, column: 6, scope: !6367)
!6462 = !DILocation(line: 304, column: 9, scope: !6367)
!6463 = !DILocation(line: 304, column: 18, scope: !6367)
!6464 = !DILocation(line: 304, column: 6, scope: !6367)
!6465 = !DILocation(line: 305, column: 7, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 305, column: 6)
!6467 = !DILocation(line: 305, column: 17, scope: !6466)
!6468 = !DILocation(line: 305, column: 25, scope: !6466)
!6469 = !DILocation(line: 305, column: 6, scope: !6367)
!6470 = !DILocation(line: 306, column: 7, scope: !6466)
!6471 = !DILocation(line: 306, column: 3, scope: !6466)
!6472 = !DILocation(line: 307, column: 12, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6466, file: !3, line: 307, column: 11)
!6474 = !DILocation(line: 307, column: 22, scope: !6473)
!6475 = !DILocation(line: 307, column: 30, scope: !6473)
!6476 = !DILocation(line: 307, column: 11, scope: !6466)
!6477 = !DILocation(line: 308, column: 7, scope: !6473)
!6478 = !DILocation(line: 308, column: 3, scope: !6473)
!6479 = !DILocation(line: 309, column: 14, scope: !6367)
!6480 = !DILocation(line: 309, column: 2, scope: !6367)
!6481 = !DILocation(line: 309, column: 12, scope: !6367)
!6482 = !DILocation(line: 311, column: 2, scope: !6367)
!6483 = !DILocation(line: 311, column: 2, scope: !6377)
!6484 = !DILocalVariable(name: "__dummy", scope: !6485, file: !3, line: 311, type: !226)
!6485 = distinct !DILexicalBlock(scope: !6376, file: !3, line: 311, column: 2)
!6486 = !DILocation(line: 311, column: 2, scope: !6485)
!6487 = !DILocalVariable(name: "__dummy2", scope: !6485, file: !3, line: 311, type: !226)
!6488 = !DILocation(line: 311, column: 2, scope: !6376)
!6489 = !DILocation(line: 311, column: 2, scope: !6375)
!6490 = !DILocation(line: 311, column: 2, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6375, file: !3, line: 311, column: 2)
!6492 = !DILocalVariable(name: "__dummy", scope: !6493, file: !3, line: 311, type: !226)
!6493 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 311, column: 2)
!6494 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 311, column: 2)
!6495 = !DILocation(line: 311, column: 2, scope: !6493)
!6496 = !DILocalVariable(name: "__dummy2", scope: !6493, file: !3, line: 311, type: !226)
!6497 = !DILocation(line: 311, column: 2, scope: !6494)
!6498 = !DILocation(line: 311, column: 2, scope: !6374)
!6499 = !{i32 -2140916421}
!6500 = !DILocation(line: 311, column: 2, scope: !6373)
!6501 = !DILocation(line: 329, column: 10, scope: !5388, inlinedAt: !6372)
!6502 = !DILocation(line: 329, column: 16, scope: !5388, inlinedAt: !6372)
!6503 = !DILocation(line: 312, column: 15, scope: !6367)
!6504 = !DILocation(line: 312, column: 18, scope: !6367)
!6505 = !DILocation(line: 312, column: 2, scope: !6367)
!6506 = !DILocation(line: 313, column: 26, scope: !6367)
!6507 = !DILocation(line: 313, column: 29, scope: !6367)
!6508 = !DILocation(line: 313, column: 35, scope: !6367)
!6509 = !DILocation(line: 409, column: 2, scope: !5937, inlinedAt: !6369)
!6510 = !DILocation(line: 409, column: 2, scope: !5942, inlinedAt: !6369)
!6511 = !DILocation(line: 409, column: 2, scope: !5943, inlinedAt: !6369)
!6512 = !DILocation(line: 409, column: 2, scope: !5950, inlinedAt: !6369)
!6513 = !DILocation(line: 409, column: 2, scope: !5953, inlinedAt: !6369)
!6514 = !DILocation(line: 314, column: 2, scope: !6367)
!6515 = !DILocation(line: 314, column: 5, scope: !6367)
!6516 = !DILocation(line: 314, column: 29, scope: !6367)
!6517 = !DILocation(line: 315, column: 2, scope: !6367)
!6518 = !DILocation(line: 316, column: 1, scope: !6367)
!6519 = distinct !DISubprogram(name: "i2c_master_recv", scope: !108, file: !108, line: 72, type: !6520, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6520 = !DISubroutineType(types: !6521)
!6521 = !{!298, !6354, !314, !298}
!6522 = !DILocalVariable(name: "client", arg: 1, scope: !6519, file: !108, line: 72, type: !6354)
!6523 = !DILocation(line: 72, column: 60, scope: !6519)
!6524 = !DILocalVariable(name: "buf", arg: 2, scope: !6519, file: !108, line: 73, type: !314)
!6525 = !DILocation(line: 73, column: 13, scope: !6519)
!6526 = !DILocalVariable(name: "count", arg: 3, scope: !6519, file: !108, line: 73, type: !298)
!6527 = !DILocation(line: 73, column: 22, scope: !6519)
!6528 = !DILocation(line: 75, column: 35, scope: !6519)
!6529 = !DILocation(line: 75, column: 43, scope: !6519)
!6530 = !DILocation(line: 75, column: 48, scope: !6519)
!6531 = !DILocation(line: 75, column: 9, scope: !6519)
!6532 = !DILocation(line: 75, column: 2, scope: !6519)
!6533 = distinct !DISubprogram(name: "block_to_buf", scope: !3, file: !3, line: 220, type: !6534, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6534 = !DISubroutineType(types: !6535)
!6535 = !{null, !229, !4971}
!6536 = !DILocalVariable(name: "s", arg: 1, scope: !6533, file: !3, line: 220, type: !229)
!6537 = !DILocation(line: 220, column: 42, scope: !6533)
!6538 = !DILocalVariable(name: "blockbuf", arg: 2, scope: !6533, file: !3, line: 220, type: !4971)
!6539 = !DILocation(line: 220, column: 60, scope: !6533)
!6540 = !DILocalVariable(name: "i", scope: !6533, file: !3, line: 222, type: !7)
!6541 = !DILocation(line: 222, column: 15, scope: !6533)
!6542 = !DILocation(line: 224, column: 6, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6533, file: !3, line: 224, column: 6)
!6544 = !DILocation(line: 224, column: 12, scope: !6543)
!6545 = !DILocation(line: 224, column: 6, scope: !6533)
!6546 = !DILocation(line: 225, column: 3, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6543, file: !3, line: 225, column: 3)
!6548 = !DILocation(line: 225, column: 3, scope: !6543)
!6549 = !DILocation(line: 227, column: 9, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6533, file: !3, line: 227, column: 2)
!6551 = !DILocation(line: 227, column: 7, scope: !6550)
!6552 = !DILocation(line: 227, column: 14, scope: !6553)
!6553 = distinct !DILexicalBlock(scope: !6550, file: !3, line: 227, column: 2)
!6554 = !DILocation(line: 227, column: 16, scope: !6553)
!6555 = !DILocation(line: 227, column: 2, scope: !6550)
!6556 = !DILocation(line: 228, column: 7, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6558, file: !3, line: 228, column: 7)
!6558 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 227, column: 26)
!6559 = !DILocation(line: 228, column: 13, scope: !6557)
!6560 = !DILocation(line: 228, column: 7, scope: !6558)
!6561 = !DILocation(line: 229, column: 4, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6557, file: !3, line: 229, column: 4)
!6563 = !DILocation(line: 229, column: 4, scope: !6557)
!6564 = !DILocation(line: 229, column: 23, scope: !6562)
!6565 = !DILocation(line: 229, column: 32, scope: !6562)
!6566 = !DILocation(line: 230, column: 28, scope: !6558)
!6567 = !DILocation(line: 230, column: 37, scope: !6558)
!6568 = !DILocation(line: 230, column: 3, scope: !6558)
!6569 = !DILocation(line: 230, column: 6, scope: !6558)
!6570 = !DILocation(line: 230, column: 13, scope: !6558)
!6571 = !DILocation(line: 230, column: 16, scope: !6558)
!6572 = !DILocation(line: 230, column: 26, scope: !6558)
!6573 = !DILocation(line: 231, column: 3, scope: !6558)
!6574 = !DILocation(line: 231, column: 6, scope: !6558)
!6575 = !DILocation(line: 231, column: 14, scope: !6558)
!6576 = !DILocation(line: 232, column: 2, scope: !6558)
!6577 = !DILocation(line: 227, column: 21, scope: !6553)
!6578 = !DILocation(line: 227, column: 2, scope: !6553)
!6579 = distinct !{!6579, !6555, !6580}
!6580 = !DILocation(line: 232, column: 2, scope: !6550)
!6581 = !DILocation(line: 234, column: 6, scope: !6582)
!6582 = distinct !DILexicalBlock(scope: !6533, file: !3, line: 234, column: 6)
!6583 = !DILocation(line: 234, column: 9, scope: !6582)
!6584 = !DILocation(line: 234, column: 21, scope: !6582)
!6585 = !DILocation(line: 234, column: 24, scope: !6582)
!6586 = !DILocation(line: 234, column: 18, scope: !6582)
!6587 = !DILocation(line: 234, column: 6, scope: !6533)
!6588 = !DILocation(line: 235, column: 3, scope: !6582)
!6589 = !DILocation(line: 235, column: 6, scope: !6582)
!6590 = !DILocation(line: 235, column: 15, scope: !6582)
!6591 = !DILocation(line: 237, column: 6, scope: !6592)
!6592 = distinct !DILexicalBlock(scope: !6533, file: !3, line: 237, column: 6)
!6593 = !DILocation(line: 237, column: 9, scope: !6592)
!6594 = !DILocation(line: 237, column: 21, scope: !6592)
!6595 = !DILocation(line: 237, column: 24, scope: !6592)
!6596 = !DILocation(line: 237, column: 18, scope: !6592)
!6597 = !DILocation(line: 237, column: 6, scope: !6533)
!6598 = !DILocation(line: 238, column: 3, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !6592, file: !3, line: 237, column: 34)
!6600 = !DILocation(line: 238, column: 6, scope: !6599)
!6601 = !DILocation(line: 238, column: 15, scope: !6599)
!6602 = !DILocation(line: 239, column: 7, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6599, file: !3, line: 239, column: 7)
!6604 = !DILocation(line: 239, column: 10, scope: !6603)
!6605 = !DILocation(line: 239, column: 22, scope: !6603)
!6606 = !DILocation(line: 239, column: 25, scope: !6603)
!6607 = !DILocation(line: 239, column: 19, scope: !6603)
!6608 = !DILocation(line: 239, column: 7, scope: !6599)
!6609 = !DILocation(line: 240, column: 4, scope: !6603)
!6610 = !DILocation(line: 240, column: 7, scope: !6603)
!6611 = !DILocation(line: 240, column: 16, scope: !6603)
!6612 = !DILocation(line: 241, column: 2, scope: !6599)
!6613 = !DILocation(line: 242, column: 3, scope: !6592)
!6614 = !DILocation(line: 242, column: 6, scope: !6592)
!6615 = !DILocation(line: 242, column: 17, scope: !6592)
!6616 = !DILocation(line: 244, column: 6, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6533, file: !3, line: 244, column: 6)
!6618 = !DILocation(line: 244, column: 12, scope: !6617)
!6619 = !DILocation(line: 244, column: 6, scope: !6533)
!6620 = !DILocation(line: 245, column: 3, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6617, file: !3, line: 245, column: 3)
!6622 = !DILocation(line: 245, column: 3, scope: !6617)
!6623 = !DILocation(line: 245, column: 33, scope: !6621)
!6624 = !DILocation(line: 245, column: 36, scope: !6621)
!6625 = !DILocation(line: 246, column: 1, scope: !6533)
!6626 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5615, file: !5615, line: 308, type: !5616, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6627 = !DILocalVariable(name: "m", arg: 1, scope: !6626, file: !5615, line: 308, type: !2871)
!6628 = !DILocation(line: 308, column: 66, scope: !6626)
!6629 = !DILocation(line: 310, column: 10, scope: !6626)
!6630 = !DILocation(line: 310, column: 12, scope: !6626)
!6631 = !DILocation(line: 310, column: 34, scope: !6626)
!6632 = !DILocation(line: 310, column: 39, scope: !6626)
!6633 = !DILocation(line: 310, column: 2, scope: !6626)
!6634 = distinct !DISubprogram(name: "queue_delayed_work", scope: !182, file: !182, line: 518, type: !6635, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6635 = !DISubroutineType(types: !6636)
!6636 = !{!528, !2837, !5656, !226}
!6637 = !DILocalVariable(name: "wq", arg: 1, scope: !6634, file: !182, line: 518, type: !2837)
!6638 = !DILocation(line: 518, column: 64, scope: !6634)
!6639 = !DILocalVariable(name: "dwork", arg: 2, scope: !6634, file: !182, line: 519, type: !5656)
!6640 = !DILocation(line: 519, column: 32, scope: !6634)
!6641 = !DILocalVariable(name: "delay", arg: 3, scope: !6634, file: !182, line: 520, type: !226)
!6642 = !DILocation(line: 520, column: 25, scope: !6634)
!6643 = !DILocation(line: 522, column: 49, scope: !6634)
!6644 = !DILocation(line: 522, column: 53, scope: !6634)
!6645 = !DILocation(line: 522, column: 60, scope: !6634)
!6646 = !DILocation(line: 522, column: 9, scope: !6634)
!6647 = !DILocation(line: 522, column: 2, scope: !6634)
!6648 = distinct !DISubprogram(name: "i2c_get_clientdata", scope: !108, file: !108, line: 351, type: !6649, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6649 = !DISubroutineType(types: !6650)
!6650 = !{!225, !6354}
!6651 = !DILocalVariable(name: "client", arg: 1, scope: !6648, file: !108, line: 351, type: !6354)
!6652 = !DILocation(line: 351, column: 65, scope: !6648)
!6653 = !DILocation(line: 353, column: 26, scope: !6648)
!6654 = !DILocation(line: 353, column: 34, scope: !6648)
!6655 = !DILocation(line: 353, column: 9, scope: !6648)
!6656 = !DILocation(line: 353, column: 2, scope: !6648)
!6657 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !6658, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !286)
!6658 = !DISubroutineType(types: !6659)
!6659 = !{!225, !3760}
!6660 = !DILocalVariable(name: "dev", arg: 1, scope: !6657, file: !73, line: 655, type: !3760)
!6661 = !DILocation(line: 655, column: 58, scope: !6657)
!6662 = !DILocation(line: 657, column: 9, scope: !6657)
!6663 = !DILocation(line: 657, column: 14, scope: !6657)
!6664 = !DILocation(line: 657, column: 2, scope: !6657)
