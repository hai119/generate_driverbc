; ModuleID = '../bcout/drivers/media/i2c/ir-kbd-i2c.llvm.bc'
source_filename = "drivers/media/i2c/ir-kbd-i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ir_kbd_driver_init6:\09\09\09"
module asm ".long\09ir_kbd_driver_init - .\09\09\09"
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
%struct.poll_table_struct = type opaque
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
%struct.IR_i2c = type { i8*, %struct.i2c_client*, %struct.rc_dev*, i8, i32, %struct.delayed_work, [32 x i8], i32 (%struct.IR_i2c*, i32*, i32*, i8*)*, %struct.i2c_client*, %struct.mutex, i32, i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x %struct.attribute_group*], i8*, i8*, %struct.input_id, i8*, i8*, %struct.rc_map, %struct.mutex, i32, %struct.ir_raw_event_ctrl*, %struct.input_dev*, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, i8*, %struct.spinlock, i8, i64, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, i8, i32 (%struct.rc_dev*, i64*)*, i32 (%struct.rc_dev*)*, void (%struct.rc_dev*)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32, i32)*, i32 (%struct.rc_dev*, i32*, i32)*, void (%struct.rc_dev*, i1)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, i32)* }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { %struct.rc_map_table*, i32, i32, i32, i32, i8*, %struct.spinlock }
%struct.rc_map_table = type { i64, i32 }
%struct.ir_raw_event_ctrl = type opaque
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.68 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.68 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.input_dev_poller = type opaque
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.input_value = type { i16, i16, i32 }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.IR_i2c_init_data = type { i8*, i8*, i64, i32, i32 (%struct.IR_i2c*, i32*, i32*, i8*)*, i32, %struct.rc_dev* }
%struct.code_block = type <{ i8, [7 x i16], i8, i8, [8 x i16], [61 x i8], [2 x i8] }>

@__param_str_enable_hdpvr = internal constant [24 x i8] c"ir_kbd_i2c.enable_hdpvr\00", align 16, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@enable_hdpvr = internal global i8 0, align 1, !dbg !4570
@__param_enable_hdpvr = internal constant %struct.kernel_param { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__param_str_enable_hdpvr, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon { i8* @enable_hdpvr } }, section "__param", align 8, !dbg !4486
@__UNIQUE_ID_enable_hdpvrtype237 = internal constant [38 x i8] c"ir_kbd_i2c.parmtype=enable_hdpvr:bool\00", section ".modinfo", align 1, !dbg !4538
@__UNIQUE_ID___addressable_ir_kbd_driver_init240 = internal global i8* bitcast (i32 ()* @ir_kbd_driver_init to i8*), section ".discard.addressable", align 8, !dbg !4543
@ir_kbd_driver = internal global %struct.i2c_driver { i32 0, i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ir_probe, i32 (%struct.i2c_client*)* @ir_remove, i32 (%struct.i2c_client*)* null, void (%struct.i2c_client*)* null, void (%struct.i2c_client*, i32, i32)* null, i32 (%struct.i2c_client*, i32, i8*)* null, %struct.device_driver { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.i2c_device_id* getelementptr inbounds ([4 x %struct.i2c_device_id], [4 x %struct.i2c_device_id]* @ir_kbd_id, i32 0, i32 0), i32 (%struct.i2c_client*, %struct.i2c_board_info*)* null, i16* null, %struct.list_head zeroinitializer }, align 8, !dbg !4572
@__exitcall_ir_kbd_driver_exit = internal global void ()* @ir_kbd_driver_exit, section ".exitcall.exit", align 8, !dbg !4545
@__UNIQUE_ID_author241 = internal constant [86 x i8] c"ir_kbd_i2c.author=Gerd Knorr, Michal Kochanowicz, Christoph Bartelmus, Ulrich Mueller\00", section ".modinfo", align 1, !dbg !4550
@__UNIQUE_ID_description242 = internal constant [63 x i8] c"ir_kbd_i2c.description=input driver for i2c IR remote controls\00", section ".modinfo", align 1, !dbg !4555
@__UNIQUE_ID_file243 = internal constant [45 x i8] c"ir_kbd_i2c.file=drivers/media/i2c/ir-kbd-i2c\00", section ".modinfo", align 1, !dbg !4560
@__UNIQUE_ID_license244 = internal constant [23 x i8] c"ir_kbd_i2c.license=GPL\00", section ".modinfo", align 1, !dbg !4565
@.str = private unnamed_addr constant [11 x i8] c"ir-kbd-i2c\00", align 1
@ir_kbd_id = internal constant [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ir_video\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.i2c_device_id { [20 x i8] c"ir_z8f0811_haup\00\00\00\00\00", i64 1 }, %struct.i2c_device_id { [20 x i8] c"ir_z8f0811_hdpvr\00\00\00\00", i64 3 }, %struct.i2c_device_id zeroinitializer], align 16, !dbg !4671
@.str.1 = private unnamed_addr constant [95 x i8] c"IR for HDPVR is known to cause problems during recording, use enable_hdpvr modparam to enable\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Pixelview\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rc-empty\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Hauppauge\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rc-hauppauge\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"KNC One\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"FusionHDTV\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"rc-fusionhdtv-mce\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"AVerMedia Cardbus remote\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"rc-avermedia-cardbus\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"AVerMedia EM78P153\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"rc-avermedia-m733a-rm-k6\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Hauppauge/Zilog Z8\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Unsupported device at address 0x%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"ir_kbd_i2c\00", align 1
@ir_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4668
@.str.17 = private unnamed_addr constant [10 x i8] c"&ir->lock\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"failed to setup tx i2c address\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"warning: invalid key group 0x%02x for key 0x%02x\0A\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@.str.20 = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"failed to retrieve firmware version: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"Zilog/Hauppauge IR blaster firmware version %d.%d.%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"i2c_master_send failed with %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"i2c_master_recv failed with %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"unexpected IR TX response %02x\0A\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"IR TX chip never got ready: last i2c_master_send failed with %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"unexpected IR TX response #2: %02x\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"IR too long, cannot transmit\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"Too many different lengths spaces, cannot transmit\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"Too many different lengths pulses, cannot transmit\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@llvm.used = appending global [9 x i8*] [i8* bitcast (%struct.kernel_param* @__param_enable_hdpvr to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_enable_hdpvrtype237, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_ir_kbd_driver_init240 to i8*), i8* bitcast (void ()* @ir_kbd_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ir_kbd_driver_exit to i8*), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__UNIQUE_ID_author241, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_description242, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_file243, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license244, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ir_kbd_driver_init() #0 section ".init.text" !dbg !4682 {
entry:
  %call = call i32 @i2c_register_driver(%struct.module* null, %struct.i2c_driver* @ir_kbd_driver) #8, !dbg !4685
  ret i32 %call, !dbg !4685
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ir_kbd_driver_exit() #0 section ".exit.text" !dbg !4686 {
entry:
  call void @i2c_del_driver(%struct.i2c_driver* @ir_kbd_driver) #8, !dbg !4687
  ret void, !dbg !4687
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_driver(%struct.i2c_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @i2c_register_driver(%struct.module*, %struct.i2c_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ir_probe(%struct.i2c_client* %client, %struct.i2c_device_id* %id) #2 !dbg !4670 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca %struct.i2c_client*, align 8
  %id.addr = alloca %struct.i2c_device_id*, align 8
  %ir_codes = alloca i8*, align 8
  %name = alloca i8*, align 8
  %rc_proto = alloca i64, align 8
  %ir = alloca %struct.IR_i2c*, align 8
  %rc = alloca %struct.rc_dev*, align 8
  %adap = alloca %struct.i2c_adapter*, align 8
  %addr = alloca i16, align 2
  %probe_tx = alloca i8, align 1
  %err = alloca i32, align 4
  %init_data = alloca %struct.IR_i2c_init_data*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !4688, metadata !DIExpression()), !dbg !4689
  store %struct.i2c_device_id* %id, %struct.i2c_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_device_id** %id.addr, metadata !4690, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.declare(metadata i8** %ir_codes, metadata !4692, metadata !DIExpression()), !dbg !4693
  store i8* null, i8** %ir_codes, align 8, !dbg !4693
  call void @llvm.dbg.declare(metadata i8** %name, metadata !4694, metadata !DIExpression()), !dbg !4695
  store i8* null, i8** %name, align 8, !dbg !4695
  call void @llvm.dbg.declare(metadata i64* %rc_proto, metadata !4696, metadata !DIExpression()), !dbg !4697
  store i64 1, i64* %rc_proto, align 8, !dbg !4697
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir, metadata !4698, metadata !DIExpression()), !dbg !4699
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rc, metadata !4700, metadata !DIExpression()), !dbg !4701
  store %struct.rc_dev* null, %struct.rc_dev** %rc, align 8, !dbg !4701
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap, metadata !4702, metadata !DIExpression()), !dbg !4703
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4704
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 3, !dbg !4705
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !4705
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %adap, align 8, !dbg !4703
  call void @llvm.dbg.declare(metadata i16* %addr, metadata !4706, metadata !DIExpression()), !dbg !4707
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4708
  %addr1 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 1, !dbg !4709
  %3 = load i16, i16* %addr1, align 2, !dbg !4709
  store i16 %3, i16* %addr, align 2, !dbg !4707
  call void @llvm.dbg.declare(metadata i8* %probe_tx, metadata !4710, metadata !DIExpression()), !dbg !4711
  %4 = load %struct.i2c_device_id*, %struct.i2c_device_id** %id.addr, align 8, !dbg !4712
  %driver_data = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %4, i32 0, i32 1, !dbg !4713
  %5 = load i64, i64* %driver_data, align 8, !dbg !4713
  %and = and i64 %5, 1, !dbg !4714
  %cmp = icmp ne i64 %and, 0, !dbg !4715
  %frombool = zext i1 %cmp to i8, !dbg !4711
  store i8 %frombool, i8* %probe_tx, align 1, !dbg !4711
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4716, metadata !DIExpression()), !dbg !4717
  %6 = load %struct.i2c_device_id*, %struct.i2c_device_id** %id.addr, align 8, !dbg !4718
  %driver_data2 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %6, i32 0, i32 1, !dbg !4720
  %7 = load i64, i64* %driver_data2, align 8, !dbg !4720
  %and3 = and i64 %7, 2, !dbg !4721
  %tobool = icmp ne i64 %and3, 0, !dbg !4721
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4722

land.lhs.true:                                    ; preds = %entry
  %8 = load i8, i8* @enable_hdpvr, align 1, !dbg !4723
  %tobool4 = trunc i8 %8 to i1, !dbg !4723
  br i1 %tobool4, label %if.end, label %if.then, !dbg !4724

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4725
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 4, !dbg !4725
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !4725
  store i32 -19, i32* %retval, align 4, !dbg !4727
  br label %return, !dbg !4727

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4728
  %dev5 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 4, !dbg !4729
  %call = call i8* @devm_kzalloc(%struct.device* %dev5, i64 200, i32 3264) #8, !dbg !4730
  %11 = bitcast i8* %call to %struct.IR_i2c*, !dbg !4730
  store %struct.IR_i2c* %11, %struct.IR_i2c** %ir, align 8, !dbg !4731
  %12 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4732
  %tobool6 = icmp ne %struct.IR_i2c* %12, null, !dbg !4732
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4734

if.then7:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4735
  br label %return, !dbg !4735

if.end8:                                          ; preds = %if.end
  %13 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4736
  %14 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4737
  %c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %14, i32 0, i32 1, !dbg !4738
  store %struct.i2c_client* %13, %struct.i2c_client** %c, align 8, !dbg !4739
  %15 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4740
  %polling_interval = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %15, i32 0, i32 4, !dbg !4741
  store i32 100, i32* %polling_interval, align 4, !dbg !4742
  %16 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4743
  %17 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4744
  %18 = bitcast %struct.IR_i2c* %17 to i8*, !dbg !4744
  call void @i2c_set_clientdata(%struct.i2c_client* %16, i8* %18) #8, !dbg !4745
  %19 = load i16, i16* %addr, align 2, !dbg !4746
  %conv = zext i16 %19 to i32, !dbg !4746
  switch i32 %conv, label %sw.epilog [
    i32 100, label %sw.bb
    i32 24, label %sw.bb9
    i32 31, label %sw.bb9
    i32 26, label %sw.bb9
    i32 48, label %sw.bb11
    i32 107, label %sw.bb13
    i32 64, label %sw.bb15
    i32 65, label %sw.bb17
    i32 113, label %sw.bb19
  ], !dbg !4747

sw.bb:                                            ; preds = %if.end8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %name, align 8, !dbg !4748
  %20 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4750
  %get_key = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %20, i32 0, i32 7, !dbg !4751
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_pixelview, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key, align 8, !dbg !4752
  store i64 2, i64* %rc_proto, align 8, !dbg !4753
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %ir_codes, align 8, !dbg !4754
  br label %sw.epilog, !dbg !4755

sw.bb9:                                           ; preds = %if.end8, %if.end8, %if.end8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %name, align 8, !dbg !4756
  %21 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4757
  %get_key10 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %21, i32 0, i32 7, !dbg !4758
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_haup, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key10, align 8, !dbg !4759
  store i64 4, i64* %rc_proto, align 8, !dbg !4760
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %ir_codes, align 8, !dbg !4761
  br label %sw.epilog, !dbg !4762

sw.bb11:                                          ; preds = %if.end8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %name, align 8, !dbg !4763
  %22 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4764
  %get_key12 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %22, i32 0, i32 7, !dbg !4765
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_knc1, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key12, align 8, !dbg !4766
  store i64 2, i64* %rc_proto, align 8, !dbg !4767
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %ir_codes, align 8, !dbg !4768
  br label %sw.epilog, !dbg !4769

sw.bb13:                                          ; preds = %if.end8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %name, align 8, !dbg !4770
  %23 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4771
  %get_key14 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %23, i32 0, i32 7, !dbg !4772
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_fusionhdtv, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key14, align 8, !dbg !4773
  store i64 1, i64* %rc_proto, align 8, !dbg !4774
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %ir_codes, align 8, !dbg !4775
  br label %sw.epilog, !dbg !4776

sw.bb15:                                          ; preds = %if.end8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8** %name, align 8, !dbg !4777
  %24 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4778
  %get_key16 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %24, i32 0, i32 7, !dbg !4779
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_avermedia_cardbus, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key16, align 8, !dbg !4780
  store i64 2, i64* %rc_proto, align 8, !dbg !4781
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8** %ir_codes, align 8, !dbg !4782
  br label %sw.epilog, !dbg !4783

sw.bb17:                                          ; preds = %if.end8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8** %name, align 8, !dbg !4784
  %25 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4785
  %get_key18 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %25, i32 0, i32 7, !dbg !4786
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_avermedia_cardbus, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key18, align 8, !dbg !4787
  store i64 2, i64* %rc_proto, align 8, !dbg !4788
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8** %ir_codes, align 8, !dbg !4789
  br label %sw.epilog, !dbg !4790

sw.bb19:                                          ; preds = %if.end8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8** %name, align 8, !dbg !4791
  %26 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4792
  %get_key20 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %26, i32 0, i32 7, !dbg !4793
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_haup_xvr, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key20, align 8, !dbg !4794
  store i64 786436, i64* %rc_proto, align 8, !dbg !4795
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %ir_codes, align 8, !dbg !4796
  store i8 1, i8* %probe_tx, align 1, !dbg !4797
  br label %sw.epilog, !dbg !4798

sw.epilog:                                        ; preds = %if.end8, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb
  %27 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4799
  %dev21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 4, !dbg !4801
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %dev21, i32 0, i32 7, !dbg !4802
  %28 = load i8*, i8** %platform_data, align 8, !dbg !4802
  %tobool22 = icmp ne i8* %28, null, !dbg !4799
  br i1 %tobool22, label %if.then23, label %if.end54, !dbg !4803

if.then23:                                        ; preds = %sw.epilog
  call void @llvm.dbg.declare(metadata %struct.IR_i2c_init_data** %init_data, metadata !4804, metadata !DIExpression()), !dbg !4817
  %29 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4818
  %dev24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 4, !dbg !4819
  %platform_data25 = getelementptr inbounds %struct.device, %struct.device* %dev24, i32 0, i32 7, !dbg !4820
  %30 = load i8*, i8** %platform_data25, align 8, !dbg !4820
  %31 = bitcast i8* %30 to %struct.IR_i2c_init_data*, !dbg !4818
  store %struct.IR_i2c_init_data* %31, %struct.IR_i2c_init_data** %init_data, align 8, !dbg !4817
  %32 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %init_data, align 8, !dbg !4821
  %ir_codes26 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %32, i32 0, i32 0, !dbg !4822
  %33 = load i8*, i8** %ir_codes26, align 8, !dbg !4822
  store i8* %33, i8** %ir_codes, align 8, !dbg !4823
  %34 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %init_data, align 8, !dbg !4824
  %rc_dev = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %34, i32 0, i32 6, !dbg !4825
  %35 = load %struct.rc_dev*, %struct.rc_dev** %rc_dev, align 8, !dbg !4825
  store %struct.rc_dev* %35, %struct.rc_dev** %rc, align 8, !dbg !4826
  %36 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %init_data, align 8, !dbg !4827
  %name27 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %36, i32 0, i32 1, !dbg !4828
  %37 = load i8*, i8** %name27, align 8, !dbg !4828
  store i8* %37, i8** %name, align 8, !dbg !4829
  %38 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %init_data, align 8, !dbg !4830
  %type = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %38, i32 0, i32 2, !dbg !4832
  %39 = load i64, i64* %type, align 8, !dbg !4832
  %tobool28 = icmp ne i64 %39, 0, !dbg !4830
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !4833

if.then29:                                        ; preds = %if.then23
  %40 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %init_data, align 8, !dbg !4834
  %type30 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %40, i32 0, i32 2, !dbg !4835
  %41 = load i64, i64* %type30, align 8, !dbg !4835
  store i64 %41, i64* %rc_proto, align 8, !dbg !4836
  br label %if.end31, !dbg !4837

if.end31:                                         ; preds = %if.then29, %if.then23
  %42 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %init_data, align 8, !dbg !4838
  %polling_interval32 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %42, i32 0, i32 3, !dbg !4840
  %43 = load i32, i32* %polling_interval32, align 8, !dbg !4840
  %tobool33 = icmp ne i32 %43, 0, !dbg !4838
  br i1 %tobool33, label %if.then34, label %if.end37, !dbg !4841

if.then34:                                        ; preds = %if.end31
  %44 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %init_data, align 8, !dbg !4842
  %polling_interval35 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %44, i32 0, i32 3, !dbg !4843
  %45 = load i32, i32* %polling_interval35, align 8, !dbg !4843
  %46 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4844
  %polling_interval36 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %46, i32 0, i32 4, !dbg !4845
  store i32 %45, i32* %polling_interval36, align 4, !dbg !4846
  br label %if.end37, !dbg !4844

if.end37:                                         ; preds = %if.then34, %if.end31
  %47 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %init_data, align 8, !dbg !4847
  %internal_get_key_func = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %47, i32 0, i32 5, !dbg !4848
  %48 = load i32, i32* %internal_get_key_func, align 8, !dbg !4848
  switch i32 %48, label %sw.epilog53 [
    i32 0, label %sw.bb38
    i32 1, label %sw.bb41
    i32 2, label %sw.bb43
    i32 3, label %sw.bb45
    i32 4, label %sw.bb47
    i32 5, label %sw.bb49
    i32 6, label %sw.bb51
  ], !dbg !4849

sw.bb38:                                          ; preds = %if.end37
  %49 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %init_data, align 8, !dbg !4850
  %get_key39 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %49, i32 0, i32 4, !dbg !4852
  %50 = load i32 (%struct.IR_i2c*, i32*, i32*, i8*)*, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key39, align 8, !dbg !4852
  %51 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4853
  %get_key40 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %51, i32 0, i32 7, !dbg !4854
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* %50, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key40, align 8, !dbg !4855
  br label %sw.epilog53, !dbg !4856

sw.bb41:                                          ; preds = %if.end37
  %52 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4857
  %get_key42 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %52, i32 0, i32 7, !dbg !4858
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_pixelview, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key42, align 8, !dbg !4859
  br label %sw.epilog53, !dbg !4860

sw.bb43:                                          ; preds = %if.end37
  %53 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4861
  %get_key44 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %53, i32 0, i32 7, !dbg !4862
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_haup, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key44, align 8, !dbg !4863
  br label %sw.epilog53, !dbg !4864

sw.bb45:                                          ; preds = %if.end37
  %54 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4865
  %get_key46 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %54, i32 0, i32 7, !dbg !4866
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_knc1, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key46, align 8, !dbg !4867
  br label %sw.epilog53, !dbg !4868

sw.bb47:                                          ; preds = %if.end37
  %55 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4869
  %get_key48 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %55, i32 0, i32 7, !dbg !4870
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_fusionhdtv, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key48, align 8, !dbg !4871
  br label %sw.epilog53, !dbg !4872

sw.bb49:                                          ; preds = %if.end37
  %56 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4873
  %get_key50 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %56, i32 0, i32 7, !dbg !4874
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_haup_xvr, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key50, align 8, !dbg !4875
  br label %sw.epilog53, !dbg !4876

sw.bb51:                                          ; preds = %if.end37
  %57 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4877
  %get_key52 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %57, i32 0, i32 7, !dbg !4878
  store i32 (%struct.IR_i2c*, i32*, i32*, i8*)* @get_key_avermedia_cardbus, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key52, align 8, !dbg !4879
  br label %sw.epilog53, !dbg !4880

sw.epilog53:                                      ; preds = %if.end37, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb38
  br label %if.end54, !dbg !4881

if.end54:                                         ; preds = %sw.epilog53, %sw.epilog
  %58 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4882
  %tobool55 = icmp ne %struct.rc_dev* %58, null, !dbg !4882
  br i1 %tobool55, label %if.end61, label %if.then56, !dbg !4884

if.then56:                                        ; preds = %if.end54
  %call57 = call %struct.rc_dev* @rc_allocate_device(i32 0) #8, !dbg !4885
  store %struct.rc_dev* %call57, %struct.rc_dev** %rc, align 8, !dbg !4887
  %59 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4888
  %tobool58 = icmp ne %struct.rc_dev* %59, null, !dbg !4888
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !4890

if.then59:                                        ; preds = %if.then56
  store i32 -12, i32* %retval, align 4, !dbg !4891
  br label %return, !dbg !4891

if.end60:                                         ; preds = %if.then56
  br label %if.end61, !dbg !4892

if.end61:                                         ; preds = %if.end60, %if.end54
  %60 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4893
  %61 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4894
  %rc62 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %61, i32 0, i32 2, !dbg !4895
  store %struct.rc_dev* %60, %struct.rc_dev** %rc62, align 8, !dbg !4896
  %62 = load i8*, i8** %name, align 8, !dbg !4897
  %tobool63 = icmp ne i8* %62, null, !dbg !4897
  br i1 %tobool63, label %lor.lhs.false, label %if.then70, !dbg !4899

lor.lhs.false:                                    ; preds = %if.end61
  %63 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4900
  %get_key64 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %63, i32 0, i32 7, !dbg !4901
  %64 = load i32 (%struct.IR_i2c*, i32*, i32*, i8*)*, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key64, align 8, !dbg !4901
  %tobool65 = icmp ne i32 (%struct.IR_i2c*, i32*, i32*, i8*)* %64, null, !dbg !4900
  br i1 %tobool65, label %lor.lhs.false66, label %if.then70, !dbg !4902

lor.lhs.false66:                                  ; preds = %lor.lhs.false
  %65 = load i64, i64* %rc_proto, align 8, !dbg !4903
  %tobool67 = icmp ne i64 %65, 0, !dbg !4903
  br i1 %tobool67, label %lor.lhs.false68, label %if.then70, !dbg !4904

lor.lhs.false68:                                  ; preds = %lor.lhs.false66
  %66 = load i8*, i8** %ir_codes, align 8, !dbg !4905
  %tobool69 = icmp ne i8* %66, null, !dbg !4905
  br i1 %tobool69, label %if.end73, label %if.then70, !dbg !4906

if.then70:                                        ; preds = %lor.lhs.false68, %lor.lhs.false66, %lor.lhs.false, %if.end61
  %67 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4907
  %dev71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 4, !dbg !4907
  %68 = load i16, i16* %addr, align 2, !dbg !4907
  %conv72 = zext i16 %68 to i32, !dbg !4907
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %conv72) #9, !dbg !4907
  store i32 -19, i32* %err, align 4, !dbg !4909
  br label %err_out_free, !dbg !4910

if.end73:                                         ; preds = %lor.lhs.false68
  %69 = load i8*, i8** %ir_codes, align 8, !dbg !4911
  %70 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4912
  %ir_codes74 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %70, i32 0, i32 0, !dbg !4913
  store i8* %69, i8** %ir_codes74, align 8, !dbg !4914
  %71 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4915
  %phys = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %71, i32 0, i32 6, !dbg !4916
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !4915
  %72 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4917
  %dev75 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %72, i32 0, i32 9, !dbg !4918
  %call76 = call i8* @dev_name(%struct.device* %dev75) #8, !dbg !4919
  %73 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4920
  %dev77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 4, !dbg !4921
  %call78 = call i8* @dev_name(%struct.device* %dev77) #8, !dbg !4922
  %call79 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %call76, i8* %call78) #8, !dbg !4923
  %74 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4924
  %input_id = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %74, i32 0, i32 5, !dbg !4925
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %input_id, i32 0, i32 0, !dbg !4926
  store i16 24, i16* %bustype, align 8, !dbg !4927
  %75 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4928
  %phys80 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %75, i32 0, i32 6, !dbg !4929
  %arraydecay81 = getelementptr inbounds [32 x i8], [32 x i8]* %phys80, i64 0, i64 0, !dbg !4928
  %76 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4930
  %input_phys = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %76, i32 0, i32 4, !dbg !4931
  store i8* %arraydecay81, i8** %input_phys, align 8, !dbg !4932
  %77 = load i8*, i8** %name, align 8, !dbg !4933
  %78 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4934
  %device_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %78, i32 0, i32 3, !dbg !4935
  store i8* %77, i8** %device_name, align 8, !dbg !4936
  %79 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4937
  %dev82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 4, !dbg !4938
  %80 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4939
  %dev83 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %80, i32 0, i32 0, !dbg !4940
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev83, i32 0, i32 1, !dbg !4941
  store %struct.device* %dev82, %struct.device** %parent, align 8, !dbg !4942
  %81 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4943
  %82 = bitcast %struct.IR_i2c* %81 to i8*, !dbg !4943
  %83 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4944
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %83, i32 0, i32 24, !dbg !4945
  store i8* %82, i8** %priv, align 8, !dbg !4946
  %84 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4947
  %open = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %84, i32 0, i32 41, !dbg !4948
  store i32 (%struct.rc_dev*)* @ir_open, i32 (%struct.rc_dev*)** %open, align 8, !dbg !4949
  %85 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4950
  %close = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %85, i32 0, i32 42, !dbg !4951
  store void (%struct.rc_dev*)* @ir_close, void (%struct.rc_dev*)** %close, align 8, !dbg !4952
  %86 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4953
  %ir_codes84 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %86, i32 0, i32 0, !dbg !4954
  %87 = load i8*, i8** %ir_codes84, align 8, !dbg !4954
  %88 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4955
  %map_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %88, i32 0, i32 7, !dbg !4956
  store i8* %87, i8** %map_name, align 8, !dbg !4957
  %89 = load i64, i64* %rc_proto, align 8, !dbg !4958
  %90 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4959
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %90, i32 0, i32 16, !dbg !4960
  store i64 %89, i64* %allowed_protocols, align 8, !dbg !4961
  %91 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4962
  %driver_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %91, i32 0, i32 6, !dbg !4964
  %92 = load i8*, i8** %driver_name, align 8, !dbg !4964
  %tobool85 = icmp ne i8* %92, null, !dbg !4962
  br i1 %tobool85, label %if.end88, label %if.then86, !dbg !4965

if.then86:                                        ; preds = %if.end73
  %93 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4966
  %driver_name87 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %93, i32 0, i32 6, !dbg !4967
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %driver_name87, align 8, !dbg !4968
  br label %if.end88, !dbg !4966

if.end88:                                         ; preds = %if.then86, %if.end73
  br label %do.body, !dbg !4969

do.body:                                          ; preds = %if.end88
  %94 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4970
  %lock = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %94, i32 0, i32 9, !dbg !4970
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), %struct.lock_class_key* @ir_probe.__key) #8, !dbg !4970
  br label %do.end, !dbg !4970

do.end:                                           ; preds = %do.body
  br label %do.body89, !dbg !4972

do.body89:                                        ; preds = %do.end
  br label %do.body90, !dbg !4973

do.body90:                                        ; preds = %do.body89
  %95 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4975
  %work = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %95, i32 0, i32 5, !dbg !4975
  %work91 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work, i32 0, i32 0, !dbg !4975
  call void @__init_work(%struct.work_struct* %work91, i32 0) #8, !dbg !4975
  %96 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4975
  %work92 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %96, i32 0, i32 5, !dbg !4975
  %work93 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work92, i32 0, i32 0, !dbg !4975
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work93, i32 0, i32 0, !dbg !4975
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !4975
  store i64 68719476704, i64* %counter, align 8, !dbg !4975
  %97 = bitcast %struct.atomic64_t* %data to i8*, !dbg !4975
  %98 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !4975
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 8, i1 false), !dbg !4975
  %99 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4975
  %work94 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %99, i32 0, i32 5, !dbg !4975
  %work95 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work94, i32 0, i32 0, !dbg !4975
  %entry96 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work95, i32 0, i32 1, !dbg !4975
  call void @INIT_LIST_HEAD(%struct.list_head* %entry96) #8, !dbg !4975
  %100 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4975
  %work97 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %100, i32 0, i32 5, !dbg !4975
  %work98 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work97, i32 0, i32 0, !dbg !4975
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work98, i32 0, i32 2, !dbg !4975
  store void (%struct.work_struct*)* @ir_work, void (%struct.work_struct*)** %func, align 8, !dbg !4975
  br label %do.end99, !dbg !4975

do.end99:                                         ; preds = %do.body90
  %101 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4973
  %work100 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %101, i32 0, i32 5, !dbg !4973
  %timer = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work100, i32 0, i32 1, !dbg !4973
  call void @init_timer_key(%struct.timer_list* %timer, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152, i8* null, %struct.lock_class_key* null) #8, !dbg !4973
  br label %do.end101, !dbg !4973

do.end101:                                        ; preds = %do.end99
  %102 = load i8, i8* %probe_tx, align 1, !dbg !4977
  %tobool102 = trunc i8 %102 to i1, !dbg !4977
  br i1 %tobool102, label %if.then103, label %if.end118, !dbg !4979

if.then103:                                       ; preds = %do.end101
  %103 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4980
  %adapter104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 3, !dbg !4982
  %104 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter104, align 8, !dbg !4982
  %call105 = call %struct.i2c_client* @i2c_new_dummy_device(%struct.i2c_adapter* %104, i16 zeroext 112) #8, !dbg !4983
  %105 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4984
  %tx_c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %105, i32 0, i32 8, !dbg !4985
  store %struct.i2c_client* %call105, %struct.i2c_client** %tx_c, align 8, !dbg !4986
  %106 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4987
  %tx_c106 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %106, i32 0, i32 8, !dbg !4989
  %107 = load %struct.i2c_client*, %struct.i2c_client** %tx_c106, align 8, !dbg !4989
  %108 = bitcast %struct.i2c_client* %107 to i8*, !dbg !4987
  %call107 = call zeroext i1 @IS_ERR(i8* %108) #8, !dbg !4990
  br i1 %call107, label %if.then108, label %if.else, !dbg !4991

if.then108:                                       ; preds = %if.then103
  %109 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !4992
  %dev109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 4, !dbg !4992
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !4992
  %110 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4994
  %tx_c110 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %110, i32 0, i32 8, !dbg !4995
  %111 = load %struct.i2c_client*, %struct.i2c_client** %tx_c110, align 8, !dbg !4995
  %112 = bitcast %struct.i2c_client* %111 to i8*, !dbg !4994
  %call111 = call i64 @PTR_ERR(i8* %112) #8, !dbg !4996
  %conv112 = trunc i64 %call111 to i32, !dbg !4996
  store i32 %conv112, i32* %err, align 4, !dbg !4997
  br label %err_out_free, !dbg !4998

if.else:                                          ; preds = %if.then103
  %113 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !4999
  %call113 = call i32 @zilog_init(%struct.IR_i2c* %113) #8, !dbg !5001
  %tobool114 = icmp ne i32 %call113, 0, !dbg !5001
  br i1 %tobool114, label %if.end116, label %if.then115, !dbg !5002

if.then115:                                       ; preds = %if.else
  %114 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5003
  %carrier = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %114, i32 0, i32 10, !dbg !5005
  store i32 38000, i32* %carrier, align 8, !dbg !5006
  %115 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5007
  %duty_cycle = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %115, i32 0, i32 11, !dbg !5008
  store i32 40, i32* %duty_cycle, align 4, !dbg !5009
  %116 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5010
  %tx_ir = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %116, i32 0, i32 47, !dbg !5011
  store i32 (%struct.rc_dev*, i32*, i32)* @zilog_tx, i32 (%struct.rc_dev*, i32*, i32)** %tx_ir, align 8, !dbg !5012
  %117 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5013
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %117, i32 0, i32 44, !dbg !5014
  store i32 (%struct.rc_dev*, i32)* @zilog_tx_carrier, i32 (%struct.rc_dev*, i32)** %s_tx_carrier, align 8, !dbg !5015
  %118 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5016
  %s_tx_duty_cycle = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %118, i32 0, i32 45, !dbg !5017
  store i32 (%struct.rc_dev*, i32)* @zilog_tx_duty_cycle, i32 (%struct.rc_dev*, i32)** %s_tx_duty_cycle, align 8, !dbg !5018
  br label %if.end116, !dbg !5019

if.end116:                                        ; preds = %if.then115, %if.else
  br label %if.end117

if.end117:                                        ; preds = %if.end116
  br label %if.end118, !dbg !5020

if.end118:                                        ; preds = %if.end117, %do.end101
  %119 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5021
  %call119 = call i32 @rc_register_device(%struct.rc_dev* %119) #8, !dbg !5022
  store i32 %call119, i32* %err, align 4, !dbg !5023
  %120 = load i32, i32* %err, align 4, !dbg !5024
  %tobool120 = icmp ne i32 %120, 0, !dbg !5024
  br i1 %tobool120, label %if.then121, label %if.end122, !dbg !5026

if.then121:                                       ; preds = %if.end118
  br label %err_out_free, !dbg !5027

if.end122:                                        ; preds = %if.end118
  store i32 0, i32* %retval, align 4, !dbg !5028
  br label %return, !dbg !5028

err_out_free:                                     ; preds = %if.then121, %if.then108, %if.then70
  call void @llvm.dbg.label(metadata !5029), !dbg !5030
  %121 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5031
  %tx_c123 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %121, i32 0, i32 8, !dbg !5033
  %122 = load %struct.i2c_client*, %struct.i2c_client** %tx_c123, align 8, !dbg !5033
  %123 = bitcast %struct.i2c_client* %122 to i8*, !dbg !5031
  %call124 = call zeroext i1 @IS_ERR(i8* %123) #8, !dbg !5034
  br i1 %call124, label %if.end127, label %if.then125, !dbg !5035

if.then125:                                       ; preds = %err_out_free
  %124 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5036
  %tx_c126 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %124, i32 0, i32 8, !dbg !5037
  %125 = load %struct.i2c_client*, %struct.i2c_client** %tx_c126, align 8, !dbg !5037
  call void @i2c_unregister_device(%struct.i2c_client* %125) #8, !dbg !5038
  br label %if.end127, !dbg !5038

if.end127:                                        ; preds = %if.then125, %err_out_free
  %126 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5039
  call void @rc_free_device(%struct.rc_dev* %126) #8, !dbg !5040
  %127 = load i32, i32* %err, align 4, !dbg !5041
  store i32 %127, i32* %retval, align 4, !dbg !5042
  br label %return, !dbg !5042

return:                                           ; preds = %if.end127, %if.end122, %if.then59, %if.then7, %if.then
  %128 = load i32, i32* %retval, align 4, !dbg !5043
  ret i32 %128, !dbg !5043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ir_remove(%struct.i2c_client* %client) #2 !dbg !5044 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %ir = alloca %struct.IR_i2c*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5045, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir, metadata !5047, metadata !DIExpression()), !dbg !5048
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5049
  %call = call i8* @i2c_get_clientdata(%struct.i2c_client* %0) #8, !dbg !5050
  %1 = bitcast i8* %call to %struct.IR_i2c*, !dbg !5050
  store %struct.IR_i2c* %1, %struct.IR_i2c** %ir, align 8, !dbg !5048
  %2 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5051
  %work = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %2, i32 0, i32 5, !dbg !5052
  %call1 = call zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work* %work) #8, !dbg !5053
  %3 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5054
  %tx_c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %3, i32 0, i32 8, !dbg !5055
  %4 = load %struct.i2c_client*, %struct.i2c_client** %tx_c, align 8, !dbg !5055
  call void @i2c_unregister_device(%struct.i2c_client* %4) #8, !dbg !5056
  %5 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5057
  %rc = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %5, i32 0, i32 2, !dbg !5058
  %6 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5058
  call void @rc_unregister_device(%struct.rc_dev* %6) #8, !dbg !5059
  ret i32 0, !dbg !5060
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !5061 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5066, metadata !DIExpression()), !dbg !5067
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5070
  %1 = load i64, i64* %size.addr, align 8, !dbg !5071
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !5072
  %or = or i32 %2, 256, !dbg !5073
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #8, !dbg !5074
  ret i8* %call, !dbg !5075
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_clientdata(%struct.i2c_client* %client, i8* %data) #2 !dbg !5076 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5083
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !5084
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5085
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !5086
  ret void, !dbg !5087
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_key_pixelview(%struct.IR_i2c* %ir, i32* %protocol, i32* %scancode, i8* %toggle) #2 !dbg !5088 {
entry:
  %retval = alloca i32, align 4
  %ir.addr = alloca %struct.IR_i2c*, align 8
  %protocol.addr = alloca i32*, align 8
  %scancode.addr = alloca i32*, align 8
  %toggle.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  %b = alloca i8, align 1
  store %struct.IR_i2c* %ir, %struct.IR_i2c** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  store i32* %protocol, i32** %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %protocol.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store i32* %scancode, i32** %scancode.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %scancode.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  store i8* %toggle, i8** %toggle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %toggle.addr, metadata !5095, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5097, metadata !DIExpression()), !dbg !5098
  call void @llvm.dbg.declare(metadata i8* %b, metadata !5099, metadata !DIExpression()), !dbg !5100
  %0 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5101
  %c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %0, i32 0, i32 1, !dbg !5102
  %1 = load %struct.i2c_client*, %struct.i2c_client** %c, align 8, !dbg !5102
  %call = call i32 @i2c_master_recv(%struct.i2c_client* %1, i8* %b, i32 1) #8, !dbg !5103
  store i32 %call, i32* %rc, align 4, !dbg !5104
  %2 = load i32, i32* %rc, align 4, !dbg !5105
  %cmp = icmp ne i32 %2, 1, !dbg !5107
  br i1 %cmp, label %if.then, label %if.end3, !dbg !5108

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rc, align 4, !dbg !5109
  %cmp1 = icmp slt i32 %3, 0, !dbg !5112
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !5113

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %rc, align 4, !dbg !5114
  store i32 %4, i32* %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

if.end:                                           ; preds = %if.then
  store i32 -5, i32* %retval, align 4, !dbg !5116
  br label %return, !dbg !5116

if.end3:                                          ; preds = %entry
  %5 = load i32*, i32** %protocol.addr, align 8, !dbg !5117
  store i32 1, i32* %5, align 4, !dbg !5118
  %6 = load i8, i8* %b, align 1, !dbg !5119
  %conv = zext i8 %6 to i32, !dbg !5119
  %7 = load i32*, i32** %scancode.addr, align 8, !dbg !5120
  store i32 %conv, i32* %7, align 4, !dbg !5121
  %8 = load i8*, i8** %toggle.addr, align 8, !dbg !5122
  store i8 0, i8* %8, align 1, !dbg !5123
  store i32 1, i32* %retval, align 4, !dbg !5124
  br label %return, !dbg !5124

return:                                           ; preds = %if.end3, %if.end, %if.then2
  %9 = load i32, i32* %retval, align 4, !dbg !5125
  ret i32 %9, !dbg !5125
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_key_haup(%struct.IR_i2c* %ir, i32* %protocol, i32* %scancode, i8* %toggle) #2 !dbg !5126 {
entry:
  %ir.addr = alloca %struct.IR_i2c*, align 8
  %protocol.addr = alloca i32*, align 8
  %scancode.addr = alloca i32*, align 8
  %toggle.addr = alloca i8*, align 8
  store %struct.IR_i2c* %ir, %struct.IR_i2c** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  store i32* %protocol, i32** %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %protocol.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  store i32* %scancode, i32** %scancode.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %scancode.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  store i8* %toggle, i8** %toggle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %toggle.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  %0 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5135
  %1 = load i32*, i32** %protocol.addr, align 8, !dbg !5136
  %2 = load i32*, i32** %scancode.addr, align 8, !dbg !5137
  %3 = load i8*, i8** %toggle.addr, align 8, !dbg !5138
  %call = call i32 @get_key_haup_common(%struct.IR_i2c* %0, i32* %1, i32* %2, i8* %3, i32 3) #8, !dbg !5139
  ret i32 %call, !dbg !5140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_key_knc1(%struct.IR_i2c* %ir, i32* %protocol, i32* %scancode, i8* %toggle) #2 !dbg !5141 {
entry:
  %retval = alloca i32, align 4
  %ir.addr = alloca %struct.IR_i2c*, align 8
  %protocol.addr = alloca i32*, align 8
  %scancode.addr = alloca i32*, align 8
  %toggle.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  %b = alloca i8, align 1
  store %struct.IR_i2c* %ir, %struct.IR_i2c** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir.addr, metadata !5142, metadata !DIExpression()), !dbg !5143
  store i32* %protocol, i32** %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %protocol.addr, metadata !5144, metadata !DIExpression()), !dbg !5145
  store i32* %scancode, i32** %scancode.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %scancode.addr, metadata !5146, metadata !DIExpression()), !dbg !5147
  store i8* %toggle, i8** %toggle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %toggle.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5150, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.declare(metadata i8* %b, metadata !5152, metadata !DIExpression()), !dbg !5153
  %0 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5154
  %c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %0, i32 0, i32 1, !dbg !5155
  %1 = load %struct.i2c_client*, %struct.i2c_client** %c, align 8, !dbg !5155
  %call = call i32 @i2c_master_recv(%struct.i2c_client* %1, i8* %b, i32 1) #8, !dbg !5156
  store i32 %call, i32* %rc, align 4, !dbg !5157
  %2 = load i32, i32* %rc, align 4, !dbg !5158
  %cmp = icmp ne i32 %2, 1, !dbg !5160
  br i1 %cmp, label %if.then, label %if.end3, !dbg !5161

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rc, align 4, !dbg !5162
  %cmp1 = icmp slt i32 %3, 0, !dbg !5165
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !5166

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %rc, align 4, !dbg !5167
  store i32 %4, i32* %retval, align 4, !dbg !5168
  br label %return, !dbg !5168

if.end:                                           ; preds = %if.then
  store i32 -5, i32* %retval, align 4, !dbg !5169
  br label %return, !dbg !5169

if.end3:                                          ; preds = %entry
  %5 = load i8, i8* %b, align 1, !dbg !5170
  %conv = zext i8 %5 to i32, !dbg !5170
  %cmp4 = icmp eq i32 %conv, 255, !dbg !5172
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !5173

if.then6:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !5174
  br label %return, !dbg !5174

if.end7:                                          ; preds = %if.end3
  %6 = load i8, i8* %b, align 1, !dbg !5175
  %conv8 = zext i8 %6 to i32, !dbg !5175
  %cmp9 = icmp eq i32 %conv8, 254, !dbg !5177
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5178

if.then11:                                        ; preds = %if.end7
  store i32 1, i32* %retval, align 4, !dbg !5179
  br label %return, !dbg !5179

if.end12:                                         ; preds = %if.end7
  %7 = load i32*, i32** %protocol.addr, align 8, !dbg !5180
  store i32 0, i32* %7, align 4, !dbg !5181
  %8 = load i8, i8* %b, align 1, !dbg !5182
  %conv13 = zext i8 %8 to i32, !dbg !5182
  %9 = load i32*, i32** %scancode.addr, align 8, !dbg !5183
  store i32 %conv13, i32* %9, align 4, !dbg !5184
  %10 = load i8*, i8** %toggle.addr, align 8, !dbg !5185
  store i8 0, i8* %10, align 1, !dbg !5186
  store i32 1, i32* %retval, align 4, !dbg !5187
  br label %return, !dbg !5187

return:                                           ; preds = %if.end12, %if.then11, %if.then6, %if.end, %if.then2
  %11 = load i32, i32* %retval, align 4, !dbg !5188
  ret i32 %11, !dbg !5188
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_key_fusionhdtv(%struct.IR_i2c* %ir, i32* %protocol, i32* %scancode, i8* %toggle) #2 !dbg !5189 {
entry:
  %retval = alloca i32, align 4
  %ir.addr = alloca %struct.IR_i2c*, align 8
  %protocol.addr = alloca i32*, align 8
  %scancode.addr = alloca i32*, align 8
  %toggle.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  store %struct.IR_i2c* %ir, %struct.IR_i2c** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir.addr, metadata !5190, metadata !DIExpression()), !dbg !5191
  store i32* %protocol, i32** %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %protocol.addr, metadata !5192, metadata !DIExpression()), !dbg !5193
  store i32* %scancode, i32** %scancode.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %scancode.addr, metadata !5194, metadata !DIExpression()), !dbg !5195
  store i8* %toggle, i8** %toggle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %toggle.addr, metadata !5196, metadata !DIExpression()), !dbg !5197
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5198, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.declare(metadata [4 x i8]* %buf, metadata !5200, metadata !DIExpression()), !dbg !5202
  %0 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5203
  %c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %0, i32 0, i32 1, !dbg !5204
  %1 = load %struct.i2c_client*, %struct.i2c_client** %c, align 8, !dbg !5204
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0, !dbg !5205
  %call = call i32 @i2c_master_recv(%struct.i2c_client* %1, i8* %arraydecay, i32 4) #8, !dbg !5206
  store i32 %call, i32* %rc, align 4, !dbg !5207
  %2 = load i32, i32* %rc, align 4, !dbg !5208
  %cmp = icmp ne i32 %2, 4, !dbg !5210
  br i1 %cmp, label %if.then, label %if.end3, !dbg !5211

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rc, align 4, !dbg !5212
  %cmp1 = icmp slt i32 %3, 0, !dbg !5215
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !5216

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %rc, align 4, !dbg !5217
  store i32 %4, i32* %retval, align 4, !dbg !5218
  br label %return, !dbg !5218

if.end:                                           ; preds = %if.then
  store i32 -5, i32* %retval, align 4, !dbg !5219
  br label %return, !dbg !5219

if.end3:                                          ; preds = %entry
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 0, !dbg !5220
  %5 = load i8, i8* %arrayidx, align 1, !dbg !5220
  %conv = zext i8 %5 to i32, !dbg !5220
  %cmp4 = icmp ne i32 %conv, 0, !dbg !5222
  br i1 %cmp4, label %if.then20, label %lor.lhs.false, !dbg !5223

lor.lhs.false:                                    ; preds = %if.end3
  %arrayidx6 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 1, !dbg !5224
  %6 = load i8, i8* %arrayidx6, align 1, !dbg !5224
  %conv7 = zext i8 %6 to i32, !dbg !5224
  %cmp8 = icmp ne i32 %conv7, 0, !dbg !5225
  br i1 %cmp8, label %if.then20, label %lor.lhs.false10, !dbg !5226

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %arrayidx11 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 2, !dbg !5227
  %7 = load i8, i8* %arrayidx11, align 1, !dbg !5227
  %conv12 = zext i8 %7 to i32, !dbg !5227
  %cmp13 = icmp ne i32 %conv12, 0, !dbg !5228
  br i1 %cmp13, label %if.then20, label %lor.lhs.false15, !dbg !5229

lor.lhs.false15:                                  ; preds = %lor.lhs.false10
  %arrayidx16 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 3, !dbg !5230
  %8 = load i8, i8* %arrayidx16, align 1, !dbg !5230
  %conv17 = zext i8 %8 to i32, !dbg !5230
  %cmp18 = icmp ne i32 %conv17, 0, !dbg !5231
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5232

if.then20:                                        ; preds = %lor.lhs.false15, %lor.lhs.false10, %lor.lhs.false, %if.end3
  br label %if.end21, !dbg !5233

if.end21:                                         ; preds = %if.then20, %lor.lhs.false15
  %arrayidx22 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 0, !dbg !5234
  %9 = load i8, i8* %arrayidx22, align 1, !dbg !5234
  %conv23 = zext i8 %9 to i32, !dbg !5234
  %cmp24 = icmp ne i32 %conv23, 1, !dbg !5236
  br i1 %cmp24, label %if.then31, label %lor.lhs.false26, !dbg !5237

lor.lhs.false26:                                  ; preds = %if.end21
  %arrayidx27 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 1, !dbg !5238
  %10 = load i8, i8* %arrayidx27, align 1, !dbg !5238
  %conv28 = zext i8 %10 to i32, !dbg !5238
  %cmp29 = icmp ne i32 %conv28, 254, !dbg !5239
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !5240

if.then31:                                        ; preds = %lor.lhs.false26, %if.end21
  store i32 0, i32* %retval, align 4, !dbg !5241
  br label %return, !dbg !5241

if.end32:                                         ; preds = %lor.lhs.false26
  %11 = load i32*, i32** %protocol.addr, align 8, !dbg !5242
  store i32 0, i32* %11, align 4, !dbg !5243
  %arrayidx33 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 2, !dbg !5244
  %12 = load i8, i8* %arrayidx33, align 1, !dbg !5244
  %conv34 = zext i8 %12 to i32, !dbg !5244
  %13 = load i32*, i32** %scancode.addr, align 8, !dbg !5245
  store i32 %conv34, i32* %13, align 4, !dbg !5246
  %14 = load i8*, i8** %toggle.addr, align 8, !dbg !5247
  store i8 0, i8* %14, align 1, !dbg !5248
  store i32 1, i32* %retval, align 4, !dbg !5249
  br label %return, !dbg !5249

return:                                           ; preds = %if.end32, %if.then31, %if.end, %if.then2
  %15 = load i32, i32* %retval, align 4, !dbg !5250
  ret i32 %15, !dbg !5250
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_key_avermedia_cardbus(%struct.IR_i2c* %ir, i32* %protocol, i32* %scancode, i8* %toggle) #2 !dbg !5251 {
entry:
  %retval = alloca i32, align 4
  %ir.addr = alloca %struct.IR_i2c*, align 8
  %protocol.addr = alloca i32*, align 8
  %scancode.addr = alloca i32*, align 8
  %toggle.addr = alloca i8*, align 8
  %subaddr = alloca i8, align 1
  %key = alloca i8, align 1
  %keygroup = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.IR_i2c* %ir, %struct.IR_i2c** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir.addr, metadata !5252, metadata !DIExpression()), !dbg !5253
  store i32* %protocol, i32** %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %protocol.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  store i32* %scancode, i32** %scancode.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %scancode.addr, metadata !5256, metadata !DIExpression()), !dbg !5257
  store i8* %toggle, i8** %toggle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %toggle.addr, metadata !5258, metadata !DIExpression()), !dbg !5259
  call void @llvm.dbg.declare(metadata i8* %subaddr, metadata !5260, metadata !DIExpression()), !dbg !5261
  call void @llvm.dbg.declare(metadata i8* %key, metadata !5262, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.declare(metadata i8* %keygroup, metadata !5264, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !5266, metadata !DIExpression()), !dbg !5268
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5269
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !5270
  %0 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5271
  %c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %0, i32 0, i32 1, !dbg !5272
  %1 = load %struct.i2c_client*, %struct.i2c_client** %c, align 8, !dbg !5272
  %addr1 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %1, i32 0, i32 1, !dbg !5273
  %2 = load i16, i16* %addr1, align 2, !dbg !5273
  store i16 %2, i16* %addr, align 16, !dbg !5270
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !5270
  store i16 0, i16* %flags, align 2, !dbg !5270
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !5270
  store i16 1, i16* %len, align 4, !dbg !5270
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !5270
  store i8* %subaddr, i8** %buf, align 8, !dbg !5270
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !5269
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !5274
  %3 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5275
  %c3 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %3, i32 0, i32 1, !dbg !5276
  %4 = load %struct.i2c_client*, %struct.i2c_client** %c3, align 8, !dbg !5276
  %addr4 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %4, i32 0, i32 1, !dbg !5277
  %5 = load i16, i16* %addr4, align 2, !dbg !5277
  store i16 %5, i16* %addr2, align 16, !dbg !5274
  %flags5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !5274
  store i16 1, i16* %flags5, align 2, !dbg !5274
  %len6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !5274
  store i16 1, i16* %len6, align 4, !dbg !5274
  %buf7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !5274
  store i8* %key, i8** %buf7, align 8, !dbg !5274
  store i8 13, i8* %subaddr, align 1, !dbg !5278
  %6 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5279
  %c8 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %6, i32 0, i32 1, !dbg !5281
  %7 = load %struct.i2c_client*, %struct.i2c_client** %c8, align 8, !dbg !5281
  %adapter = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 3, !dbg !5282
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !5282
  %arraydecay = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5283
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %8, %struct.i2c_msg* %arraydecay, i32 2) #8, !dbg !5284
  %cmp = icmp ne i32 2, %call, !dbg !5285
  br i1 %cmp, label %if.then, label %if.end, !dbg !5286

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !5287
  br label %return, !dbg !5287

if.end:                                           ; preds = %entry
  %9 = load i8, i8* %key, align 1, !dbg !5289
  %conv = zext i8 %9 to i32, !dbg !5289
  %cmp9 = icmp eq i32 %conv, 255, !dbg !5291
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5292

if.then11:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5293
  br label %return, !dbg !5293

if.end12:                                         ; preds = %if.end
  store i8 11, i8* %subaddr, align 1, !dbg !5294
  %arrayidx = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !5295
  %buf13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx, i32 0, i32 3, !dbg !5296
  store i8* %keygroup, i8** %buf13, align 8, !dbg !5297
  %10 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5298
  %c14 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %10, i32 0, i32 1, !dbg !5300
  %11 = load %struct.i2c_client*, %struct.i2c_client** %c14, align 8, !dbg !5300
  %adapter15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 3, !dbg !5301
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter15, align 8, !dbg !5301
  %arraydecay16 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5302
  %call17 = call i32 @i2c_transfer(%struct.i2c_adapter* %12, %struct.i2c_msg* %arraydecay16, i32 2) #8, !dbg !5303
  %cmp18 = icmp ne i32 2, %call17, !dbg !5304
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5305

if.then20:                                        ; preds = %if.end12
  store i32 -5, i32* %retval, align 4, !dbg !5306
  br label %return, !dbg !5306

if.end21:                                         ; preds = %if.end12
  %13 = load i8, i8* %keygroup, align 1, !dbg !5308
  %conv22 = zext i8 %13 to i32, !dbg !5308
  %cmp23 = icmp eq i32 %conv22, 255, !dbg !5310
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !5311

if.then25:                                        ; preds = %if.end21
  store i32 0, i32* %retval, align 4, !dbg !5312
  br label %return, !dbg !5312

if.end26:                                         ; preds = %if.end21
  %14 = load i8, i8* %keygroup, align 1, !dbg !5313
  %conv27 = zext i8 %14 to i32, !dbg !5313
  %cmp28 = icmp slt i32 %conv27, 2, !dbg !5315
  br i1 %cmp28, label %if.then33, label %lor.lhs.false, !dbg !5316

lor.lhs.false:                                    ; preds = %if.end26
  %15 = load i8, i8* %keygroup, align 1, !dbg !5317
  %conv30 = zext i8 %15 to i32, !dbg !5317
  %cmp31 = icmp sgt i32 %conv30, 4, !dbg !5318
  br i1 %cmp31, label %if.then33, label %if.end36, !dbg !5319

if.then33:                                        ; preds = %lor.lhs.false, %if.end26
  %16 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5320
  %rc = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %16, i32 0, i32 2, !dbg !5320
  %17 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5320
  %dev = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %17, i32 0, i32 0, !dbg !5320
  %18 = load i8, i8* %keygroup, align 1, !dbg !5320
  %conv34 = zext i8 %18 to i32, !dbg !5320
  %19 = load i8, i8* %key, align 1, !dbg !5320
  %conv35 = zext i8 %19 to i32, !dbg !5320
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i32 %conv34, i32 %conv35) #9, !dbg !5320
  br label %if.end36, !dbg !5322

if.end36:                                         ; preds = %if.then33, %lor.lhs.false
  %20 = load i8, i8* %keygroup, align 1, !dbg !5323
  %conv37 = zext i8 %20 to i32, !dbg !5323
  %and = and i32 %conv37, 1, !dbg !5324
  %shl = shl i32 %and, 6, !dbg !5325
  %21 = load i8, i8* %key, align 1, !dbg !5326
  %conv38 = zext i8 %21 to i32, !dbg !5326
  %or = or i32 %conv38, %shl, !dbg !5326
  %conv39 = trunc i32 %or to i8, !dbg !5326
  store i8 %conv39, i8* %key, align 1, !dbg !5326
  %22 = load i32*, i32** %protocol.addr, align 8, !dbg !5327
  store i32 0, i32* %22, align 4, !dbg !5328
  %23 = load i8, i8* %key, align 1, !dbg !5329
  %conv40 = zext i8 %23 to i32, !dbg !5329
  %24 = load i32*, i32** %scancode.addr, align 8, !dbg !5330
  store i32 %conv40, i32* %24, align 4, !dbg !5331
  %25 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5332
  %c41 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %25, i32 0, i32 1, !dbg !5334
  %26 = load %struct.i2c_client*, %struct.i2c_client** %c41, align 8, !dbg !5334
  %addr42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1, !dbg !5335
  %27 = load i16, i16* %addr42, align 2, !dbg !5335
  %conv43 = zext i16 %27 to i32, !dbg !5332
  %cmp44 = icmp eq i32 %conv43, 65, !dbg !5336
  br i1 %cmp44, label %if.then46, label %if.end50, !dbg !5337

if.then46:                                        ; preds = %if.end36
  %28 = load i8, i8* %keygroup, align 1, !dbg !5338
  %conv47 = zext i8 %28 to i32, !dbg !5338
  %shl48 = shl i32 %conv47, 8, !dbg !5339
  %29 = load i32*, i32** %scancode.addr, align 8, !dbg !5340
  %30 = load i32, i32* %29, align 4, !dbg !5341
  %or49 = or i32 %30, %shl48, !dbg !5341
  store i32 %or49, i32* %29, align 4, !dbg !5341
  br label %if.end50, !dbg !5342

if.end50:                                         ; preds = %if.then46, %if.end36
  %31 = load i8*, i8** %toggle.addr, align 8, !dbg !5343
  store i8 0, i8* %31, align 1, !dbg !5344
  store i32 1, i32* %retval, align 4, !dbg !5345
  br label %return, !dbg !5345

return:                                           ; preds = %if.end50, %if.then25, %if.then20, %if.then11, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !5346
  ret i32 %32, !dbg !5346
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_key_haup_xvr(%struct.IR_i2c* %ir, i32* %protocol, i32* %scancode, i8* %toggle) #2 !dbg !5347 {
entry:
  %retval = alloca i32, align 4
  %ir.addr = alloca %struct.IR_i2c*, align 8
  %protocol.addr = alloca i32*, align 8
  %scancode.addr = alloca i32*, align 8
  %toggle.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [1 x i8], align 1
  store %struct.IR_i2c* %ir, %struct.IR_i2c** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir.addr, metadata !5348, metadata !DIExpression()), !dbg !5349
  store i32* %protocol, i32** %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %protocol.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  store i32* %scancode, i32** %scancode.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %scancode.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  store i8* %toggle, i8** %toggle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %toggle.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5356, metadata !DIExpression()), !dbg !5357
  call void @llvm.dbg.declare(metadata [1 x i8]* %buf, metadata !5358, metadata !DIExpression()), !dbg !5360
  %0 = bitcast [1 x i8]* %buf to i8*, !dbg !5360
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 1, i1 false), !dbg !5360
  %1 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5361
  %c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %1, i32 0, i32 1, !dbg !5362
  %2 = load %struct.i2c_client*, %struct.i2c_client** %c, align 8, !dbg !5362
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %buf, i64 0, i64 0, !dbg !5363
  %call = call i32 @i2c_master_send(%struct.i2c_client* %2, i8* %arraydecay, i32 1) #8, !dbg !5364
  store i32 %call, i32* %ret, align 4, !dbg !5365
  %3 = load i32, i32* %ret, align 4, !dbg !5366
  %cmp = icmp ne i32 %3, 1, !dbg !5368
  br i1 %cmp, label %if.then, label %if.end, !dbg !5369

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !5370
  %cmp1 = icmp slt i32 %4, 0, !dbg !5371
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5372

cond.true:                                        ; preds = %if.then
  %5 = load i32, i32* %ret, align 4, !dbg !5373
  br label %cond.end, !dbg !5372

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !5372

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ -22, %cond.false ], !dbg !5372
  store i32 %cond, i32* %retval, align 4, !dbg !5374
  br label %return, !dbg !5374

if.end:                                           ; preds = %entry
  %6 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5375
  %7 = load i32*, i32** %protocol.addr, align 8, !dbg !5376
  %8 = load i32*, i32** %scancode.addr, align 8, !dbg !5377
  %9 = load i8*, i8** %toggle.addr, align 8, !dbg !5378
  %call2 = call i32 @get_key_haup_common(%struct.IR_i2c* %6, i32* %7, i32* %8, i8* %9, i32 6) #8, !dbg !5379
  store i32 %call2, i32* %retval, align 4, !dbg !5380
  br label %return, !dbg !5380

return:                                           ; preds = %if.end, %cond.end
  %10 = load i32, i32* %retval, align 4, !dbg !5381
  ret i32 %10, !dbg !5381
}

; Function Attrs: noredzone
declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #2 !dbg !5382 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5387
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5389
  %1 = load i8*, i8** %init_name, align 8, !dbg !5389
  %tobool = icmp ne i8* %1, null, !dbg !5387
  br i1 %tobool, label %if.then, label %if.end, !dbg !5390

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5391
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5392
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5392
  store i8* %3, i8** %retval, align 8, !dbg !5393
  br label %return, !dbg !5393

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5394
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5395
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !5396
  store i8* %call, i8** %retval, align 8, !dbg !5397
  br label %return, !dbg !5397

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5398
  ret i8* %5, !dbg !5398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ir_open(%struct.rc_dev* %dev) #2 !dbg !5399 {
entry:
  %dev.addr = alloca %struct.rc_dev*, align 8
  %ir = alloca %struct.IR_i2c*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !5400, metadata !DIExpression()), !dbg !5401
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir, metadata !5402, metadata !DIExpression()), !dbg !5403
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5404
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5405
  %1 = load i8*, i8** %priv, align 8, !dbg !5405
  %2 = bitcast i8* %1 to %struct.IR_i2c*, !dbg !5404
  store %struct.IR_i2c* %2, %struct.IR_i2c** %ir, align 8, !dbg !5403
  %3 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5406
  %work = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %3, i32 0, i32 5, !dbg !5407
  %call = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* %work, i64 0) #8, !dbg !5408
  ret i32 0, !dbg !5409
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ir_close(%struct.rc_dev* %dev) #2 !dbg !5410 {
entry:
  %dev.addr = alloca %struct.rc_dev*, align 8
  %ir = alloca %struct.IR_i2c*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !5411, metadata !DIExpression()), !dbg !5412
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir, metadata !5413, metadata !DIExpression()), !dbg !5414
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5415
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5416
  %1 = load i8*, i8** %priv, align 8, !dbg !5416
  %2 = bitcast i8* %1 to %struct.IR_i2c*, !dbg !5415
  store %struct.IR_i2c* %2, %struct.IR_i2c** %ir, align 8, !dbg !5414
  %3 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5417
  %work = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %3, i32 0, i32 5, !dbg !5418
  %call = call zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work* %work) #8, !dbg !5419
  ret void, !dbg !5420
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #2 !dbg !5421 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5424, metadata !DIExpression()), !dbg !5425
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !5426, metadata !DIExpression()), !dbg !5427
  ret void, !dbg !5428
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #2 !dbg !5429 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  br label %do.body, !dbg !5435

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5436

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5438

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5436

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5440
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5440
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5440
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5440
  br label %do.end3, !dbg !5440

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5436

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5442
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5443
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5444
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5445
  ret void, !dbg !5446
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ir_work(%struct.work_struct* %work) #2 !dbg !5447 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5448, metadata !DIExpression()), !dbg !5453
  %work.addr = alloca %struct.work_struct*, align 8
  %rc = alloca i32, align 4
  %ir = alloca %struct.IR_i2c*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.IR_i2c*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5455, metadata !DIExpression()), !dbg !5456
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5457, metadata !DIExpression()), !dbg !5458
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir, metadata !5459, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5461, metadata !DIExpression()), !dbg !5463
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5463
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !5463
  store i8* %1, i8** %__mptr, align 8, !dbg !5463
  br label %do.body, !dbg !5463

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5464

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5463
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !5463
  %3 = bitcast i8* %add.ptr to %struct.IR_i2c*, !dbg !5463
  store %struct.IR_i2c* %3, %struct.IR_i2c** %tmp, align 8, !dbg !5464
  %4 = load %struct.IR_i2c*, %struct.IR_i2c** %tmp, align 8, !dbg !5463
  store %struct.IR_i2c* %4, %struct.IR_i2c** %ir, align 8, !dbg !5460
  %5 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5466
  %lock = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %5, i32 0, i32 9, !dbg !5468
  %call = call i32 @mutex_trylock(%struct.mutex* %lock) #8, !dbg !5469
  %tobool = icmp ne i32 %call, 0, !dbg !5469
  br i1 %tobool, label %if.then, label %if.end6, !dbg !5470

if.then:                                          ; preds = %do.end
  %6 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5471
  %call1 = call i32 @ir_key_poll(%struct.IR_i2c* %6) #8, !dbg !5473
  store i32 %call1, i32* %rc, align 4, !dbg !5474
  %7 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5475
  %lock2 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %7, i32 0, i32 9, !dbg !5476
  call void @mutex_unlock(%struct.mutex* %lock2) #8, !dbg !5477
  %8 = load i32, i32* %rc, align 4, !dbg !5478
  %cmp = icmp eq i32 %8, -19, !dbg !5480
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5481

if.then3:                                         ; preds = %if.then
  %9 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5482
  %rc4 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %9, i32 0, i32 2, !dbg !5484
  %10 = load %struct.rc_dev*, %struct.rc_dev** %rc4, align 8, !dbg !5484
  call void @rc_unregister_device(%struct.rc_dev* %10) #8, !dbg !5485
  %11 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5486
  %rc5 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %11, i32 0, i32 2, !dbg !5487
  store %struct.rc_dev* null, %struct.rc_dev** %rc5, align 8, !dbg !5488
  br label %return, !dbg !5489

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !5490

if.end6:                                          ; preds = %if.end, %do.end
  %12 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5491
  %work7 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %12, i32 0, i32 5, !dbg !5492
  %13 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5493
  %polling_interval = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %13, i32 0, i32 4, !dbg !5494
  %14 = load i32, i32* %polling_interval, align 4, !dbg !5494
  store i32 %14, i32* %m.addr.i, align 4
  %15 = load i32, i32* %m.addr.i, align 4, !dbg !5495
  %16 = call i1 @llvm.is.constant.i32(i32 %15) #10, !dbg !5497
  br i1 %16, label %if.then.i, label %if.else.i, !dbg !5498

if.then.i:                                        ; preds = %if.end6
  %17 = load i32, i32* %m.addr.i, align 4, !dbg !5499
  %cmp.i = icmp slt i32 %17, 0, !dbg !5502
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5503

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5504
  br label %msecs_to_jiffies.exit, !dbg !5504

if.end.i:                                         ; preds = %if.then.i
  %18 = load i32, i32* %m.addr.i, align 4, !dbg !5505
  %call.i = call i64 @_msecs_to_jiffies(i32 %18) #11, !dbg !5506
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5507
  br label %msecs_to_jiffies.exit, !dbg !5507

if.else.i:                                        ; preds = %if.end6
  %19 = load i32, i32* %m.addr.i, align 4, !dbg !5508
  %call2.i = call i64 @__msecs_to_jiffies(i32 %19) #11, !dbg !5510
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5511
  br label %msecs_to_jiffies.exit, !dbg !5511

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %20 = load i64, i64* %retval.i, align 8, !dbg !5512
  %call9 = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* %work7, i64 %20) #8, !dbg !5513
  br label %return, !dbg !5514

return:                                           ; preds = %msecs_to_jiffies.exit, %if.then3
  ret void, !dbg !5514
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local void @delayed_work_timer_fn(%struct.timer_list*) #1

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_new_dummy_device(%struct.i2c_adapter*, i16 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !5515 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5519, metadata !DIExpression()), !dbg !5520
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5521
  %1 = ptrtoint i8* %0 to i64, !dbg !5521
  %2 = inttoptr i64 %1 to i8*, !dbg !5521
  %3 = ptrtoint i8* %2 to i64, !dbg !5521
  %cmp = icmp uge i64 %3, -4095, !dbg !5521
  %lnot = xor i1 %cmp, true, !dbg !5521
  %lnot1 = xor i1 %lnot, true, !dbg !5521
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5521
  %conv = sext i32 %lnot.ext to i64, !dbg !5521
  %tobool = icmp ne i64 %conv, 0, !dbg !5521
  ret i1 %tobool, !dbg !5522
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !5523 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5526, metadata !DIExpression()), !dbg !5527
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5528
  %1 = ptrtoint i8* %0 to i64, !dbg !5529
  ret i64 %1, !dbg !5530
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zilog_init(%struct.IR_i2c* %ir) #2 !dbg !5531 {
entry:
  %val.addr.i = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr.i, metadata !5534, metadata !DIExpression()), !dbg !5539
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !5541, metadata !DIExpression()), !dbg !5542
  %retval = alloca i32, align 4
  %ir.addr = alloca %struct.IR_i2c*, align 8
  %code_block = alloca %struct.code_block, align 1
  %buf = alloca [4 x i8], align 1
  %ret = alloca i32, align 4
  store %struct.IR_i2c* %ir, %struct.IR_i2c** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  call void @llvm.dbg.declare(metadata %struct.code_block* %code_block, metadata !5545, metadata !DIExpression()), !dbg !5563
  %0 = bitcast %struct.code_block* %code_block to i8*, !dbg !5563
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 96, i1 false), !dbg !5563
  %1 = bitcast i8* %0 to %struct.code_block*, !dbg !5563
  %2 = getelementptr inbounds %struct.code_block, %struct.code_block* %1, i32 0, i32 0, !dbg !5563
  store i8 96, i8* %2, align 1, !dbg !5563
  call void @llvm.dbg.declare(metadata [4 x i8]* %buf, metadata !5564, metadata !DIExpression()), !dbg !5566
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5567, metadata !DIExpression()), !dbg !5568
  %pulse = getelementptr inbounds %struct.code_block, %struct.code_block* %code_block, i32 0, i32 1, !dbg !5569
  %arrayidx = getelementptr [7 x i16], [7 x i16]* %pulse, i64 0, i64 3, !dbg !5570
  %3 = bitcast i16* %arrayidx to i8*, !dbg !5571
  store i16 4096, i16* %val.addr.i, align 2
  store i8* %3, i8** %p.addr.i, align 8
  %4 = load i16, i16* %val.addr.i, align 2, !dbg !5572
  %5 = call i1 @llvm.is.constant.i16(i16 %4) #10, !dbg !5572
  br i1 %5, label %cond.true.i, label %cond.false.i, !dbg !5572

cond.true.i:                                      ; preds = %entry
  %6 = load i16, i16* %val.addr.i, align 2, !dbg !5572
  %conv.i = zext i16 %6 to i32, !dbg !5572
  %and.i = and i32 %conv.i, 255, !dbg !5572
  %shl.i = shl i32 %and.i, 8, !dbg !5572
  %7 = load i16, i16* %val.addr.i, align 2, !dbg !5572
  %conv1.i = zext i16 %7 to i32, !dbg !5572
  %and2.i = and i32 %conv1.i, 65280, !dbg !5572
  %shr.i = ashr i32 %and2.i, 8, !dbg !5572
  %or.i = or i32 %shl.i, %shr.i, !dbg !5572
  %conv3.i = trunc i32 %or.i to i16, !dbg !5572
  %conv4.i = zext i16 %conv3.i to i32, !dbg !5572
  br label %put_unaligned_be16.exit, !dbg !5572

cond.false.i:                                     ; preds = %entry
  %8 = load i16, i16* %val.addr.i, align 2, !dbg !5572
  %call.i = call zeroext i16 @__fswab16(i16 zeroext %8) #12, !dbg !5572
  %conv5.i = zext i16 %call.i to i32, !dbg !5572
  br label %put_unaligned_be16.exit, !dbg !5572

put_unaligned_be16.exit:                          ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %conv4.i, %cond.true.i ], [ %conv5.i, %cond.false.i ], !dbg !5572
  %conv6.i = trunc i32 %cond.i to i16, !dbg !5572
  %9 = load i8*, i8** %p.addr.i, align 8, !dbg !5573
  %10 = bitcast i8* %9 to i16*, !dbg !5574
  store i16 %conv6.i, i16* %10, align 2, !dbg !5575
  %11 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5576
  %call = call i32 @send_data_block(%struct.IR_i2c* %11, i32 32, %struct.code_block* %code_block) #8, !dbg !5577
  store i32 %call, i32* %ret, align 4, !dbg !5578
  %12 = load i32, i32* %ret, align 4, !dbg !5579
  %tobool = icmp ne i32 %12, 0, !dbg !5579
  br i1 %tobool, label %if.then, label %if.end, !dbg !5581

if.then:                                          ; preds = %put_unaligned_be16.exit
  %13 = load i32, i32* %ret, align 4, !dbg !5582
  store i32 %13, i32* %retval, align 4, !dbg !5583
  br label %return, !dbg !5583

if.end:                                           ; preds = %put_unaligned_be16.exit
  %14 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5584
  %tx_c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %14, i32 0, i32 8, !dbg !5585
  %15 = load %struct.i2c_client*, %struct.i2c_client** %tx_c, align 8, !dbg !5585
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0, !dbg !5586
  %call1 = call i32 @i2c_master_recv(%struct.i2c_client* %15, i8* %arraydecay, i32 4) #8, !dbg !5587
  store i32 %call1, i32* %ret, align 4, !dbg !5588
  %16 = load i32, i32* %ret, align 4, !dbg !5589
  %cmp = icmp ne i32 %16, 4, !dbg !5591
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !5592

if.then2:                                         ; preds = %if.end
  %17 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5593
  %c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %17, i32 0, i32 1, !dbg !5593
  %18 = load %struct.i2c_client*, %struct.i2c_client** %c, align 8, !dbg !5593
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 4, !dbg !5593
  %19 = load i32, i32* %ret, align 4, !dbg !5593
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i32 %19) #9, !dbg !5593
  %20 = load i32, i32* %ret, align 4, !dbg !5595
  %cmp3 = icmp slt i32 %20, 0, !dbg !5596
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !5595

cond.true:                                        ; preds = %if.then2
  %21 = load i32, i32* %ret, align 4, !dbg !5597
  br label %cond.end, !dbg !5595

cond.false:                                       ; preds = %if.then2
  br label %cond.end, !dbg !5595

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ -5, %cond.false ], !dbg !5595
  store i32 %cond, i32* %retval, align 4, !dbg !5598
  br label %return, !dbg !5598

if.end4:                                          ; preds = %if.end
  %22 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5599
  %c5 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %22, i32 0, i32 1, !dbg !5599
  %23 = load %struct.i2c_client*, %struct.i2c_client** %c5, align 8, !dbg !5599
  %dev6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 4, !dbg !5599
  %arrayidx7 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 1, !dbg !5599
  %24 = load i8, i8* %arrayidx7, align 1, !dbg !5599
  %conv = zext i8 %24 to i32, !dbg !5599
  %arrayidx8 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 2, !dbg !5599
  %25 = load i8, i8* %arrayidx8, align 1, !dbg !5599
  %conv9 = zext i8 %25 to i32, !dbg !5599
  %arrayidx10 = getelementptr [4 x i8], [4 x i8]* %buf, i64 0, i64 3, !dbg !5599
  %26 = load i8, i8* %arrayidx10, align 1, !dbg !5599
  %conv11 = zext i8 %26 to i32, !dbg !5599
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i32 %conv, i32 %conv9, i32 %conv11) #9, !dbg !5599
  store i32 0, i32* %retval, align 4, !dbg !5600
  br label %return, !dbg !5600

return:                                           ; preds = %if.end4, %cond.end, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !5601
  ret i32 %27, !dbg !5601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zilog_tx(%struct.rc_dev* %rcdev, i32* %txbuf, i32 %count) #2 !dbg !5602 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5448, metadata !DIExpression()), !dbg !5603
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !5608, metadata !DIExpression()), !dbg !5614
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !5619, metadata !DIExpression()), !dbg !5621
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !5622, metadata !DIExpression()), !dbg !5624
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i32, align 4
  %rcdev.addr = alloca %struct.rc_dev*, align 8
  %txbuf.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %ir = alloca %struct.IR_i2c*, align 8
  %code_block = alloca %struct.code_block, align 1
  %buf = alloca [2 x i8], align 1
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.rc_dev* %rcdev, %struct.rc_dev** %rcdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rcdev.addr, metadata !5625, metadata !DIExpression()), !dbg !5626
  store i32* %txbuf, i32** %txbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %txbuf.addr, metadata !5627, metadata !DIExpression()), !dbg !5628
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5629, metadata !DIExpression()), !dbg !5630
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir, metadata !5631, metadata !DIExpression()), !dbg !5632
  %0 = load %struct.rc_dev*, %struct.rc_dev** %rcdev.addr, align 8, !dbg !5633
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5634
  %1 = load i8*, i8** %priv, align 8, !dbg !5634
  %2 = bitcast i8* %1 to %struct.IR_i2c*, !dbg !5633
  store %struct.IR_i2c* %2, %struct.IR_i2c** %ir, align 8, !dbg !5632
  call void @llvm.dbg.declare(metadata %struct.code_block* %code_block, metadata !5635, metadata !DIExpression()), !dbg !5636
  %3 = bitcast %struct.code_block* %code_block to i8*, !dbg !5636
  call void @llvm.memset.p0i8.i64(i8* align 1 %3, i8 0, i64 96, i1 false), !dbg !5636
  %4 = bitcast i8* %3 to %struct.code_block*, !dbg !5636
  %5 = getelementptr inbounds %struct.code_block, %struct.code_block* %4, i32 0, i32 0, !dbg !5636
  store i8 96, i8* %5, align 1, !dbg !5636
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5637, metadata !DIExpression()), !dbg !5638
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5639, metadata !DIExpression()), !dbg !5640
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5641, metadata !DIExpression()), !dbg !5642
  %6 = load %struct.rc_dev*, %struct.rc_dev** %rcdev.addr, align 8, !dbg !5643
  %7 = load i32*, i32** %txbuf.addr, align 8, !dbg !5644
  %8 = load i32, i32* %count.addr, align 4, !dbg !5645
  %call = call i32 @zilog_ir_format(%struct.rc_dev* %6, i32* %7, i32 %8, %struct.code_block* %code_block) #8, !dbg !5646
  store i32 %call, i32* %ret, align 4, !dbg !5647
  %9 = load i32, i32* %ret, align 4, !dbg !5648
  %tobool = icmp ne i32 %9, 0, !dbg !5648
  br i1 %tobool, label %if.then, label %if.end, !dbg !5650

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %ret, align 4, !dbg !5651
  store i32 %10, i32* %retval, align 4, !dbg !5652
  br label %return, !dbg !5652

if.end:                                           ; preds = %entry
  %11 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5653
  %lock = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %11, i32 0, i32 9, !dbg !5654
  %call1 = call i32 @mutex_lock_interruptible(%struct.mutex* %lock) #8, !dbg !5655
  store i32 %call1, i32* %ret, align 4, !dbg !5656
  %12 = load i32, i32* %ret, align 4, !dbg !5657
  %tobool2 = icmp ne i32 %12, 0, !dbg !5657
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5659

if.then3:                                         ; preds = %if.end
  %13 = load i32, i32* %ret, align 4, !dbg !5660
  store i32 %13, i32* %retval, align 4, !dbg !5661
  br label %return, !dbg !5661

if.end4:                                          ; preds = %if.end
  %14 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5662
  %call5 = call i32 @send_data_block(%struct.IR_i2c* %14, i32 64, %struct.code_block* %code_block) #8, !dbg !5663
  store i32 %call5, i32* %ret, align 4, !dbg !5664
  %15 = load i32, i32* %ret, align 4, !dbg !5665
  %tobool6 = icmp ne i32 %15, 0, !dbg !5665
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5667

if.then7:                                         ; preds = %if.end4
  br label %out_unlock, !dbg !5668

if.end8:                                          ; preds = %if.end4
  %16 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5669
  %tx_c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %16, i32 0, i32 8, !dbg !5670
  %17 = load %struct.i2c_client*, %struct.i2c_client** %tx_c, align 8, !dbg !5670
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5671
  %call9 = call i32 @i2c_master_recv(%struct.i2c_client* %17, i8* %arraydecay, i32 1) #8, !dbg !5672
  store i32 %call9, i32* %ret, align 4, !dbg !5673
  %18 = load i32, i32* %ret, align 4, !dbg !5674
  %cmp = icmp ne i32 %18, 1, !dbg !5676
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !5677

if.then10:                                        ; preds = %if.end8
  %19 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5678
  %rc = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %19, i32 0, i32 2, !dbg !5678
  %20 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !5678
  %dev = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %20, i32 0, i32 0, !dbg !5678
  %21 = load i32, i32* %ret, align 4, !dbg !5678
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i32 %21) #9, !dbg !5678
  br label %out_unlock, !dbg !5680

if.end11:                                         ; preds = %if.end8
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5681
  %22 = load i8, i8* %arrayidx, align 1, !dbg !5681
  %conv = zext i8 %22 to i32, !dbg !5681
  %cmp12 = icmp ne i32 %conv, 160, !dbg !5683
  br i1 %cmp12, label %if.then14, label %if.end19, !dbg !5684

if.then14:                                        ; preds = %if.end11
  %23 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5685
  %rc15 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %23, i32 0, i32 2, !dbg !5685
  %24 = load %struct.rc_dev*, %struct.rc_dev** %rc15, align 8, !dbg !5685
  %dev16 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %24, i32 0, i32 0, !dbg !5685
  %arrayidx17 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5685
  %25 = load i8, i8* %arrayidx17, align 1, !dbg !5685
  %conv18 = zext i8 %25 to i32, !dbg !5685
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i32 %conv18) #9, !dbg !5685
  store i32 -5, i32* %ret, align 4, !dbg !5687
  br label %out_unlock, !dbg !5688

if.end19:                                         ; preds = %if.end11
  %arrayidx20 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5689
  store i8 0, i8* %arrayidx20, align 1, !dbg !5690
  %arrayidx21 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !5691
  store i8 -128, i8* %arrayidx21, align 1, !dbg !5692
  %26 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5693
  %tx_c22 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %26, i32 0, i32 8, !dbg !5694
  %27 = load %struct.i2c_client*, %struct.i2c_client** %tx_c22, align 8, !dbg !5694
  %arraydecay23 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5695
  %call24 = call i32 @i2c_master_send(%struct.i2c_client* %27, i8* %arraydecay23, i32 2) #8, !dbg !5696
  store i32 %call24, i32* %ret, align 4, !dbg !5697
  %28 = load i32, i32* %ret, align 4, !dbg !5698
  %cmp25 = icmp ne i32 %28, 2, !dbg !5700
  br i1 %cmp25, label %if.then27, label %if.end34, !dbg !5701

if.then27:                                        ; preds = %if.end19
  %29 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5702
  %rc28 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %29, i32 0, i32 2, !dbg !5702
  %30 = load %struct.rc_dev*, %struct.rc_dev** %rc28, align 8, !dbg !5702
  %dev29 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %30, i32 0, i32 0, !dbg !5702
  %31 = load i32, i32* %ret, align 4, !dbg !5702
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i32 %31) #9, !dbg !5702
  %32 = load i32, i32* %ret, align 4, !dbg !5704
  %cmp30 = icmp sge i32 %32, 0, !dbg !5706
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !5707

if.then32:                                        ; preds = %if.then27
  store i32 -5, i32* %ret, align 4, !dbg !5708
  br label %if.end33, !dbg !5709

if.end33:                                         ; preds = %if.then32, %if.then27
  br label %out_unlock, !dbg !5710

if.end34:                                         ; preds = %if.end19
  store i32 0, i32* %i, align 4, !dbg !5711
  br label %for.cond, !dbg !5712

for.cond:                                         ; preds = %for.inc, %if.end34
  %33 = load i32, i32* %i, align 4, !dbg !5713
  %cmp35 = icmp slt i32 %33, 20, !dbg !5714
  br i1 %cmp35, label %for.body, label %for.end, !dbg !5715

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !5716

do.body:                                          ; preds = %for.body
  br label %do.body37, !dbg !5717

do.body37:                                        ; preds = %do.body
  br label %do.body38, !dbg !5718

do.body38:                                        ; preds = %do.body37
  br label %do.end, !dbg !5719

do.end:                                           ; preds = %do.body38
  br label %do.body39, !dbg !5718

do.body39:                                        ; preds = %do.end
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5621
  %34 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5621
  %35 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #13, !dbg !5624, !srcloc !5721
  store i64 %35, i64* %pfo_val__.i, align 8, !dbg !5624
  %36 = load i64, i64* %pfo_val__.i, align 8, !dbg !5624
  %37 = inttoptr i64 %36 to %struct.task_struct*, !dbg !5624
  store %struct.task_struct* %37, %struct.task_struct** %tmp.i, align 8, !dbg !5624
  %38 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5624
  store %struct.task_struct* %38, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5614
  %39 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5614
  store %struct.task_struct* %39, %struct.task_struct** %tmp1.i, align 8, !dbg !5614
  %40 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5614
  %state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 1, !dbg !5722
  store volatile i64 2, i64* %state, align 16, !dbg !5722
  br label %do.end41, !dbg !5722

do.end41:                                         ; preds = %do.body39
  br label %do.end42, !dbg !5718

do.end42:                                         ; preds = %do.end41
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5717, !srcloc !5723
  br label %do.end43, !dbg !5717

do.end43:                                         ; preds = %do.end42
  store i32 50, i32* %m.addr.i, align 4
  %41 = load i32, i32* %m.addr.i, align 4, !dbg !5724
  %42 = call i1 @llvm.is.constant.i32(i32 %41) #10, !dbg !5725
  br i1 %42, label %if.then.i, label %if.else.i, !dbg !5726

if.then.i:                                        ; preds = %do.end43
  %43 = load i32, i32* %m.addr.i, align 4, !dbg !5727
  %cmp.i = icmp slt i32 %43, 0, !dbg !5728
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5729

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5730
  br label %msecs_to_jiffies.exit, !dbg !5730

if.end.i:                                         ; preds = %if.then.i
  %44 = load i32, i32* %m.addr.i, align 4, !dbg !5731
  %call.i = call i64 @_msecs_to_jiffies(i32 %44) #11, !dbg !5732
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5733
  br label %msecs_to_jiffies.exit, !dbg !5733

if.else.i:                                        ; preds = %do.end43
  %45 = load i32, i32* %m.addr.i, align 4, !dbg !5734
  %call2.i = call i64 @__msecs_to_jiffies(i32 %45) #11, !dbg !5735
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5736
  br label %msecs_to_jiffies.exit, !dbg !5736

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %46 = load i64, i64* %retval.i, align 8, !dbg !5737
  %call45 = call i64 @schedule_timeout(i64 %46) #8, !dbg !5738
  %47 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5739
  %tx_c46 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %47, i32 0, i32 8, !dbg !5740
  %48 = load %struct.i2c_client*, %struct.i2c_client** %tx_c46, align 8, !dbg !5740
  %arraydecay47 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5741
  %call48 = call i32 @i2c_master_send(%struct.i2c_client* %48, i8* %arraydecay47, i32 1) #8, !dbg !5742
  store i32 %call48, i32* %ret, align 4, !dbg !5743
  %49 = load i32, i32* %ret, align 4, !dbg !5744
  %cmp49 = icmp eq i32 %49, 1, !dbg !5746
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !5747

if.then51:                                        ; preds = %msecs_to_jiffies.exit
  br label %for.end, !dbg !5748

if.end52:                                         ; preds = %msecs_to_jiffies.exit
  br label %for.inc, !dbg !5749

for.inc:                                          ; preds = %if.end52
  %50 = load i32, i32* %i, align 4, !dbg !5750
  %inc = add i32 %50, 1, !dbg !5750
  store i32 %inc, i32* %i, align 4, !dbg !5750
  br label %for.cond, !dbg !5751, !llvm.loop !5752

for.end:                                          ; preds = %if.then51, %for.cond
  %51 = load i32, i32* %ret, align 4, !dbg !5754
  %cmp53 = icmp ne i32 %51, 1, !dbg !5756
  br i1 %cmp53, label %if.then55, label %if.end62, !dbg !5757

if.then55:                                        ; preds = %for.end
  %52 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5758
  %rc56 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %52, i32 0, i32 2, !dbg !5758
  %53 = load %struct.rc_dev*, %struct.rc_dev** %rc56, align 8, !dbg !5758
  %dev57 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %53, i32 0, i32 0, !dbg !5758
  %54 = load i32, i32* %ret, align 4, !dbg !5758
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev57, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i64 0, i64 0), i32 %54) #9, !dbg !5758
  %55 = load i32, i32* %ret, align 4, !dbg !5760
  %cmp58 = icmp sge i32 %55, 0, !dbg !5762
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !5763

if.then60:                                        ; preds = %if.then55
  store i32 -5, i32* %ret, align 4, !dbg !5764
  br label %if.end61, !dbg !5765

if.end61:                                         ; preds = %if.then60, %if.then55
  br label %out_unlock, !dbg !5766

if.end62:                                         ; preds = %for.end
  %56 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5767
  %tx_c63 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %56, i32 0, i32 8, !dbg !5768
  %57 = load %struct.i2c_client*, %struct.i2c_client** %tx_c63, align 8, !dbg !5768
  %arraydecay64 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5769
  %call65 = call i32 @i2c_master_recv(%struct.i2c_client* %57, i8* %arraydecay64, i32 1) #8, !dbg !5770
  store i32 %call65, i32* %i, align 4, !dbg !5771
  %58 = load i32, i32* %i, align 4, !dbg !5772
  %cmp66 = icmp ne i32 %58, 1, !dbg !5774
  br i1 %cmp66, label %if.then68, label %if.else, !dbg !5775

if.then68:                                        ; preds = %if.end62
  %59 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5776
  %rc69 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %59, i32 0, i32 2, !dbg !5776
  %60 = load %struct.rc_dev*, %struct.rc_dev** %rc69, align 8, !dbg !5776
  %dev70 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %60, i32 0, i32 0, !dbg !5776
  %61 = load i32, i32* %ret, align 4, !dbg !5776
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i32 %61) #9, !dbg !5776
  store i32 -5, i32* %ret, align 4, !dbg !5778
  br label %out_unlock, !dbg !5779

if.else:                                          ; preds = %if.end62
  %arrayidx71 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5780
  %62 = load i8, i8* %arrayidx71, align 1, !dbg !5780
  %conv72 = zext i8 %62 to i32, !dbg !5780
  %cmp73 = icmp ne i32 %conv72, 128, !dbg !5782
  br i1 %cmp73, label %if.then75, label %if.end80, !dbg !5783

if.then75:                                        ; preds = %if.else
  %63 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5784
  %rc76 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %63, i32 0, i32 2, !dbg !5784
  %64 = load %struct.rc_dev*, %struct.rc_dev** %rc76, align 8, !dbg !5784
  %dev77 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %64, i32 0, i32 0, !dbg !5784
  %arrayidx78 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5784
  %65 = load i8, i8* %arrayidx78, align 1, !dbg !5784
  %conv79 = zext i8 %65 to i32, !dbg !5784
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i32 %conv79) #9, !dbg !5784
  store i32 -5, i32* %ret, align 4, !dbg !5786
  br label %out_unlock, !dbg !5787

if.end80:                                         ; preds = %if.else
  br label %if.end81

if.end81:                                         ; preds = %if.end80
  %66 = load i32, i32* %count.addr, align 4, !dbg !5788
  store i32 %66, i32* %ret, align 4, !dbg !5789
  br label %out_unlock, !dbg !5790

out_unlock:                                       ; preds = %if.end81, %if.then75, %if.then68, %if.end61, %if.end33, %if.then14, %if.then10, %if.then7
  call void @llvm.dbg.label(metadata !5791), !dbg !5792
  %67 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5793
  %lock82 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %67, i32 0, i32 9, !dbg !5794
  call void @mutex_unlock(%struct.mutex* %lock82) #8, !dbg !5795
  %68 = load i32, i32* %ret, align 4, !dbg !5796
  store i32 %68, i32* %retval, align 4, !dbg !5797
  br label %return, !dbg !5797

return:                                           ; preds = %out_unlock, %if.then3, %if.then
  %69 = load i32, i32* %retval, align 4, !dbg !5798
  ret i32 %69, !dbg !5798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zilog_tx_carrier(%struct.rc_dev* %dev, i32 %carrier) #2 !dbg !5799 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.rc_dev*, align 8
  %carrier.addr = alloca i32, align 4
  %ir = alloca %struct.IR_i2c*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !5800, metadata !DIExpression()), !dbg !5801
  store i32 %carrier, i32* %carrier.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %carrier.addr, metadata !5802, metadata !DIExpression()), !dbg !5803
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir, metadata !5804, metadata !DIExpression()), !dbg !5805
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5806
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5807
  %1 = load i8*, i8** %priv, align 8, !dbg !5807
  %2 = bitcast i8* %1 to %struct.IR_i2c*, !dbg !5806
  store %struct.IR_i2c* %2, %struct.IR_i2c** %ir, align 8, !dbg !5805
  %3 = load i32, i32* %carrier.addr, align 4, !dbg !5808
  %cmp = icmp ugt i32 %3, 500000, !dbg !5810
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5811

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %carrier.addr, align 4, !dbg !5812
  %cmp1 = icmp ult i32 %4, 20000, !dbg !5813
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5814

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5815
  br label %return, !dbg !5815

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %carrier.addr, align 4, !dbg !5816
  %6 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5817
  %carrier2 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %6, i32 0, i32 10, !dbg !5818
  store i32 %5, i32* %carrier2, align 8, !dbg !5819
  store i32 0, i32* %retval, align 4, !dbg !5820
  br label %return, !dbg !5820

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5821
  ret i32 %7, !dbg !5821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zilog_tx_duty_cycle(%struct.rc_dev* %dev, i32 %duty_cycle) #2 !dbg !5822 {
entry:
  %dev.addr = alloca %struct.rc_dev*, align 8
  %duty_cycle.addr = alloca i32, align 4
  %ir = alloca %struct.IR_i2c*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  store i32 %duty_cycle, i32* %duty_cycle.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %duty_cycle.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir, metadata !5827, metadata !DIExpression()), !dbg !5828
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5829
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5830
  %1 = load i8*, i8** %priv, align 8, !dbg !5830
  %2 = bitcast i8* %1 to %struct.IR_i2c*, !dbg !5829
  store %struct.IR_i2c* %2, %struct.IR_i2c** %ir, align 8, !dbg !5828
  %3 = load i32, i32* %duty_cycle.addr, align 4, !dbg !5831
  %4 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !5832
  %duty_cycle1 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %4, i32 0, i32 11, !dbg !5833
  store i32 %3, i32* %duty_cycle1, align 4, !dbg !5834
  ret i32 0, !dbg !5835
}

; Function Attrs: noredzone
declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @i2c_unregister_device(%struct.i2c_client*) #1

; Function Attrs: noredzone
declare dso_local void @rc_free_device(%struct.rc_dev*) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5836 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5839, metadata !DIExpression()), !dbg !5840
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5841, metadata !DIExpression()), !dbg !5842
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5843
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5844
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5845
  store i8* %0, i8** %driver_data, align 8, !dbg !5846
  ret void, !dbg !5847
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_master_recv(%struct.i2c_client* %client, i8* %buf, i32 %count) #2 !dbg !5848 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5853, metadata !DIExpression()), !dbg !5854
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5855, metadata !DIExpression()), !dbg !5856
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5857, metadata !DIExpression()), !dbg !5858
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5859
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5860
  %2 = load i32, i32* %count.addr, align 4, !dbg !5861
  %call = call i32 @i2c_transfer_buffer_flags(%struct.i2c_client* %0, i8* %1, i32 %2, i16 zeroext 1) #8, !dbg !5862
  ret i32 %call, !dbg !5863
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer_buffer_flags(%struct.i2c_client*, i8*, i32, i16 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_key_haup_common(%struct.IR_i2c* %ir, i32* %protocol, i32* %scancode, i8* %ptoggle, i32 %size) #2 !dbg !5864 {
entry:
  %p.addr.i.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i.i, metadata !5867, metadata !DIExpression()), !dbg !5874
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !5890, metadata !DIExpression()), !dbg !5891
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !5892, metadata !DIExpression()), !dbg !5893
  %retval = alloca i32, align 4
  %ir.addr = alloca %struct.IR_i2c*, align 8
  %protocol.addr = alloca i32*, align 8
  %scancode.addr = alloca i32*, align 8
  %ptoggle.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %buf = alloca [6 x i8], align 1
  %start = alloca i32, align 4
  %range = alloca i32, align 4
  %toggle = alloca i32, align 4
  %dev = alloca i32, align 4
  %code = alloca i32, align 4
  %ircode = alloca i32, align 4
  %vendor = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.IR_i2c* %ir, %struct.IR_i2c** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  store i32* %protocol, i32** %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %protocol.addr, metadata !5896, metadata !DIExpression()), !dbg !5897
  store i32* %scancode, i32** %scancode.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %scancode.addr, metadata !5898, metadata !DIExpression()), !dbg !5899
  store i8* %ptoggle, i8** %ptoggle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptoggle.addr, metadata !5900, metadata !DIExpression()), !dbg !5901
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5902, metadata !DIExpression()), !dbg !5903
  call void @llvm.dbg.declare(metadata [6 x i8]* %buf, metadata !5904, metadata !DIExpression()), !dbg !5906
  call void @llvm.dbg.declare(metadata i32* %start, metadata !5907, metadata !DIExpression()), !dbg !5908
  call void @llvm.dbg.declare(metadata i32* %range, metadata !5909, metadata !DIExpression()), !dbg !5910
  call void @llvm.dbg.declare(metadata i32* %toggle, metadata !5911, metadata !DIExpression()), !dbg !5912
  call void @llvm.dbg.declare(metadata i32* %dev, metadata !5913, metadata !DIExpression()), !dbg !5914
  call void @llvm.dbg.declare(metadata i32* %code, metadata !5915, metadata !DIExpression()), !dbg !5916
  call void @llvm.dbg.declare(metadata i32* %ircode, metadata !5917, metadata !DIExpression()), !dbg !5918
  call void @llvm.dbg.declare(metadata i32* %vendor, metadata !5919, metadata !DIExpression()), !dbg !5920
  %0 = load i32, i32* %size.addr, align 4, !dbg !5921
  %1 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !5923
  %c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %1, i32 0, i32 1, !dbg !5924
  %2 = load %struct.i2c_client*, %struct.i2c_client** %c, align 8, !dbg !5924
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i64 0, i64 0, !dbg !5925
  %3 = load i32, i32* %size.addr, align 4, !dbg !5926
  %call = call i32 @i2c_master_recv(%struct.i2c_client* %2, i8* %arraydecay, i32 %3) #8, !dbg !5927
  %cmp = icmp ne i32 %0, %call, !dbg !5928
  br i1 %cmp, label %if.then, label %if.end, !dbg !5929

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !5930
  br label %return, !dbg !5930

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %buf, i64 0, i64 0, !dbg !5931
  %4 = load i8, i8* %arrayidx, align 1, !dbg !5931
  %conv = zext i8 %4 to i32, !dbg !5931
  %and = and i32 %conv, 128, !dbg !5932
  %tobool = icmp ne i32 %and, 0, !dbg !5932
  br i1 %tobool, label %if.then1, label %if.else, !dbg !5933

if.then1:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !5934, metadata !DIExpression()), !dbg !5936
  %5 = load i32, i32* %size.addr, align 4, !dbg !5937
  %cmp2 = icmp eq i32 %5, 6, !dbg !5938
  %6 = zext i1 %cmp2 to i64, !dbg !5939
  %cond = select i1 %cmp2, i32 3, i32 0, !dbg !5939
  store i32 %cond, i32* %offset, align 4, !dbg !5936
  %7 = load i32, i32* %offset, align 4, !dbg !5940
  %idxprom = sext i32 %7 to i64, !dbg !5941
  %arrayidx4 = getelementptr [6 x i8], [6 x i8]* %buf, i64 0, i64 %idxprom, !dbg !5941
  %8 = load i8, i8* %arrayidx4, align 1, !dbg !5941
  %conv5 = zext i8 %8 to i32, !dbg !5941
  %shr = ashr i32 %conv5, 7, !dbg !5942
  %and6 = and i32 %shr, 1, !dbg !5943
  store i32 %and6, i32* %start, align 4, !dbg !5944
  %9 = load i32, i32* %offset, align 4, !dbg !5945
  %idxprom7 = sext i32 %9 to i64, !dbg !5946
  %arrayidx8 = getelementptr [6 x i8], [6 x i8]* %buf, i64 0, i64 %idxprom7, !dbg !5946
  %10 = load i8, i8* %arrayidx8, align 1, !dbg !5946
  %conv9 = zext i8 %10 to i32, !dbg !5946
  %shr10 = ashr i32 %conv9, 6, !dbg !5947
  %and11 = and i32 %shr10, 1, !dbg !5948
  store i32 %and11, i32* %range, align 4, !dbg !5949
  %11 = load i32, i32* %offset, align 4, !dbg !5950
  %idxprom12 = sext i32 %11 to i64, !dbg !5951
  %arrayidx13 = getelementptr [6 x i8], [6 x i8]* %buf, i64 0, i64 %idxprom12, !dbg !5951
  %12 = load i8, i8* %arrayidx13, align 1, !dbg !5951
  %conv14 = zext i8 %12 to i32, !dbg !5951
  %shr15 = ashr i32 %conv14, 5, !dbg !5952
  %and16 = and i32 %shr15, 1, !dbg !5953
  store i32 %and16, i32* %toggle, align 4, !dbg !5954
  %13 = load i32, i32* %offset, align 4, !dbg !5955
  %idxprom17 = sext i32 %13 to i64, !dbg !5956
  %arrayidx18 = getelementptr [6 x i8], [6 x i8]* %buf, i64 0, i64 %idxprom17, !dbg !5956
  %14 = load i8, i8* %arrayidx18, align 1, !dbg !5956
  %conv19 = zext i8 %14 to i32, !dbg !5956
  %and20 = and i32 %conv19, 31, !dbg !5957
  store i32 %and20, i32* %dev, align 4, !dbg !5958
  %15 = load i32, i32* %offset, align 4, !dbg !5959
  %add = add i32 %15, 1, !dbg !5960
  %idxprom21 = sext i32 %add to i64, !dbg !5961
  %arrayidx22 = getelementptr [6 x i8], [6 x i8]* %buf, i64 0, i64 %idxprom21, !dbg !5961
  %16 = load i8, i8* %arrayidx22, align 1, !dbg !5961
  %conv23 = zext i8 %16 to i32, !dbg !5961
  %shr24 = ashr i32 %conv23, 2, !dbg !5962
  %and25 = and i32 %shr24, 63, !dbg !5963
  store i32 %and25, i32* %code, align 4, !dbg !5964
  %17 = load i32, i32* %start, align 4, !dbg !5965
  %tobool26 = icmp ne i32 %17, 0, !dbg !5965
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !5967

if.then27:                                        ; preds = %if.then1
  store i32 0, i32* %retval, align 4, !dbg !5968
  br label %return, !dbg !5968

if.end28:                                         ; preds = %if.then1
  %18 = load i32, i32* %start, align 4, !dbg !5969
  %shl = shl i32 %18, 12, !dbg !5970
  %19 = load i32, i32* %toggle, align 4, !dbg !5971
  %shl29 = shl i32 %19, 11, !dbg !5972
  %or = or i32 %shl, %shl29, !dbg !5973
  %20 = load i32, i32* %dev, align 4, !dbg !5974
  %shl30 = shl i32 %20, 6, !dbg !5975
  %or31 = or i32 %or, %shl30, !dbg !5976
  %21 = load i32, i32* %code, align 4, !dbg !5977
  %or32 = or i32 %or31, %21, !dbg !5978
  store i32 %or32, i32* %ircode, align 4, !dbg !5979
  %22 = load i32, i32* %ircode, align 4, !dbg !5980
  %and33 = and i32 %22, 8191, !dbg !5982
  %cmp34 = icmp eq i32 %and33, 8191, !dbg !5983
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !5984

if.then36:                                        ; preds = %if.end28
  store i32 0, i32* %retval, align 4, !dbg !5985
  br label %return, !dbg !5985

if.end37:                                         ; preds = %if.end28
  %23 = load i32, i32* %range, align 4, !dbg !5986
  %tobool38 = icmp ne i32 %23, 0, !dbg !5986
  br i1 %tobool38, label %if.end41, label %if.then39, !dbg !5988

if.then39:                                        ; preds = %if.end37
  %24 = load i32, i32* %code, align 4, !dbg !5989
  %add40 = add i32 %24, 64, !dbg !5989
  store i32 %add40, i32* %code, align 4, !dbg !5989
  br label %if.end41, !dbg !5990

if.end41:                                         ; preds = %if.then39, %if.end37
  %25 = load i32*, i32** %protocol.addr, align 8, !dbg !5991
  store i32 2, i32* %25, align 4, !dbg !5992
  %26 = load i32, i32* %dev, align 4, !dbg !5993
  %shl42 = shl i32 %26, 8, !dbg !5993
  %27 = load i32, i32* %code, align 4, !dbg !5993
  %or43 = or i32 %shl42, %27, !dbg !5993
  %28 = load i32*, i32** %scancode.addr, align 8, !dbg !5994
  store i32 %or43, i32* %28, align 4, !dbg !5995
  %29 = load i32, i32* %toggle, align 4, !dbg !5996
  %conv44 = trunc i32 %29 to i8, !dbg !5996
  %30 = load i8*, i8** %ptoggle.addr, align 8, !dbg !5997
  store i8 %conv44, i8* %30, align 1, !dbg !5998
  store i32 1, i32* %retval, align 4, !dbg !5999
  br label %return, !dbg !5999

if.else:                                          ; preds = %if.end
  %31 = load i32, i32* %size.addr, align 4, !dbg !6000
  %cmp45 = icmp eq i32 %31, 6, !dbg !6001
  br i1 %cmp45, label %land.lhs.true, label %if.end73, !dbg !6002

land.lhs.true:                                    ; preds = %if.else
  %arrayidx47 = getelementptr [6 x i8], [6 x i8]* %buf, i64 0, i64 0, !dbg !6003
  %32 = load i8, i8* %arrayidx47, align 1, !dbg !6003
  %conv48 = zext i8 %32 to i32, !dbg !6003
  %and49 = and i32 %conv48, 64, !dbg !6004
  %tobool50 = icmp ne i32 %and49, 0, !dbg !6004
  br i1 %tobool50, label %if.then51, label %if.end73, !dbg !6005

if.then51:                                        ; preds = %land.lhs.true
  %arrayidx52 = getelementptr [6 x i8], [6 x i8]* %buf, i64 0, i64 4, !dbg !6006
  %33 = load i8, i8* %arrayidx52, align 1, !dbg !6006
  %conv53 = zext i8 %33 to i32, !dbg !6006
  store i32 %conv53, i32* %code, align 4, !dbg !6007
  %arrayidx54 = getelementptr [6 x i8], [6 x i8]* %buf, i64 0, i64 3, !dbg !6008
  %34 = load i8, i8* %arrayidx54, align 1, !dbg !6008
  %conv55 = zext i8 %34 to i32, !dbg !6008
  store i32 %conv55, i32* %dev, align 4, !dbg !6009
  %arraydecay56 = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i64 0, i64 0, !dbg !6010
  %add.ptr = getelementptr i8, i8* %arraydecay56, i64 1, !dbg !6011
  store i8* %add.ptr, i8** %p.addr.i, align 8
  %35 = load i8*, i8** %p.addr.i, align 8, !dbg !6012
  %36 = bitcast i8* %35 to i16*, !dbg !6013
  store i16* %36, i16** %p.addr.i.i, align 8
  %37 = load i16*, i16** %p.addr.i.i, align 8, !dbg !6014
  store i16* %37, i16** %p.addr.i.i.i, align 8
  %38 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6015
  %39 = load i16, i16* %38, align 2, !dbg !6015
  %40 = call i1 @llvm.is.constant.i16(i16 %39) #10, !dbg !6015
  br i1 %40, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !6015

cond.true.i.i.i:                                  ; preds = %if.then51
  %41 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6015
  %42 = load i16, i16* %41, align 2, !dbg !6015
  %conv.i.i.i = zext i16 %42 to i32, !dbg !6015
  %and.i.i.i = and i32 %conv.i.i.i, 255, !dbg !6015
  %shl.i.i.i = shl i32 %and.i.i.i, 8, !dbg !6015
  %43 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6015
  %44 = load i16, i16* %43, align 2, !dbg !6015
  %conv1.i.i.i = zext i16 %44 to i32, !dbg !6015
  %and2.i.i.i = and i32 %conv1.i.i.i, 65280, !dbg !6015
  %shr.i.i.i = ashr i32 %and2.i.i.i, 8, !dbg !6015
  %or.i.i.i = or i32 %shl.i.i.i, %shr.i.i.i, !dbg !6015
  %conv3.i.i.i = trunc i32 %or.i.i.i to i16, !dbg !6015
  %conv4.i.i.i = zext i16 %conv3.i.i.i to i32, !dbg !6015
  br label %get_unaligned_be16.exit, !dbg !6015

cond.false.i.i.i:                                 ; preds = %if.then51
  %45 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6015
  %46 = load i16, i16* %45, align 2, !dbg !6015
  %call.i.i.i = call zeroext i16 @__fswab16(i16 zeroext %46) #12, !dbg !6015
  %conv5.i.i.i = zext i16 %call.i.i.i to i32, !dbg !6015
  br label %get_unaligned_be16.exit, !dbg !6015

get_unaligned_be16.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i ], [ %conv5.i.i.i, %cond.false.i.i.i ], !dbg !6015
  %conv6.i.i.i = trunc i32 %cond.i.i.i to i16, !dbg !6015
  %conv58 = zext i16 %conv6.i.i.i to i32, !dbg !6016
  store i32 %conv58, i32* %vendor, align 4, !dbg !6017
  %47 = load i32, i32* %vendor, align 4, !dbg !6018
  %cmp59 = icmp eq i32 %47, 32783, !dbg !6020
  br i1 %cmp59, label %if.then61, label %if.else67, !dbg !6021

if.then61:                                        ; preds = %get_unaligned_be16.exit
  %48 = load i32, i32* %dev, align 4, !dbg !6022
  %and62 = and i32 %48, 128, !dbg !6024
  %cmp63 = icmp ne i32 %and62, 0, !dbg !6025
  %conv64 = zext i1 %cmp63 to i32, !dbg !6025
  %conv65 = trunc i32 %conv64 to i8, !dbg !6026
  %49 = load i8*, i8** %ptoggle.addr, align 8, !dbg !6027
  store i8 %conv65, i8* %49, align 1, !dbg !6028
  %50 = load i32*, i32** %protocol.addr, align 8, !dbg !6029
  store i32 19, i32* %50, align 4, !dbg !6030
  %51 = load i32, i32* %dev, align 4, !dbg !6031
  %and66 = and i32 %51, 127, !dbg !6031
  store i32 %and66, i32* %dev, align 4, !dbg !6031
  br label %if.end68, !dbg !6032

if.else67:                                        ; preds = %get_unaligned_be16.exit
  %52 = load i8*, i8** %ptoggle.addr, align 8, !dbg !6033
  store i8 0, i8* %52, align 1, !dbg !6035
  %53 = load i32*, i32** %protocol.addr, align 8, !dbg !6036
  store i32 18, i32* %53, align 4, !dbg !6037
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then61
  %54 = load i32, i32* %vendor, align 4, !dbg !6038
  %shl69 = shl i32 %54, 16, !dbg !6038
  %55 = load i32, i32* %dev, align 4, !dbg !6038
  %shl70 = shl i32 %55, 8, !dbg !6038
  %or71 = or i32 %shl69, %shl70, !dbg !6038
  %56 = load i32, i32* %code, align 4, !dbg !6038
  %or72 = or i32 %or71, %56, !dbg !6038
  %57 = load i32*, i32** %scancode.addr, align 8, !dbg !6039
  store i32 %or72, i32* %57, align 4, !dbg !6040
  store i32 1, i32* %retval, align 4, !dbg !6041
  br label %return, !dbg !6041

if.end73:                                         ; preds = %land.lhs.true, %if.else
  br label %if.end74

if.end74:                                         ; preds = %if.end73
  store i32 0, i32* %retval, align 4, !dbg !6042
  br label %return, !dbg !6042

return:                                           ; preds = %if.end74, %if.end68, %if.end41, %if.then36, %if.then27, %if.then
  %58 = load i32, i32* %retval, align 4, !dbg !6043
  ret i32 %58, !dbg !6043
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #7 !dbg !6044 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !6047, metadata !DIExpression()), !dbg !6048
  %0 = load i16, i16* %val.addr, align 2, !dbg !6049
  %conv = zext i16 %0 to i32, !dbg !6049
  %and = and i32 %conv, 255, !dbg !6049
  %shl = shl i32 %and, 8, !dbg !6049
  %1 = load i16, i16* %val.addr, align 2, !dbg !6049
  %conv1 = zext i16 %1 to i32, !dbg !6049
  %and2 = and i32 %conv1, 65280, !dbg !6049
  %shr = ashr i32 %and2, 8, !dbg !6049
  %or = or i32 %shl, %shr, !dbg !6049
  %conv3 = trunc i32 %or to i16, !dbg !6049
  ret i16 %conv3, !dbg !6050
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_master_send(%struct.i2c_client* %client, i8* %buf, i32 %count) #2 !dbg !6051 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6054, metadata !DIExpression()), !dbg !6055
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6060
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !6061
  %2 = load i32, i32* %count.addr, align 4, !dbg !6062
  %call = call i32 @i2c_transfer_buffer_flags(%struct.i2c_client* %0, i8* %1, i32 %2, i16 zeroext 0) #8, !dbg !6063
  ret i32 %call, !dbg !6064
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #2 !dbg !6065 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !6070, metadata !DIExpression()), !dbg !6071
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !6072
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !6073
  %1 = load i8*, i8** %name, align 8, !dbg !6073
  ret i8* %1, !dbg !6074
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_delayed_work(%struct.delayed_work* %dwork, i64 %delay) #2 !dbg !6075 {
entry:
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !6079, metadata !DIExpression()), !dbg !6080
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !6081, metadata !DIExpression()), !dbg !6082
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !6083
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !6084
  %2 = load i64, i64* %delay.addr, align 8, !dbg !6085
  %call = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #8, !dbg !6086
  ret i1 %call, !dbg !6087
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %wq, %struct.delayed_work* %dwork, i64 %delay) #2 !dbg !6088 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !6091, metadata !DIExpression()), !dbg !6092
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !6095, metadata !DIExpression()), !dbg !6096
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !6097
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !6098
  %2 = load i64, i64* %delay.addr, align 8, !dbg !6099
  %call = call zeroext i1 @queue_delayed_work_on(i32 1, %struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #8, !dbg !6100
  ret i1 %call, !dbg !6101
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work*) #1

; Function Attrs: noredzone
declare dso_local i32 @mutex_trylock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ir_key_poll(%struct.IR_i2c* %ir) #2 !dbg !6102 {
entry:
  %retval = alloca i32, align 4
  %ir.addr = alloca %struct.IR_i2c*, align 8
  %protocol = alloca i32, align 4
  %scancode = alloca i32, align 4
  %toggle = alloca i8, align 1
  %rc = alloca i32, align 4
  store %struct.IR_i2c* %ir, %struct.IR_i2c** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir.addr, metadata !6103, metadata !DIExpression()), !dbg !6104
  call void @llvm.dbg.declare(metadata i32* %protocol, metadata !6105, metadata !DIExpression()), !dbg !6106
  call void @llvm.dbg.declare(metadata i32* %scancode, metadata !6107, metadata !DIExpression()), !dbg !6108
  call void @llvm.dbg.declare(metadata i8* %toggle, metadata !6109, metadata !DIExpression()), !dbg !6110
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6111, metadata !DIExpression()), !dbg !6112
  %0 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !6113
  %get_key = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %0, i32 0, i32 7, !dbg !6114
  %1 = load i32 (%struct.IR_i2c*, i32*, i32*, i8*)*, i32 (%struct.IR_i2c*, i32*, i32*, i8*)** %get_key, align 8, !dbg !6114
  %2 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !6115
  %call = call i32 %1(%struct.IR_i2c* %2, i32* %protocol, i32* %scancode, i8* %toggle) #8, !dbg !6113
  store i32 %call, i32* %rc, align 4, !dbg !6116
  %3 = load i32, i32* %rc, align 4, !dbg !6117
  %cmp = icmp slt i32 %3, 0, !dbg !6119
  br i1 %cmp, label %if.then, label %if.end, !dbg !6120

if.then:                                          ; preds = %entry
  %4 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !6121
  %rc1 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %4, i32 0, i32 2, !dbg !6121
  %5 = load %struct.rc_dev*, %struct.rc_dev** %rc1, align 8, !dbg !6121
  %dev = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %5, i32 0, i32 0, !dbg !6121
  %6 = load i32, i32* %rc, align 4, !dbg !6121
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 %6) #9, !dbg !6121
  %7 = load i32, i32* %rc, align 4, !dbg !6123
  store i32 %7, i32* %retval, align 4, !dbg !6124
  br label %return, !dbg !6124

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %rc, align 4, !dbg !6125
  %tobool = icmp ne i32 %8, 0, !dbg !6125
  br i1 %tobool, label %if.then2, label %if.end4, !dbg !6127

if.then2:                                         ; preds = %if.end
  %9 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !6128
  %rc3 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %9, i32 0, i32 2, !dbg !6130
  %10 = load %struct.rc_dev*, %struct.rc_dev** %rc3, align 8, !dbg !6130
  %11 = load i32, i32* %protocol, align 4, !dbg !6131
  %12 = load i32, i32* %scancode, align 4, !dbg !6132
  %conv = zext i32 %12 to i64, !dbg !6132
  %13 = load i8, i8* %toggle, align 1, !dbg !6133
  call void @rc_keydown(%struct.rc_dev* %10, i32 %11, i64 %conv, i8 zeroext %13) #8, !dbg !6134
  br label %if.end4, !dbg !6135

if.end4:                                          ; preds = %if.then2, %if.end
  store i32 0, i32* %retval, align 4, !dbg !6136
  br label %return, !dbg !6136

return:                                           ; preds = %if.end4, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !6137
  ret i32 %14, !dbg !6137
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @rc_unregister_device(%struct.rc_dev*) #1

; Function Attrs: noredzone
declare dso_local void @rc_keydown(%struct.rc_dev*, i32, i64, i8 zeroext) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #2 !dbg !6138 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6139, metadata !DIExpression()), !dbg !6140
  %0 = load i32, i32* %m.addr, align 4, !dbg !6141
  %conv = zext i32 %0 to i64, !dbg !6141
  %add = add i64 %conv, 4, !dbg !6142
  %sub = sub i64 %add, 1, !dbg !6143
  %div = sdiv i64 %sub, 4, !dbg !6144
  ret i64 %div, !dbg !6145
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @send_data_block(%struct.IR_i2c* %ir, i32 %cmd, %struct.code_block* %code_block) #2 !dbg !6146 {
entry:
  %retval = alloca i32, align 4
  %ir.addr = alloca %struct.IR_i2c*, align 8
  %cmd.addr = alloca i32, align 4
  %code_block.addr = alloca %struct.code_block*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf = alloca [5 x i8], align 1
  %p = alloca i8*, align 8
  %tosend = alloca i32, align 4
  store %struct.IR_i2c* %ir, %struct.IR_i2c** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir.addr, metadata !6150, metadata !DIExpression()), !dbg !6151
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !6152, metadata !DIExpression()), !dbg !6153
  store %struct.code_block* %code_block, %struct.code_block** %code_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.code_block** %code_block.addr, metadata !6154, metadata !DIExpression()), !dbg !6155
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6156, metadata !DIExpression()), !dbg !6157
  call void @llvm.dbg.declare(metadata i32* %j, metadata !6158, metadata !DIExpression()), !dbg !6159
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6160, metadata !DIExpression()), !dbg !6161
  call void @llvm.dbg.declare(metadata [5 x i8]* %buf, metadata !6162, metadata !DIExpression()), !dbg !6164
  call void @llvm.dbg.declare(metadata i8** %p, metadata !6165, metadata !DIExpression()), !dbg !6166
  %0 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6167
  %length = getelementptr inbounds %struct.code_block, %struct.code_block* %0, i32 0, i32 0, !dbg !6168
  store i8* %length, i8** %p, align 8, !dbg !6169
  store i32 0, i32* %i, align 4, !dbg !6170
  br label %for.cond, !dbg !6172

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %p, align 8, !dbg !6173
  %2 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6175
  %csum = getelementptr inbounds %struct.code_block, %struct.code_block* %2, i32 0, i32 6, !dbg !6176
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %csum, i64 0, i64 0, !dbg !6175
  %cmp = icmp ult i8* %1, %arraydecay, !dbg !6177
  br i1 %cmp, label %for.body, label %for.end, !dbg !6178

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8, !dbg !6179
  %incdec.ptr = getelementptr i8, i8* %3, i32 1, !dbg !6179
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !6179
  %4 = load i8, i8* %3, align 1, !dbg !6180
  %conv = zext i8 %4 to i32, !dbg !6180
  %5 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6181
  %csum1 = getelementptr inbounds %struct.code_block, %struct.code_block* %5, i32 0, i32 6, !dbg !6182
  %6 = load i32, i32* %i, align 4, !dbg !6183
  %and = and i32 %6, 1, !dbg !6184
  %idxprom = sext i32 %and to i64, !dbg !6181
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %csum1, i64 0, i64 %idxprom, !dbg !6181
  %7 = load i8, i8* %arrayidx, align 1, !dbg !6185
  %conv2 = zext i8 %7 to i32, !dbg !6185
  %xor = xor i32 %conv2, %conv, !dbg !6185
  %conv3 = trunc i32 %xor to i8, !dbg !6185
  store i8 %conv3, i8* %arrayidx, align 1, !dbg !6185
  br label %for.inc, !dbg !6181

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !6186
  %inc = add i32 %8, 1, !dbg !6186
  store i32 %inc, i32* %i, align 4, !dbg !6186
  br label %for.cond, !dbg !6187, !llvm.loop !6188

for.end:                                          ; preds = %for.cond
  %9 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6190
  %length4 = getelementptr inbounds %struct.code_block, %struct.code_block* %9, i32 0, i32 0, !dbg !6191
  store i8* %length4, i8** %p, align 8, !dbg !6192
  store i32 0, i32* %i, align 4, !dbg !6193
  br label %for.cond5, !dbg !6195

for.cond5:                                        ; preds = %if.end37, %for.end
  %10 = load i32, i32* %i, align 4, !dbg !6196
  %conv6 = sext i32 %10 to i64, !dbg !6196
  %cmp7 = icmp ult i64 %conv6, 96, !dbg !6198
  br i1 %cmp7, label %for.body9, label %for.end39, !dbg !6199

for.body9:                                        ; preds = %for.cond5
  call void @llvm.dbg.declare(metadata i32* %tosend, metadata !6200, metadata !DIExpression()), !dbg !6202
  %11 = load i32, i32* %i, align 4, !dbg !6203
  %conv10 = sext i32 %11 to i64, !dbg !6203
  %sub = sub i64 96, %conv10, !dbg !6204
  %conv11 = trunc i64 %sub to i32, !dbg !6205
  store i32 %conv11, i32* %tosend, align 4, !dbg !6202
  %12 = load i32, i32* %tosend, align 4, !dbg !6206
  %cmp12 = icmp sgt i32 %12, 4, !dbg !6208
  br i1 %cmp12, label %if.then, label %if.end, !dbg !6209

if.then:                                          ; preds = %for.body9
  store i32 4, i32* %tosend, align 4, !dbg !6210
  br label %if.end, !dbg !6211

if.end:                                           ; preds = %if.then, %for.body9
  %13 = load i32, i32* %i, align 4, !dbg !6212
  %add = add i32 %13, 1, !dbg !6213
  %conv14 = trunc i32 %add to i8, !dbg !6212
  %arrayidx15 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6214
  store i8 %conv14, i8* %arrayidx15, align 1, !dbg !6215
  store i32 0, i32* %j, align 4, !dbg !6216
  br label %for.cond16, !dbg !6218

for.cond16:                                       ; preds = %for.inc26, %if.end
  %14 = load i32, i32* %j, align 4, !dbg !6219
  %15 = load i32, i32* %tosend, align 4, !dbg !6221
  %cmp17 = icmp slt i32 %14, %15, !dbg !6222
  br i1 %cmp17, label %for.body19, label %for.end28, !dbg !6223

for.body19:                                       ; preds = %for.cond16
  %16 = load i8*, i8** %p, align 8, !dbg !6224
  %17 = load i32, i32* %i, align 4, !dbg !6225
  %18 = load i32, i32* %j, align 4, !dbg !6226
  %add20 = add i32 %17, %18, !dbg !6227
  %idxprom21 = sext i32 %add20 to i64, !dbg !6224
  %arrayidx22 = getelementptr i8, i8* %16, i64 %idxprom21, !dbg !6224
  %19 = load i8, i8* %arrayidx22, align 1, !dbg !6224
  %20 = load i32, i32* %j, align 4, !dbg !6228
  %add23 = add i32 1, %20, !dbg !6229
  %idxprom24 = sext i32 %add23 to i64, !dbg !6230
  %arrayidx25 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 %idxprom24, !dbg !6230
  store i8 %19, i8* %arrayidx25, align 1, !dbg !6231
  br label %for.inc26, !dbg !6230

for.inc26:                                        ; preds = %for.body19
  %21 = load i32, i32* %j, align 4, !dbg !6232
  %inc27 = add i32 %21, 1, !dbg !6232
  store i32 %inc27, i32* %j, align 4, !dbg !6232
  br label %for.cond16, !dbg !6233, !llvm.loop !6234

for.end28:                                        ; preds = %for.cond16
  %22 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !6236
  %tx_c = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %22, i32 0, i32 8, !dbg !6237
  %23 = load %struct.i2c_client*, %struct.i2c_client** %tx_c, align 8, !dbg !6237
  %arraydecay29 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6238
  %24 = load i32, i32* %tosend, align 4, !dbg !6239
  %add30 = add i32 %24, 1, !dbg !6240
  %call = call i32 @i2c_master_send(%struct.i2c_client* %23, i8* %arraydecay29, i32 %add30) #8, !dbg !6241
  store i32 %call, i32* %ret, align 4, !dbg !6242
  %25 = load i32, i32* %ret, align 4, !dbg !6243
  %26 = load i32, i32* %tosend, align 4, !dbg !6245
  %add31 = add i32 %26, 1, !dbg !6246
  %cmp32 = icmp ne i32 %25, %add31, !dbg !6247
  br i1 %cmp32, label %if.then34, label %if.end37, !dbg !6248

if.then34:                                        ; preds = %for.end28
  %27 = load i32, i32* %ret, align 4, !dbg !6249
  %cmp35 = icmp slt i32 %27, 0, !dbg !6251
  br i1 %cmp35, label %cond.true, label %cond.false, !dbg !6249

cond.true:                                        ; preds = %if.then34
  %28 = load i32, i32* %ret, align 4, !dbg !6252
  br label %cond.end, !dbg !6249

cond.false:                                       ; preds = %if.then34
  br label %cond.end, !dbg !6249

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ -5, %cond.false ], !dbg !6249
  store i32 %cond, i32* %retval, align 4, !dbg !6253
  br label %return, !dbg !6253

if.end37:                                         ; preds = %for.end28
  %29 = load i32, i32* %tosend, align 4, !dbg !6254
  %30 = load i32, i32* %i, align 4, !dbg !6255
  %add38 = add i32 %30, %29, !dbg !6255
  store i32 %add38, i32* %i, align 4, !dbg !6255
  br label %for.cond5, !dbg !6256, !llvm.loop !6257

for.end39:                                        ; preds = %for.cond5
  %arrayidx40 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6259
  store i8 0, i8* %arrayidx40, align 1, !dbg !6260
  %31 = load i32, i32* %cmd.addr, align 4, !dbg !6261
  %conv41 = trunc i32 %31 to i8, !dbg !6261
  %arrayidx42 = getelementptr [5 x i8], [5 x i8]* %buf, i64 0, i64 1, !dbg !6262
  store i8 %conv41, i8* %arrayidx42, align 1, !dbg !6263
  %32 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !6264
  %tx_c43 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %32, i32 0, i32 8, !dbg !6265
  %33 = load %struct.i2c_client*, %struct.i2c_client** %tx_c43, align 8, !dbg !6265
  %arraydecay44 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6266
  %call45 = call i32 @i2c_master_send(%struct.i2c_client* %33, i8* %arraydecay44, i32 2) #8, !dbg !6267
  store i32 %call45, i32* %ret, align 4, !dbg !6268
  %34 = load i32, i32* %ret, align 4, !dbg !6269
  %cmp46 = icmp ne i32 %34, 2, !dbg !6271
  br i1 %cmp46, label %if.then48, label %if.end55, !dbg !6272

if.then48:                                        ; preds = %for.end39
  %35 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !6273
  %rc = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %35, i32 0, i32 2, !dbg !6273
  %36 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !6273
  %dev = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %36, i32 0, i32 0, !dbg !6273
  %37 = load i32, i32* %ret, align 4, !dbg !6273
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i32 %37) #9, !dbg !6273
  %38 = load i32, i32* %ret, align 4, !dbg !6275
  %cmp49 = icmp slt i32 %38, 0, !dbg !6276
  br i1 %cmp49, label %cond.true51, label %cond.false52, !dbg !6275

cond.true51:                                      ; preds = %if.then48
  %39 = load i32, i32* %ret, align 4, !dbg !6277
  br label %cond.end53, !dbg !6275

cond.false52:                                     ; preds = %if.then48
  br label %cond.end53, !dbg !6275

cond.end53:                                       ; preds = %cond.false52, %cond.true51
  %cond54 = phi i32 [ %39, %cond.true51 ], [ -5, %cond.false52 ], !dbg !6275
  store i32 %cond54, i32* %retval, align 4, !dbg !6278
  br label %return, !dbg !6278

if.end55:                                         ; preds = %for.end39
  call void @usleep_range(i64 2000, i64 5000) #8, !dbg !6279
  %40 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !6280
  %tx_c56 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %40, i32 0, i32 8, !dbg !6281
  %41 = load %struct.i2c_client*, %struct.i2c_client** %tx_c56, align 8, !dbg !6281
  %arraydecay57 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0, !dbg !6282
  %call58 = call i32 @i2c_master_send(%struct.i2c_client* %41, i8* %arraydecay57, i32 1) #8, !dbg !6283
  store i32 %call58, i32* %ret, align 4, !dbg !6284
  %42 = load i32, i32* %ret, align 4, !dbg !6285
  %cmp59 = icmp ne i32 %42, 1, !dbg !6287
  br i1 %cmp59, label %if.then61, label %if.end70, !dbg !6288

if.then61:                                        ; preds = %if.end55
  %43 = load %struct.IR_i2c*, %struct.IR_i2c** %ir.addr, align 8, !dbg !6289
  %rc62 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %43, i32 0, i32 2, !dbg !6289
  %44 = load %struct.rc_dev*, %struct.rc_dev** %rc62, align 8, !dbg !6289
  %dev63 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %44, i32 0, i32 0, !dbg !6289
  %45 = load i32, i32* %ret, align 4, !dbg !6289
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i32 %45) #9, !dbg !6289
  %46 = load i32, i32* %ret, align 4, !dbg !6291
  %cmp64 = icmp slt i32 %46, 0, !dbg !6292
  br i1 %cmp64, label %cond.true66, label %cond.false67, !dbg !6291

cond.true66:                                      ; preds = %if.then61
  %47 = load i32, i32* %ret, align 4, !dbg !6293
  br label %cond.end68, !dbg !6291

cond.false67:                                     ; preds = %if.then61
  br label %cond.end68, !dbg !6291

cond.end68:                                       ; preds = %cond.false67, %cond.true66
  %cond69 = phi i32 [ %47, %cond.true66 ], [ -5, %cond.false67 ], !dbg !6291
  store i32 %cond69, i32* %retval, align 4, !dbg !6294
  br label %return, !dbg !6294

if.end70:                                         ; preds = %if.end55
  store i32 0, i32* %retval, align 4, !dbg !6295
  br label %return, !dbg !6295

return:                                           ; preds = %if.end70, %cond.end68, %cond.end53, %cond.end
  %48 = load i32, i32* %retval, align 4, !dbg !6296
  ret i32 %48, !dbg !6296
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @zilog_ir_format(%struct.rc_dev* %rcdev, i32* %txbuf, i32 %count, %struct.code_block* %code_block) #2 !dbg !6297 {
entry:
  %p.addr.i.i.i164 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i.i164, metadata !5867, metadata !DIExpression()), !dbg !6300
  %p.addr.i.i165 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i165, metadata !5890, metadata !DIExpression()), !dbg !6308
  %p.addr.i166 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i166, metadata !5892, metadata !DIExpression()), !dbg !6309
  %p.addr.i.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i.i, metadata !5867, metadata !DIExpression()), !dbg !6310
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !5890, metadata !DIExpression()), !dbg !6314
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !5892, metadata !DIExpression()), !dbg !6315
  %retval = alloca i32, align 4
  %rcdev.addr = alloca %struct.rc_dev*, align 8
  %txbuf.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %code_block.addr = alloca %struct.code_block*, align 8
  %ir = alloca %struct.IR_i2c*, align 8
  %rep = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %p = alloca i32, align 4
  %s = alloca i32, align 4
  %c = alloca i32, align 4
  %repeating = alloca i8, align 1
  %codes = alloca [174 x i8], align 16
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__x3 = alloca i32, align 4
  %__d7 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %__x22 = alloca i32, align 4
  %__d26 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %d = alloca i16, align 2
  %leading = alloca i32, align 4
  store %struct.rc_dev* %rcdev, %struct.rc_dev** %rcdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rcdev.addr, metadata !6316, metadata !DIExpression()), !dbg !6317
  store i32* %txbuf, i32** %txbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %txbuf.addr, metadata !6318, metadata !DIExpression()), !dbg !6319
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !6320, metadata !DIExpression()), !dbg !6321
  store %struct.code_block* %code_block, %struct.code_block** %code_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.code_block** %code_block.addr, metadata !6322, metadata !DIExpression()), !dbg !6323
  call void @llvm.dbg.declare(metadata %struct.IR_i2c** %ir, metadata !6324, metadata !DIExpression()), !dbg !6325
  %0 = load %struct.rc_dev*, %struct.rc_dev** %rcdev.addr, align 8, !dbg !6326
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !6327
  %1 = load i8*, i8** %priv, align 8, !dbg !6327
  %2 = bitcast i8* %1 to %struct.IR_i2c*, !dbg !6326
  store %struct.IR_i2c* %2, %struct.IR_i2c** %ir, align 8, !dbg !6325
  call void @llvm.dbg.declare(metadata i32* %rep, metadata !6328, metadata !DIExpression()), !dbg !6329
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6330, metadata !DIExpression()), !dbg !6331
  call void @llvm.dbg.declare(metadata i32* %l, metadata !6332, metadata !DIExpression()), !dbg !6333
  call void @llvm.dbg.declare(metadata i32* %p, metadata !6334, metadata !DIExpression()), !dbg !6335
  store i32 0, i32* %p, align 4, !dbg !6335
  call void @llvm.dbg.declare(metadata i32* %s, metadata !6336, metadata !DIExpression()), !dbg !6337
  call void @llvm.dbg.declare(metadata i32* %c, metadata !6338, metadata !DIExpression()), !dbg !6339
  store i32 0, i32* %c, align 4, !dbg !6339
  call void @llvm.dbg.declare(metadata i8* %repeating, metadata !6340, metadata !DIExpression()), !dbg !6341
  call void @llvm.dbg.declare(metadata [174 x i8]* %codes, metadata !6342, metadata !DIExpression()), !dbg !6346
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !6347, metadata !DIExpression()), !dbg !6349
  %3 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !6349
  %duty_cycle = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %3, i32 0, i32 11, !dbg !6349
  %4 = load i32, i32* %duty_cycle, align 4, !dbg !6349
  %mul = mul i32 %4, 18432000, !dbg !6349
  %div = udiv i32 %mul, 1000, !dbg !6349
  store i32 %div, i32* %__x, align 4, !dbg !6349
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !6350, metadata !DIExpression()), !dbg !6349
  %5 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !6349
  %carrier = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %5, i32 0, i32 10, !dbg !6349
  %6 = load i32, i32* %carrier, align 8, !dbg !6349
  store i32 %6, i32* %__d, align 4, !dbg !6349
  %7 = load i32, i32* %__x, align 4, !dbg !6349
  %8 = load i32, i32* %__d, align 4, !dbg !6349
  %div1 = udiv i32 %8, 2, !dbg !6349
  %add = add i32 %7, %div1, !dbg !6349
  %9 = load i32, i32* %__d, align 4, !dbg !6349
  %div2 = udiv i32 %add, %9, !dbg !6349
  store i32 %div2, i32* %tmp, align 4, !dbg !6349
  %10 = load i32, i32* %tmp, align 4, !dbg !6349
  %conv = trunc i32 %10 to i8, !dbg !6351
  %11 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6352
  %carrier_pulse = getelementptr inbounds %struct.code_block, %struct.code_block* %11, i32 0, i32 2, !dbg !6353
  store i8 %conv, i8* %carrier_pulse, align 1, !dbg !6354
  call void @llvm.dbg.declare(metadata i32* %__x3, metadata !6355, metadata !DIExpression()), !dbg !6357
  %12 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !6357
  %duty_cycle4 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %12, i32 0, i32 11, !dbg !6357
  %13 = load i32, i32* %duty_cycle4, align 4, !dbg !6357
  %sub = sub i32 100, %13, !dbg !6357
  %mul5 = mul i32 %sub, 18432000, !dbg !6357
  %div6 = udiv i32 %mul5, 1000, !dbg !6357
  store i32 %div6, i32* %__x3, align 4, !dbg !6357
  call void @llvm.dbg.declare(metadata i32* %__d7, metadata !6358, metadata !DIExpression()), !dbg !6357
  %14 = load %struct.IR_i2c*, %struct.IR_i2c** %ir, align 8, !dbg !6357
  %carrier8 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %14, i32 0, i32 10, !dbg !6357
  %15 = load i32, i32* %carrier8, align 8, !dbg !6357
  store i32 %15, i32* %__d7, align 4, !dbg !6357
  %16 = load i32, i32* %__x3, align 4, !dbg !6357
  %17 = load i32, i32* %__d7, align 4, !dbg !6357
  %div10 = udiv i32 %17, 2, !dbg !6357
  %add11 = add i32 %16, %div10, !dbg !6357
  %18 = load i32, i32* %__d7, align 4, !dbg !6357
  %div12 = udiv i32 %add11, %18, !dbg !6357
  store i32 %div12, i32* %tmp9, align 4, !dbg !6357
  %19 = load i32, i32* %tmp9, align 4, !dbg !6357
  %conv13 = trunc i32 %19 to i8, !dbg !6359
  %20 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6360
  %carrier_space = getelementptr inbounds %struct.code_block, %struct.code_block* %20, i32 0, i32 3, !dbg !6361
  store i8 %conv13, i8* %carrier_space, align 1, !dbg !6362
  store i32 0, i32* %i, align 4, !dbg !6363
  br label %for.cond, !dbg !6365

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %i, align 4, !dbg !6366
  %22 = load i32, i32* %count.addr, align 4, !dbg !6368
  %cmp = icmp ult i32 %21, %22, !dbg !6369
  br i1 %cmp, label %for.body, label %for.end, !dbg !6370

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %c, align 4, !dbg !6371
  %conv15 = sext i32 %23 to i64, !dbg !6371
  %cmp16 = icmp uge i64 %conv15, 173, !dbg !6374
  br i1 %cmp16, label %if.then, label %if.end, !dbg !6375

if.then:                                          ; preds = %for.body
  %24 = load %struct.rc_dev*, %struct.rc_dev** %rcdev.addr, align 8, !dbg !6376
  %dev = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %24, i32 0, i32 0, !dbg !6376
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !6376
  store i32 -22, i32* %retval, align 4, !dbg !6378
  br label %return, !dbg !6378

if.end:                                           ; preds = %for.body
  %25 = load i32*, i32** %txbuf.addr, align 8, !dbg !6379
  %26 = load i32, i32* %i, align 4, !dbg !6381
  %idxprom = sext i32 %26 to i64, !dbg !6379
  %arrayidx = getelementptr i32, i32* %25, i64 %idxprom, !dbg !6379
  %27 = load i32, i32* %arrayidx, align 4, !dbg !6379
  %cmp18 = icmp ugt i32 %27, 142220, !dbg !6382
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !6383

if.then20:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !6384
  br label %return, !dbg !6384

if.end21:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__x22, metadata !6385, metadata !DIExpression()), !dbg !6387
  %28 = load i32*, i32** %txbuf.addr, align 8, !dbg !6387
  %29 = load i32, i32* %i, align 4, !dbg !6387
  %idxprom23 = sext i32 %29 to i64, !dbg !6387
  %arrayidx24 = getelementptr i32, i32* %28, i64 %idxprom23, !dbg !6387
  %30 = load i32, i32* %arrayidx24, align 4, !dbg !6387
  %mul25 = mul i32 18432, %30, !dbg !6387
  store i32 %mul25, i32* %__x22, align 4, !dbg !6387
  call void @llvm.dbg.declare(metadata i32* %__d26, metadata !6388, metadata !DIExpression()), !dbg !6387
  store i32 40000, i32* %__d26, align 4, !dbg !6387
  %31 = load i32, i32* %__x22, align 4, !dbg !6387
  %32 = load i32, i32* %__d26, align 4, !dbg !6387
  %div28 = sdiv i32 %32, 2, !dbg !6387
  %add29 = add i32 %31, %div28, !dbg !6387
  %33 = load i32, i32* %__d26, align 4, !dbg !6387
  %div30 = udiv i32 %add29, %33, !dbg !6387
  store i32 %div30, i32* %tmp27, align 4, !dbg !6387
  %34 = load i32, i32* %tmp27, align 4, !dbg !6387
  store i32 %34, i32* %l, align 4, !dbg !6389
  %35 = load i32, i32* %i, align 4, !dbg !6390
  %and = and i32 %35, 1, !dbg !6392
  %tobool = icmp ne i32 %and, 0, !dbg !6392
  br i1 %tobool, label %if.then31, label %if.else, !dbg !6393

if.then31:                                        ; preds = %if.end21
  %36 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6394
  %space = getelementptr inbounds %struct.code_block, %struct.code_block* %36, i32 0, i32 4, !dbg !6396
  %arraydecay = getelementptr inbounds [8 x i16], [8 x i16]* %space, i64 0, i64 0, !dbg !6394
  %37 = load i32, i32* %l, align 4, !dbg !6397
  %conv32 = trunc i32 %37 to i16, !dbg !6397
  %call = call i32 @find_slot(i16* %arraydecay, i32 8, i16 zeroext %conv32) #8, !dbg !6398
  store i32 %call, i32* %s, align 4, !dbg !6399
  %38 = load i32, i32* %s, align 4, !dbg !6400
  %cmp33 = icmp eq i32 %38, -1, !dbg !6402
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !6403

if.then35:                                        ; preds = %if.then31
  %39 = load %struct.rc_dev*, %struct.rc_dev** %rcdev.addr, align 8, !dbg !6404
  %dev36 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %39, i32 0, i32 0, !dbg !6404
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !6404
  store i32 -22, i32* %retval, align 4, !dbg !6406
  br label %return, !dbg !6406

if.end37:                                         ; preds = %if.then31
  %40 = load i32, i32* %p, align 4, !dbg !6407
  %shl = shl i32 %40, 4, !dbg !6408
  %41 = load i32, i32* %s, align 4, !dbg !6409
  %or = or i32 %shl, %41, !dbg !6410
  %conv38 = trunc i32 %or to i8, !dbg !6411
  %42 = load i32, i32* %c, align 4, !dbg !6412
  %inc = add i32 %42, 1, !dbg !6412
  store i32 %inc, i32* %c, align 4, !dbg !6412
  %idxprom39 = sext i32 %42 to i64, !dbg !6413
  %arrayidx40 = getelementptr [174 x i8], [174 x i8]* %codes, i64 0, i64 %idxprom39, !dbg !6413
  store i8 %conv38, i8* %arrayidx40, align 1, !dbg !6414
  br label %if.end49, !dbg !6415

if.else:                                          ; preds = %if.end21
  %43 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6416
  %pulse = getelementptr inbounds %struct.code_block, %struct.code_block* %43, i32 0, i32 1, !dbg !6418
  %arraydecay41 = getelementptr inbounds [7 x i16], [7 x i16]* %pulse, i64 0, i64 0, !dbg !6416
  %44 = load i32, i32* %l, align 4, !dbg !6419
  %conv42 = trunc i32 %44 to i16, !dbg !6419
  %call43 = call i32 @find_slot(i16* %arraydecay41, i32 7, i16 zeroext %conv42) #8, !dbg !6420
  store i32 %call43, i32* %p, align 4, !dbg !6421
  %45 = load i32, i32* %p, align 4, !dbg !6422
  %cmp44 = icmp eq i32 %45, -1, !dbg !6424
  br i1 %cmp44, label %if.then46, label %if.end48, !dbg !6425

if.then46:                                        ; preds = %if.else
  %46 = load %struct.rc_dev*, %struct.rc_dev** %rcdev.addr, align 8, !dbg !6426
  %dev47 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %46, i32 0, i32 0, !dbg !6426
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !6426
  store i32 -22, i32* %retval, align 4, !dbg !6428
  br label %return, !dbg !6428

if.end48:                                         ; preds = %if.else
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end37
  br label %for.inc, !dbg !6429

for.inc:                                          ; preds = %if.end49
  %47 = load i32, i32* %i, align 4, !dbg !6430
  %inc50 = add i32 %47, 1, !dbg !6430
  store i32 %inc50, i32* %i, align 4, !dbg !6430
  br label %for.cond, !dbg !6431, !llvm.loop !6432

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %s, align 4, !dbg !6434
  store i32 1, i32* %i, align 4, !dbg !6435
  br label %for.cond51, !dbg !6436

for.cond51:                                       ; preds = %for.inc70, %for.end
  %48 = load i32, i32* %i, align 4, !dbg !6437
  %conv52 = sext i32 %48 to i64, !dbg !6437
  %cmp53 = icmp ult i64 %conv52, 8, !dbg !6438
  br i1 %cmp53, label %for.body55, label %for.end72, !dbg !6439

for.body55:                                       ; preds = %for.cond51
  call void @llvm.dbg.declare(metadata i16* %d, metadata !6440, metadata !DIExpression()), !dbg !6441
  %49 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6442
  %space56 = getelementptr inbounds %struct.code_block, %struct.code_block* %49, i32 0, i32 4, !dbg !6443
  %50 = load i32, i32* %i, align 4, !dbg !6444
  %idxprom57 = sext i32 %50 to i64, !dbg !6442
  %arrayidx58 = getelementptr [8 x i16], [8 x i16]* %space56, i64 0, i64 %idxprom57, !dbg !6442
  %51 = bitcast i16* %arrayidx58 to i8*, !dbg !6445
  store i8* %51, i8** %p.addr.i, align 8
  %52 = load i8*, i8** %p.addr.i, align 8, !dbg !6446
  %53 = bitcast i8* %52 to i16*, !dbg !6447
  store i16* %53, i16** %p.addr.i.i, align 8
  %54 = load i16*, i16** %p.addr.i.i, align 8, !dbg !6448
  store i16* %54, i16** %p.addr.i.i.i, align 8
  %55 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6449
  %56 = load i16, i16* %55, align 2, !dbg !6449
  %57 = call i1 @llvm.is.constant.i16(i16 %56) #10, !dbg !6449
  br i1 %57, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !6449

cond.true.i.i.i:                                  ; preds = %for.body55
  %58 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6449
  %59 = load i16, i16* %58, align 2, !dbg !6449
  %conv.i.i.i = zext i16 %59 to i32, !dbg !6449
  %and.i.i.i = and i32 %conv.i.i.i, 255, !dbg !6449
  %shl.i.i.i = shl i32 %and.i.i.i, 8, !dbg !6449
  %60 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6449
  %61 = load i16, i16* %60, align 2, !dbg !6449
  %conv1.i.i.i = zext i16 %61 to i32, !dbg !6449
  %and2.i.i.i = and i32 %conv1.i.i.i, 65280, !dbg !6449
  %shr.i.i.i = ashr i32 %and2.i.i.i, 8, !dbg !6449
  %or.i.i.i = or i32 %shl.i.i.i, %shr.i.i.i, !dbg !6449
  %conv3.i.i.i = trunc i32 %or.i.i.i to i16, !dbg !6449
  %conv4.i.i.i = zext i16 %conv3.i.i.i to i32, !dbg !6449
  br label %get_unaligned_be16.exit, !dbg !6449

cond.false.i.i.i:                                 ; preds = %for.body55
  %62 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6449
  %63 = load i16, i16* %62, align 2, !dbg !6449
  %call.i.i.i = call zeroext i16 @__fswab16(i16 zeroext %63) #12, !dbg !6449
  %conv5.i.i.i = zext i16 %call.i.i.i to i32, !dbg !6449
  br label %get_unaligned_be16.exit, !dbg !6449

get_unaligned_be16.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i ], [ %conv5.i.i.i, %cond.false.i.i.i ], !dbg !6449
  %conv6.i.i.i = trunc i32 %cond.i.i.i to i16, !dbg !6449
  store i16 %conv6.i.i.i, i16* %d, align 2, !dbg !6441
  %64 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6450
  %space60 = getelementptr inbounds %struct.code_block, %struct.code_block* %64, i32 0, i32 4, !dbg !6451
  %65 = load i32, i32* %s, align 4, !dbg !6452
  %idxprom61 = sext i32 %65 to i64, !dbg !6450
  %arrayidx62 = getelementptr [8 x i16], [8 x i16]* %space60, i64 0, i64 %idxprom61, !dbg !6450
  %66 = bitcast i16* %arrayidx62 to i8*, !dbg !6453
  store i8* %66, i8** %p.addr.i166, align 8
  %67 = load i8*, i8** %p.addr.i166, align 8, !dbg !6454
  %68 = bitcast i8* %67 to i16*, !dbg !6455
  store i16* %68, i16** %p.addr.i.i165, align 8
  %69 = load i16*, i16** %p.addr.i.i165, align 8, !dbg !6456
  store i16* %69, i16** %p.addr.i.i.i164, align 8
  %70 = load i16*, i16** %p.addr.i.i.i164, align 8, !dbg !6457
  %71 = load i16, i16* %70, align 2, !dbg !6457
  %72 = call i1 @llvm.is.constant.i16(i16 %71) #10, !dbg !6457
  br i1 %72, label %cond.true.i.i.i176, label %cond.false.i.i.i179, !dbg !6457

cond.true.i.i.i176:                               ; preds = %get_unaligned_be16.exit
  %73 = load i16*, i16** %p.addr.i.i.i164, align 8, !dbg !6457
  %74 = load i16, i16* %73, align 2, !dbg !6457
  %conv.i.i.i167 = zext i16 %74 to i32, !dbg !6457
  %and.i.i.i168 = and i32 %conv.i.i.i167, 255, !dbg !6457
  %shl.i.i.i169 = shl i32 %and.i.i.i168, 8, !dbg !6457
  %75 = load i16*, i16** %p.addr.i.i.i164, align 8, !dbg !6457
  %76 = load i16, i16* %75, align 2, !dbg !6457
  %conv1.i.i.i170 = zext i16 %76 to i32, !dbg !6457
  %and2.i.i.i171 = and i32 %conv1.i.i.i170, 65280, !dbg !6457
  %shr.i.i.i172 = ashr i32 %and2.i.i.i171, 8, !dbg !6457
  %or.i.i.i173 = or i32 %shl.i.i.i169, %shr.i.i.i172, !dbg !6457
  %conv3.i.i.i174 = trunc i32 %or.i.i.i173 to i16, !dbg !6457
  %conv4.i.i.i175 = zext i16 %conv3.i.i.i174 to i32, !dbg !6457
  br label %get_unaligned_be16.exit182, !dbg !6457

cond.false.i.i.i179:                              ; preds = %get_unaligned_be16.exit
  %77 = load i16*, i16** %p.addr.i.i.i164, align 8, !dbg !6457
  %78 = load i16, i16* %77, align 2, !dbg !6457
  %call.i.i.i177 = call zeroext i16 @__fswab16(i16 zeroext %78) #12, !dbg !6457
  %conv5.i.i.i178 = zext i16 %call.i.i.i177 to i32, !dbg !6457
  br label %get_unaligned_be16.exit182, !dbg !6457

get_unaligned_be16.exit182:                       ; preds = %cond.true.i.i.i176, %cond.false.i.i.i179
  %cond.i.i.i180 = phi i32 [ %conv4.i.i.i175, %cond.true.i.i.i176 ], [ %conv5.i.i.i178, %cond.false.i.i.i179 ], !dbg !6457
  %conv6.i.i.i181 = trunc i32 %cond.i.i.i180 to i16, !dbg !6457
  %conv64 = zext i16 %conv6.i.i.i181 to i32, !dbg !6458
  %79 = load i16, i16* %d, align 2, !dbg !6459
  %conv65 = zext i16 %79 to i32, !dbg !6459
  %cmp66 = icmp sgt i32 %conv64, %conv65, !dbg !6460
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !6461

if.then68:                                        ; preds = %get_unaligned_be16.exit182
  %80 = load i32, i32* %i, align 4, !dbg !6462
  store i32 %80, i32* %s, align 4, !dbg !6463
  br label %if.end69, !dbg !6464

if.end69:                                         ; preds = %if.then68, %get_unaligned_be16.exit182
  br label %for.inc70, !dbg !6465

for.inc70:                                        ; preds = %if.end69
  %81 = load i32, i32* %i, align 4, !dbg !6466
  %inc71 = add i32 %81, 1, !dbg !6466
  store i32 %inc71, i32* %i, align 4, !dbg !6466
  br label %for.cond51, !dbg !6467, !llvm.loop !6468

for.end72:                                        ; preds = %for.cond51
  %82 = load i32, i32* %p, align 4, !dbg !6470
  %shl73 = shl i32 %82, 4, !dbg !6471
  %83 = load i32, i32* %s, align 4, !dbg !6472
  %or74 = or i32 %shl73, %83, !dbg !6473
  %conv75 = trunc i32 %or74 to i8, !dbg !6474
  %84 = load i32, i32* %c, align 4, !dbg !6475
  %inc76 = add i32 %84, 1, !dbg !6475
  store i32 %inc76, i32* %c, align 4, !dbg !6475
  %idxprom77 = sext i32 %84 to i64, !dbg !6476
  %arrayidx78 = getelementptr [174 x i8], [174 x i8]* %codes, i64 0, i64 %idxprom77, !dbg !6476
  store i8 %conv75, i8* %arrayidx78, align 1, !dbg !6477
  store i8 0, i8* %repeating, align 1, !dbg !6478
  %85 = load i32, i32* %c, align 4, !dbg !6479
  %div79 = sdiv i32 %85, 3, !dbg !6481
  store i32 %div79, i32* %rep, align 4, !dbg !6482
  br label %for.cond80, !dbg !6483

for.cond80:                                       ; preds = %for.inc106, %for.end72
  %86 = load i32, i32* %rep, align 4, !dbg !6484
  %cmp81 = icmp sge i32 %86, 1, !dbg !6486
  br i1 %cmp81, label %for.body83, label %for.end107, !dbg !6487

for.body83:                                       ; preds = %for.cond80
  %87 = load i32, i32* %c, align 4, !dbg !6488
  %88 = load i32, i32* %rep, align 4, !dbg !6491
  %mul84 = mul i32 %88, 3, !dbg !6492
  %sub85 = sub i32 %87, %mul84, !dbg !6493
  %idxprom86 = sext i32 %sub85 to i64, !dbg !6494
  %arrayidx87 = getelementptr [174 x i8], [174 x i8]* %codes, i64 0, i64 %idxprom86, !dbg !6494
  %89 = load i32, i32* %c, align 4, !dbg !6495
  %90 = load i32, i32* %rep, align 4, !dbg !6496
  %mul88 = mul i32 %90, 2, !dbg !6497
  %sub89 = sub i32 %89, %mul88, !dbg !6498
  %idxprom90 = sext i32 %sub89 to i64, !dbg !6499
  %arrayidx91 = getelementptr [174 x i8], [174 x i8]* %codes, i64 0, i64 %idxprom90, !dbg !6499
  %91 = load i32, i32* %rep, align 4, !dbg !6500
  %conv92 = sext i32 %91 to i64, !dbg !6500
  %call93 = call i32 @memcmp(i8* %arrayidx87, i8* %arrayidx91, i64 %conv92) #8, !dbg !6501
  %tobool94 = icmp ne i32 %call93, 0, !dbg !6501
  br i1 %tobool94, label %if.end105, label %land.lhs.true, !dbg !6502

land.lhs.true:                                    ; preds = %for.body83
  %92 = load i32, i32* %c, align 4, !dbg !6503
  %93 = load i32, i32* %rep, align 4, !dbg !6504
  %sub95 = sub i32 %92, %93, !dbg !6505
  %idxprom96 = sext i32 %sub95 to i64, !dbg !6506
  %arrayidx97 = getelementptr [174 x i8], [174 x i8]* %codes, i64 0, i64 %idxprom96, !dbg !6506
  %94 = load i32, i32* %c, align 4, !dbg !6507
  %95 = load i32, i32* %rep, align 4, !dbg !6508
  %mul98 = mul i32 %95, 2, !dbg !6509
  %sub99 = sub i32 %94, %mul98, !dbg !6510
  %idxprom100 = sext i32 %sub99 to i64, !dbg !6511
  %arrayidx101 = getelementptr [174 x i8], [174 x i8]* %codes, i64 0, i64 %idxprom100, !dbg !6511
  %96 = load i32, i32* %rep, align 4, !dbg !6512
  %call102 = call i32 @cmp_no_trail(i8* %arrayidx97, i8* %arrayidx101, i32 %96) #8, !dbg !6513
  %tobool103 = icmp ne i32 %call102, 0, !dbg !6513
  br i1 %tobool103, label %if.end105, label %if.then104, !dbg !6514

if.then104:                                       ; preds = %land.lhs.true
  store i8 1, i8* %repeating, align 1, !dbg !6515
  br label %for.end107, !dbg !6517

if.end105:                                        ; preds = %land.lhs.true, %for.body83
  br label %for.inc106, !dbg !6518

for.inc106:                                       ; preds = %if.end105
  %97 = load i32, i32* %rep, align 4, !dbg !6519
  %dec = add i32 %97, -1, !dbg !6519
  store i32 %dec, i32* %rep, align 4, !dbg !6519
  br label %for.cond80, !dbg !6520, !llvm.loop !6521

for.end107:                                       ; preds = %if.then104, %for.cond80
  %98 = load i8, i8* %repeating, align 1, !dbg !6523
  %tobool108 = trunc i8 %98 to i1, !dbg !6523
  br i1 %tobool108, label %if.then109, label %if.else138, !dbg !6525

if.then109:                                       ; preds = %for.end107
  call void @llvm.dbg.declare(metadata i32* %leading, metadata !6526, metadata !DIExpression()), !dbg !6528
  %99 = load i32, i32* %c, align 4, !dbg !6529
  %100 = load i32, i32* %rep, align 4, !dbg !6530
  %mul110 = mul i32 %100, 3, !dbg !6531
  %sub111 = sub i32 %99, %mul110, !dbg !6532
  store i32 %sub111, i32* %leading, align 4, !dbg !6528
  %101 = load i32, i32* %leading, align 4, !dbg !6533
  %conv112 = sext i32 %101 to i64, !dbg !6533
  %102 = load i32, i32* %rep, align 4, !dbg !6535
  %conv113 = sext i32 %102 to i64, !dbg !6535
  %sub114 = sub i64 58, %conv113, !dbg !6536
  %cmp115 = icmp uge i64 %conv112, %sub114, !dbg !6537
  br i1 %cmp115, label %if.then117, label %if.end119, !dbg !6538

if.then117:                                       ; preds = %if.then109
  %103 = load %struct.rc_dev*, %struct.rc_dev** %rcdev.addr, align 8, !dbg !6539
  %dev118 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %103, i32 0, i32 0, !dbg !6539
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !6539
  store i32 -22, i32* %retval, align 4, !dbg !6541
  br label %return, !dbg !6541

if.end119:                                        ; preds = %if.then109
  %104 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6542
  %codes120 = getelementptr inbounds %struct.code_block, %struct.code_block* %104, i32 0, i32 5, !dbg !6543
  %arraydecay121 = getelementptr inbounds [61 x i8], [61 x i8]* %codes120, i64 0, i64 0, !dbg !6542
  %arraydecay122 = getelementptr inbounds [174 x i8], [174 x i8]* %codes, i64 0, i64 0, !dbg !6544
  %105 = load i32, i32* %leading, align 4, !dbg !6545
  call void @copy_codes(i8* %arraydecay121, i8* %arraydecay122, i32 %105) #8, !dbg !6546
  %106 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6547
  %codes123 = getelementptr inbounds %struct.code_block, %struct.code_block* %106, i32 0, i32 5, !dbg !6548
  %107 = load i32, i32* %leading, align 4, !dbg !6549
  %idxprom124 = sext i32 %107 to i64, !dbg !6547
  %arrayidx125 = getelementptr [61 x i8], [61 x i8]* %codes123, i64 0, i64 %idxprom124, !dbg !6547
  store i8 -126, i8* %arrayidx125, align 1, !dbg !6550
  %108 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6551
  %codes126 = getelementptr inbounds %struct.code_block, %struct.code_block* %108, i32 0, i32 5, !dbg !6552
  %arraydecay127 = getelementptr inbounds [61 x i8], [61 x i8]* %codes126, i64 0, i64 0, !dbg !6551
  %109 = load i32, i32* %leading, align 4, !dbg !6553
  %idx.ext = sext i32 %109 to i64, !dbg !6554
  %add.ptr = getelementptr i8, i8* %arraydecay127, i64 %idx.ext, !dbg !6554
  %add.ptr128 = getelementptr i8, i8* %add.ptr, i64 1, !dbg !6555
  %arraydecay129 = getelementptr inbounds [174 x i8], [174 x i8]* %codes, i64 0, i64 0, !dbg !6556
  %110 = load i32, i32* %leading, align 4, !dbg !6557
  %idx.ext130 = sext i32 %110 to i64, !dbg !6558
  %add.ptr131 = getelementptr i8, i8* %arraydecay129, i64 %idx.ext130, !dbg !6558
  %111 = load i32, i32* %rep, align 4, !dbg !6559
  call void @copy_codes(i8* %add.ptr128, i8* %add.ptr131, i32 %111) #8, !dbg !6560
  %112 = load i32, i32* %leading, align 4, !dbg !6561
  %add132 = add i32 %112, 1, !dbg !6562
  %113 = load i32, i32* %rep, align 4, !dbg !6563
  %add133 = add i32 %add132, %113, !dbg !6564
  store i32 %add133, i32* %c, align 4, !dbg !6565
  %114 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6566
  %codes134 = getelementptr inbounds %struct.code_block, %struct.code_block* %114, i32 0, i32 5, !dbg !6567
  %115 = load i32, i32* %c, align 4, !dbg !6568
  %inc135 = add i32 %115, 1, !dbg !6568
  store i32 %inc135, i32* %c, align 4, !dbg !6568
  %idxprom136 = sext i32 %115 to i64, !dbg !6566
  %arrayidx137 = getelementptr [61 x i8], [61 x i8]* %codes134, i64 0, i64 %idxprom136, !dbg !6566
  store i8 -64, i8* %arrayidx137, align 1, !dbg !6569
  br label %if.end156, !dbg !6570

if.else138:                                       ; preds = %for.end107
  %116 = load i32, i32* %c, align 4, !dbg !6571
  %conv139 = sext i32 %116 to i64, !dbg !6571
  %cmp140 = icmp uge i64 %conv139, 58, !dbg !6574
  br i1 %cmp140, label %if.then142, label %if.end144, !dbg !6575

if.then142:                                       ; preds = %if.else138
  %117 = load %struct.rc_dev*, %struct.rc_dev** %rcdev.addr, align 8, !dbg !6576
  %dev143 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %117, i32 0, i32 0, !dbg !6576
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !6576
  store i32 -22, i32* %retval, align 4, !dbg !6578
  br label %return, !dbg !6578

if.end144:                                        ; preds = %if.else138
  %118 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6579
  %codes145 = getelementptr inbounds %struct.code_block, %struct.code_block* %118, i32 0, i32 5, !dbg !6580
  %arrayidx146 = getelementptr [61 x i8], [61 x i8]* %codes145, i64 0, i64 0, !dbg !6579
  store i8 -126, i8* %arrayidx146, align 1, !dbg !6581
  %119 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6582
  %codes147 = getelementptr inbounds %struct.code_block, %struct.code_block* %119, i32 0, i32 5, !dbg !6583
  %arraydecay148 = getelementptr inbounds [61 x i8], [61 x i8]* %codes147, i64 0, i64 0, !dbg !6582
  %add.ptr149 = getelementptr i8, i8* %arraydecay148, i64 1, !dbg !6584
  %arraydecay150 = getelementptr inbounds [174 x i8], [174 x i8]* %codes, i64 0, i64 0, !dbg !6585
  %120 = load i32, i32* %c, align 4, !dbg !6586
  call void @copy_codes(i8* %add.ptr149, i8* %arraydecay150, i32 %120) #8, !dbg !6587
  %121 = load i32, i32* %c, align 4, !dbg !6588
  %inc151 = add i32 %121, 1, !dbg !6588
  store i32 %inc151, i32* %c, align 4, !dbg !6588
  %122 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6589
  %codes152 = getelementptr inbounds %struct.code_block, %struct.code_block* %122, i32 0, i32 5, !dbg !6590
  %123 = load i32, i32* %c, align 4, !dbg !6591
  %inc153 = add i32 %123, 1, !dbg !6591
  store i32 %inc153, i32* %c, align 4, !dbg !6591
  %idxprom154 = sext i32 %123 to i64, !dbg !6589
  %arrayidx155 = getelementptr [61 x i8], [61 x i8]* %codes152, i64 0, i64 %idxprom154, !dbg !6589
  store i8 -60, i8* %arrayidx155, align 1, !dbg !6592
  br label %if.end156

if.end156:                                        ; preds = %if.end144, %if.end119
  br label %while.cond, !dbg !6593

while.cond:                                       ; preds = %while.body, %if.end156
  %124 = load i32, i32* %c, align 4, !dbg !6594
  %conv157 = sext i32 %124 to i64, !dbg !6594
  %cmp158 = icmp ult i64 %conv157, 61, !dbg !6595
  br i1 %cmp158, label %while.body, label %while.end, !dbg !6593

while.body:                                       ; preds = %while.cond
  %125 = load %struct.code_block*, %struct.code_block** %code_block.addr, align 8, !dbg !6596
  %codes160 = getelementptr inbounds %struct.code_block, %struct.code_block* %125, i32 0, i32 5, !dbg !6597
  %126 = load i32, i32* %c, align 4, !dbg !6598
  %inc161 = add i32 %126, 1, !dbg !6598
  store i32 %inc161, i32* %c, align 4, !dbg !6598
  %idxprom162 = sext i32 %126 to i64, !dbg !6596
  %arrayidx163 = getelementptr [61 x i8], [61 x i8]* %codes160, i64 0, i64 %idxprom162, !dbg !6596
  store i8 -125, i8* %arrayidx163, align 1, !dbg !6599
  br label %while.cond, !dbg !6593, !llvm.loop !6600

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !6602
  br label %return, !dbg !6602

return:                                           ; preds = %while.end, %if.then142, %if.then117, %if.then46, %if.then35, %if.then20, %if.then
  %127 = load i32, i32* %retval, align 4, !dbg !6603
  ret i32 %127, !dbg !6603
}

; Function Attrs: noredzone
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @find_slot(i16* %array, i32 %size, i16 zeroext %val) #2 !dbg !6604 {
entry:
  %val.addr.i = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr.i, metadata !5534, metadata !DIExpression()), !dbg !6608
  %p.addr.i10 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i10, metadata !5541, metadata !DIExpression()), !dbg !6616
  %p.addr.i.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i.i, metadata !5867, metadata !DIExpression()), !dbg !6617
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !5890, metadata !DIExpression()), !dbg !6621
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !5892, metadata !DIExpression()), !dbg !6622
  %retval = alloca i32, align 4
  %array.addr = alloca i16*, align 8
  %size.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store i16* %array, i16** %array.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %array.addr, metadata !6623, metadata !DIExpression()), !dbg !6624
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6625, metadata !DIExpression()), !dbg !6626
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !6627, metadata !DIExpression()), !dbg !6628
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6629, metadata !DIExpression()), !dbg !6630
  store i32 0, i32* %i, align 4, !dbg !6631
  br label %for.cond, !dbg !6632

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6633
  %1 = load i32, i32* %size.addr, align 4, !dbg !6634
  %cmp = icmp ult i32 %0, %1, !dbg !6635
  br i1 %cmp, label %for.body, label %for.end, !dbg !6636

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %array.addr, align 8, !dbg !6637
  %3 = load i32, i32* %i, align 4, !dbg !6638
  %idxprom = sext i32 %3 to i64, !dbg !6637
  %arrayidx = getelementptr i16, i16* %2, i64 %idxprom, !dbg !6637
  %4 = bitcast i16* %arrayidx to i8*, !dbg !6639
  store i8* %4, i8** %p.addr.i, align 8
  %5 = load i8*, i8** %p.addr.i, align 8, !dbg !6640
  %6 = bitcast i8* %5 to i16*, !dbg !6641
  store i16* %6, i16** %p.addr.i.i, align 8
  %7 = load i16*, i16** %p.addr.i.i, align 8, !dbg !6642
  store i16* %7, i16** %p.addr.i.i.i, align 8
  %8 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6643
  %9 = load i16, i16* %8, align 2, !dbg !6643
  %10 = call i1 @llvm.is.constant.i16(i16 %9) #10, !dbg !6643
  br i1 %10, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !6643

cond.true.i.i.i:                                  ; preds = %for.body
  %11 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6643
  %12 = load i16, i16* %11, align 2, !dbg !6643
  %conv.i.i.i = zext i16 %12 to i32, !dbg !6643
  %and.i.i.i = and i32 %conv.i.i.i, 255, !dbg !6643
  %shl.i.i.i = shl i32 %and.i.i.i, 8, !dbg !6643
  %13 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6643
  %14 = load i16, i16* %13, align 2, !dbg !6643
  %conv1.i.i.i = zext i16 %14 to i32, !dbg !6643
  %and2.i.i.i = and i32 %conv1.i.i.i, 65280, !dbg !6643
  %shr.i.i.i = ashr i32 %and2.i.i.i, 8, !dbg !6643
  %or.i.i.i = or i32 %shl.i.i.i, %shr.i.i.i, !dbg !6643
  %conv3.i.i.i = trunc i32 %or.i.i.i to i16, !dbg !6643
  %conv4.i.i.i = zext i16 %conv3.i.i.i to i32, !dbg !6643
  br label %get_unaligned_be16.exit, !dbg !6643

cond.false.i.i.i:                                 ; preds = %for.body
  %15 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !6643
  %16 = load i16, i16* %15, align 2, !dbg !6643
  %call.i.i.i = call zeroext i16 @__fswab16(i16 zeroext %16) #12, !dbg !6643
  %conv5.i.i.i = zext i16 %call.i.i.i to i32, !dbg !6643
  br label %get_unaligned_be16.exit, !dbg !6643

get_unaligned_be16.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i ], [ %conv5.i.i.i, %cond.false.i.i.i ], !dbg !6643
  %conv6.i.i.i = trunc i32 %cond.i.i.i to i16, !dbg !6643
  %conv = zext i16 %conv6.i.i.i to i32, !dbg !6644
  %17 = load i16, i16* %val.addr, align 2, !dbg !6645
  %conv1 = zext i16 %17 to i32, !dbg !6645
  %cmp2 = icmp eq i32 %conv, %conv1, !dbg !6646
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6647

if.then:                                          ; preds = %get_unaligned_be16.exit
  %18 = load i32, i32* %i, align 4, !dbg !6648
  store i32 %18, i32* %retval, align 4, !dbg !6650
  br label %return, !dbg !6650

if.else:                                          ; preds = %get_unaligned_be16.exit
  %19 = load i16*, i16** %array.addr, align 8, !dbg !6651
  %20 = load i32, i32* %i, align 4, !dbg !6652
  %idxprom4 = sext i32 %20 to i64, !dbg !6651
  %arrayidx5 = getelementptr i16, i16* %19, i64 %idxprom4, !dbg !6651
  %21 = load i16, i16* %arrayidx5, align 2, !dbg !6651
  %tobool = icmp ne i16 %21, 0, !dbg !6651
  br i1 %tobool, label %if.end, label %if.then6, !dbg !6653

if.then6:                                         ; preds = %if.else
  %22 = load i16, i16* %val.addr, align 2, !dbg !6654
  %23 = load i16*, i16** %array.addr, align 8, !dbg !6655
  %24 = load i32, i32* %i, align 4, !dbg !6656
  %idxprom7 = sext i32 %24 to i64, !dbg !6655
  %arrayidx8 = getelementptr i16, i16* %23, i64 %idxprom7, !dbg !6655
  %25 = bitcast i16* %arrayidx8 to i8*, !dbg !6657
  store i16 %22, i16* %val.addr.i, align 2
  store i8* %25, i8** %p.addr.i10, align 8
  %26 = load i16, i16* %val.addr.i, align 2, !dbg !6658
  %27 = call i1 @llvm.is.constant.i16(i16 %26) #10, !dbg !6658
  br i1 %27, label %cond.true.i, label %cond.false.i, !dbg !6658

cond.true.i:                                      ; preds = %if.then6
  %28 = load i16, i16* %val.addr.i, align 2, !dbg !6658
  %conv.i = zext i16 %28 to i32, !dbg !6658
  %and.i = and i32 %conv.i, 255, !dbg !6658
  %shl.i = shl i32 %and.i, 8, !dbg !6658
  %29 = load i16, i16* %val.addr.i, align 2, !dbg !6658
  %conv1.i = zext i16 %29 to i32, !dbg !6658
  %and2.i = and i32 %conv1.i, 65280, !dbg !6658
  %shr.i = ashr i32 %and2.i, 8, !dbg !6658
  %or.i = or i32 %shl.i, %shr.i, !dbg !6658
  %conv3.i = trunc i32 %or.i to i16, !dbg !6658
  %conv4.i = zext i16 %conv3.i to i32, !dbg !6658
  br label %put_unaligned_be16.exit, !dbg !6658

cond.false.i:                                     ; preds = %if.then6
  %30 = load i16, i16* %val.addr.i, align 2, !dbg !6658
  %call.i = call zeroext i16 @__fswab16(i16 zeroext %30) #12, !dbg !6658
  %conv5.i = zext i16 %call.i to i32, !dbg !6658
  br label %put_unaligned_be16.exit, !dbg !6658

put_unaligned_be16.exit:                          ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %conv4.i, %cond.true.i ], [ %conv5.i, %cond.false.i ], !dbg !6658
  %conv6.i = trunc i32 %cond.i to i16, !dbg !6658
  %31 = load i8*, i8** %p.addr.i10, align 8, !dbg !6659
  %32 = bitcast i8* %31 to i16*, !dbg !6660
  store i16 %conv6.i, i16* %32, align 2, !dbg !6661
  %33 = load i32, i32* %i, align 4, !dbg !6662
  store i32 %33, i32* %retval, align 4, !dbg !6663
  br label %return, !dbg !6663

if.end:                                           ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end
  br label %for.inc, !dbg !6664

for.inc:                                          ; preds = %if.end9
  %34 = load i32, i32* %i, align 4, !dbg !6665
  %inc = add i32 %34, 1, !dbg !6665
  store i32 %inc, i32* %i, align 4, !dbg !6665
  br label %for.cond, !dbg !6666, !llvm.loop !6667

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4, !dbg !6669
  br label %return, !dbg !6669

return:                                           ; preds = %for.end, %put_unaligned_be16.exit, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !6670
  ret i32 %35, !dbg !6670
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cmp_no_trail(i8* %a, i8* %b, i32 %count) #2 !dbg !6671 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !6674, metadata !DIExpression()), !dbg !6675
  store i8* %b, i8** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %b.addr, metadata !6676, metadata !DIExpression()), !dbg !6677
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !6678, metadata !DIExpression()), !dbg !6679
  br label %while.cond, !dbg !6680

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %count.addr, align 4, !dbg !6681
  %dec = add i32 %0, -1, !dbg !6681
  store i32 %dec, i32* %count.addr, align 4, !dbg !6681
  %tobool = icmp ne i32 %dec, 0, !dbg !6680
  br i1 %tobool, label %while.body, label %while.end, !dbg !6680

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %a.addr, align 8, !dbg !6682
  %incdec.ptr = getelementptr i8, i8* %1, i32 1, !dbg !6682
  store i8* %incdec.ptr, i8** %a.addr, align 8, !dbg !6682
  %2 = load i8, i8* %1, align 1, !dbg !6685
  %conv = zext i8 %2 to i32, !dbg !6685
  %3 = load i8*, i8** %b.addr, align 8, !dbg !6686
  %incdec.ptr1 = getelementptr i8, i8* %3, i32 1, !dbg !6686
  store i8* %incdec.ptr1, i8** %b.addr, align 8, !dbg !6686
  %4 = load i8, i8* %3, align 1, !dbg !6687
  %conv2 = zext i8 %4 to i32, !dbg !6687
  %cmp = icmp ne i32 %conv, %conv2, !dbg !6688
  br i1 %cmp, label %if.then, label %if.end, !dbg !6689

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval, align 4, !dbg !6690
  br label %return, !dbg !6690

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !6680, !llvm.loop !6691

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %a.addr, align 8, !dbg !6693
  %6 = load i8, i8* %5, align 1, !dbg !6694
  %conv4 = zext i8 %6 to i32, !dbg !6694
  %and = and i32 %conv4, 240, !dbg !6695
  %7 = load i8*, i8** %b.addr, align 8, !dbg !6696
  %8 = load i8, i8* %7, align 1, !dbg !6697
  %conv5 = zext i8 %8 to i32, !dbg !6697
  %and6 = and i32 %conv5, 240, !dbg !6698
  %sub = sub i32 %and, %and6, !dbg !6699
  store i32 %sub, i32* %retval, align 4, !dbg !6700
  br label %return, !dbg !6700

return:                                           ; preds = %while.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !6701
  ret i32 %9, !dbg !6701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_codes(i8* %dst, i8* %src, i32 %count) #2 !dbg !6702 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %c = alloca i8, align 1
  %last = alloca i8, align 1
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !6705, metadata !DIExpression()), !dbg !6706
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !6707, metadata !DIExpression()), !dbg !6708
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !6709, metadata !DIExpression()), !dbg !6710
  call void @llvm.dbg.declare(metadata i8* %c, metadata !6711, metadata !DIExpression()), !dbg !6712
  call void @llvm.dbg.declare(metadata i8* %last, metadata !6713, metadata !DIExpression()), !dbg !6714
  store i8 -1, i8* %last, align 1, !dbg !6714
  br label %while.cond, !dbg !6715

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %count.addr, align 4, !dbg !6716
  %dec = add i32 %0, -1, !dbg !6716
  store i32 %dec, i32* %count.addr, align 4, !dbg !6716
  %tobool = icmp ne i32 %0, 0, !dbg !6715
  br i1 %tobool, label %while.body, label %while.end, !dbg !6715

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %src.addr, align 8, !dbg !6717
  %incdec.ptr = getelementptr i8, i8* %1, i32 1, !dbg !6717
  store i8* %incdec.ptr, i8** %src.addr, align 8, !dbg !6717
  %2 = load i8, i8* %1, align 1, !dbg !6719
  store i8 %2, i8* %c, align 1, !dbg !6720
  %3 = load i8, i8* %c, align 1, !dbg !6721
  %conv = zext i8 %3 to i32, !dbg !6721
  %and = and i32 %conv, 240, !dbg !6723
  %4 = load i8, i8* %last, align 1, !dbg !6724
  %conv1 = zext i8 %4 to i32, !dbg !6724
  %cmp = icmp eq i32 %and, %conv1, !dbg !6725
  br i1 %cmp, label %if.then, label %if.else, !dbg !6726

if.then:                                          ; preds = %while.body
  %5 = load i8, i8* %c, align 1, !dbg !6727
  %conv3 = zext i8 %5 to i32, !dbg !6727
  %and4 = and i32 %conv3, 15, !dbg !6729
  %or = or i32 112, %and4, !dbg !6730
  %conv5 = trunc i32 %or to i8, !dbg !6731
  %6 = load i8*, i8** %dst.addr, align 8, !dbg !6732
  %incdec.ptr6 = getelementptr i8, i8* %6, i32 1, !dbg !6732
  store i8* %incdec.ptr6, i8** %dst.addr, align 8, !dbg !6732
  store i8 %conv5, i8* %6, align 1, !dbg !6733
  br label %if.end, !dbg !6734

if.else:                                          ; preds = %while.body
  %7 = load i8, i8* %c, align 1, !dbg !6735
  %8 = load i8*, i8** %dst.addr, align 8, !dbg !6737
  %incdec.ptr7 = getelementptr i8, i8* %8, i32 1, !dbg !6737
  store i8* %incdec.ptr7, i8** %dst.addr, align 8, !dbg !6737
  store i8 %7, i8* %8, align 1, !dbg !6738
  %9 = load i8, i8* %c, align 1, !dbg !6739
  %conv8 = zext i8 %9 to i32, !dbg !6739
  %and9 = and i32 %conv8, 240, !dbg !6740
  %conv10 = trunc i32 %and9 to i8, !dbg !6739
  store i8 %conv10, i8* %last, align 1, !dbg !6741
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !6715, !llvm.loop !6742

while.end:                                        ; preds = %while.cond
  ret void, !dbg !6744
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_clientdata(%struct.i2c_client* %client) #2 !dbg !6745 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !6748, metadata !DIExpression()), !dbg !6749
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !6750
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i32 0, i32 4, !dbg !6751
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !6752
  ret i8* %call, !dbg !6753
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6754 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6757, metadata !DIExpression()), !dbg !6758
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6759
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6760
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6760
  ret i8* %1, !dbg !6761
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4677, !4678, !4679, !4680}
!llvm.ident = !{!4681}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_enable_hdpvr", scope: !2, file: !3, line: 57, type: !4674, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !206, globals: !4485, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/i2c/ir-kbd-i2c.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !26, !34, !40, !47, !54, !60, !66, !72, !79, !87, !93, !107, !112, !121, !152, !158, !163, !173}
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
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rc_proto", file: !122, line: 200, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/uapi/linux/lirc.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!124 = !DIEnumerator(name: "RC_PROTO_UNKNOWN", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "RC_PROTO_OTHER", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "RC_PROTO_RC5", value: 2, isUnsigned: true)
!127 = !DIEnumerator(name: "RC_PROTO_RC5X_20", value: 3, isUnsigned: true)
!128 = !DIEnumerator(name: "RC_PROTO_RC5_SZ", value: 4, isUnsigned: true)
!129 = !DIEnumerator(name: "RC_PROTO_JVC", value: 5, isUnsigned: true)
!130 = !DIEnumerator(name: "RC_PROTO_SONY12", value: 6, isUnsigned: true)
!131 = !DIEnumerator(name: "RC_PROTO_SONY15", value: 7, isUnsigned: true)
!132 = !DIEnumerator(name: "RC_PROTO_SONY20", value: 8, isUnsigned: true)
!133 = !DIEnumerator(name: "RC_PROTO_NEC", value: 9, isUnsigned: true)
!134 = !DIEnumerator(name: "RC_PROTO_NECX", value: 10, isUnsigned: true)
!135 = !DIEnumerator(name: "RC_PROTO_NEC32", value: 11, isUnsigned: true)
!136 = !DIEnumerator(name: "RC_PROTO_SANYO", value: 12, isUnsigned: true)
!137 = !DIEnumerator(name: "RC_PROTO_MCIR2_KBD", value: 13, isUnsigned: true)
!138 = !DIEnumerator(name: "RC_PROTO_MCIR2_MSE", value: 14, isUnsigned: true)
!139 = !DIEnumerator(name: "RC_PROTO_RC6_0", value: 15, isUnsigned: true)
!140 = !DIEnumerator(name: "RC_PROTO_RC6_6A_20", value: 16, isUnsigned: true)
!141 = !DIEnumerator(name: "RC_PROTO_RC6_6A_24", value: 17, isUnsigned: true)
!142 = !DIEnumerator(name: "RC_PROTO_RC6_6A_32", value: 18, isUnsigned: true)
!143 = !DIEnumerator(name: "RC_PROTO_RC6_MCE", value: 19, isUnsigned: true)
!144 = !DIEnumerator(name: "RC_PROTO_SHARP", value: 20, isUnsigned: true)
!145 = !DIEnumerator(name: "RC_PROTO_XMP", value: 21, isUnsigned: true)
!146 = !DIEnumerator(name: "RC_PROTO_CEC", value: 22, isUnsigned: true)
!147 = !DIEnumerator(name: "RC_PROTO_IMON", value: 23, isUnsigned: true)
!148 = !DIEnumerator(name: "RC_PROTO_RCMM12", value: 24, isUnsigned: true)
!149 = !DIEnumerator(name: "RC_PROTO_RCMM24", value: 25, isUnsigned: true)
!150 = !DIEnumerator(name: "RC_PROTO_RCMM32", value: 26, isUnsigned: true)
!151 = !DIEnumerator(name: "RC_PROTO_XBOX_DVD", value: 27, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rc_driver_type", file: !153, line: 27, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/media/rc-core.h", directory: "/home/lizy2001/genbc/linux")
!154 = !{!155, !156, !157}
!155 = !DIEnumerator(name: "RC_DRIVER_SCANCODE", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "RC_DRIVER_IR_RAW", value: 1, isUnsigned: true)
!157 = !DIEnumerator(name: "RC_DRIVER_IR_RAW_TX", value: 2, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 10, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ir_kbd_get_key_fn", file: !164, line: 33, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/media/i2c/ir-kbd-i2c.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !167, !168, !169, !170, !171, !172}
!166 = !DIEnumerator(name: "IR_KBD_GET_KEY_CUSTOM", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "IR_KBD_GET_KEY_PIXELVIEW", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "IR_KBD_GET_KEY_HAUP", value: 2, isUnsigned: true)
!169 = !DIEnumerator(name: "IR_KBD_GET_KEY_KNC1", value: 3, isUnsigned: true)
!170 = !DIEnumerator(name: "IR_KBD_GET_KEY_FUSIONHDTV", value: 4, isUnsigned: true)
!171 = !DIEnumerator(name: "IR_KBD_GET_KEY_HAUP_XVR", value: 5, isUnsigned: true)
!172 = !DIEnumerator(name: "IR_KBD_GET_KEY_AVERMEDIA_CARDBUS", value: 6, isUnsigned: true)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !174, line: 30, baseType: !175, size: 64, elements: !176)
!174 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!175 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!177 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!178 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!179 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!180 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!181 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!182 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!183 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!184 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!185 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!186 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!187 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!188 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!189 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!190 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!191 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!192 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!193 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!194 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!195 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!196 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!197 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!198 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!199 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!200 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!201 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!202 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!203 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!204 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!205 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!206 = !{!207, !210, !212, !213, !219, !216, !220, !222, !229, !230, !259, !175, !214, !4483, !4484, !340}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !209, line: 76, flags: DIFlagFwdDecl)
!209 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !211, line: 148, baseType: !7)
!211 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!212 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !215, line: 30, baseType: !216)
!215 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !217, line: 24, baseType: !218)
!217 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!218 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !211, line: 178, size: 128, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !211, line: 179, baseType: !224, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !225, file: !211, line: 179, baseType: !224, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IR_i2c", file: !164, line: 11, size: 1600, elements: !232)
!232 = !{!233, !234, !4075, !4463, !4464, !4465, !4472, !4473, !4479, !4480, !4481, !4482}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ir_codes", scope: !231, file: !164, line: 12, baseType: !220, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !231, file: !164, line: 13, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !108, line: 314, size: 6016, elements: !237)
!237 = !{!238, !239, !240, !244, !4071, !4072, !4073, !4074}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !108, line: 315, baseType: !218, size: 16)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !236, file: !108, line: 325, baseType: !218, size: 16, offset: 16)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !108, line: 328, baseType: !241, size: 160, offset: 32)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 160, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 20)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !236, file: !108, line: 329, baseType: !245, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !108, line: 695, size: 7552, elements: !247)
!247 = !{!248, !249, !250, !295, !296, !310, !3464, !3465, !3466, !3467, !4018, !4019, !4020, !4024, !4025, !4026, !4027, !4059, !4070}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !246, file: !108, line: 696, baseType: !207, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !246, file: !108, line: 697, baseType: !7, size: 32, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !246, file: !108, line: 698, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !108, line: 519, size: 320, elements: !254)
!254 = !{!255, !271, !272, !288, !289}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !253, file: !108, line: 529, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !245, !260, !259}
!259 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !262, line: 69, size: 128, elements: !263)
!262 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!263 = !{!264, !265, !266, !267}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !261, file: !262, line: 70, baseType: !216, size: 16)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !262, line: 71, baseType: !216, size: 16, offset: 16)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !261, file: !262, line: 84, baseType: !216, size: 16, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !261, file: !262, line: 85, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !217, line: 21, baseType: !270)
!270 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !253, file: !108, line: 531, baseType: !256, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !253, file: !108, line: 533, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!259, !245, !276, !218, !221, !278, !259, !279}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !277, line: 19, baseType: !216)
!277 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !277, line: 17, baseType: !269)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !262, line: 135, size: 272, elements: !281)
!281 = !{!282, !283, !284}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !280, file: !262, line: 136, baseType: !269, size: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !280, file: !262, line: 137, baseType: !216, size: 16)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !280, file: !262, line: 138, baseType: !285, size: 272)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 272, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 34)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !253, file: !108, line: 536, baseType: !273, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !253, file: !108, line: 541, baseType: !290, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!293, !245}
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !277, line: 21, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !217, line: 27, baseType: !7)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !246, file: !108, line: 699, baseType: !229, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !246, file: !108, line: 702, baseType: !297, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !108, line: 557, size: 192, elements: !300)
!300 = !{!301, !305, !309}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !299, file: !108, line: 558, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !245, !7}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !299, file: !108, line: 559, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!259, !245, !7}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !299, file: !108, line: 560, baseType: !302, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !246, file: !108, line: 703, baseType: !311, size: 192, offset: 320)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !312, line: 30, size: 192, elements: !313)
!312 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!313 = !{!314, !324, !339}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !311, file: !312, line: 31, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !316, line: 29, baseType: !317)
!316 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !316, line: 20, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !317, file: !316, line: 21, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !321, line: 25, baseType: !322)
!321 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 25, elements: !323)
!323 = !{}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !311, file: !312, line: 32, baseType: !325, size: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !326, line: 125, size: 128, elements: !327)
!326 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!327 = !{!328, !338}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !325, file: !326, line: 126, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !326, line: 31, size: 64, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !329, file: !326, line: 32, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !326, line: 24, size: 192, align: 64, elements: !334)
!334 = !{!335, !336, !337}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !333, file: !326, line: 25, baseType: !212, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !333, file: !326, line: 26, baseType: !332, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !333, file: !326, line: 27, baseType: !332, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !325, file: !326, line: 127, baseType: !332, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !311, file: !312, line: 33, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !342, line: 640, size: 48640, elements: !343)
!342 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!343 = !{!344, !350, !352, !353, !363, !364, !365, !366, !367, !368, !369, !370, !374, !395, !406, !498, !499, !500, !511, !512, !514, !515, !2773, !2774, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2851, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2866, !2867, !2868, !2870, !2871, !2872, !2873, !2874, !2875, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2899, !2904, !2905, !2906, !2907, !2908, !2910, !2913, !2916, !2919, !2922, !2926, !3027, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3073, !3074, !3075, !3076, !3077, !3082, !3083, !3084, !3087, !3088, !3091, !3094, !3097, !3098, !3130, !3133, !3134, !3213, !3214, !3217, !3218, !3221, !3222, !3223, !3227, !3228, !3229, !3242, !3243, !3244, !3254, !3259, !3260, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !341, file: !342, line: 646, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !346, line: 56, size: 128, elements: !347)
!346 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !346, line: 57, baseType: !212, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !345, file: !346, line: 58, baseType: !293, size: 32, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !341, file: !342, line: 649, baseType: !351, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !175)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !341, file: !342, line: 657, baseType: !229, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !341, file: !342, line: 658, baseType: !354, size: 32, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !355, line: 113, baseType: !356)
!355 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !355, line: 111, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !356, file: !355, line: 112, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !211, line: 168, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !211, line: 166, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !360, file: !211, line: 167, baseType: !259, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !342, line: 660, baseType: !7, size: 32, offset: 288)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !341, file: !342, line: 661, baseType: !7, size: 32, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !341, file: !342, line: 684, baseType: !259, size: 32, offset: 352)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !341, file: !342, line: 686, baseType: !259, size: 32, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !341, file: !342, line: 687, baseType: !259, size: 32, offset: 416)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !341, file: !342, line: 688, baseType: !259, size: 32, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !341, file: !342, line: 689, baseType: !7, size: 32, offset: 480)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !341, file: !342, line: 691, baseType: !371, size: 64, offset: 512)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !342, line: 691, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !341, file: !342, line: 692, baseType: !375, size: 832, offset: 576)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !342, line: 451, size: 832, elements: !376)
!376 = !{!377, !382, !383, !384, !385, !389, !390, !391, !392, !393}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !375, file: !342, line: 453, baseType: !378, size: 128)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !342, line: 325, size: 128, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !378, file: !342, line: 326, baseType: !212, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !378, file: !342, line: 327, baseType: !293, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !375, file: !342, line: 454, baseType: !333, size: 192, align: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !375, file: !342, line: 455, baseType: !225, size: 128, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !375, file: !342, line: 456, baseType: !7, size: 32, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !375, file: !342, line: 458, baseType: !386, size: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !277, line: 23, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !217, line: 31, baseType: !388)
!388 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !375, file: !342, line: 459, baseType: !386, size: 64, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !375, file: !342, line: 460, baseType: !386, size: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !375, file: !342, line: 461, baseType: !386, size: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !375, file: !342, line: 463, baseType: !386, size: 64, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !375, file: !342, line: 465, baseType: !394, offset: 832)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !342, line: 415, elements: !323)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !341, file: !342, line: 693, baseType: !396, size: 384, offset: 1408)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !342, line: 489, size: 384, elements: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !404}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !396, file: !342, line: 490, baseType: !225, size: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !396, file: !342, line: 491, baseType: !212, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !396, file: !342, line: 492, baseType: !212, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !396, file: !342, line: 493, baseType: !7, size: 32, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !396, file: !342, line: 494, baseType: !218, size: 16, offset: 288)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !396, file: !342, line: 495, baseType: !218, size: 16, offset: 304)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !396, file: !342, line: 497, baseType: !405, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !341, file: !342, line: 697, baseType: !407, size: 1792, offset: 1792)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !342, line: 507, size: 1792, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !419, !420, !421, !422, !423, !424, !425, !495, !496}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !407, file: !342, line: 508, baseType: !333, size: 192, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !407, file: !342, line: 515, baseType: !386, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !407, file: !342, line: 516, baseType: !386, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !407, file: !342, line: 517, baseType: !386, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !407, file: !342, line: 518, baseType: !386, size: 64, offset: 384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !407, file: !342, line: 519, baseType: !386, size: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !407, file: !342, line: 526, baseType: !416, size: 64, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !277, line: 22, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !217, line: 30, baseType: !418)
!418 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !407, file: !342, line: 527, baseType: !386, size: 64, offset: 576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !342, line: 528, baseType: !7, size: 32, offset: 640)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !407, file: !342, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !407, file: !342, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !407, file: !342, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !407, file: !342, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !407, file: !342, line: 563, baseType: !426, size: 512, offset: 704)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !427)
!427 = !{!428, !436, !437, !442, !491, !492, !493, !494}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !426, file: !6, line: 119, baseType: !429, size: 256)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !430, line: 9, size: 256, elements: !431)
!430 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !429, file: !430, line: 10, baseType: !333, size: 192, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !429, file: !430, line: 11, baseType: !434, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !435, line: 29, baseType: !416)
!435 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !426, file: !6, line: 120, baseType: !434, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !426, file: !6, line: 121, baseType: !438, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!5, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !426, file: !6, line: 122, baseType: !443, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !445)
!445 = !{!446, !466, !467, !471, !481, !482, !486, !490}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !444, file: !6, line: 160, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !448, file: !6, line: 215, baseType: !315)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !448, file: !6, line: 216, baseType: !7, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !448, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !448, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !448, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !448, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !448, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !448, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !448, file: !6, line: 233, baseType: !434, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !448, file: !6, line: 234, baseType: !441, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !448, file: !6, line: 235, baseType: !434, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !448, file: !6, line: 236, baseType: !441, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !448, file: !6, line: 237, baseType: !463, size: 4096, offset: 512)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 4096, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 8)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !444, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !444, file: !6, line: 162, baseType: !468, size: 32, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !211, line: 27, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !470, line: 96, baseType: !259)
!470 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!471 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !444, file: !6, line: 163, baseType: !472, size: 32, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !473, line: 276, baseType: !474)
!473 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !473, line: 276, size: 32, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !474, file: !473, line: 276, baseType: !477, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !473, line: 70, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !473, line: 65, size: 32, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !478, file: !473, line: 66, baseType: !7, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !444, file: !6, line: 164, baseType: !441, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !444, file: !6, line: 165, baseType: !483, size: 128, offset: 256)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !430, line: 14, size: 128, elements: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !483, file: !430, line: 15, baseType: !325, size: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !444, file: !6, line: 166, baseType: !487, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!434}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !444, file: !6, line: 167, baseType: !434, size: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !426, file: !6, line: 123, baseType: !278, size: 8, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !426, file: !6, line: 124, baseType: !278, size: 8, offset: 456)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !426, file: !6, line: 125, baseType: !278, size: 8, offset: 464)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !426, file: !6, line: 126, baseType: !278, size: 8, offset: 472)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !407, file: !342, line: 572, baseType: !426, size: 512, offset: 1216)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !407, file: !342, line: 580, baseType: !497, size: 64, offset: 1728)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !341, file: !342, line: 721, baseType: !7, size: 32, offset: 3584)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !341, file: !342, line: 722, baseType: !259, size: 32, offset: 3616)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !341, file: !342, line: 723, baseType: !501, size: 64, offset: 3648)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !504, line: 17, baseType: !505)
!504 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !504, line: 17, size: 64, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !505, file: !504, line: 17, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 64, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 1)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !341, file: !342, line: 724, baseType: !503, size: 64, offset: 3712)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !341, file: !342, line: 749, baseType: !513, offset: 3776)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !342, line: 290, elements: !323)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !341, file: !342, line: 751, baseType: !225, size: 128, offset: 3776)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !341, file: !342, line: 757, baseType: !516, size: 64, offset: 3904)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !518, line: 388, size: 7296, elements: !519)
!518 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!519 = !{!520, !2769}
!520 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !518, line: 389, baseType: !521, size: 7296)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !517, file: !518, line: 389, size: 7296, elements: !522)
!522 = !{!523, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2692, !2698, !2701, !2740, !2741, !2753, !2754, !2757, !2758, !2759, !2762, !2763, !2764, !2767, !2768}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !521, file: !518, line: 390, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !518, line: 305, size: 1472, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !542, !543, !548, !549, !552, !2638, !2639, !2640, !2641, !2642}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !525, file: !518, line: 308, baseType: !212, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !525, file: !518, line: 309, baseType: !212, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !525, file: !518, line: 313, baseType: !524, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !525, file: !518, line: 313, baseType: !524, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !525, file: !518, line: 315, baseType: !333, size: 192, align: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !525, file: !518, line: 323, baseType: !212, size: 64, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !525, file: !518, line: 327, baseType: !516, size: 64, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !525, file: !518, line: 333, baseType: !535, size: 64, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !536, line: 284, baseType: !537)
!536 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !536, line: 284, size: 64, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !537, file: !536, line: 284, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !541, line: 19, baseType: !212)
!541 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!542 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !525, file: !518, line: 334, baseType: !212, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !525, file: !518, line: 343, baseType: !544, size: 256, offset: 704)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !525, file: !518, line: 340, size: 256, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !544, file: !518, line: 341, baseType: !333, size: 192, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !544, file: !518, line: 342, baseType: !212, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !525, file: !518, line: 351, baseType: !225, size: 128, offset: 960)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !525, file: !518, line: 353, baseType: !550, size: 64, offset: 1088)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !518, line: 353, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !525, file: !518, line: 356, baseType: !553, size: 64, offset: 1152)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !55, line: 557, size: 832, elements: !556)
!556 = !{!557, !561, !562, !566, !570, !2612, !2616, !2620, !2624, !2625, !2626, !2630, !2634}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !555, file: !55, line: 558, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !524}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !555, file: !55, line: 559, baseType: !558, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !555, file: !55, line: 560, baseType: !563, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!259, !524, !212}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !555, file: !55, line: 561, baseType: !567, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!259, !524}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !555, file: !55, line: 562, baseType: !571, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !518, line: 682, baseType: !7)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !55, line: 508, size: 768, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !590, !597, !603, !2606, !2607, !2609, !2611}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !576, file: !55, line: 509, baseType: !524, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !55, line: 510, baseType: !7, size: 32, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !576, file: !55, line: 511, baseType: !210, size: 32, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !576, file: !55, line: 512, baseType: !212, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !576, file: !55, line: 513, baseType: !212, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !576, file: !55, line: 514, baseType: !584, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !536, line: 385, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 385, size: 64, elements: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !586, file: !536, line: 385, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !541, line: 15, baseType: !212)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !576, file: !55, line: 516, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !536, line: 359, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 359, size: 64, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !593, file: !536, line: 359, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !541, line: 16, baseType: !212)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !576, file: !55, line: 519, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !541, line: 21, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !541, line: 21, size: 64, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !599, file: !541, line: 21, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !541, line: 14, baseType: !212)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !576, file: !55, line: 521, baseType: !604, size: 64, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !518, line: 68, size: 512, align: 128, elements: !606)
!606 = !{!607, !608, !2598, !2605}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !518, line: 69, baseType: !212, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !518, line: 77, baseType: !609, size: 320, offset: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !518, line: 77, size: 320, elements: !610)
!610 = !{!611, !2459, !2464, !2492, !2500, !2506, !2519, !2597}
!611 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !518, line: 78, baseType: !612, size: 320)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !518, line: 78, size: 320, elements: !613)
!613 = !{!614, !615, !2457, !2458}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !612, file: !518, line: 84, baseType: !225, size: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !612, file: !518, line: 86, baseType: !616, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !18, line: 451, size: 1216, align: 64, elements: !618)
!618 = !{!619, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2452, !2453, !2454, !2455, !2456}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !617, file: !18, line: 452, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !18, line: 610, size: 4224, elements: !622)
!622 = !{!623, !625, !626, !634, !641, !642, !1968, !1969, !1970, !1971, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2012, !2020, !2021, !2022, !2346, !2347, !2348, !2349}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !621, file: !18, line: 611, baseType: !624, size: 16)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !211, line: 19, baseType: !218)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !621, file: !18, line: 612, baseType: !218, size: 16, offset: 16)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !621, file: !18, line: 613, baseType: !627, size: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !628, line: 23, baseType: !629)
!628 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !628, line: 21, size: 32, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !629, file: !628, line: 22, baseType: !632, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !211, line: 32, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !470, line: 49, baseType: !7)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !621, file: !18, line: 614, baseType: !635, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !628, line: 28, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !628, line: 26, size: 32, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !636, file: !628, line: 27, baseType: !639, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !211, line: 33, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !470, line: 50, baseType: !7)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !621, file: !18, line: 615, baseType: !7, size: 32, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !621, file: !18, line: 622, baseType: !643, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !18, line: 1864, size: 1536, align: 512, elements: !646)
!646 = !{!647, !1329, !1342, !1346, !1352, !1356, !1360, !1364, !1368, !1372, !1376, !1377, !1381, !1385, !1918, !1944, !1948, !1954, !1959, !1963, !1964}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !645, file: !18, line: 1865, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!651, !620, !651, !7}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !653, line: 89, size: 1536, elements: !654)
!653 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!654 = !{!655, !656, !661, !669, !670, !685, !686, !690, !709, !781, !1313, !1314, !1315, !1321, !1322, !1323}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !652, file: !653, line: 91, baseType: !7, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !652, file: !653, line: 92, baseType: !657, size: 32, offset: 32)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !473, line: 277, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !473, line: 277, size: 32, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !658, file: !473, line: 277, baseType: !477, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !652, file: !653, line: 93, baseType: !662, size: 128, offset: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !663, line: 38, size: 128, elements: !664)
!663 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!664 = !{!665, !667}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !662, file: !663, line: 39, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !662, file: !663, line: 39, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !652, file: !653, line: 94, baseType: !651, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !652, file: !653, line: 95, baseType: !671, size: 128, offset: 256)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !653, line: 47, size: 128, elements: !672)
!672 = !{!673, !682}
!673 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !653, line: 48, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !653, line: 48, size: 64, elements: !675)
!675 = !{!676, !681}
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !653, line: 49, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !653, line: 49, size: 64, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !677, file: !653, line: 50, baseType: !293, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !677, file: !653, line: 50, baseType: !293, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !674, file: !653, line: 52, baseType: !386, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !671, file: !653, line: 54, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !652, file: !653, line: 96, baseType: !620, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !652, file: !653, line: 98, baseType: !687, size: 256, offset: 448)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 256, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !652, file: !653, line: 101, baseType: !691, size: 32, offset: 704)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !692, line: 25, size: 32, elements: !693)
!692 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !692, line: 26, baseType: !695, size: 32)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !692, line: 26, size: 32, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !692, line: 30, baseType: !698, size: 32)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !692, line: 30, size: 32, elements: !699)
!699 = !{!700, !708}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !698, file: !692, line: 31, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !316, line: 83, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !316, line: 71, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !316, line: 72, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !702, file: !316, line: 72, elements: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !705, file: !316, line: 73, baseType: !317)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !698, file: !692, line: 32, baseType: !259, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !652, file: !653, line: 102, baseType: !710, size: 64, offset: 768)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !653, line: 135, size: 1024, align: 512, elements: !713)
!713 = !{!714, !718, !719, !726, !734, !738, !742, !746, !747, !751, !755, !767, !775}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !712, file: !653, line: 136, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!259, !651, !7}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !712, file: !653, line: 137, baseType: !715, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !712, file: !653, line: 138, baseType: !720, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!259, !723, !725}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !712, file: !653, line: 139, baseType: !727, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!259, !723, !7, !730, !732}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !712, file: !653, line: 141, baseType: !735, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!259, !723}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !712, file: !653, line: 142, baseType: !739, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!259, !651}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !712, file: !653, line: 143, baseType: !743, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !651}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !712, file: !653, line: 144, baseType: !743, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !712, file: !653, line: 145, baseType: !748, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !651, !620}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !712, file: !653, line: 146, baseType: !752, size: 64, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!220, !651, !220, !259}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !712, file: !653, line: 147, baseType: !756, size: 64, offset: 640)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!759, !761}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !653, line: 18, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !763, line: 8, size: 128, elements: !764)
!763 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !762, file: !763, line: 9, baseType: !759, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !762, file: !763, line: 10, baseType: !651, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !712, file: !653, line: 148, baseType: !768, size: 64, offset: 704)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!259, !771, !773}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !211, line: 30, baseType: !774)
!774 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !712, file: !653, line: 149, baseType: !776, size: 64, offset: 768)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!651, !651, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !652, file: !653, line: 103, baseType: !782, size: 64, offset: 832)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !18, line: 1416, size: 9472, elements: !784)
!784 = !{!785, !786, !789, !790, !791, !794, !843, !925, !1021, !1104, !1108, !1109, !1110, !1111, !1112, !1120, !1121, !1122, !1127, !1131, !1132, !1135, !1138, !1141, !1142, !1143, !1184, !1225, !1226, !1227, !1228, !1229, !1230, !1233, !1235, !1244, !1245, !1247, !1248, !1249, !1250, !1251, !1266, !1267, !1268, !1269, !1272, !1275, !1276, !1279, !1294, !1295, !1296, !1307, !1308, !1309, !1310, !1311, !1312}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !783, file: !18, line: 1417, baseType: !225, size: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !783, file: !18, line: 1418, baseType: !787, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !211, line: 16, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !211, line: 13, baseType: !293)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !783, file: !18, line: 1419, baseType: !270, size: 8, offset: 160)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !783, file: !18, line: 1420, baseType: !212, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !783, file: !18, line: 1421, baseType: !792, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !211, line: 46, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !470, line: 88, baseType: !418)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !783, file: !18, line: 1422, baseType: !795, size: 64, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !18, line: 2228, size: 576, elements: !797)
!797 = !{!798, !799, !800, !807, !811, !815, !819, !820, !821, !831, !834, !835, !836, !840, !841, !842}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !796, file: !18, line: 2229, baseType: !730, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !796, file: !18, line: 2230, baseType: !259, size: 32, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !796, file: !18, line: 2238, baseType: !801, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!259, !804}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !806, line: 28, flags: DIFlagFwdDecl)
!806 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!807 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !796, file: !18, line: 2239, baseType: !808, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !810)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !18, line: 70, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !796, file: !18, line: 2240, baseType: !812, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!651, !795, !259, !730, !229}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !796, file: !18, line: 2242, baseType: !816, size: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !782}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !796, file: !18, line: 2243, baseType: !207, size: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !796, file: !18, line: 2244, baseType: !795, size: 64, offset: 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !796, file: !18, line: 2245, baseType: !822, size: 64, offset: 512)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !211, line: 182, size: 64, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !822, file: !211, line: 183, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !211, line: 186, size: 128, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !826, file: !211, line: 187, baseType: !825, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !826, file: !211, line: 187, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !796, file: !18, line: 2247, baseType: !832, offset: 576)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !833, line: 187, elements: !323)
!833 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!834 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !796, file: !18, line: 2248, baseType: !832, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !796, file: !18, line: 2249, baseType: !832, offset: 576)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !796, file: !18, line: 2250, baseType: !837, offset: 576)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 3)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !796, file: !18, line: 2252, baseType: !832, offset: 576)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !796, file: !18, line: 2253, baseType: !832, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !796, file: !18, line: 2254, baseType: !832, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !783, file: !18, line: 1423, baseType: !844, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !18, line: 1935, size: 1472, elements: !847)
!847 = !{!848, !852, !856, !857, !861, !867, !871, !872, !873, !877, !881, !882, !883, !884, !890, !895, !896, !902, !903, !904, !905, !909, !924}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !846, file: !18, line: 1936, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!620, !782}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !846, file: !18, line: 1937, baseType: !853, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !620}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !846, file: !18, line: 1938, baseType: !853, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !846, file: !18, line: 1940, baseType: !858, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !620, !259}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !846, file: !18, line: 1941, baseType: !862, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!259, !620, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !55, line: 40, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !846, file: !18, line: 1942, baseType: !868, size: 64, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!259, !620}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !846, file: !18, line: 1943, baseType: !853, size: 64, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !846, file: !18, line: 1944, baseType: !816, size: 64, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !846, file: !18, line: 1945, baseType: !874, size: 64, offset: 512)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!259, !782, !259}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !846, file: !18, line: 1946, baseType: !878, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!259, !782}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !846, file: !18, line: 1947, baseType: !878, size: 64, offset: 640)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !846, file: !18, line: 1948, baseType: !878, size: 64, offset: 704)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !846, file: !18, line: 1949, baseType: !878, size: 64, offset: 768)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !846, file: !18, line: 1950, baseType: !885, size: 64, offset: 832)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!259, !651, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !18, line: 57, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !846, file: !18, line: 1951, baseType: !891, size: 64, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!259, !782, !894, !220}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !846, file: !18, line: 1952, baseType: !816, size: 64, offset: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !846, file: !18, line: 1954, baseType: !897, size: 64, offset: 1024)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!259, !900, !651}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !536, line: 539, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !846, file: !18, line: 1955, baseType: !897, size: 64, offset: 1088)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !846, file: !18, line: 1956, baseType: !897, size: 64, offset: 1152)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !846, file: !18, line: 1957, baseType: !897, size: 64, offset: 1216)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !846, file: !18, line: 1963, baseType: !906, size: 64, offset: 1280)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!259, !782, !604, !210}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !846, file: !18, line: 1964, baseType: !910, size: 64, offset: 1344)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!175, !782, !913}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !915, line: 12, size: 256, elements: !916)
!915 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!916 = !{!917, !918, !919, !920, !921}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !914, file: !915, line: 13, baseType: !210, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !914, file: !915, line: 16, baseType: !259, size: 32, offset: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !914, file: !915, line: 23, baseType: !212, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !914, file: !915, line: 30, baseType: !212, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !914, file: !915, line: 33, baseType: !922, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !518, line: 27, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !846, file: !18, line: 1966, baseType: !910, size: 64, offset: 1408)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !783, file: !18, line: 1424, baseType: !926, size: 64, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !12, line: 322, size: 704, elements: !929)
!929 = !{!930, !990, !994, !998, !999, !1000, !1001, !1002, !1007, !1012, !1016}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !928, file: !12, line: 323, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!259, !934}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !12, line: 294, size: 1600, elements: !936)
!936 = !{!937, !938, !939, !940, !941, !954, !955, !956, !957, !973, !974, !975}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !935, file: !12, line: 295, baseType: !826, size: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !935, file: !12, line: 296, baseType: !225, size: 128, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !935, file: !12, line: 297, baseType: !225, size: 128, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !935, file: !12, line: 298, baseType: !225, size: 128, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !935, file: !12, line: 299, baseType: !942, size: 192, offset: 512)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !943, line: 53, size: 192, elements: !944)
!943 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!944 = !{!945, !952, !953}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !942, file: !943, line: 54, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !947, line: 13, baseType: !948)
!947 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !211, line: 175, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !211, line: 173, size: 64, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !949, file: !211, line: 174, baseType: !416, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !942, file: !943, line: 55, baseType: !701, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !942, file: !943, line: 59, baseType: !225, size: 128, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !935, file: !12, line: 300, baseType: !701, offset: 704)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !935, file: !12, line: 301, baseType: !359, size: 32, offset: 704)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !935, file: !12, line: 302, baseType: !782, size: 64, offset: 768)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !935, file: !12, line: 303, baseType: !958, size: 64, offset: 832)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !12, line: 68, size: 64, elements: !959)
!959 = !{!960, !972}
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !958, file: !12, line: 69, baseType: !961, size: 32)
!961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !958, file: !12, line: 69, size: 32, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !961, file: !12, line: 70, baseType: !627, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !961, file: !12, line: 71, baseType: !635, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !961, file: !12, line: 72, baseType: !966, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !967, line: 24, baseType: !968)
!967 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !967, line: 22, size: 32, elements: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !968, file: !967, line: 23, baseType: !971, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !967, line: 20, baseType: !633)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !958, file: !12, line: 74, baseType: !11, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !935, file: !12, line: 304, baseType: !792, size: 64, offset: 896)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !935, file: !12, line: 305, baseType: !212, size: 64, offset: 960)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !935, file: !12, line: 306, baseType: !976, size: 576, offset: 1024)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !12, line: 205, size: 576, elements: !977)
!977 = !{!978, !980, !981, !982, !983, !984, !985, !986, !989}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !976, file: !12, line: 206, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !12, line: 66, baseType: !418)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !976, file: !12, line: 207, baseType: !979, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !976, file: !12, line: 208, baseType: !979, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !976, file: !12, line: 209, baseType: !979, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !976, file: !12, line: 210, baseType: !979, size: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !976, file: !12, line: 211, baseType: !979, size: 64, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !976, file: !12, line: 212, baseType: !979, size: 64, offset: 384)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !976, file: !12, line: 213, baseType: !987, size: 64, offset: 448)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !988, line: 8, baseType: !417)
!988 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!989 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !976, file: !12, line: 214, baseType: !987, size: 64, offset: 512)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !928, file: !12, line: 324, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!934, !782, !259}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !928, file: !12, line: 325, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !934}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !928, file: !12, line: 326, baseType: !931, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !928, file: !12, line: 327, baseType: !931, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !928, file: !12, line: 328, baseType: !931, size: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !928, file: !12, line: 329, baseType: !874, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !928, file: !12, line: 332, baseType: !1003, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!1006, !620}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !928, file: !12, line: 333, baseType: !1008, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!259, !620, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !928, file: !12, line: 335, baseType: !1013, size: 64, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!259, !620, !1006}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !928, file: !12, line: 337, baseType: !1017, size: 64, offset: 640)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!259, !782, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !783, file: !18, line: 1425, baseType: !1022, size: 64, offset: 512)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !12, line: 428, size: 704, elements: !1025)
!1025 = !{!1026, !1030, !1031, !1035, !1036, !1037, !1052, !1075, !1079, !1080, !1103}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1024, file: !12, line: 429, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!259, !782, !259, !259, !771}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1024, file: !12, line: 430, baseType: !874, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1024, file: !12, line: 431, baseType: !1032, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!259, !782, !7}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1024, file: !12, line: 432, baseType: !1032, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1024, file: !12, line: 433, baseType: !874, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1024, file: !12, line: 434, baseType: !1038, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!259, !782, !259, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !12, line: 415, size: 256, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1042, file: !12, line: 416, baseType: !259, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1042, file: !12, line: 417, baseType: !7, size: 32, offset: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1042, file: !12, line: 418, baseType: !7, size: 32, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1042, file: !12, line: 420, baseType: !7, size: 32, offset: 96)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1042, file: !12, line: 421, baseType: !7, size: 32, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1042, file: !12, line: 422, baseType: !7, size: 32, offset: 160)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1042, file: !12, line: 423, baseType: !7, size: 32, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1042, file: !12, line: 424, baseType: !7, size: 32, offset: 224)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1024, file: !12, line: 435, baseType: !1053, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!259, !782, !958, !1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !12, line: 343, size: 960, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1057, file: !12, line: 344, baseType: !259, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1057, file: !12, line: 345, baseType: !386, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1057, file: !12, line: 346, baseType: !386, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1057, file: !12, line: 347, baseType: !386, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1057, file: !12, line: 348, baseType: !386, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1057, file: !12, line: 349, baseType: !386, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1057, file: !12, line: 350, baseType: !386, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1057, file: !12, line: 351, baseType: !416, size: 64, offset: 448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1057, file: !12, line: 353, baseType: !416, size: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1057, file: !12, line: 354, baseType: !259, size: 32, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1057, file: !12, line: 355, baseType: !259, size: 32, offset: 608)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1057, file: !12, line: 356, baseType: !386, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1057, file: !12, line: 357, baseType: !386, size: 64, offset: 704)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1057, file: !12, line: 358, baseType: !386, size: 64, offset: 768)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1057, file: !12, line: 359, baseType: !416, size: 64, offset: 832)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1057, file: !12, line: 360, baseType: !259, size: 32, offset: 896)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1024, file: !12, line: 436, baseType: !1076, size: 64, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!259, !782, !1020, !1056}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1024, file: !12, line: 438, baseType: !1053, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1024, file: !12, line: 439, baseType: !1081, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!259, !782, !1084}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !12, line: 409, size: 1408, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1085, file: !12, line: 410, baseType: !7, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1085, file: !12, line: 411, baseType: !1089, size: 1344, offset: 64)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1090, size: 1344, elements: !838)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !12, line: 395, size: 448, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1102}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1090, file: !12, line: 396, baseType: !7, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1090, file: !12, line: 397, baseType: !7, size: 32, offset: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1090, file: !12, line: 399, baseType: !7, size: 32, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1090, file: !12, line: 400, baseType: !7, size: 32, offset: 96)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1090, file: !12, line: 401, baseType: !7, size: 32, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1090, file: !12, line: 402, baseType: !7, size: 32, offset: 160)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1090, file: !12, line: 403, baseType: !7, size: 32, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1090, file: !12, line: 404, baseType: !388, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1090, file: !12, line: 405, baseType: !1101, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !211, line: 126, baseType: !386)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1090, file: !12, line: 406, baseType: !1101, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1024, file: !12, line: 440, baseType: !1032, size: 64, offset: 640)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !783, file: !18, line: 1426, baseType: !1105, size: 64, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !18, line: 49, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !783, file: !18, line: 1427, baseType: !212, size: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !783, file: !18, line: 1428, baseType: !212, size: 64, offset: 704)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !783, file: !18, line: 1429, baseType: !212, size: 64, offset: 768)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !783, file: !18, line: 1430, baseType: !651, size: 64, offset: 832)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !783, file: !18, line: 1431, baseType: !1113, size: 256, offset: 896)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1114, line: 35, size: 256, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1115 = !{!1116, !1117, !1118, !1119}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1113, file: !1114, line: 36, baseType: !946, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1113, file: !1114, line: 42, baseType: !946, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1113, file: !1114, line: 46, baseType: !315, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1113, file: !1114, line: 47, baseType: !225, size: 128, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !783, file: !18, line: 1432, baseType: !259, size: 32, offset: 1152)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !783, file: !18, line: 1433, baseType: !359, size: 32, offset: 1184)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !783, file: !18, line: 1437, baseType: !1123, size: 64, offset: 1216)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1126)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !18, line: 1437, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !783, file: !18, line: 1449, baseType: !1128, size: 64, offset: 1280)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !663, line: 34, size: 64, elements: !1129)
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1128, file: !663, line: 35, baseType: !666, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !783, file: !18, line: 1450, baseType: !225, size: 128, offset: 1344)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !783, file: !18, line: 1451, baseType: !1133, size: 64, offset: 1472)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !18, line: 699, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !783, file: !18, line: 1452, baseType: !1136, size: 64, offset: 1536)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !342, line: 40, flags: DIFlagFwdDecl)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !783, file: !18, line: 1453, baseType: !1139, size: 64, offset: 1600)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !18, line: 1453, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !783, file: !18, line: 1454, baseType: !826, size: 128, offset: 1664)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !783, file: !18, line: 1455, baseType: !7, size: 32, offset: 1792)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !783, file: !18, line: 1456, baseType: !1144, size: 2432, offset: 1856)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !12, line: 518, size: 2432, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1150, !1182}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1144, file: !12, line: 519, baseType: !7, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1144, file: !12, line: 520, baseType: !1113, size: 256, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1144, file: !12, line: 521, baseType: !1149, size: 192, offset: 320)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 192, elements: !838)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1144, file: !12, line: 522, baseType: !1151, size: 1728, offset: 512)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 1728, elements: !838)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !12, line: 222, size: 576, elements: !1153)
!1153 = !{!1154, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1152, file: !12, line: 223, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !12, line: 443, size: 256, elements: !1157)
!1157 = !{!1158, !1159, !1172, !1173}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1156, file: !12, line: 444, baseType: !259, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1156, file: !12, line: 445, baseType: !1160, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1162)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !12, line: 310, size: 512, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1162, file: !12, line: 311, baseType: !874, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1162, file: !12, line: 312, baseType: !874, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1162, file: !12, line: 313, baseType: !874, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1162, file: !12, line: 314, baseType: !874, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1162, file: !12, line: 315, baseType: !931, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1162, file: !12, line: 316, baseType: !931, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1162, file: !12, line: 317, baseType: !931, size: 64, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1162, file: !12, line: 318, baseType: !1017, size: 64, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1156, file: !12, line: 446, baseType: !207, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1156, file: !12, line: 447, baseType: !1155, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1152, file: !12, line: 224, baseType: !259, size: 32, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1152, file: !12, line: 226, baseType: !225, size: 128, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1152, file: !12, line: 227, baseType: !212, size: 64, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1152, file: !12, line: 228, baseType: !7, size: 32, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1152, file: !12, line: 229, baseType: !7, size: 32, offset: 352)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1152, file: !12, line: 230, baseType: !979, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1152, file: !12, line: 231, baseType: !979, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1152, file: !12, line: 232, baseType: !229, size: 64, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1144, file: !12, line: 523, baseType: !1183, size: 192, offset: 2240)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1160, size: 192, elements: !838)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !783, file: !18, line: 1458, baseType: !1185, size: 2112, offset: 4288)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !18, line: 1410, size: 2112, elements: !1186)
!1186 = !{!1187, !1188, !1195}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1185, file: !18, line: 1411, baseType: !259, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1185, file: !18, line: 1412, baseType: !1189, size: 128, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1190, line: 40, baseType: !1191)
!1190 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1190, line: 36, size: 128, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1191, file: !1190, line: 37, baseType: !701)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1191, file: !1190, line: 38, baseType: !225, size: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1185, file: !18, line: 1413, baseType: !1196, size: 1920, offset: 192)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1197, size: 1920, elements: !838)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1198, line: 12, size: 640, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1199 = !{!1200, !1216, !1218, !1223, !1224}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1197, file: !1198, line: 13, baseType: !1201, size: 320)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1202, line: 17, size: 320, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1203 = !{!1204, !1205, !1206, !1207}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1201, file: !1202, line: 18, baseType: !259, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1201, file: !1202, line: 19, baseType: !259, size: 32, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1201, file: !1202, line: 20, baseType: !1189, size: 128, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1201, file: !1202, line: 22, baseType: !1208, size: 128, align: 64, offset: 192)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !211, line: 216, size: 128, align: 64, elements: !1209)
!1209 = !{!1210, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1208, file: !211, line: 217, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1208, file: !211, line: 218, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !1211}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1197, file: !1198, line: 14, baseType: !1217, size: 64, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1197, file: !1198, line: 15, baseType: !1219, size: 64, offset: 384)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1220, line: 16, size: 64, elements: !1221)
!1220 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1221 = !{!1222}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1219, file: !1220, line: 17, baseType: !340, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1197, file: !1198, line: 16, baseType: !1189, size: 128, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1197, file: !1198, line: 17, baseType: !359, size: 32, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !783, file: !18, line: 1465, baseType: !229, size: 64, offset: 6400)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !783, file: !18, line: 1468, baseType: !293, size: 32, offset: 6464)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !783, file: !18, line: 1470, baseType: !987, size: 64, offset: 6528)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !783, file: !18, line: 1471, baseType: !987, size: 64, offset: 6592)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !783, file: !18, line: 1473, baseType: !294, size: 32, offset: 6656)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !783, file: !18, line: 1474, baseType: !1231, size: 64, offset: 6720)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !18, line: 603, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !783, file: !18, line: 1477, baseType: !1234, size: 256, offset: 6784)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !688)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !783, file: !18, line: 1478, baseType: !1236, size: 128, offset: 7040)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1237, line: 18, baseType: !1238)
!1237 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1237, line: 16, size: 128, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1238, file: !1237, line: 17, baseType: !1241, size: 128)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 128, elements: !1242)
!1242 = !{!1243}
!1243 = !DISubrange(count: 16)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !783, file: !18, line: 1480, baseType: !7, size: 32, offset: 7168)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !783, file: !18, line: 1481, baseType: !1246, size: 32, offset: 7200)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !211, line: 150, baseType: !7)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !783, file: !18, line: 1487, baseType: !942, size: 192, offset: 7232)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !783, file: !18, line: 1493, baseType: !730, size: 64, offset: 7424)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !783, file: !18, line: 1495, baseType: !710, size: 64, offset: 7488)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !783, file: !18, line: 1500, baseType: !259, size: 32, offset: 7552)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !783, file: !18, line: 1502, baseType: !1252, size: 448, offset: 7616)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !915, line: 60, size: 448, elements: !1253)
!1253 = !{!1254, !1259, !1260, !1261, !1262, !1263, !1264}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1252, file: !915, line: 61, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!212, !1258, !913}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1252, file: !915, line: 63, baseType: !1255, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1252, file: !915, line: 66, baseType: !175, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1252, file: !915, line: 67, baseType: !259, size: 32, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1252, file: !915, line: 68, baseType: !7, size: 32, offset: 224)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1252, file: !915, line: 71, baseType: !225, size: 128, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1252, file: !915, line: 77, baseType: !1265, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !783, file: !18, line: 1505, baseType: !946, size: 64, offset: 8064)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !783, file: !18, line: 1508, baseType: !946, size: 64, offset: 8128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !783, file: !18, line: 1511, baseType: !259, size: 32, offset: 8192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !783, file: !18, line: 1514, baseType: !1270, size: 32, offset: 8224)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1271, line: 8, baseType: !293)
!1271 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !783, file: !18, line: 1517, baseType: !1273, size: 64, offset: 8256)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !174, line: 18, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !783, file: !18, line: 1518, baseType: !822, size: 64, offset: 8320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !783, file: !18, line: 1525, baseType: !1277, size: 64, offset: 8384)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !628, line: 18, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !783, file: !18, line: 1532, baseType: !1280, size: 64, offset: 8448)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1281, line: 52, size: 64, elements: !1282)
!1281 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1282 = !{!1283}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1280, file: !1281, line: 53, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1281, line: 40, size: 256, elements: !1286)
!1286 = !{!1287, !1288, !1293}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1285, file: !1281, line: 42, baseType: !701)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1285, file: !1281, line: 44, baseType: !1289, size: 192)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1281, line: 28, size: 192, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1289, file: !1281, line: 29, baseType: !225, size: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1289, file: !1281, line: 31, baseType: !175, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1285, file: !1281, line: 49, baseType: !175, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !783, file: !18, line: 1533, baseType: !1280, size: 64, offset: 8512)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !783, file: !18, line: 1534, baseType: !1208, size: 128, align: 64, offset: 8576)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !783, file: !18, line: 1535, baseType: !1297, size: 256, offset: 8704)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !174, line: 102, size: 256, elements: !1298)
!1298 = !{!1299, !1300, !1301}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1297, file: !174, line: 103, baseType: !946, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1297, file: !174, line: 104, baseType: !225, size: 128, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1297, file: !174, line: 105, baseType: !1302, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !174, line: 21, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !783, file: !18, line: 1537, baseType: !942, size: 192, offset: 8960)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !783, file: !18, line: 1542, baseType: !259, size: 32, offset: 9152)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !783, file: !18, line: 1545, baseType: !701, offset: 9184)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !783, file: !18, line: 1546, baseType: !225, size: 128, offset: 9216)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !783, file: !18, line: 1548, baseType: !701, offset: 9344)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !783, file: !18, line: 1549, baseType: !225, size: 128, offset: 9344)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !652, file: !653, line: 104, baseType: !212, size: 64, offset: 896)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !652, file: !653, line: 105, baseType: !229, size: 64, offset: 960)
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !653, line: 107, baseType: !1316, size: 128, offset: 1024)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !653, line: 107, size: 128, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1316, file: !653, line: 108, baseType: !225, size: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1316, file: !653, line: 109, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !652, file: !653, line: 111, baseType: !225, size: 128, offset: 1152)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !652, file: !653, line: 112, baseType: !225, size: 128, offset: 1280)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !652, file: !653, line: 120, baseType: !1324, size: 128, offset: 1408)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !653, line: 116, size: 128, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1324, file: !653, line: 117, baseType: !826, size: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1324, file: !653, line: 118, baseType: !662, size: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1324, file: !653, line: 119, baseType: !1208, size: 128, align: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !645, file: !18, line: 1866, baseType: !1330, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!730, !651, !620, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1335, line: 10, size: 128, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !{!1337, !1341}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1334, file: !1335, line: 11, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !229}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1334, file: !1335, line: 12, baseType: !229, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !645, file: !18, line: 1867, baseType: !1343, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!259, !620, !259}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !645, file: !18, line: 1868, baseType: !1347, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!1350, !620, !259}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !18, line: 581, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !645, file: !18, line: 1870, baseType: !1353, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!259, !651, !220, !259}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !645, file: !18, line: 1872, baseType: !1357, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!259, !620, !651, !624, !773}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !645, file: !18, line: 1873, baseType: !1361, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!259, !651, !620, !651}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !645, file: !18, line: 1874, baseType: !1365, size: 64, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!259, !620, !651}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !645, file: !18, line: 1875, baseType: !1369, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!259, !620, !651, !730}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !645, file: !18, line: 1876, baseType: !1373, size: 64, offset: 576)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!259, !620, !651, !624}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !645, file: !18, line: 1877, baseType: !1365, size: 64, offset: 640)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !645, file: !18, line: 1878, baseType: !1378, size: 64, offset: 704)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!259, !620, !651, !624, !787}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !645, file: !18, line: 1879, baseType: !1382, size: 64, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!259, !620, !651, !620, !651, !7}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !645, file: !18, line: 1881, baseType: !1386, size: 64, offset: 832)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!259, !651, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !18, line: 219, size: 640, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1402, !1403, !1404}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1390, file: !18, line: 220, baseType: !7, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1390, file: !18, line: 221, baseType: !624, size: 16, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1390, file: !18, line: 222, baseType: !627, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1390, file: !18, line: 223, baseType: !635, size: 32, offset: 96)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1390, file: !18, line: 224, baseType: !792, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1390, file: !18, line: 225, baseType: !1398, size: 128, offset: 192)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !988, line: 13, size: 128, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1398, file: !988, line: 14, baseType: !987, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1398, file: !988, line: 15, baseType: !175, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1390, file: !18, line: 226, baseType: !1398, size: 128, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1390, file: !18, line: 227, baseType: !1398, size: 128, offset: 448)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1390, file: !18, line: 234, baseType: !1405, size: 64, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !18, line: 916, size: 1856, align: 32, elements: !1407)
!1407 = !{!1408, !1418, !1419, !1420, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1716, !1902, !1911, !1912, !1913, !1914, !1915, !1916, !1917}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1406, file: !18, line: 920, baseType: !1409, size: 128)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !18, line: 917, size: 128, elements: !1410)
!1410 = !{!1411, !1417}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1409, file: !18, line: 918, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1413, line: 58, size: 64, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1412, file: !1413, line: 59, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1409, file: !18, line: 919, baseType: !1208, size: 128, align: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1406, file: !18, line: 921, baseType: !762, size: 128, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1406, file: !18, line: 922, baseType: !620, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1406, file: !18, line: 923, baseType: !1421, size: 64, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !18, line: 1822, size: 2048, elements: !1424)
!1424 = !{!1425, !1426, !1430, !1441, !1445, !1471, !1472, !1476, !1489, !1490, !1497, !1501, !1502, !1506, !1507, !1511, !1516, !1517, !1521, !1525, !1634, !1638, !1642, !1646, !1647, !1653, !1657, !1662, !1666, !1670, !1674, !1678}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1423, file: !18, line: 1823, baseType: !207, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1423, file: !18, line: 1824, baseType: !1427, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!792, !1405, !792, !259}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1423, file: !18, line: 1825, baseType: !1431, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!1434, !1405, !220, !1437, !1440}
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !211, line: 60, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !470, line: 73, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !470, line: 15, baseType: !175)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !211, line: 55, baseType: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !470, line: 72, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !470, line: 16, baseType: !212)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1423, file: !18, line: 1826, baseType: !1442, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1434, !1405, !730, !1437, !1440}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1423, file: !18, line: 1827, baseType: !1446, size: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!1434, !1449, !1469}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !18, line: 320, size: 384, elements: !1451)
!1451 = !{!1452, !1453, !1454, !1458, !1459, !1460, !1461, !1462}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1450, file: !18, line: 321, baseType: !1405, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1450, file: !18, line: 326, baseType: !792, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1450, file: !18, line: 327, baseType: !1455, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !1449, !175, !175}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1450, file: !18, line: 328, baseType: !229, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1450, file: !18, line: 329, baseType: !259, size: 32, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1450, file: !18, line: 330, baseType: !276, size: 16, offset: 288)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1450, file: !18, line: 331, baseType: !276, size: 16, offset: 304)
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !18, line: 332, baseType: !1463, size: 64, offset: 320)
!1463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !18, line: 332, size: 64, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1463, file: !18, line: 333, baseType: !7, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1463, file: !18, line: 334, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !18, line: 334, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !18, line: 64, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1423, file: !18, line: 1828, baseType: !1446, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1423, file: !18, line: 1829, baseType: !1473, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!259, !1449, !773}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1423, file: !18, line: 1830, baseType: !1477, size: 64, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!259, !1405, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !18, line: 1776, size: 128, elements: !1482)
!1482 = !{!1483, !1488}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1481, file: !18, line: 1777, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !18, line: 1773, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!259, !1480, !730, !259, !792, !386, !7}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1481, file: !18, line: 1778, baseType: !792, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1423, file: !18, line: 1831, baseType: !1477, size: 64, offset: 512)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1423, file: !18, line: 1832, baseType: !1491, size: 64, offset: 576)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!1494, !1405, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !215, line: 52, baseType: !7)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !806, line: 27, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1423, file: !18, line: 1833, baseType: !1498, size: 64, offset: 640)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!175, !1405, !7, !212}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1423, file: !18, line: 1834, baseType: !1498, size: 64, offset: 704)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1423, file: !18, line: 1835, baseType: !1503, size: 64, offset: 768)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!259, !1405, !524}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1423, file: !18, line: 1836, baseType: !212, size: 64, offset: 832)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1423, file: !18, line: 1837, baseType: !1508, size: 64, offset: 896)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!259, !620, !1405}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1423, file: !18, line: 1838, baseType: !1512, size: 64, offset: 960)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!259, !1405, !1515}
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !18, line: 1007, baseType: !229)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1423, file: !18, line: 1839, baseType: !1508, size: 64, offset: 1024)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1423, file: !18, line: 1840, baseType: !1518, size: 64, offset: 1088)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!259, !1405, !792, !792, !259}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1423, file: !18, line: 1841, baseType: !1522, size: 64, offset: 1152)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!259, !259, !1405, !259}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1423, file: !18, line: 1842, baseType: !1526, size: 64, offset: 1216)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!259, !1405, !259, !1529}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !18, line: 1062, size: 1664, elements: !1531)
!1531 = !{!1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1563, !1564, !1565, !1578, !1610}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1530, file: !18, line: 1063, baseType: !1529, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1530, file: !18, line: 1064, baseType: !225, size: 128, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1530, file: !18, line: 1065, baseType: !826, size: 128, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1530, file: !18, line: 1066, baseType: !225, size: 128, offset: 320)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1530, file: !18, line: 1069, baseType: !225, size: 128, offset: 448)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1530, file: !18, line: 1072, baseType: !1515, size: 64, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1530, file: !18, line: 1073, baseType: !7, size: 32, offset: 640)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1530, file: !18, line: 1074, baseType: !270, size: 8, offset: 672)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1530, file: !18, line: 1075, baseType: !7, size: 32, offset: 704)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1530, file: !18, line: 1076, baseType: !259, size: 32, offset: 736)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1530, file: !18, line: 1077, baseType: !1189, size: 128, offset: 768)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1530, file: !18, line: 1078, baseType: !1405, size: 64, offset: 896)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1530, file: !18, line: 1079, baseType: !792, size: 64, offset: 960)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1530, file: !18, line: 1080, baseType: !792, size: 64, offset: 1024)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1530, file: !18, line: 1082, baseType: !1547, size: 64, offset: 1088)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !18, line: 1314, size: 320, elements: !1549)
!1549 = !{!1550, !1558, !1559, !1560, !1561, !1562}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1548, file: !18, line: 1315, baseType: !1551)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1552, line: 20, baseType: !1553)
!1552 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1552, line: 11, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1553, file: !1552, line: 12, baseType: !1556)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !321, line: 33, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 31, elements: !323)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1548, file: !18, line: 1316, baseType: !259, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1548, file: !18, line: 1317, baseType: !259, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1548, file: !18, line: 1318, baseType: !1547, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1548, file: !18, line: 1319, baseType: !1405, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1548, file: !18, line: 1320, baseType: !1208, size: 128, align: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1530, file: !18, line: 1084, baseType: !212, size: 64, offset: 1152)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1530, file: !18, line: 1085, baseType: !212, size: 64, offset: 1216)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1530, file: !18, line: 1087, baseType: !1566, size: 64, offset: 1280)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1568)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !18, line: 1011, size: 128, elements: !1569)
!1569 = !{!1570, !1574}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1568, file: !18, line: 1012, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !1529, !1529}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1568, file: !18, line: 1013, baseType: !1575, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !1529}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1530, file: !18, line: 1088, baseType: !1579, size: 64, offset: 1344)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !18, line: 1016, size: 512, elements: !1582)
!1582 = !{!1583, !1587, !1591, !1592, !1596, !1600, !1604, !1609}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1581, file: !18, line: 1017, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!1515, !1515}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1581, file: !18, line: 1018, baseType: !1588, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !1515}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1581, file: !18, line: 1019, baseType: !1575, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1581, file: !18, line: 1020, baseType: !1593, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!259, !1529, !259}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1581, file: !18, line: 1021, baseType: !1597, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!773, !1529}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1581, file: !18, line: 1022, baseType: !1601, size: 64, offset: 320)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!259, !1529, !259, !224}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1581, file: !18, line: 1023, baseType: !1605, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !1529, !1608}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1581, file: !18, line: 1024, baseType: !1597, size: 64, offset: 448)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1530, file: !18, line: 1097, baseType: !1611, size: 256, offset: 1408)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !18, line: 1089, size: 256, elements: !1612)
!1612 = !{!1613, !1622, !1628}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1611, file: !18, line: 1090, baseType: !1614, size: 256)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1615, line: 10, size: 256, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !{!1617, !1618, !1621}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1614, file: !1615, line: 11, baseType: !293, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1614, file: !1615, line: 12, baseType: !1619, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1615, line: 5, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1614, file: !1615, line: 13, baseType: !225, size: 128, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1611, file: !18, line: 1091, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1615, line: 17, size: 64, elements: !1624)
!1624 = !{!1625}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1623, file: !1615, line: 18, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1615, line: 16, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1611, file: !18, line: 1096, baseType: !1629, size: 192)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1611, file: !18, line: 1092, size: 192, elements: !1630)
!1630 = !{!1631, !1632, !1633}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1629, file: !18, line: 1093, baseType: !225, size: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1629, file: !18, line: 1094, baseType: !259, size: 32, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1629, file: !18, line: 1095, baseType: !7, size: 32, offset: 160)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1423, file: !18, line: 1843, baseType: !1635, size: 64, offset: 1280)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!1434, !1405, !604, !259, !1437, !1440, !259}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1423, file: !18, line: 1844, baseType: !1639, size: 64, offset: 1344)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!212, !1405, !212, !212, !212, !212}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1423, file: !18, line: 1845, baseType: !1643, size: 64, offset: 1408)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!259, !259}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1423, file: !18, line: 1846, baseType: !1526, size: 64, offset: 1472)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1423, file: !18, line: 1847, baseType: !1648, size: 64, offset: 1536)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!1434, !1651, !1405, !1440, !1437, !7}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !342, line: 53, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1423, file: !18, line: 1848, baseType: !1654, size: 64, offset: 1600)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!1434, !1405, !1440, !1651, !1437, !7}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1423, file: !18, line: 1849, baseType: !1658, size: 64, offset: 1664)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!259, !1405, !175, !1661, !1608}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1423, file: !18, line: 1850, baseType: !1663, size: 64, offset: 1728)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!175, !1405, !259, !792, !792}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1423, file: !18, line: 1852, baseType: !1667, size: 64, offset: 1792)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !900, !1405}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1423, file: !18, line: 1856, baseType: !1671, size: 64, offset: 1856)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!1434, !1405, !792, !1405, !792, !1437, !7}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1423, file: !18, line: 1858, baseType: !1675, size: 64, offset: 1920)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!792, !1405, !792, !1405, !792, !792, !7}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1423, file: !18, line: 1861, baseType: !1518, size: 64, offset: 1984)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1406, file: !18, line: 929, baseType: !701, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1406, file: !18, line: 930, baseType: !17, size: 32, offset: 384)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1406, file: !18, line: 931, baseType: !946, size: 64, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1406, file: !18, line: 932, baseType: !7, size: 32, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1406, file: !18, line: 933, baseType: !1246, size: 32, offset: 544)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1406, file: !18, line: 934, baseType: !942, size: 192, offset: 576)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1406, file: !18, line: 935, baseType: !792, size: 64, offset: 768)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1406, file: !18, line: 936, baseType: !1687, size: 192, offset: 832)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !18, line: 885, size: 192, elements: !1688)
!1688 = !{!1689, !1690, !1712, !1713, !1714, !1715}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1687, file: !18, line: 886, baseType: !1551)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1687, file: !18, line: 887, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !27, line: 59, size: 768, elements: !1693)
!1693 = !{!1694, !1695, !1696, !1697, !1701, !1702, !1703, !1704}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1692, file: !27, line: 61, baseType: !354, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1692, file: !27, line: 62, baseType: !7, size: 32, offset: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1692, file: !27, line: 63, baseType: !701, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1692, file: !27, line: 65, baseType: !1698, size: 256, offset: 64)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 256, elements: !1699)
!1699 = !{!1700}
!1700 = !DISubrange(count: 4)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1692, file: !27, line: 66, baseType: !822, size: 64, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1692, file: !27, line: 68, baseType: !1189, size: 128, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1692, file: !27, line: 69, baseType: !1208, size: 128, align: 64, offset: 512)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1692, file: !27, line: 70, baseType: !1705, size: 128, offset: 640)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1706, size: 128, elements: !509)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !27, line: 54, size: 128, elements: !1707)
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1706, file: !27, line: 55, baseType: !259, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1706, file: !27, line: 56, baseType: !1710, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !27, line: 56, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1687, file: !18, line: 888, baseType: !26, size: 32, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1687, file: !18, line: 889, baseType: !627, size: 32, offset: 96)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1687, file: !18, line: 889, baseType: !627, size: 32, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1687, file: !18, line: 890, baseType: !259, size: 32, offset: 160)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1406, file: !18, line: 937, baseType: !1717, size: 64, offset: 1024)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1719)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1720, line: 111, size: 1280, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !{!1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1741, !1742, !1743, !1744, !1745, !1746, !1857, !1858, !1859, !1860, !1886, !1887, !1897}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1719, file: !1720, line: 112, baseType: !359, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1719, file: !1720, line: 120, baseType: !627, size: 32, offset: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1719, file: !1720, line: 121, baseType: !635, size: 32, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1719, file: !1720, line: 122, baseType: !627, size: 32, offset: 96)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1719, file: !1720, line: 123, baseType: !635, size: 32, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1719, file: !1720, line: 124, baseType: !627, size: 32, offset: 160)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1719, file: !1720, line: 125, baseType: !635, size: 32, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1719, file: !1720, line: 126, baseType: !627, size: 32, offset: 224)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1719, file: !1720, line: 127, baseType: !635, size: 32, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1719, file: !1720, line: 128, baseType: !7, size: 32, offset: 288)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1719, file: !1720, line: 129, baseType: !1733, size: 64, offset: 320)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1734, line: 26, baseType: !1735)
!1734 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1734, line: 24, size: 64, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1735, file: !1734, line: 25, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 64, elements: !1739)
!1739 = !{!1740}
!1740 = !DISubrange(count: 2)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1719, file: !1720, line: 130, baseType: !1733, size: 64, offset: 384)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1719, file: !1720, line: 131, baseType: !1733, size: 64, offset: 448)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1719, file: !1720, line: 132, baseType: !1733, size: 64, offset: 512)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1719, file: !1720, line: 133, baseType: !1733, size: 64, offset: 576)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1719, file: !1720, line: 135, baseType: !270, size: 8, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1719, file: !1720, line: 137, baseType: !1747, size: 64, offset: 704)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1749, line: 189, size: 1664, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1750 = !{!1751, !1752, !1757, !1762, !1763, !1766, !1767, !1772, !1773, !1774, !1775, !1778, !1779, !1780, !1782, !1783, !1821, !1842}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1748, file: !1749, line: 190, baseType: !354, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1748, file: !1749, line: 191, baseType: !1753, size: 32, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1749, line: 28, baseType: !1754)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !211, line: 98, baseType: !1755)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !277, line: 20, baseType: !1756)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !217, line: 26, baseType: !259)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !1749, line: 192, baseType: !1758, size: 192, offset: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1748, file: !1749, line: 192, size: 192, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1758, file: !1749, line: 193, baseType: !225, size: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1758, file: !1749, line: 194, baseType: !333, size: 192, align: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1748, file: !1749, line: 199, baseType: !1113, size: 256, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1748, file: !1749, line: 200, baseType: !1764, size: 64, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1749, line: 200, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1748, file: !1749, line: 201, baseType: !229, size: 64, offset: 576)
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !1749, line: 202, baseType: !1768, size: 64, offset: 640)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1748, file: !1749, line: 202, size: 64, elements: !1769)
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1768, file: !1749, line: 203, baseType: !987, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1768, file: !1749, line: 204, baseType: !987, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1748, file: !1749, line: 206, baseType: !987, size: 64, offset: 704)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1748, file: !1749, line: 207, baseType: !627, size: 32, offset: 768)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1748, file: !1749, line: 208, baseType: !635, size: 32, offset: 800)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1748, file: !1749, line: 209, baseType: !1776, size: 32, offset: 832)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1749, line: 31, baseType: !1777)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !211, line: 104, baseType: !293)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1748, file: !1749, line: 210, baseType: !218, size: 16, offset: 864)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1748, file: !1749, line: 211, baseType: !218, size: 16, offset: 880)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1748, file: !1749, line: 215, baseType: !1781, size: 16, offset: 896)
!1781 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1748, file: !1749, line: 222, baseType: !212, size: 64, offset: 960)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !1749, line: 239, baseType: !1784, size: 320, offset: 1024)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1748, file: !1749, line: 239, size: 320, elements: !1785)
!1785 = !{!1786, !1813}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1784, file: !1749, line: 240, baseType: !1787, size: 320)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1749, line: 108, size: 320, elements: !1788)
!1788 = !{!1789, !1790, !1802, !1805, !1812}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1787, file: !1749, line: 110, baseType: !212, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !1749, line: 111, baseType: !1791, size: 64, offset: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !1749, line: 111, size: 64, elements: !1792)
!1792 = !{!1793, !1801}
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1791, file: !1749, line: 112, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !1749, line: 112, size: 64, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1794, file: !1749, line: 114, baseType: !276, size: 16)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1794, file: !1749, line: 115, baseType: !1798, size: 48, offset: 16)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 48, elements: !1799)
!1799 = !{!1800}
!1800 = !DISubrange(count: 6)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1791, file: !1749, line: 121, baseType: !212, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1787, file: !1749, line: 123, baseType: !1803, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1749, line: 96, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1787, file: !1749, line: 124, baseType: !1806, size: 64, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1749, line: 102, size: 192, elements: !1808)
!1808 = !{!1809, !1810, !1811}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1807, file: !1749, line: 103, baseType: !1208, size: 128, align: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1807, file: !1749, line: 104, baseType: !354, size: 32, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1807, file: !1749, line: 105, baseType: !773, size: 8, offset: 160)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1787, file: !1749, line: 125, baseType: !730, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !1749, line: 241, baseType: !1814, size: 320)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1784, file: !1749, line: 241, size: 320, elements: !1815)
!1815 = !{!1816, !1817, !1818, !1819, !1820}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1814, file: !1749, line: 242, baseType: !212, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1814, file: !1749, line: 243, baseType: !212, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1814, file: !1749, line: 244, baseType: !1803, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1814, file: !1749, line: 245, baseType: !1806, size: 64, offset: 192)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1814, file: !1749, line: 246, baseType: !220, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !1749, line: 254, baseType: !1822, size: 256, offset: 1344)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1748, file: !1749, line: 254, size: 256, elements: !1823)
!1823 = !{!1824, !1830}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1822, file: !1749, line: 255, baseType: !1825, size: 256)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1749, line: 128, size: 256, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1825, file: !1749, line: 129, baseType: !229, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1825, file: !1749, line: 130, baseType: !1829, size: 256)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 256, elements: !1699)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !1749, line: 256, baseType: !1831, size: 256)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !1749, line: 256, size: 256, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1831, file: !1749, line: 258, baseType: !225, size: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1831, file: !1749, line: 259, baseType: !1835, size: 128, offset: 128)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1836, line: 22, size: 128, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1837 = !{!1838, !1841}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1835, file: !1836, line: 23, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1836, line: 23, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1835, file: !1836, line: 24, baseType: !212, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1748, file: !1749, line: 274, baseType: !1843, size: 64, offset: 1600)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1749, line: 170, size: 192, elements: !1845)
!1845 = !{!1846, !1855, !1856}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1844, file: !1749, line: 171, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1749, line: 165, baseType: !1848)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!259, !1747, !1851, !1853, !1747}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1804)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1825)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1844, file: !1749, line: 172, baseType: !1747, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1844, file: !1749, line: 173, baseType: !1803, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1719, file: !1720, line: 138, baseType: !1747, size: 64, offset: 768)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1719, file: !1720, line: 139, baseType: !1747, size: 64, offset: 832)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1719, file: !1720, line: 140, baseType: !1747, size: 64, offset: 896)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1719, file: !1720, line: 145, baseType: !1861, size: 64, offset: 960)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1863, line: 13, size: 896, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1864 = !{!1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1862, file: !1863, line: 14, baseType: !354, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1862, file: !1863, line: 15, baseType: !359, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1862, file: !1863, line: 16, baseType: !359, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1862, file: !1863, line: 21, baseType: !946, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1862, file: !1863, line: 27, baseType: !212, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1862, file: !1863, line: 28, baseType: !212, size: 64, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1862, file: !1863, line: 29, baseType: !946, size: 64, offset: 320)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1862, file: !1863, line: 32, baseType: !826, size: 128, offset: 384)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1862, file: !1863, line: 33, baseType: !627, size: 32, offset: 512)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1862, file: !1863, line: 37, baseType: !946, size: 64, offset: 576)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1862, file: !1863, line: 44, baseType: !1876, size: 256, offset: 640)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1877, line: 15, size: 256, elements: !1878)
!1877 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1878 = !{!1879, !1880, !1881, !1882, !1883, !1884, !1885}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1876, file: !1877, line: 16, baseType: !315)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1876, file: !1877, line: 18, baseType: !259, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1876, file: !1877, line: 19, baseType: !259, size: 32, offset: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1876, file: !1877, line: 20, baseType: !259, size: 32, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1876, file: !1877, line: 21, baseType: !259, size: 32, offset: 96)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1876, file: !1877, line: 22, baseType: !212, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1876, file: !1877, line: 23, baseType: !212, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1719, file: !1720, line: 146, baseType: !1277, size: 64, offset: 1024)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1719, file: !1720, line: 147, baseType: !1888, size: 64, offset: 1088)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1720, line: 25, size: 64, elements: !1890)
!1890 = !{!1891, !1892, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1889, file: !1720, line: 26, baseType: !359, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1889, file: !1720, line: 27, baseType: !259, size: 32, offset: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1889, file: !1720, line: 28, baseType: !1894, offset: 64)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, elements: !1895)
!1895 = !{!1896}
!1896 = !DISubrange(count: 0)
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !1720, line: 149, baseType: !1898, size: 128, offset: 1152)
!1898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !1720, line: 149, size: 128, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1898, file: !1720, line: 150, baseType: !259, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1898, file: !1720, line: 151, baseType: !1208, size: 128, align: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1406, file: !18, line: 938, baseType: !1903, size: 256, offset: 1088)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !18, line: 896, size: 256, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1910}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1903, file: !18, line: 897, baseType: !212, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1903, file: !18, line: 898, baseType: !7, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1903, file: !18, line: 899, baseType: !7, size: 32, offset: 96)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1903, file: !18, line: 902, baseType: !7, size: 32, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1903, file: !18, line: 903, baseType: !7, size: 32, offset: 160)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1903, file: !18, line: 904, baseType: !792, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1406, file: !18, line: 940, baseType: !386, size: 64, offset: 1344)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1406, file: !18, line: 945, baseType: !229, size: 64, offset: 1408)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1406, file: !18, line: 949, baseType: !225, size: 128, offset: 1472)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1406, file: !18, line: 950, baseType: !225, size: 128, offset: 1600)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1406, file: !18, line: 952, baseType: !616, size: 64, offset: 1728)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1406, file: !18, line: 953, baseType: !1270, size: 32, offset: 1792)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1406, file: !18, line: 954, baseType: !1270, size: 32, offset: 1824)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !645, file: !18, line: 1882, baseType: !1919, size: 64, offset: 896)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!259, !771, !1922, !293, !7}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1924, line: 22, size: 1152, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1923, file: !1924, line: 23, baseType: !293, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1923, file: !1924, line: 24, baseType: !624, size: 16, offset: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1923, file: !1924, line: 25, baseType: !7, size: 32, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1923, file: !1924, line: 26, baseType: !1777, size: 32, offset: 96)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1923, file: !1924, line: 27, baseType: !386, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1923, file: !1924, line: 28, baseType: !386, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1923, file: !1924, line: 37, baseType: !386, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1923, file: !1924, line: 38, baseType: !787, size: 32, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1923, file: !1924, line: 39, baseType: !787, size: 32, offset: 352)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1923, file: !1924, line: 40, baseType: !627, size: 32, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1923, file: !1924, line: 41, baseType: !635, size: 32, offset: 416)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1923, file: !1924, line: 42, baseType: !792, size: 64, offset: 448)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1923, file: !1924, line: 43, baseType: !1398, size: 128, offset: 512)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1923, file: !1924, line: 44, baseType: !1398, size: 128, offset: 640)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1923, file: !1924, line: 45, baseType: !1398, size: 128, offset: 768)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1923, file: !1924, line: 46, baseType: !1398, size: 128, offset: 896)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1923, file: !1924, line: 47, baseType: !386, size: 64, offset: 1024)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1923, file: !1924, line: 48, baseType: !386, size: 64, offset: 1088)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !645, file: !18, line: 1883, baseType: !1945, size: 64, offset: 960)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1434, !651, !220, !1437}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !645, file: !18, line: 1884, baseType: !1949, size: 64, offset: 1024)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!259, !620, !1952, !386, !386}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !18, line: 50, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !645, file: !18, line: 1886, baseType: !1955, size: 64, offset: 1088)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!259, !620, !1958, !259}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !645, file: !18, line: 1887, baseType: !1960, size: 64, offset: 1152)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!259, !620, !651, !1405, !7, !624}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !645, file: !18, line: 1890, baseType: !1373, size: 64, offset: 1216)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !645, file: !18, line: 1891, baseType: !1965, size: 64, offset: 1280)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!259, !620, !1350, !259}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !621, file: !18, line: 623, baseType: !782, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !621, file: !18, line: 624, baseType: !616, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !621, file: !18, line: 631, baseType: !212, size: 64, offset: 320)
!1971 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !18, line: 639, baseType: !1972, size: 32, offset: 384)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !18, line: 639, size: 32, elements: !1973)
!1973 = !{!1974, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1972, file: !18, line: 640, baseType: !1975, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1972, file: !18, line: 641, baseType: !7, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !621, file: !18, line: 643, baseType: !787, size: 32, offset: 416)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !621, file: !18, line: 644, baseType: !792, size: 64, offset: 448)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !621, file: !18, line: 645, baseType: !1398, size: 128, offset: 512)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !621, file: !18, line: 646, baseType: !1398, size: 128, offset: 640)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !621, file: !18, line: 647, baseType: !1398, size: 128, offset: 768)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !621, file: !18, line: 648, baseType: !701, offset: 896)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !621, file: !18, line: 649, baseType: !218, size: 16, offset: 896)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !621, file: !18, line: 650, baseType: !278, size: 8, offset: 912)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !621, file: !18, line: 651, baseType: !278, size: 8, offset: 920)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !621, file: !18, line: 652, baseType: !1101, size: 64, offset: 960)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !621, file: !18, line: 659, baseType: !212, size: 64, offset: 1024)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !621, file: !18, line: 660, baseType: !1113, size: 256, offset: 1088)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !621, file: !18, line: 662, baseType: !212, size: 64, offset: 1344)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !621, file: !18, line: 663, baseType: !212, size: 64, offset: 1408)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !621, file: !18, line: 665, baseType: !826, size: 128, offset: 1472)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !621, file: !18, line: 666, baseType: !225, size: 128, offset: 1600)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !621, file: !18, line: 675, baseType: !225, size: 128, offset: 1728)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !621, file: !18, line: 676, baseType: !225, size: 128, offset: 1856)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !621, file: !18, line: 677, baseType: !225, size: 128, offset: 1984)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !18, line: 678, baseType: !1997, size: 128, offset: 2112)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !18, line: 678, size: 128, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1997, file: !18, line: 679, baseType: !822, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1997, file: !18, line: 680, baseType: !1208, size: 128, align: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !621, file: !18, line: 682, baseType: !948, size: 64, offset: 2240)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !621, file: !18, line: 683, baseType: !948, size: 64, offset: 2304)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !621, file: !18, line: 684, baseType: !359, size: 32, offset: 2368)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !621, file: !18, line: 685, baseType: !359, size: 32, offset: 2400)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !621, file: !18, line: 686, baseType: !359, size: 32, offset: 2432)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !621, file: !18, line: 688, baseType: !359, size: 32, offset: 2464)
!2007 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !18, line: 690, baseType: !2008, size: 64, offset: 2496)
!2008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !18, line: 690, size: 64, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2008, file: !18, line: 691, baseType: !1421, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2008, file: !18, line: 692, baseType: !853, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !621, file: !18, line: 694, baseType: !2013, size: 64, offset: 2560)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !18, line: 1100, size: 384, elements: !2015)
!2015 = !{!2016, !2017, !2018, !2019}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2014, file: !18, line: 1101, baseType: !701)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2014, file: !18, line: 1102, baseType: !225, size: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2014, file: !18, line: 1103, baseType: !225, size: 128, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2014, file: !18, line: 1104, baseType: !225, size: 128, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !621, file: !18, line: 695, baseType: !617, size: 1216, align: 64, offset: 2624)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !621, file: !18, line: 696, baseType: !225, size: 128, offset: 3840)
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !18, line: 697, baseType: !2023, size: 64, offset: 3968)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !18, line: 697, size: 64, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2344, !2345}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2023, file: !18, line: 698, baseType: !1651, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2023, file: !18, line: 699, baseType: !1133, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2023, file: !18, line: 700, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2030, line: 14, size: 832, elements: !2031)
!2030 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2031 = !{!2032, !2339, !2340, !2341, !2342, !2343}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2029, file: !2030, line: 15, baseType: !2033, size: 512)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2034, line: 64, size: 512, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !{!2036, !2037, !2038, !2040, !2082, !2184, !2329, !2334, !2335, !2336, !2337, !2338}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2033, file: !2034, line: 65, baseType: !730, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2033, file: !2034, line: 66, baseType: !225, size: 128, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2033, file: !2034, line: 67, baseType: !2039, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2033, file: !2034, line: 68, baseType: !2041, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2034, line: 192, size: 704, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2042, file: !2034, line: 193, baseType: !225, size: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2042, file: !2034, line: 194, baseType: !701, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2042, file: !2034, line: 195, baseType: !2033, size: 512, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2042, file: !2034, line: 196, baseType: !2048, size: 64, offset: 640)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2050)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2034, line: 156, size: 192, elements: !2051)
!2051 = !{!2052, !2057, !2062}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2050, file: !2034, line: 157, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2054)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!259, !2041, !2039}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2050, file: !2034, line: 158, baseType: !2058, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2059)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!730, !2041, !2039}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2050, file: !2034, line: 159, baseType: !2063, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2064)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!259, !2041, !2039, !2067}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2034, line: 148, size: 20736, elements: !2069)
!2069 = !{!2070, !2072, !2076, !2077, !2081}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2068, file: !2034, line: 149, baseType: !2071, size: 192)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 192, elements: !838)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2068, file: !2034, line: 150, baseType: !2073, size: 4096, offset: 192)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 4096, elements: !2074)
!2074 = !{!2075}
!2075 = !DISubrange(count: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2068, file: !2034, line: 151, baseType: !259, size: 32, offset: 4288)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2068, file: !2034, line: 152, baseType: !2078, size: 16384, offset: 4320)
!2078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 16384, elements: !2079)
!2079 = !{!2080}
!2080 = !DISubrange(count: 2048)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2068, file: !2034, line: 153, baseType: !259, size: 32, offset: 20704)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2033, file: !2034, line: 69, baseType: !2083, size: 64, offset: 320)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2034, line: 138, size: 448, elements: !2085)
!2085 = !{!2086, !2090, !2109, !2111, !2144, !2174, !2178}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2084, file: !2034, line: 139, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !2039}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2084, file: !2034, line: 140, baseType: !2091, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2094, line: 230, size: 128, elements: !2095)
!2094 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2095 = !{!2096, !2105}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2093, file: !2094, line: 231, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!1434, !2039, !2100, !220}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2094, line: 30, size: 128, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2101, file: !2094, line: 31, baseType: !730, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2101, file: !2094, line: 32, baseType: !624, size: 16, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2093, file: !2094, line: 232, baseType: !2106, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!1434, !2039, !2100, !730, !1437}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2084, file: !2034, line: 141, baseType: !2110, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2084, file: !2034, line: 142, baseType: !2112, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2115)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2094, line: 84, size: 320, elements: !2116)
!2116 = !{!2117, !2118, !2122, !2141, !2142}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2115, file: !2094, line: 85, baseType: !730, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2115, file: !2094, line: 86, baseType: !2119, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!624, !2039, !2100, !259}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2115, file: !2094, line: 88, baseType: !2123, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!624, !2039, !2126, !259}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2094, line: 168, size: 448, elements: !2128)
!2128 = !{!2129, !2130, !2131, !2132, !2136, !2137}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2127, file: !2094, line: 169, baseType: !2101, size: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2127, file: !2094, line: 170, baseType: !1437, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2127, file: !2094, line: 171, baseType: !229, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2127, file: !2094, line: 172, baseType: !2133, size: 64, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!1434, !1405, !2039, !2126, !220, !792, !1437}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2127, file: !2094, line: 174, baseType: !2133, size: 64, offset: 320)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2127, file: !2094, line: 176, baseType: !2138, size: 64, offset: 384)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!259, !1405, !2039, !2126, !524}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2115, file: !2094, line: 90, baseType: !2110, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2115, file: !2094, line: 91, baseType: !2143, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2084, file: !2034, line: 143, baseType: !2145, size: 64, offset: 256)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!2148, !2039}
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2150)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !35, line: 39, size: 384, elements: !2151)
!2151 = !{!2152, !2153, !2157, !2161, !2169, !2173}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2150, file: !35, line: 40, baseType: !34, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2150, file: !35, line: 41, baseType: !2154, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!773}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2150, file: !35, line: 42, baseType: !2158, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!229}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2150, file: !35, line: 43, baseType: !2162, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!2165, !2167}
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !35, line: 19, flags: DIFlagFwdDecl)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2150, file: !35, line: 44, baseType: !2170, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!2165}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2150, file: !35, line: 45, baseType: !1338, size: 64, offset: 320)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2084, file: !2034, line: 144, baseType: !2175, size: 64, offset: 320)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!2165, !2039}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2084, file: !2034, line: 145, baseType: !2179, size: 64, offset: 384)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !2039, !2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2033, file: !2034, line: 70, baseType: !2185, size: 64, offset: 384)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !806, line: 123, size: 1024, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2322, !2323, !2324, !2325, !2326}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2186, file: !806, line: 124, baseType: !359, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2186, file: !806, line: 125, baseType: !359, size: 32, offset: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2186, file: !806, line: 135, baseType: !2185, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2186, file: !806, line: 136, baseType: !730, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2186, file: !806, line: 138, baseType: !333, size: 192, align: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2186, file: !806, line: 140, baseType: !2165, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2186, file: !806, line: 141, baseType: !7, size: 32, offset: 448)
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !2186, file: !806, line: 142, baseType: !2196, size: 256, offset: 512)
!2196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2186, file: !806, line: 142, size: 256, elements: !2197)
!2197 = !{!2198, !2250, !2254}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2196, file: !806, line: 143, baseType: !2199, size: 192)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !806, line: 91, size: 192, elements: !2200)
!2200 = !{!2201, !2202, !2203}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2199, file: !806, line: 92, baseType: !212, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2199, file: !806, line: 94, baseType: !329, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2199, file: !806, line: 100, baseType: !2204, size: 64, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !806, line: 180, size: 704, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2222, !2223, !2224, !2248, !2249}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2205, file: !806, line: 182, baseType: !2185, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2205, file: !806, line: 183, baseType: !7, size: 32, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2205, file: !806, line: 186, baseType: !2210, size: 192, offset: 128)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2211, line: 19, size: 192, elements: !2212)
!2211 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2212 = !{!2213, !2220, !2221}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2210, file: !2211, line: 20, baseType: !2214, size: 128)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2215, line: 292, size: 128, elements: !2216)
!2215 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2216 = !{!2217, !2218, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2214, file: !2215, line: 293, baseType: !701)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2214, file: !2215, line: 295, baseType: !210, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2214, file: !2215, line: 296, baseType: !229, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2210, file: !2211, line: 21, baseType: !7, size: 32, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2210, file: !2211, line: 22, baseType: !7, size: 32, offset: 160)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2205, file: !806, line: 187, baseType: !293, size: 32, offset: 320)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2205, file: !806, line: 188, baseType: !293, size: 32, offset: 352)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2205, file: !806, line: 189, baseType: !2225, size: 64, offset: 384)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !806, line: 168, size: 320, elements: !2227)
!2227 = !{!2228, !2232, !2236, !2240, !2244}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2226, file: !806, line: 169, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!259, !900, !2204}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2226, file: !806, line: 171, baseType: !2233, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!259, !2185, !730, !624}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2226, file: !806, line: 173, baseType: !2237, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!259, !2185}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2226, file: !806, line: 174, baseType: !2241, size: 64, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!259, !2185, !2185, !730}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2226, file: !806, line: 176, baseType: !2245, size: 64, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!259, !900, !2185, !2204}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2205, file: !806, line: 192, baseType: !225, size: 128, offset: 448)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2205, file: !806, line: 194, baseType: !1189, size: 128, offset: 576)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2196, file: !806, line: 144, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !806, line: 103, size: 64, elements: !2252)
!2252 = !{!2253}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2251, file: !806, line: 104, baseType: !2185, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2196, file: !806, line: 145, baseType: !2255, size: 256)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !806, line: 107, size: 256, elements: !2256)
!2256 = !{!2257, !2317, !2320, !2321}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2255, file: !806, line: 108, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !806, line: 217, size: 768, elements: !2261)
!2261 = !{!2262, !2282, !2286, !2290, !2294, !2298, !2302, !2306, !2307, !2308, !2309, !2313}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2260, file: !806, line: 222, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!259, !2266}
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !806, line: 197, size: 1088, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2267, file: !806, line: 199, baseType: !2185, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2267, file: !806, line: 200, baseType: !1405, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2267, file: !806, line: 201, baseType: !900, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2267, file: !806, line: 202, baseType: !229, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2267, file: !806, line: 205, baseType: !942, size: 192, offset: 256)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2267, file: !806, line: 206, baseType: !942, size: 192, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2267, file: !806, line: 207, baseType: !259, size: 32, offset: 640)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2267, file: !806, line: 208, baseType: !225, size: 128, offset: 704)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2267, file: !806, line: 209, baseType: !220, size: 64, offset: 832)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2267, file: !806, line: 211, baseType: !1437, size: 64, offset: 896)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2267, file: !806, line: 212, baseType: !773, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2267, file: !806, line: 213, baseType: !773, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2267, file: !806, line: 214, baseType: !553, size: 64, offset: 1024)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2260, file: !806, line: 223, baseType: !2283, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !2266}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2260, file: !806, line: 236, baseType: !2287, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!259, !900, !229}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2260, file: !806, line: 238, baseType: !2291, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!229, !900, !1440}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2260, file: !806, line: 239, baseType: !2295, size: 64, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!229, !900, !229, !1440}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2260, file: !806, line: 240, baseType: !2299, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !900, !229}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2260, file: !806, line: 242, baseType: !2303, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!1434, !2266, !220, !1437, !792}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2260, file: !806, line: 252, baseType: !1437, size: 64, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2260, file: !806, line: 259, baseType: !773, size: 8, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2260, file: !806, line: 260, baseType: !2303, size: 64, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2260, file: !806, line: 263, baseType: !2310, size: 64, offset: 640)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!1494, !2266, !1495}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2260, file: !806, line: 266, baseType: !2314, size: 64, offset: 704)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!259, !2266, !524}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2255, file: !806, line: 109, baseType: !2318, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !806, line: 31, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2255, file: !806, line: 110, baseType: !792, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2255, file: !806, line: 111, baseType: !2185, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2186, file: !806, line: 148, baseType: !229, size: 64, offset: 768)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2186, file: !806, line: 154, baseType: !386, size: 64, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2186, file: !806, line: 156, baseType: !218, size: 16, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2186, file: !806, line: 157, baseType: !624, size: 16, offset: 912)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2186, file: !806, line: 158, baseType: !2327, size: 64, offset: 960)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !806, line: 32, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2033, file: !2034, line: 71, baseType: !2330, size: 32, offset: 448)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2331, line: 19, size: 32, elements: !2332)
!2331 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2332 = !{!2333}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2330, file: !2331, line: 20, baseType: !354, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2033, file: !2034, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2033, file: !2034, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2033, file: !2034, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2033, file: !2034, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2033, file: !2034, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2029, file: !2030, line: 16, baseType: !207, size: 64, offset: 512)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2029, file: !2030, line: 17, baseType: !1421, size: 64, offset: 576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2029, file: !2030, line: 18, baseType: !225, size: 128, offset: 640)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2029, file: !2030, line: 19, baseType: !787, size: 32, offset: 768)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2029, file: !2030, line: 20, baseType: !7, size: 32, offset: 800)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2023, file: !18, line: 701, baseType: !220, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2023, file: !18, line: 702, baseType: !7, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !621, file: !18, line: 705, baseType: !294, size: 32, offset: 4032)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !621, file: !18, line: 708, baseType: !294, size: 32, offset: 4064)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !621, file: !18, line: 709, baseType: !1231, size: 64, offset: 4096)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !621, file: !18, line: 720, baseType: !229, size: 64, offset: 4160)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !617, file: !18, line: 453, baseType: !2214, size: 128, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !617, file: !18, line: 454, baseType: !210, size: 32, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !617, file: !18, line: 455, baseType: !359, size: 32, offset: 224)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !617, file: !18, line: 460, baseType: !325, size: 128, offset: 256)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !617, file: !18, line: 461, baseType: !1113, size: 256, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !617, file: !18, line: 462, baseType: !212, size: 64, offset: 640)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !617, file: !18, line: 463, baseType: !212, size: 64, offset: 704)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !617, file: !18, line: 464, baseType: !212, size: 64, offset: 768)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !617, file: !18, line: 465, baseType: !2359, size: 64, offset: 832)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2361)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !18, line: 367, size: 1408, elements: !2362)
!2362 = !{!2363, !2367, !2371, !2375, !2379, !2383, !2389, !2394, !2398, !2403, !2407, !2411, !2415, !2416, !2420, !2426, !2427, !2428, !2432, !2437, !2441, !2448}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2361, file: !18, line: 368, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!259, !604, !865}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2361, file: !18, line: 369, baseType: !2368, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!259, !1405, !604}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2361, file: !18, line: 372, baseType: !2372, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!259, !616, !865}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2361, file: !18, line: 375, baseType: !2376, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!259, !604}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2361, file: !18, line: 381, baseType: !2380, size: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!259, !1405, !616, !224, !7}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2361, file: !18, line: 383, baseType: !2384, size: 64, offset: 320)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !2387}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !18, line: 290, flags: DIFlagFwdDecl)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2361, file: !18, line: 385, baseType: !2390, size: 64, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!259, !1405, !616, !792, !7, !7, !2393, !1608}
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2361, file: !18, line: 388, baseType: !2395, size: 64, offset: 448)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!259, !1405, !616, !792, !7, !7, !604, !229}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2361, file: !18, line: 393, baseType: !2399, size: 64, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!2402, !616, !2402}
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !211, line: 125, baseType: !386)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2361, file: !18, line: 394, baseType: !2404, size: 64, offset: 576)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !604, !7, !7}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2361, file: !18, line: 395, baseType: !2408, size: 64, offset: 640)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!259, !604, !210}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2361, file: !18, line: 396, baseType: !2412, size: 64, offset: 704)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !604}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2361, file: !18, line: 397, baseType: !1446, size: 64, offset: 768)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2361, file: !18, line: 402, baseType: !2417, size: 64, offset: 832)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!259, !616, !604, !604, !40}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2361, file: !18, line: 404, baseType: !2421, size: 64, offset: 896)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!773, !604, !2424}
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2425, line: 305, baseType: !7)
!2425 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2361, file: !18, line: 405, baseType: !2412, size: 64, offset: 960)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2361, file: !18, line: 406, baseType: !2376, size: 64, offset: 1024)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2361, file: !18, line: 407, baseType: !2429, size: 64, offset: 1088)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!259, !604, !212, !212}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2361, file: !18, line: 409, baseType: !2433, size: 64, offset: 1152)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !604, !2436, !2436}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2361, file: !18, line: 410, baseType: !2438, size: 64, offset: 1216)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!259, !616, !604}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2361, file: !18, line: 413, baseType: !2442, size: 64, offset: 1280)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!259, !2445, !1405, !2447}
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !18, line: 61, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2361, file: !18, line: 415, baseType: !2449, size: 64, offset: 1344)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !1405}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !18, line: 466, baseType: !212, size: 64, offset: 896)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !617, file: !18, line: 467, baseType: !1270, size: 32, offset: 960)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !617, file: !18, line: 468, baseType: !701, offset: 992)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !617, file: !18, line: 469, baseType: !225, size: 128, offset: 1024)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !617, file: !18, line: 470, baseType: !229, size: 64, offset: 1152)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !612, file: !518, line: 87, baseType: !212, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !612, file: !518, line: 94, baseType: !212, size: 64, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !518, line: 96, baseType: !2460, size: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !518, line: 96, size: 64, elements: !2461)
!2461 = !{!2462}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2460, file: !518, line: 101, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !211, line: 143, baseType: !386)
!2464 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !518, line: 103, baseType: !2465, size: 320)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !518, line: 103, size: 320, elements: !2466)
!2466 = !{!2467, !2477, !2480, !2481}
!2467 = !DIDerivedType(tag: DW_TAG_member, scope: !2465, file: !518, line: 104, baseType: !2468, size: 128)
!2468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2465, file: !518, line: 104, size: 128, elements: !2469)
!2469 = !{!2470, !2471}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2468, file: !518, line: 105, baseType: !225, size: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, scope: !2468, file: !518, line: 106, baseType: !2472, size: 128)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2468, file: !518, line: 106, size: 128, elements: !2473)
!2473 = !{!2474, !2475, !2476}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2472, file: !518, line: 107, baseType: !604, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2472, file: !518, line: 109, baseType: !259, size: 32, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2472, file: !518, line: 110, baseType: !259, size: 32, offset: 96)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2465, file: !518, line: 117, baseType: !2478, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !518, line: 117, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2465, file: !518, line: 119, baseType: !229, size: 64, offset: 192)
!2481 = !DIDerivedType(tag: DW_TAG_member, scope: !2465, file: !518, line: 120, baseType: !2482, size: 64, offset: 256)
!2482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2465, file: !518, line: 120, size: 64, elements: !2483)
!2483 = !{!2484, !2485, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2482, file: !518, line: 121, baseType: !229, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2482, file: !518, line: 122, baseType: !212, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, scope: !2482, file: !518, line: 123, baseType: !2487, size: 32)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2482, file: !518, line: 123, size: 32, elements: !2488)
!2488 = !{!2489, !2490, !2491}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2487, file: !518, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2487, file: !518, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2487, file: !518, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2492 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !518, line: 130, baseType: !2493, size: 192)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !518, line: 130, size: 192, elements: !2494)
!2494 = !{!2495, !2496, !2497, !2498, !2499}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2493, file: !518, line: 131, baseType: !212, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2493, file: !518, line: 134, baseType: !270, size: 8, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2493, file: !518, line: 135, baseType: !270, size: 8, offset: 72)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2493, file: !518, line: 136, baseType: !359, size: 32, offset: 96)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2493, file: !518, line: 137, baseType: !7, size: 32, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !518, line: 139, baseType: !2501, size: 256)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !518, line: 139, size: 256, elements: !2502)
!2502 = !{!2503, !2504, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2501, file: !518, line: 140, baseType: !212, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2501, file: !518, line: 141, baseType: !359, size: 32, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2501, file: !518, line: 143, baseType: !225, size: 128, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !518, line: 145, baseType: !2507, size: 256)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !518, line: 145, size: 256, elements: !2508)
!2508 = !{!2509, !2510, !2512, !2513, !2518}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2507, file: !518, line: 146, baseType: !212, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2507, file: !518, line: 147, baseType: !2511, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !536, line: 509, baseType: !604)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2507, file: !518, line: 148, baseType: !212, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, scope: !2507, file: !518, line: 149, baseType: !2514, size: 64, offset: 192)
!2514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2507, file: !518, line: 149, size: 64, elements: !2515)
!2515 = !{!2516, !2517}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2514, file: !518, line: 150, baseType: !516, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2514, file: !518, line: 151, baseType: !359, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2507, file: !518, line: 156, baseType: !701, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !518, line: 159, baseType: !2520, size: 128)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !518, line: 159, size: 128, elements: !2521)
!2521 = !{!2522, !2596}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2520, file: !518, line: 161, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !48, line: 110, size: 1152, elements: !2525)
!2525 = !{!2526, !2536, !2557, !2558, !2569, !2570, !2571, !2583, !2584, !2585}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2524, file: !48, line: 111, baseType: !2527, size: 384)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !48, line: 19, size: 384, elements: !2528)
!2528 = !{!2529, !2531, !2532, !2533, !2534, !2535}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2527, file: !48, line: 20, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2527, file: !48, line: 21, baseType: !2530, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2527, file: !48, line: 22, baseType: !2530, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2527, file: !48, line: 23, baseType: !212, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2527, file: !48, line: 24, baseType: !212, size: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2527, file: !48, line: 25, baseType: !212, size: 64, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2524, file: !48, line: 112, baseType: !2537, size: 64, offset: 384)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2539, line: 105, size: 128, elements: !2540)
!2539 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2540 = !{!2541, !2542}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2538, file: !2539, line: 110, baseType: !212, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2538, file: !2539, line: 118, baseType: !2543, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2539, line: 95, size: 448, elements: !2545)
!2545 = !{!2546, !2547, !2552, !2553, !2554, !2555, !2556}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2544, file: !2539, line: 96, baseType: !946, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2544, file: !2539, line: 97, baseType: !2548, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2539, line: 60, baseType: !2550)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !2537}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2544, file: !2539, line: 98, baseType: !2548, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2544, file: !2539, line: 99, baseType: !773, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2544, file: !2539, line: 100, baseType: !773, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2544, file: !2539, line: 101, baseType: !1208, size: 128, align: 64, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2544, file: !2539, line: 102, baseType: !2537, size: 64, offset: 384)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2524, file: !48, line: 113, baseType: !2538, size: 128, offset: 448)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2524, file: !48, line: 114, baseType: !2559, size: 192, offset: 576)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2560, line: 26, size: 192, elements: !2561)
!2560 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2561 = !{!2562, !2563}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2559, file: !2560, line: 27, baseType: !7, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2559, file: !2560, line: 28, baseType: !2564, size: 128, offset: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2565, line: 43, size: 128, elements: !2566)
!2565 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2566 = !{!2567, !2568}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2564, file: !2565, line: 44, baseType: !315)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2564, file: !2565, line: 45, baseType: !225, size: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2524, file: !48, line: 115, baseType: !47, size: 32, offset: 768)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2524, file: !48, line: 116, baseType: !7, size: 32, offset: 800)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2524, file: !48, line: 117, baseType: !2572, size: 64, offset: 832)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2574)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !48, line: 67, size: 256, elements: !2575)
!2575 = !{!2576, !2577, !2581, !2582}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2574, file: !48, line: 73, baseType: !2412, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2574, file: !48, line: 78, baseType: !2578, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{null, !2523}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2574, file: !48, line: 83, baseType: !2578, size: 64, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2574, file: !48, line: 89, baseType: !571, size: 64, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2524, file: !48, line: 118, baseType: !229, size: 64, offset: 896)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2524, file: !48, line: 119, baseType: !259, size: 32, offset: 960)
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2524, file: !48, line: 120, baseType: !2586, size: 128, offset: 1024)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2524, file: !48, line: 120, size: 128, elements: !2587)
!2587 = !{!2588, !2594}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2586, file: !48, line: 121, baseType: !2589, size: 128)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2590, line: 6, size: 128, elements: !2591)
!2590 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2589, file: !2590, line: 7, baseType: !386, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2589, file: !2590, line: 8, baseType: !386, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2586, file: !48, line: 122, baseType: !2595)
!2595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2589, elements: !1895)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2520, file: !518, line: 162, baseType: !229, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !609, file: !518, line: 176, baseType: !1208, size: 128, align: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !518, line: 179, baseType: !2599, size: 32, offset: 384)
!2599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !518, line: 179, size: 32, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2599, file: !518, line: 184, baseType: !359, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2599, file: !518, line: 192, baseType: !7, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2599, file: !518, line: 194, baseType: !7, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2599, file: !518, line: 195, baseType: !259, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !605, file: !518, line: 199, baseType: !359, size: 32, offset: 416)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !576, file: !55, line: 522, baseType: !604, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !576, file: !55, line: 528, baseType: !2608, size: 64, offset: 576)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !576, file: !55, line: 532, baseType: !2610, size: 64, offset: 640)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !576, file: !55, line: 536, baseType: !2511, size: 64, offset: 704)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !555, file: !55, line: 563, baseType: !2613, size: 64, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!574, !575, !54}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !555, file: !55, line: 565, baseType: !2617, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{null, !575, !212, !212}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !555, file: !55, line: 567, baseType: !2621, size: 64, offset: 448)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!212, !524}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !555, file: !55, line: 571, baseType: !571, size: 64, offset: 512)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !555, file: !55, line: 574, baseType: !571, size: 64, offset: 576)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !555, file: !55, line: 579, baseType: !2627, size: 64, offset: 640)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!259, !524, !212, !229, !259, !259}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !555, file: !55, line: 585, baseType: !2631, size: 64, offset: 704)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!730, !524}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !555, file: !55, line: 615, baseType: !2635, size: 64, offset: 768)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!604, !524, !212}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !525, file: !518, line: 359, baseType: !212, size: 64, offset: 1216)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !525, file: !518, line: 361, baseType: !1405, size: 64, offset: 1280)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !525, file: !518, line: 362, baseType: !229, size: 64, offset: 1344)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !525, file: !518, line: 365, baseType: !946, size: 64, offset: 1408)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !525, file: !518, line: 373, baseType: !2643, offset: 1472)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !518, line: 296, elements: !323)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !521, file: !518, line: 391, baseType: !329, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !521, file: !518, line: 392, baseType: !386, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !521, file: !518, line: 394, baseType: !1639, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !521, file: !518, line: 398, baseType: !212, size: 64, offset: 256)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !521, file: !518, line: 399, baseType: !212, size: 64, offset: 320)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !521, file: !518, line: 405, baseType: !212, size: 64, offset: 384)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !521, file: !518, line: 406, baseType: !212, size: 64, offset: 448)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !521, file: !518, line: 407, baseType: !2652, size: 64, offset: 512)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !536, line: 286, baseType: !2654)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 286, size: 64, elements: !2655)
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2654, file: !536, line: 286, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !541, line: 18, baseType: !212)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !521, file: !518, line: 416, baseType: !359, size: 32, offset: 576)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !521, file: !518, line: 428, baseType: !359, size: 32, offset: 608)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !521, file: !518, line: 437, baseType: !359, size: 32, offset: 640)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !521, file: !518, line: 447, baseType: !359, size: 32, offset: 672)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !521, file: !518, line: 450, baseType: !946, size: 64, offset: 704)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !521, file: !518, line: 452, baseType: !259, size: 32, offset: 768)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !521, file: !518, line: 454, baseType: !701, offset: 800)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !521, file: !518, line: 457, baseType: !1113, size: 256, offset: 832)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !521, file: !518, line: 459, baseType: !225, size: 128, offset: 1088)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !521, file: !518, line: 466, baseType: !212, size: 64, offset: 1216)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !521, file: !518, line: 467, baseType: !212, size: 64, offset: 1280)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !521, file: !518, line: 469, baseType: !212, size: 64, offset: 1344)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !521, file: !518, line: 470, baseType: !212, size: 64, offset: 1408)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !521, file: !518, line: 471, baseType: !948, size: 64, offset: 1472)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !521, file: !518, line: 472, baseType: !212, size: 64, offset: 1536)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !521, file: !518, line: 473, baseType: !212, size: 64, offset: 1600)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !521, file: !518, line: 474, baseType: !212, size: 64, offset: 1664)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !521, file: !518, line: 475, baseType: !212, size: 64, offset: 1728)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !521, file: !518, line: 477, baseType: !701, offset: 1792)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !521, file: !518, line: 478, baseType: !212, size: 64, offset: 1792)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !521, file: !518, line: 478, baseType: !212, size: 64, offset: 1856)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !521, file: !518, line: 478, baseType: !212, size: 64, offset: 1920)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !521, file: !518, line: 478, baseType: !212, size: 64, offset: 1984)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !521, file: !518, line: 479, baseType: !212, size: 64, offset: 2048)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !521, file: !518, line: 479, baseType: !212, size: 64, offset: 2112)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !521, file: !518, line: 479, baseType: !212, size: 64, offset: 2176)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !521, file: !518, line: 480, baseType: !212, size: 64, offset: 2240)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !521, file: !518, line: 480, baseType: !212, size: 64, offset: 2304)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !521, file: !518, line: 480, baseType: !212, size: 64, offset: 2368)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !521, file: !518, line: 480, baseType: !212, size: 64, offset: 2432)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !521, file: !518, line: 482, baseType: !2689, size: 2816, offset: 2496)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 2816, elements: !2690)
!2690 = !{!2691}
!2691 = !DISubrange(count: 44)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !521, file: !518, line: 488, baseType: !2693, size: 256, offset: 5312)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2694, line: 60, size: 256, elements: !2695)
!2694 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2695 = !{!2696}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2693, file: !2694, line: 61, baseType: !2697, size: 256)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !946, size: 256, elements: !1699)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !521, file: !518, line: 490, baseType: !2699, size: 64, offset: 5568)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !518, line: 490, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !521, file: !518, line: 493, baseType: !2702, size: 896, offset: 5632)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2703, line: 53, baseType: !2704)
!2703 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2703, line: 13, size: 896, elements: !2705)
!2705 = !{!2706, !2707, !2708, !2709, !2712, !2713, !2714, !2715, !2735, !2736, !2737}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2704, file: !2703, line: 18, baseType: !386, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2704, file: !2703, line: 28, baseType: !948, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2704, file: !2703, line: 31, baseType: !1113, size: 256, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2704, file: !2703, line: 32, baseType: !2710, size: 64, offset: 384)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2703, line: 32, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2704, file: !2703, line: 37, baseType: !218, size: 16, offset: 448)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2704, file: !2703, line: 40, baseType: !942, size: 192, offset: 512)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2704, file: !2703, line: 41, baseType: !229, size: 64, offset: 704)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2704, file: !2703, line: 42, baseType: !2716, size: 64, offset: 768)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2718)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2719, line: 13, size: 896, elements: !2720)
!2719 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2720 = !{!2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2718, file: !2719, line: 14, baseType: !229, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2718, file: !2719, line: 15, baseType: !212, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2718, file: !2719, line: 17, baseType: !212, size: 64, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2718, file: !2719, line: 17, baseType: !212, size: 64, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2718, file: !2719, line: 19, baseType: !175, size: 64, offset: 256)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2718, file: !2719, line: 21, baseType: !175, size: 64, offset: 320)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2718, file: !2719, line: 22, baseType: !175, size: 64, offset: 384)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2718, file: !2719, line: 23, baseType: !175, size: 64, offset: 448)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2718, file: !2719, line: 24, baseType: !175, size: 64, offset: 512)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2718, file: !2719, line: 25, baseType: !175, size: 64, offset: 576)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2718, file: !2719, line: 26, baseType: !175, size: 64, offset: 640)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2718, file: !2719, line: 27, baseType: !175, size: 64, offset: 704)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2718, file: !2719, line: 28, baseType: !175, size: 64, offset: 768)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2718, file: !2719, line: 29, baseType: !175, size: 64, offset: 832)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2704, file: !2703, line: 44, baseType: !359, size: 32, offset: 832)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2704, file: !2703, line: 50, baseType: !276, size: 16, offset: 864)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2704, file: !2703, line: 51, baseType: !2738, size: 16, offset: 880)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !277, line: 18, baseType: !2739)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !217, line: 23, baseType: !1781)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !521, file: !518, line: 495, baseType: !212, size: 64, offset: 6528)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !521, file: !518, line: 497, baseType: !2742, size: 64, offset: 6592)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !518, line: 381, size: 384, elements: !2744)
!2744 = !{!2745, !2746, !2752}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2743, file: !518, line: 382, baseType: !359, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2743, file: !518, line: 383, baseType: !2747, size: 128, offset: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !518, line: 376, size: 128, elements: !2748)
!2748 = !{!2749, !2750}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2747, file: !518, line: 377, baseType: !340, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2747, file: !518, line: 378, baseType: !2751, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2743, file: !518, line: 384, baseType: !2559, size: 192, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !521, file: !518, line: 500, baseType: !701, offset: 6656)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !521, file: !518, line: 501, baseType: !2755, size: 64, offset: 6656)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !518, line: 387, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !521, file: !518, line: 516, baseType: !1277, size: 64, offset: 6720)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !521, file: !518, line: 519, baseType: !1405, size: 64, offset: 6784)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !521, file: !518, line: 521, baseType: !2760, size: 64, offset: 6848)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !518, line: 521, flags: DIFlagFwdDecl)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !521, file: !518, line: 545, baseType: !359, size: 32, offset: 6912)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !521, file: !518, line: 548, baseType: !773, size: 8, offset: 6944)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !521, file: !518, line: 550, baseType: !2765, offset: 6952)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2766, line: 142, elements: !323)
!2766 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !521, file: !518, line: 554, baseType: !1297, size: 256, offset: 6976)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !521, file: !518, line: 557, baseType: !293, size: 32, offset: 7232)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !517, file: !518, line: 565, baseType: !2770, offset: 7296)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, elements: !2771)
!2771 = !{!2772}
!2772 = !DISubrange(count: -1)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !341, file: !342, line: 758, baseType: !516, size: 64, offset: 3968)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !341, file: !342, line: 761, baseType: !2775, size: 320, offset: 4032)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2694, line: 34, size: 320, elements: !2776)
!2776 = !{!2777, !2778}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2775, file: !2694, line: 35, baseType: !386, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2775, file: !2694, line: 36, baseType: !2779, size: 256, offset: 64)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 256, elements: !1699)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !341, file: !342, line: 766, baseType: !259, size: 32, offset: 4352)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !341, file: !342, line: 767, baseType: !259, size: 32, offset: 4384)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !341, file: !342, line: 768, baseType: !259, size: 32, offset: 4416)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !341, file: !342, line: 770, baseType: !259, size: 32, offset: 4448)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !341, file: !342, line: 772, baseType: !212, size: 64, offset: 4480)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !341, file: !342, line: 775, baseType: !7, size: 32, offset: 4544)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !341, file: !342, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !341, file: !342, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !341, file: !342, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !341, file: !342, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !341, file: !342, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !341, file: !342, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !341, file: !342, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !341, file: !342, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !341, file: !342, line: 831, baseType: !212, size: 64, offset: 4672)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !341, file: !342, line: 833, baseType: !2796, size: 384, offset: 4736)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !61, line: 25, size: 384, elements: !2797)
!2797 = !{!2798, !2803}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2796, file: !61, line: 26, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!175, !2802}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, scope: !2796, file: !61, line: 27, baseType: !2804, size: 320, offset: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2796, file: !61, line: 27, size: 320, elements: !2805)
!2805 = !{!2806, !2816, !2841}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2804, file: !61, line: 36, baseType: !2807, size: 320)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2804, file: !61, line: 29, size: 320, elements: !2808)
!2808 = !{!2809, !2811, !2812, !2813, !2814, !2815}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2807, file: !61, line: 30, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2807, file: !61, line: 31, baseType: !293, size: 32, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2807, file: !61, line: 32, baseType: !293, size: 32, offset: 96)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2807, file: !61, line: 33, baseType: !293, size: 32, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2807, file: !61, line: 34, baseType: !386, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2807, file: !61, line: 35, baseType: !2810, size: 64, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2804, file: !61, line: 46, baseType: !2817, size: 192)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2804, file: !61, line: 38, size: 192, elements: !2818)
!2818 = !{!2819, !2820, !2821, !2840}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2817, file: !61, line: 39, baseType: !468, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2817, file: !61, line: 40, baseType: !60, size: 32, offset: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, scope: !2817, file: !61, line: 41, baseType: !2822, size: 64, offset: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2817, file: !61, line: 41, size: 64, elements: !2823)
!2823 = !{!2824, !2832}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2822, file: !61, line: 42, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2827, line: 7, size: 128, elements: !2828)
!2827 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2828 = !{!2829, !2831}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2826, file: !2827, line: 8, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !470, line: 93, baseType: !418)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2826, file: !2827, line: 9, baseType: !418, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2822, file: !61, line: 43, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2835, line: 7, size: 64, elements: !2836)
!2835 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2836 = !{!2837, !2839}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2834, file: !2835, line: 8, baseType: !2838, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2835, line: 5, baseType: !1755)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2834, file: !2835, line: 9, baseType: !1755, size: 32, offset: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2817, file: !61, line: 45, baseType: !386, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2804, file: !61, line: 54, baseType: !2842, size: 256)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2804, file: !61, line: 48, size: 256, elements: !2843)
!2843 = !{!2844, !2847, !2848, !2849, !2850}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2842, file: !61, line: 49, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !61, line: 14, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2842, file: !61, line: 50, baseType: !259, size: 32, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2842, file: !61, line: 51, baseType: !259, size: 32, offset: 96)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2842, file: !61, line: 52, baseType: !212, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2842, file: !61, line: 53, baseType: !212, size: 64, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !341, file: !342, line: 835, baseType: !2852, size: 32, offset: 5120)
!2852 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !211, line: 22, baseType: !2853)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !470, line: 28, baseType: !259)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !341, file: !342, line: 836, baseType: !2852, size: 32, offset: 5152)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !341, file: !342, line: 840, baseType: !212, size: 64, offset: 5184)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !341, file: !342, line: 849, baseType: !340, size: 64, offset: 5248)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !341, file: !342, line: 852, baseType: !340, size: 64, offset: 5312)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !341, file: !342, line: 857, baseType: !225, size: 128, offset: 5376)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !341, file: !342, line: 858, baseType: !225, size: 128, offset: 5504)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !341, file: !342, line: 859, baseType: !340, size: 64, offset: 5632)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !341, file: !342, line: 867, baseType: !225, size: 128, offset: 5696)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !341, file: !342, line: 868, baseType: !225, size: 128, offset: 5824)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !341, file: !342, line: 871, baseType: !1691, size: 64, offset: 5952)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !341, file: !342, line: 872, baseType: !2865, size: 512, offset: 6016)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 512, elements: !1699)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !341, file: !342, line: 873, baseType: !225, size: 128, offset: 6528)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !341, file: !342, line: 874, baseType: !225, size: 128, offset: 6656)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !341, file: !342, line: 876, baseType: !2869, size: 64, offset: 6784)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !341, file: !342, line: 879, baseType: !894, size: 64, offset: 6848)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !341, file: !342, line: 882, baseType: !894, size: 64, offset: 6912)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !341, file: !342, line: 884, baseType: !386, size: 64, offset: 6976)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !341, file: !342, line: 885, baseType: !386, size: 64, offset: 7040)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !341, file: !342, line: 890, baseType: !386, size: 64, offset: 7104)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !341, file: !342, line: 891, baseType: !2876, size: 128, offset: 7168)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !342, line: 242, size: 128, elements: !2877)
!2877 = !{!2878, !2879, !2880}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2876, file: !342, line: 244, baseType: !386, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2876, file: !342, line: 245, baseType: !386, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2876, file: !342, line: 246, baseType: !315, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !341, file: !342, line: 900, baseType: !212, size: 64, offset: 7296)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !341, file: !342, line: 901, baseType: !212, size: 64, offset: 7360)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !341, file: !342, line: 904, baseType: !386, size: 64, offset: 7424)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !341, file: !342, line: 907, baseType: !386, size: 64, offset: 7488)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !341, file: !342, line: 910, baseType: !212, size: 64, offset: 7552)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !341, file: !342, line: 911, baseType: !212, size: 64, offset: 7616)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !341, file: !342, line: 914, baseType: !2888, size: 640, offset: 7680)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2889, line: 123, size: 640, elements: !2890)
!2889 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2890 = !{!2891, !2897, !2898}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2888, file: !2889, line: 124, baseType: !2892, size: 576)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2893, size: 576, elements: !838)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2889, line: 108, size: 192, elements: !2894)
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2893, file: !2889, line: 109, baseType: !386, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2893, file: !2889, line: 110, baseType: !483, size: 128, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2888, file: !2889, line: 125, baseType: !7, size: 32, offset: 576)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2888, file: !2889, line: 126, baseType: !7, size: 32, offset: 608)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !341, file: !342, line: 917, baseType: !2900, size: 192, offset: 8320)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2889, line: 134, size: 192, elements: !2901)
!2901 = !{!2902, !2903}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2900, file: !2889, line: 135, baseType: !1208, size: 128, align: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2900, file: !2889, line: 136, baseType: !7, size: 32, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !341, file: !342, line: 923, baseType: !1717, size: 64, offset: 8512)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !341, file: !342, line: 926, baseType: !1717, size: 64, offset: 8576)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !341, file: !342, line: 929, baseType: !1717, size: 64, offset: 8640)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !341, file: !342, line: 933, baseType: !1747, size: 64, offset: 8704)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !341, file: !342, line: 943, baseType: !2909, size: 128, offset: 8768)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 128, elements: !1242)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !341, file: !342, line: 945, baseType: !2911, size: 64, offset: 8896)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !342, line: 49, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !341, file: !342, line: 956, baseType: !2914, size: 64, offset: 8960)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !342, line: 45, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !341, file: !342, line: 959, baseType: !2917, size: 64, offset: 9024)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !342, line: 959, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !341, file: !342, line: 962, baseType: !2920, size: 64, offset: 9088)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !342, line: 66, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !341, file: !342, line: 966, baseType: !2923, size: 64, offset: 9152)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2925, line: 35, flags: DIFlagFwdDecl)
!2925 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !341, file: !342, line: 969, baseType: !2927, size: 64, offset: 9216)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2929, line: 82, size: 7296, elements: !2930)
!2929 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2930 = !{!2931, !2932, !2933, !2934, !2935, !2936, !2937, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2966, !2975, !2976, !2978, !2979, !2980, !2983, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3013, !3014, !3021, !3022, !3023, !3024, !3025, !3026}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2928, file: !2929, line: 83, baseType: !354, size: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2928, file: !2929, line: 84, baseType: !359, size: 32, offset: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2928, file: !2929, line: 85, baseType: !259, size: 32, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2928, file: !2929, line: 86, baseType: !225, size: 128, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2928, file: !2929, line: 88, baseType: !1189, size: 128, offset: 256)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2928, file: !2929, line: 91, baseType: !340, size: 64, offset: 384)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2928, file: !2929, line: 94, baseType: !2938, size: 192, offset: 448)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2939, line: 30, size: 192, elements: !2940)
!2939 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2940 = !{!2941, !2942}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2938, file: !2939, line: 31, baseType: !225, size: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2938, file: !2939, line: 32, baseType: !2943, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2944, line: 25, baseType: !2945)
!2944 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2944, line: 23, size: 64, elements: !2946)
!2946 = !{!2947}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2945, file: !2944, line: 24, baseType: !508, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2928, file: !2929, line: 97, baseType: !822, size: 64, offset: 640)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2928, file: !2929, line: 100, baseType: !259, size: 32, offset: 704)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2928, file: !2929, line: 106, baseType: !259, size: 32, offset: 736)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2928, file: !2929, line: 107, baseType: !340, size: 64, offset: 768)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2928, file: !2929, line: 110, baseType: !259, size: 32, offset: 832)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2928, file: !2929, line: 111, baseType: !7, size: 32, offset: 864)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2928, file: !2929, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2928, file: !2929, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2928, file: !2929, line: 128, baseType: !259, size: 32, offset: 928)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2928, file: !2929, line: 129, baseType: !225, size: 128, offset: 960)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2928, file: !2929, line: 132, baseType: !426, size: 512, offset: 1088)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2928, file: !2929, line: 133, baseType: !434, size: 64, offset: 1600)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2928, file: !2929, line: 140, baseType: !2961, size: 256, offset: 1664)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2962, size: 256, elements: !1739)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2929, line: 38, size: 128, elements: !2963)
!2963 = !{!2964, !2965}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2962, file: !2929, line: 39, baseType: !386, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2962, file: !2929, line: 40, baseType: !386, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2928, file: !2929, line: 146, baseType: !2967, size: 192, offset: 1920)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2929, line: 66, size: 192, elements: !2968)
!2968 = !{!2969}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2967, file: !2929, line: 67, baseType: !2970, size: 192)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2929, line: 47, size: 192, elements: !2971)
!2971 = !{!2972, !2973, !2974}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2970, file: !2929, line: 48, baseType: !948, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2970, file: !2929, line: 49, baseType: !948, size: 64, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2970, file: !2929, line: 50, baseType: !948, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2928, file: !2929, line: 150, baseType: !2888, size: 640, offset: 2112)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2928, file: !2929, line: 153, baseType: !2977, size: 256, offset: 2752)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1691, size: 256, elements: !1699)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2928, file: !2929, line: 159, baseType: !1691, size: 64, offset: 3008)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2928, file: !2929, line: 162, baseType: !259, size: 32, offset: 3072)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2928, file: !2929, line: 164, baseType: !2981, size: 64, offset: 3136)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2929, line: 164, flags: DIFlagFwdDecl)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2928, file: !2929, line: 175, baseType: !2984, size: 32, offset: 3200)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !473, line: 805, baseType: !2985)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 798, size: 32, elements: !2986)
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2985, file: !473, line: 803, baseType: !657, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2985, file: !473, line: 804, baseType: !701, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2928, file: !2929, line: 176, baseType: !386, size: 64, offset: 3264)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2928, file: !2929, line: 176, baseType: !386, size: 64, offset: 3328)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2928, file: !2929, line: 176, baseType: !386, size: 64, offset: 3392)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2928, file: !2929, line: 176, baseType: !386, size: 64, offset: 3456)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2928, file: !2929, line: 177, baseType: !386, size: 64, offset: 3520)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2928, file: !2929, line: 178, baseType: !386, size: 64, offset: 3584)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2928, file: !2929, line: 179, baseType: !2876, size: 128, offset: 3648)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2928, file: !2929, line: 180, baseType: !212, size: 64, offset: 3776)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2928, file: !2929, line: 180, baseType: !212, size: 64, offset: 3840)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2928, file: !2929, line: 180, baseType: !212, size: 64, offset: 3904)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2928, file: !2929, line: 180, baseType: !212, size: 64, offset: 3968)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2928, file: !2929, line: 181, baseType: !212, size: 64, offset: 4032)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2928, file: !2929, line: 181, baseType: !212, size: 64, offset: 4096)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2928, file: !2929, line: 181, baseType: !212, size: 64, offset: 4160)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2928, file: !2929, line: 181, baseType: !212, size: 64, offset: 4224)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2928, file: !2929, line: 182, baseType: !212, size: 64, offset: 4288)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2928, file: !2929, line: 182, baseType: !212, size: 64, offset: 4352)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2928, file: !2929, line: 182, baseType: !212, size: 64, offset: 4416)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2928, file: !2929, line: 182, baseType: !212, size: 64, offset: 4480)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2928, file: !2929, line: 183, baseType: !212, size: 64, offset: 4544)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2928, file: !2929, line: 183, baseType: !212, size: 64, offset: 4608)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2928, file: !2929, line: 184, baseType: !3011, offset: 4672)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3012, line: 12, elements: !323)
!3012 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2928, file: !2929, line: 192, baseType: !388, size: 64, offset: 4672)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2928, file: !2929, line: 203, baseType: !3015, size: 2048, offset: 4736)
!3015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3016, size: 2048, elements: !1242)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3017, line: 43, size: 128, elements: !3018)
!3017 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3018 = !{!3019, !3020}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3016, file: !3017, line: 44, baseType: !1439, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3016, file: !3017, line: 45, baseType: !1439, size: 64, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2928, file: !2929, line: 220, baseType: !773, size: 8, offset: 6784)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2928, file: !2929, line: 221, baseType: !1781, size: 16, offset: 6800)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2928, file: !2929, line: 222, baseType: !1781, size: 16, offset: 6816)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2928, file: !2929, line: 224, baseType: !516, size: 64, offset: 6848)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2928, file: !2929, line: 227, baseType: !942, size: 192, offset: 6912)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2928, file: !2929, line: 233, baseType: !942, size: 192, offset: 7104)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !341, file: !342, line: 970, baseType: !3028, size: 64, offset: 9280)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2929, line: 20, size: 16576, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3034}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3029, file: !2929, line: 21, baseType: !701)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3029, file: !2929, line: 22, baseType: !354, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3029, file: !2929, line: 23, baseType: !1189, size: 128, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3029, file: !2929, line: 24, baseType: !3035, size: 16384, offset: 192)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3036, size: 16384, elements: !2074)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2939, line: 49, size: 256, elements: !3037)
!3037 = !{!3038}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3036, file: !2939, line: 50, baseType: !3039, size: 256)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2939, line: 35, size: 256, elements: !3040)
!3040 = !{!3041, !3048, !3049, !3055}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3039, file: !2939, line: 37, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3043, line: 19, baseType: !3044)
!3043 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3043, line: 18, baseType: !3046)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{null, !259}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3039, file: !2939, line: 38, baseType: !212, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3039, file: !2939, line: 44, baseType: !3050, size: 64, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3043, line: 22, baseType: !3051)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3043, line: 21, baseType: !3053)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{null}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3039, file: !2939, line: 46, baseType: !2943, size: 64, offset: 192)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !341, file: !342, line: 971, baseType: !2943, size: 64, offset: 9344)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !341, file: !342, line: 972, baseType: !2943, size: 64, offset: 9408)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !341, file: !342, line: 974, baseType: !2943, size: 64, offset: 9472)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !341, file: !342, line: 975, baseType: !2938, size: 192, offset: 9536)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !341, file: !342, line: 976, baseType: !212, size: 64, offset: 9728)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !341, file: !342, line: 977, baseType: !1437, size: 64, offset: 9792)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !341, file: !342, line: 978, baseType: !7, size: 32, offset: 9856)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !341, file: !342, line: 980, baseType: !1211, size: 64, offset: 9920)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !341, file: !342, line: 989, baseType: !3065, size: 128, offset: 9984)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3066, line: 35, size: 128, elements: !3067)
!3066 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3067 = !{!3068, !3069, !3070}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3065, file: !3066, line: 36, baseType: !259, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3065, file: !3066, line: 37, baseType: !359, size: 32, offset: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3065, file: !3066, line: 38, baseType: !3071, size: 64, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3066, line: 23, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !341, file: !342, line: 992, baseType: !386, size: 64, offset: 10112)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !341, file: !342, line: 993, baseType: !386, size: 64, offset: 10176)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !341, file: !342, line: 996, baseType: !701, offset: 10240)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !341, file: !342, line: 999, baseType: !315, offset: 10240)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !341, file: !342, line: 1001, baseType: !3078, size: 64, offset: 10240)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !342, line: 636, size: 64, elements: !3079)
!3079 = !{!3080}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3078, file: !342, line: 637, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !341, file: !342, line: 1005, baseType: !325, size: 128, offset: 10304)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !341, file: !342, line: 1007, baseType: !340, size: 64, offset: 10432)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !341, file: !342, line: 1009, baseType: !3085, size: 64, offset: 10496)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !342, line: 1009, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !341, file: !342, line: 1043, baseType: !229, size: 64, offset: 10560)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !341, file: !342, line: 1046, baseType: !3089, size: 64, offset: 10624)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !342, line: 41, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !341, file: !342, line: 1050, baseType: !3092, size: 64, offset: 10688)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !342, line: 42, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !341, file: !342, line: 1054, baseType: !3095, size: 64, offset: 10752)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !342, line: 55, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !341, file: !342, line: 1056, baseType: !1136, size: 64, offset: 10816)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !341, file: !342, line: 1058, baseType: !3099, size: 64, offset: 10880)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3101, line: 99, size: 704, elements: !3102)
!3101 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3102 = !{!3103, !3104, !3105, !3106, !3107, !3108, !3109, !3128, !3129}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3100, file: !3101, line: 100, baseType: !946, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3100, file: !3101, line: 101, baseType: !359, size: 32, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3100, file: !3101, line: 102, baseType: !359, size: 32, offset: 96)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3100, file: !3101, line: 105, baseType: !701, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3100, file: !3101, line: 107, baseType: !218, size: 16, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3100, file: !3101, line: 109, baseType: !2214, size: 128, offset: 192)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3100, file: !3101, line: 110, baseType: !3110, size: 64, offset: 320)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3101, line: 73, size: 448, elements: !3112)
!3112 = !{!3113, !3116, !3117, !3122, !3127}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3111, file: !3101, line: 74, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3101, line: 74, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3111, file: !3101, line: 75, baseType: !3099, size: 64, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, scope: !3111, file: !3101, line: 83, baseType: !3118, size: 128, offset: 128)
!3118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3111, file: !3101, line: 83, size: 128, elements: !3119)
!3119 = !{!3120, !3121}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3118, file: !3101, line: 84, baseType: !225, size: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3118, file: !3101, line: 85, baseType: !2478, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, scope: !3111, file: !3101, line: 87, baseType: !3123, size: 128, offset: 256)
!3123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3111, file: !3101, line: 87, size: 128, elements: !3124)
!3124 = !{!3125, !3126}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3123, file: !3101, line: 88, baseType: !826, size: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3123, file: !3101, line: 89, baseType: !1208, size: 128, align: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3111, file: !3101, line: 92, baseType: !7, size: 32, offset: 384)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3100, file: !3101, line: 111, baseType: !822, size: 64, offset: 384)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3100, file: !3101, line: 113, baseType: !1297, size: 256, offset: 448)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !341, file: !342, line: 1061, baseType: !3131, size: 64, offset: 10944)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !342, line: 43, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !341, file: !342, line: 1064, baseType: !212, size: 64, offset: 11008)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !341, file: !342, line: 1065, baseType: !3135, size: 64, offset: 11072)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2939, line: 14, baseType: !3137)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2939, line: 12, size: 384, elements: !3138)
!3138 = !{!3139}
!3139 = !DIDerivedType(tag: DW_TAG_member, scope: !3137, file: !2939, line: 13, baseType: !3140, size: 384)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3137, file: !2939, line: 13, size: 384, elements: !3141)
!3141 = !{!3142, !3143, !3144, !3145}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3140, file: !2939, line: 13, baseType: !259, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3140, file: !2939, line: 13, baseType: !259, size: 32, offset: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3140, file: !2939, line: 13, baseType: !259, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3140, file: !2939, line: 13, baseType: !3146, size: 256, offset: 128)
!3146 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3147, line: 32, size: 256, elements: !3148)
!3147 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3148 = !{!3149, !3154, !3167, !3173, !3182, !3202, !3207}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3146, file: !3147, line: 37, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3147, line: 34, size: 64, elements: !3151)
!3151 = !{!3152, !3153}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3150, file: !3147, line: 35, baseType: !2853, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3150, file: !3147, line: 36, baseType: !633, size: 32, offset: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3146, file: !3147, line: 45, baseType: !3155, size: 192)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3147, line: 40, size: 192, elements: !3156)
!3156 = !{!3157, !3159, !3160, !3166}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3155, file: !3147, line: 41, baseType: !3158, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !470, line: 95, baseType: !259)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3155, file: !3147, line: 42, baseType: !259, size: 32, offset: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3155, file: !3147, line: 43, baseType: !3161, size: 64, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3147, line: 11, baseType: !3162)
!3162 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3147, line: 8, size: 64, elements: !3163)
!3163 = !{!3164, !3165}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3162, file: !3147, line: 9, baseType: !259, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3162, file: !3147, line: 10, baseType: !229, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3155, file: !3147, line: 44, baseType: !259, size: 32, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3146, file: !3147, line: 52, baseType: !3168, size: 128)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3147, line: 48, size: 128, elements: !3169)
!3169 = !{!3170, !3171, !3172}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3168, file: !3147, line: 49, baseType: !2853, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3168, file: !3147, line: 50, baseType: !633, size: 32, offset: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3168, file: !3147, line: 51, baseType: !3161, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3146, file: !3147, line: 61, baseType: !3174, size: 256)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3147, line: 55, size: 256, elements: !3175)
!3175 = !{!3176, !3177, !3178, !3179, !3181}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3174, file: !3147, line: 56, baseType: !2853, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3174, file: !3147, line: 57, baseType: !633, size: 32, offset: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3174, file: !3147, line: 58, baseType: !259, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3174, file: !3147, line: 59, baseType: !3180, size: 64, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !470, line: 94, baseType: !1436)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3174, file: !3147, line: 60, baseType: !3180, size: 64, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3146, file: !3147, line: 95, baseType: !3183, size: 256)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3147, line: 64, size: 256, elements: !3184)
!3184 = !{!3185, !3186}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3183, file: !3147, line: 65, baseType: !229, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, scope: !3183, file: !3147, line: 77, baseType: !3187, size: 192, offset: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3183, file: !3147, line: 77, size: 192, elements: !3188)
!3188 = !{!3189, !3190, !3197}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3187, file: !3147, line: 82, baseType: !1781, size: 16)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3187, file: !3147, line: 88, baseType: !3191, size: 192)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3187, file: !3147, line: 84, size: 192, elements: !3192)
!3192 = !{!3193, !3195, !3196}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3191, file: !3147, line: 85, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 64, elements: !464)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3191, file: !3147, line: 86, baseType: !229, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3191, file: !3147, line: 87, baseType: !229, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3187, file: !3147, line: 93, baseType: !3198, size: 96)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3187, file: !3147, line: 90, size: 96, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3198, file: !3147, line: 91, baseType: !3194, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3198, file: !3147, line: 92, baseType: !294, size: 32, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3146, file: !3147, line: 101, baseType: !3203, size: 128)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3147, line: 98, size: 128, elements: !3204)
!3204 = !{!3205, !3206}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3203, file: !3147, line: 99, baseType: !175, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3203, file: !3147, line: 100, baseType: !259, size: 32, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3146, file: !3147, line: 108, baseType: !3208, size: 128)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3147, line: 104, size: 128, elements: !3209)
!3209 = !{!3210, !3211, !3212}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3208, file: !3147, line: 105, baseType: !229, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3208, file: !3147, line: 106, baseType: !259, size: 32, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3208, file: !3147, line: 107, baseType: !7, size: 32, offset: 96)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !341, file: !342, line: 1067, baseType: !3011, offset: 11136)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !341, file: !342, line: 1099, baseType: !3215, size: 64, offset: 11136)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !342, line: 56, flags: DIFlagFwdDecl)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !341, file: !342, line: 1103, baseType: !225, size: 128, offset: 11200)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !341, file: !342, line: 1104, baseType: !3219, size: 64, offset: 11328)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !342, line: 46, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !341, file: !342, line: 1105, baseType: !942, size: 192, offset: 11392)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !341, file: !342, line: 1106, baseType: !7, size: 32, offset: 11584)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !341, file: !342, line: 1109, baseType: !3224, size: 128, offset: 11648)
!3224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3225, size: 128, elements: !1739)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !342, line: 51, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !341, file: !342, line: 1110, baseType: !942, size: 192, offset: 11776)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !341, file: !342, line: 1111, baseType: !225, size: 128, offset: 11968)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !341, file: !342, line: 1173, baseType: !3230, size: 64, offset: 12096)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3232, line: 62, size: 256, align: 256, elements: !3233)
!3232 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3233 = !{!3234, !3235, !3236, !3241}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3231, file: !3232, line: 75, baseType: !294, size: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3231, file: !3232, line: 90, baseType: !294, size: 32, offset: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3231, file: !3232, line: 124, baseType: !3237, size: 64, offset: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3231, file: !3232, line: 109, size: 64, elements: !3238)
!3238 = !{!3239, !3240}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3237, file: !3232, line: 110, baseType: !387, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3237, file: !3232, line: 112, baseType: !387, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3231, file: !3232, line: 144, baseType: !294, size: 32, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !341, file: !342, line: 1174, baseType: !293, size: 32, offset: 12160)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !341, file: !342, line: 1179, baseType: !212, size: 64, offset: 12224)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !341, file: !342, line: 1182, baseType: !3245, size: 128, offset: 12288)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2694, line: 76, size: 128, elements: !3246)
!3246 = !{!3247, !3252, !3253}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3245, file: !2694, line: 85, baseType: !3248, size: 64)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3249, line: 7, size: 64, elements: !3250)
!3249 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3250 = !{!3251}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3248, file: !3249, line: 12, baseType: !505, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3245, file: !2694, line: 88, baseType: !773, size: 8, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3245, file: !2694, line: 95, baseType: !773, size: 8, offset: 72)
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !342, line: 1184, baseType: !3255, size: 128, offset: 12416)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !342, line: 1184, size: 128, elements: !3256)
!3256 = !{!3257, !3258}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3255, file: !342, line: 1185, baseType: !354, size: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3255, file: !342, line: 1186, baseType: !1208, size: 128, align: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !341, file: !342, line: 1190, baseType: !1651, size: 64, offset: 12544)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !341, file: !342, line: 1192, baseType: !3261, size: 128, offset: 12608)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2694, line: 64, size: 128, elements: !3262)
!3262 = !{!3263, !3264, !3265}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3261, file: !2694, line: 65, baseType: !604, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3261, file: !2694, line: 67, baseType: !294, size: 32, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3261, file: !2694, line: 68, baseType: !294, size: 32, offset: 96)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !341, file: !342, line: 1206, baseType: !259, size: 32, offset: 12736)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !341, file: !342, line: 1207, baseType: !259, size: 32, offset: 12768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !341, file: !342, line: 1209, baseType: !212, size: 64, offset: 12800)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !341, file: !342, line: 1219, baseType: !386, size: 64, offset: 12864)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !341, file: !342, line: 1220, baseType: !386, size: 64, offset: 12928)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !341, file: !342, line: 1317, baseType: !259, size: 32, offset: 12992)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !341, file: !342, line: 1319, baseType: !340, size: 64, offset: 13056)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !341, file: !342, line: 1322, baseType: !3274, size: 64, offset: 13120)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3276, line: 56, size: 512, elements: !3277)
!3276 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3283, !3284, !3286}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3275, file: !3276, line: 57, baseType: !3274, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3275, file: !3276, line: 58, baseType: !229, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3275, file: !3276, line: 59, baseType: !212, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3275, file: !3276, line: 60, baseType: !212, size: 64, offset: 192)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3275, file: !3276, line: 61, baseType: !2393, size: 64, offset: 256)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3275, file: !3276, line: 62, baseType: !7, size: 32, offset: 320)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3275, file: !3276, line: 63, baseType: !3285, size: 64, offset: 384)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !211, line: 153, baseType: !386)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3275, file: !3276, line: 64, baseType: !2165, size: 64, offset: 448)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !341, file: !342, line: 1326, baseType: !354, size: 32, offset: 13184)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !341, file: !342, line: 1342, baseType: !229, size: 64, offset: 13248)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !341, file: !342, line: 1343, baseType: !387, size: 64, offset: 13312)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !341, file: !342, line: 1344, baseType: !386, size: 64, offset: 13376)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !341, file: !342, line: 1345, baseType: !387, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !341, file: !342, line: 1346, baseType: !387, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !341, file: !342, line: 1347, baseType: !387, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !341, file: !342, line: 1348, baseType: !1208, size: 128, align: 64, offset: 13504)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !341, file: !342, line: 1358, baseType: !3296, size: 34816, offset: 13824)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3297, line: 485, size: 34816, elements: !3298)
!3297 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3298 = !{!3299, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3328, !3329, !3330, !3331, !3332, !3333, !3336, !3337, !3338}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3296, file: !3297, line: 487, baseType: !3300, size: 192)
!3300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3301, size: 192, elements: !838)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3302, line: 16, size: 64, elements: !3303)
!3302 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3303 = !{!3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3301, file: !3302, line: 17, baseType: !276, size: 16)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3301, file: !3302, line: 18, baseType: !276, size: 16, offset: 16)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3301, file: !3302, line: 19, baseType: !276, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3301, file: !3302, line: 19, baseType: !276, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3301, file: !3302, line: 19, baseType: !276, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3301, file: !3302, line: 19, baseType: !276, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3301, file: !3302, line: 19, baseType: !276, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3301, file: !3302, line: 20, baseType: !276, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3301, file: !3302, line: 20, baseType: !276, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3301, file: !3302, line: 20, baseType: !276, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3301, file: !3302, line: 20, baseType: !276, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3301, file: !3302, line: 20, baseType: !276, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3301, file: !3302, line: 20, baseType: !276, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3296, file: !3297, line: 491, baseType: !212, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3296, file: !3297, line: 495, baseType: !218, size: 16, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3296, file: !3297, line: 496, baseType: !218, size: 16, offset: 272)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3296, file: !3297, line: 497, baseType: !218, size: 16, offset: 288)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3296, file: !3297, line: 498, baseType: !218, size: 16, offset: 304)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3296, file: !3297, line: 502, baseType: !212, size: 64, offset: 320)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3296, file: !3297, line: 503, baseType: !212, size: 64, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3296, file: !3297, line: 514, baseType: !3325, size: 256, offset: 448)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3326, size: 256, elements: !1699)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3297, line: 483, flags: DIFlagFwdDecl)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3296, file: !3297, line: 516, baseType: !212, size: 64, offset: 704)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3296, file: !3297, line: 518, baseType: !212, size: 64, offset: 768)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3296, file: !3297, line: 520, baseType: !212, size: 64, offset: 832)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3296, file: !3297, line: 521, baseType: !212, size: 64, offset: 896)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3296, file: !3297, line: 522, baseType: !212, size: 64, offset: 960)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3296, file: !3297, line: 528, baseType: !3334, size: 64, offset: 1024)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3297, line: 10, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3296, file: !3297, line: 535, baseType: !212, size: 64, offset: 1088)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3296, file: !3297, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3296, file: !3297, line: 540, baseType: !3339, size: 33280, offset: 1536)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3340, line: 317, size: 33280, elements: !3341)
!3340 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3341 = !{!3342, !3343, !3344}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3339, file: !3340, line: 330, baseType: !7, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3339, file: !3340, line: 337, baseType: !212, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3339, file: !3340, line: 348, baseType: !3345, size: 32768, offset: 512)
!3345 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3340, line: 304, size: 32768, elements: !3346)
!3346 = !{!3347, !3360, !3397, !3447, !3460}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3345, file: !3340, line: 305, baseType: !3348, size: 896)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3340, line: 12, size: 896, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3359}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3348, file: !3340, line: 13, baseType: !293, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3348, file: !3340, line: 14, baseType: !293, size: 32, offset: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3348, file: !3340, line: 15, baseType: !293, size: 32, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3348, file: !3340, line: 16, baseType: !293, size: 32, offset: 96)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3348, file: !3340, line: 17, baseType: !293, size: 32, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3348, file: !3340, line: 18, baseType: !293, size: 32, offset: 160)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3348, file: !3340, line: 19, baseType: !293, size: 32, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3348, file: !3340, line: 22, baseType: !3358, size: 640, offset: 224)
!3358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 640, elements: !242)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3348, file: !3340, line: 25, baseType: !293, size: 32, offset: 864)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3345, file: !3340, line: 306, baseType: !3361, size: 4096, align: 128)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3340, line: 34, size: 4096, align: 128, elements: !3362)
!3362 = !{!3363, !3364, !3365, !3366, !3367, !3382, !3383, !3384, !3386, !3388, !3392}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3361, file: !3340, line: 35, baseType: !276, size: 16)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3361, file: !3340, line: 36, baseType: !276, size: 16, offset: 16)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3361, file: !3340, line: 37, baseType: !276, size: 16, offset: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3361, file: !3340, line: 38, baseType: !276, size: 16, offset: 48)
!3367 = !DIDerivedType(tag: DW_TAG_member, scope: !3361, file: !3340, line: 39, baseType: !3368, size: 128, offset: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3361, file: !3340, line: 39, size: 128, elements: !3369)
!3369 = !{!3370, !3375}
!3370 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !3340, line: 40, baseType: !3371, size: 128)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3368, file: !3340, line: 40, size: 128, elements: !3372)
!3372 = !{!3373, !3374}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3371, file: !3340, line: 41, baseType: !386, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3371, file: !3340, line: 42, baseType: !386, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !3340, line: 44, baseType: !3376, size: 128)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3368, file: !3340, line: 44, size: 128, elements: !3377)
!3377 = !{!3378, !3379, !3380, !3381}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3376, file: !3340, line: 45, baseType: !293, size: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3376, file: !3340, line: 46, baseType: !293, size: 32, offset: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3376, file: !3340, line: 47, baseType: !293, size: 32, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3376, file: !3340, line: 48, baseType: !293, size: 32, offset: 96)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3361, file: !3340, line: 51, baseType: !293, size: 32, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3361, file: !3340, line: 52, baseType: !293, size: 32, offset: 224)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3361, file: !3340, line: 55, baseType: !3385, size: 1024, offset: 256)
!3385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 1024, elements: !688)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3361, file: !3340, line: 58, baseType: !3387, size: 2048, offset: 1280)
!3387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 2048, elements: !2074)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3361, file: !3340, line: 60, baseType: !3389, size: 384, offset: 3328)
!3389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 384, elements: !3390)
!3390 = !{!3391}
!3391 = !DISubrange(count: 12)
!3392 = !DIDerivedType(tag: DW_TAG_member, scope: !3361, file: !3340, line: 62, baseType: !3393, size: 384, offset: 3712)
!3393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3361, file: !3340, line: 62, size: 384, elements: !3394)
!3394 = !{!3395, !3396}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3393, file: !3340, line: 63, baseType: !3389, size: 384)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3393, file: !3340, line: 64, baseType: !3389, size: 384)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3345, file: !3340, line: 307, baseType: !3398, size: 1088)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3340, line: 79, size: 1088, elements: !3399)
!3399 = !{!3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3446}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3398, file: !3340, line: 80, baseType: !293, size: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3398, file: !3340, line: 81, baseType: !293, size: 32, offset: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3398, file: !3340, line: 82, baseType: !293, size: 32, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3398, file: !3340, line: 83, baseType: !293, size: 32, offset: 96)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3398, file: !3340, line: 84, baseType: !293, size: 32, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3398, file: !3340, line: 85, baseType: !293, size: 32, offset: 160)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3398, file: !3340, line: 86, baseType: !293, size: 32, offset: 192)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3398, file: !3340, line: 88, baseType: !3358, size: 640, offset: 224)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3398, file: !3340, line: 89, baseType: !278, size: 8, offset: 864)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3398, file: !3340, line: 90, baseType: !278, size: 8, offset: 872)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3398, file: !3340, line: 91, baseType: !278, size: 8, offset: 880)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3398, file: !3340, line: 92, baseType: !278, size: 8, offset: 888)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3398, file: !3340, line: 93, baseType: !278, size: 8, offset: 896)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3398, file: !3340, line: 94, baseType: !278, size: 8, offset: 904)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3398, file: !3340, line: 95, baseType: !3415, size: 64, offset: 960)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3417, line: 11, size: 128, elements: !3418)
!3417 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3418 = !{!3419, !3420}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3416, file: !3417, line: 12, baseType: !175, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3416, file: !3417, line: 13, baseType: !3421, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3423, line: 56, size: 1344, elements: !3424)
!3423 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3422, file: !3423, line: 61, baseType: !212, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3422, file: !3423, line: 62, baseType: !212, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3422, file: !3423, line: 63, baseType: !212, size: 64, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3422, file: !3423, line: 64, baseType: !212, size: 64, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3422, file: !3423, line: 65, baseType: !212, size: 64, offset: 256)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3422, file: !3423, line: 66, baseType: !212, size: 64, offset: 320)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3422, file: !3423, line: 68, baseType: !212, size: 64, offset: 384)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3422, file: !3423, line: 69, baseType: !212, size: 64, offset: 448)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3422, file: !3423, line: 70, baseType: !212, size: 64, offset: 512)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3422, file: !3423, line: 71, baseType: !212, size: 64, offset: 576)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3422, file: !3423, line: 72, baseType: !212, size: 64, offset: 640)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3422, file: !3423, line: 73, baseType: !212, size: 64, offset: 704)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3422, file: !3423, line: 74, baseType: !212, size: 64, offset: 768)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3422, file: !3423, line: 75, baseType: !212, size: 64, offset: 832)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3422, file: !3423, line: 76, baseType: !212, size: 64, offset: 896)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3422, file: !3423, line: 81, baseType: !212, size: 64, offset: 960)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3422, file: !3423, line: 83, baseType: !212, size: 64, offset: 1024)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3422, file: !3423, line: 84, baseType: !212, size: 64, offset: 1088)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3422, file: !3423, line: 85, baseType: !212, size: 64, offset: 1152)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3422, file: !3423, line: 86, baseType: !212, size: 64, offset: 1216)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3422, file: !3423, line: 87, baseType: !212, size: 64, offset: 1280)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3398, file: !3340, line: 96, baseType: !293, size: 32, offset: 1024)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3345, file: !3340, line: 308, baseType: !3448, size: 4608, align: 512)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3340, line: 289, size: 4608, align: 512, elements: !3449)
!3449 = !{!3450, !3451, !3458}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3448, file: !3340, line: 290, baseType: !3361, size: 4096, align: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3448, file: !3340, line: 291, baseType: !3452, size: 512, offset: 4096)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3340, line: 268, size: 512, elements: !3453)
!3453 = !{!3454, !3455, !3456}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3452, file: !3340, line: 269, baseType: !386, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3452, file: !3340, line: 270, baseType: !386, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3452, file: !3340, line: 271, baseType: !3457, size: 384, offset: 128)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 384, elements: !1799)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3448, file: !3340, line: 292, baseType: !3459, offset: 4608)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, elements: !1895)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3345, file: !3340, line: 309, baseType: !3461, size: 32768)
!3461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 32768, elements: !3462)
!3462 = !{!3463}
!3463 = !DISubrange(count: 4096)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !246, file: !108, line: 704, baseType: !311, size: 192, offset: 512)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !246, file: !108, line: 706, baseType: !259, size: 32, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !246, file: !108, line: 707, baseType: !259, size: 32, offset: 736)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !246, file: !108, line: 708, baseType: !3468, size: 5568, offset: 768)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !3469)
!3469 = !{!3470, !3471, !3473, !3476, !3477, !3528, !3619, !3620, !3621, !3622, !3623, !3632, !3737, !3750, !3945, !3946, !3950, !3952, !3953, !3954, !3958, !3964, !3965, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !4006, !4007, !4008, !4011, !4014, !4015, !4016, !4017}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3468, file: !73, line: 462, baseType: !2033, size: 512)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3468, file: !73, line: 463, baseType: !3472, size: 64, offset: 512)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3468, file: !73, line: 465, baseType: !3474, size: 64, offset: 576)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3468, file: !73, line: 467, baseType: !730, size: 64, offset: 640)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3468, file: !73, line: 468, baseType: !3478, size: 64, offset: 704)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3480)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3481)
!3481 = !{!3482, !3483, !3484, !3488, !3493, !3497}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3480, file: !73, line: 88, baseType: !730, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3480, file: !73, line: 89, baseType: !2112, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3480, file: !73, line: 90, baseType: !3485, size: 64, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!259, !3472, !2067}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3480, file: !73, line: 91, baseType: !3489, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!220, !3472, !3492, !2182, !2183}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3480, file: !73, line: 93, baseType: !3494, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{null, !3472}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3480, file: !73, line: 95, baseType: !3498, size: 64, offset: 320)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3500)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3501)
!3501 = !{!3502, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3500, file: !80, line: 279, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!259, !3472}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3500, file: !80, line: 280, baseType: !3494, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3500, file: !80, line: 281, baseType: !3503, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3500, file: !80, line: 282, baseType: !3503, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3500, file: !80, line: 283, baseType: !3503, size: 64, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3500, file: !80, line: 284, baseType: !3503, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3500, file: !80, line: 285, baseType: !3503, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3500, file: !80, line: 286, baseType: !3503, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3500, file: !80, line: 287, baseType: !3503, size: 64, offset: 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3500, file: !80, line: 288, baseType: !3503, size: 64, offset: 576)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3500, file: !80, line: 289, baseType: !3503, size: 64, offset: 640)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3500, file: !80, line: 290, baseType: !3503, size: 64, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3500, file: !80, line: 291, baseType: !3503, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3500, file: !80, line: 292, baseType: !3503, size: 64, offset: 832)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3500, file: !80, line: 293, baseType: !3503, size: 64, offset: 896)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3500, file: !80, line: 294, baseType: !3503, size: 64, offset: 960)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3500, file: !80, line: 295, baseType: !3503, size: 64, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3500, file: !80, line: 296, baseType: !3503, size: 64, offset: 1088)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3500, file: !80, line: 297, baseType: !3503, size: 64, offset: 1152)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3500, file: !80, line: 298, baseType: !3503, size: 64, offset: 1216)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3500, file: !80, line: 299, baseType: !3503, size: 64, offset: 1280)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3500, file: !80, line: 300, baseType: !3503, size: 64, offset: 1344)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3500, file: !80, line: 301, baseType: !3503, size: 64, offset: 1408)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3468, file: !73, line: 470, baseType: !3529, size: 64, offset: 768)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3531, line: 82, size: 1408, elements: !3532)
!3531 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538, !3539, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3614, !3617, !3618}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3530, file: !3531, line: 83, baseType: !730, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3530, file: !3531, line: 84, baseType: !730, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3530, file: !3531, line: 85, baseType: !3472, size: 64, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3530, file: !3531, line: 86, baseType: !2112, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3530, file: !3531, line: 87, baseType: !2112, size: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3530, file: !3531, line: 88, baseType: !2112, size: 64, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3530, file: !3531, line: 90, baseType: !3540, size: 64, offset: 384)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!259, !3472, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3545)
!3545 = !{!3546, !3547, !3548, !3549, !3550, !3551, !3552, !3565, !3578, !3579, !3580, !3581, !3582, !3590, !3591, !3592, !3593, !3594, !3595}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3544, file: !67, line: 96, baseType: !730, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3544, file: !67, line: 97, baseType: !3529, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3544, file: !67, line: 99, baseType: !207, size: 64, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3544, file: !67, line: 100, baseType: !730, size: 64, offset: 192)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3544, file: !67, line: 102, baseType: !773, size: 8, offset: 256)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3544, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3544, file: !67, line: 105, baseType: !3553, size: 64, offset: 320)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3555)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3556, line: 262, size: 1600, elements: !3557)
!3556 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3557 = !{!3558, !3559, !3560, !3564}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3555, file: !3556, line: 263, baseType: !1234, size: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3555, file: !3556, line: 264, baseType: !1234, size: 256, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3555, file: !3556, line: 265, baseType: !3561, size: 1024, offset: 512)
!3561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 1024, elements: !3562)
!3562 = !{!3563}
!3563 = !DISubrange(count: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3555, file: !3556, line: 266, baseType: !2165, size: 64, offset: 1536)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3544, file: !67, line: 106, baseType: !3566, size: 64, offset: 384)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3568)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3556, line: 210, size: 256, elements: !3569)
!3569 = !{!3570, !3574, !3576, !3577}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3568, file: !3556, line: 211, baseType: !3571, size: 72)
!3571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 72, elements: !3572)
!3572 = !{!3573}
!3573 = !DISubrange(count: 9)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3568, file: !3556, line: 212, baseType: !3575, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3556, line: 14, baseType: !212)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3568, file: !3556, line: 213, baseType: !294, size: 32, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3568, file: !3556, line: 214, baseType: !294, size: 32, offset: 224)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3544, file: !67, line: 108, baseType: !3503, size: 64, offset: 448)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3544, file: !67, line: 109, baseType: !3494, size: 64, offset: 512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3544, file: !67, line: 110, baseType: !3503, size: 64, offset: 576)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3544, file: !67, line: 111, baseType: !3494, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3544, file: !67, line: 112, baseType: !3583, size: 64, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!259, !3472, !3586}
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3587)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3588)
!3588 = !{!3589}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3587, file: !80, line: 51, baseType: !259, size: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3544, file: !67, line: 113, baseType: !3503, size: 64, offset: 768)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3544, file: !67, line: 114, baseType: !2112, size: 64, offset: 832)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3544, file: !67, line: 115, baseType: !2112, size: 64, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3544, file: !67, line: 117, baseType: !3498, size: 64, offset: 960)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3544, file: !67, line: 118, baseType: !3494, size: 64, offset: 1024)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3544, file: !67, line: 120, baseType: !3596, size: 64, offset: 1088)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3530, file: !3531, line: 91, baseType: !3485, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3530, file: !3531, line: 92, baseType: !3503, size: 64, offset: 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3530, file: !3531, line: 93, baseType: !3494, size: 64, offset: 576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3530, file: !3531, line: 94, baseType: !3503, size: 64, offset: 640)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3530, file: !3531, line: 95, baseType: !3494, size: 64, offset: 704)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3530, file: !3531, line: 97, baseType: !3503, size: 64, offset: 768)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3530, file: !3531, line: 98, baseType: !3503, size: 64, offset: 832)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3530, file: !3531, line: 100, baseType: !3583, size: 64, offset: 896)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3530, file: !3531, line: 101, baseType: !3503, size: 64, offset: 960)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3530, file: !3531, line: 103, baseType: !3503, size: 64, offset: 1024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3530, file: !3531, line: 105, baseType: !3503, size: 64, offset: 1088)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3530, file: !3531, line: 107, baseType: !3498, size: 64, offset: 1152)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3530, file: !3531, line: 109, baseType: !3611, size: 64, offset: 1216)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3613)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3531, line: 109, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3530, file: !3531, line: 111, baseType: !3615, size: 64, offset: 1280)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3531, line: 111, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3530, file: !3531, line: 112, baseType: !832, offset: 1344)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3530, file: !3531, line: 114, baseType: !773, size: 8, offset: 1344)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3468, file: !73, line: 471, baseType: !3543, size: 64, offset: 832)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3468, file: !73, line: 473, baseType: !229, size: 64, offset: 896)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3468, file: !73, line: 475, baseType: !229, size: 64, offset: 960)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3468, file: !73, line: 480, baseType: !942, size: 192, offset: 1024)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3468, file: !73, line: 484, baseType: !3624, size: 576, offset: 1216)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3624, file: !73, line: 362, baseType: !225, size: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3624, file: !73, line: 363, baseType: !225, size: 128, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3624, file: !73, line: 364, baseType: !225, size: 128, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3624, file: !73, line: 365, baseType: !225, size: 128, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3624, file: !73, line: 366, baseType: !773, size: 8, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3624, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3468, file: !73, line: 485, baseType: !3633, size: 2304, offset: 1792)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3730, !3734}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3633, file: !80, line: 566, baseType: !3586, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3633, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3633, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3633, file: !80, line: 569, baseType: !773, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3633, file: !80, line: 570, baseType: !773, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3633, file: !80, line: 571, baseType: !773, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3633, file: !80, line: 572, baseType: !773, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3633, file: !80, line: 573, baseType: !773, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3633, file: !80, line: 574, baseType: !773, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3633, file: !80, line: 575, baseType: !773, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3633, file: !80, line: 576, baseType: !773, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3633, file: !80, line: 577, baseType: !293, size: 32, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3633, file: !80, line: 578, baseType: !701, offset: 96)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3633, file: !80, line: 580, baseType: !225, size: 128, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3633, file: !80, line: 581, baseType: !2559, size: 192, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3633, file: !80, line: 582, baseType: !3651, size: 64, offset: 448)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3653, line: 43, size: 1472, elements: !3654)
!3653 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3662, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3652, file: !3653, line: 44, baseType: !730, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3652, file: !3653, line: 45, baseType: !259, size: 32, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3652, file: !3653, line: 46, baseType: !225, size: 128, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3652, file: !3653, line: 47, baseType: !701, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3652, file: !3653, line: 48, baseType: !3660, size: 64, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3652, file: !3653, line: 49, baseType: !3663, size: 320, offset: 320)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3664, line: 11, size: 320, elements: !3665)
!3664 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3665 = !{!3666, !3667, !3668, !3673}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3663, file: !3664, line: 16, baseType: !826, size: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3663, file: !3664, line: 17, baseType: !212, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3663, file: !3664, line: 18, baseType: !3669, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !3672}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3663, file: !3664, line: 19, baseType: !293, size: 32, offset: 256)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3652, file: !3653, line: 50, baseType: !212, size: 64, offset: 640)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3652, file: !3653, line: 51, baseType: !434, size: 64, offset: 704)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3652, file: !3653, line: 52, baseType: !434, size: 64, offset: 768)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3652, file: !3653, line: 53, baseType: !434, size: 64, offset: 832)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3652, file: !3653, line: 54, baseType: !434, size: 64, offset: 896)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3652, file: !3653, line: 55, baseType: !434, size: 64, offset: 960)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3652, file: !3653, line: 56, baseType: !212, size: 64, offset: 1024)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3652, file: !3653, line: 57, baseType: !212, size: 64, offset: 1088)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3652, file: !3653, line: 58, baseType: !212, size: 64, offset: 1152)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3652, file: !3653, line: 59, baseType: !212, size: 64, offset: 1216)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3652, file: !3653, line: 60, baseType: !212, size: 64, offset: 1280)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3652, file: !3653, line: 61, baseType: !3472, size: 64, offset: 1344)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3652, file: !3653, line: 62, baseType: !773, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3652, file: !3653, line: 63, baseType: !773, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3633, file: !80, line: 583, baseType: !773, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3633, file: !80, line: 584, baseType: !773, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3633, file: !80, line: 585, baseType: !773, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3633, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3633, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3633, file: !80, line: 592, baseType: !426, size: 512, offset: 576)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3633, file: !80, line: 593, baseType: !386, size: 64, offset: 1088)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3633, file: !80, line: 594, baseType: !1297, size: 256, offset: 1152)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3633, file: !80, line: 595, baseType: !1189, size: 128, offset: 1408)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3633, file: !80, line: 596, baseType: !3660, size: 64, offset: 1536)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3633, file: !80, line: 597, baseType: !359, size: 32, offset: 1600)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3633, file: !80, line: 598, baseType: !359, size: 32, offset: 1632)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3633, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3633, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3633, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3633, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3633, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3633, file: !80, line: 604, baseType: !773, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3633, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3633, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3633, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3633, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3633, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3633, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3633, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3633, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3633, file: !80, line: 613, baseType: !259, size: 32, offset: 1792)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3633, file: !80, line: 614, baseType: !259, size: 32, offset: 1824)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3633, file: !80, line: 615, baseType: !386, size: 64, offset: 1856)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3633, file: !80, line: 616, baseType: !386, size: 64, offset: 1920)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3633, file: !80, line: 617, baseType: !386, size: 64, offset: 1984)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3633, file: !80, line: 618, baseType: !386, size: 64, offset: 2048)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3633, file: !80, line: 620, baseType: !3721, size: 64, offset: 2112)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3727}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3722, file: !80, line: 537, baseType: !701)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3722, file: !80, line: 538, baseType: !7, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3722, file: !80, line: 540, baseType: !225, size: 128, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3722, file: !80, line: 543, baseType: !3728, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3633, file: !80, line: 621, baseType: !3731, size: 64, offset: 2176)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{null, !3472, !1755}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3633, file: !80, line: 622, baseType: !3735, size: 64, offset: 2240)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3468, file: !73, line: 486, baseType: !3738, size: 64, offset: 4096)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3740)
!3740 = !{!3741, !3742, !3743, !3747, !3748, !3749}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3739, file: !80, line: 643, baseType: !3500, size: 1472)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3739, file: !80, line: 644, baseType: !3503, size: 64, offset: 1472)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3739, file: !80, line: 645, baseType: !3744, size: 64, offset: 1536)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !3472, !773}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3739, file: !80, line: 646, baseType: !3503, size: 64, offset: 1600)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3739, file: !80, line: 647, baseType: !3494, size: 64, offset: 1664)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3739, file: !80, line: 648, baseType: !3494, size: 64, offset: 1728)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3468, file: !73, line: 493, baseType: !3751, size: 64, offset: 4160)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3753)
!3753 = !{!3754, !3755, !3756, !3929, !3930, !3931, !3932, !3933, !3934, !3937, !3938, !3939, !3940, !3941, !3942, !3943}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3752, file: !94, line: 163, baseType: !225, size: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3752, file: !94, line: 164, baseType: !730, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3752, file: !94, line: 165, baseType: !3757, size: 64, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3759)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3760)
!3760 = !{!3761, !3879, !3890, !3895, !3899, !3906, !3910, !3914, !3921, !3925}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3759, file: !94, line: 106, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!259, !3751, !3765, !93}
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3767, line: 51, size: 1344, elements: !3768)
!3767 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3768 = !{!3769, !3770, !3772, !3773, !3863, !3872, !3873, !3874, !3875, !3876, !3877, !3878}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3766, file: !3767, line: 52, baseType: !730, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3766, file: !3767, line: 53, baseType: !3771, size: 32, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3767, line: 28, baseType: !293)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3766, file: !3767, line: 54, baseType: !730, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3766, file: !3767, line: 55, baseType: !3774, size: 192, offset: 192)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3775, line: 17, size: 192, elements: !3776)
!3775 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3776 = !{!3777, !3779, !3862}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3774, file: !3775, line: 18, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3774, file: !3775, line: 19, baseType: !3780, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3775, line: 110, size: 1152, elements: !3783)
!3783 = !{!3784, !3788, !3792, !3798, !3804, !3808, !3812, !3817, !3821, !3822, !3826, !3830, !3834, !3845, !3846, !3847, !3848, !3858}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3782, file: !3775, line: 111, baseType: !3785, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!3778, !3778}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3782, file: !3775, line: 112, baseType: !3789, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3778}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3782, file: !3775, line: 113, baseType: !3793, size: 64, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!773, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3774)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3782, file: !3775, line: 114, baseType: !3799, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!2165, !3796, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3468)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3782, file: !3775, line: 116, baseType: !3805, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!773, !3796, !730}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3782, file: !3775, line: 118, baseType: !3809, size: 64, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!259, !3796, !730, !7, !229, !1437}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3782, file: !3775, line: 123, baseType: !3813, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!259, !3796, !730, !3816, !1437}
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3782, file: !3775, line: 126, baseType: !3818, size: 64, offset: 448)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!730, !3796}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3782, file: !3775, line: 127, baseType: !3818, size: 64, offset: 512)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3782, file: !3775, line: 128, baseType: !3823, size: 64, offset: 576)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!3778, !3796}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3782, file: !3775, line: 130, baseType: !3827, size: 64, offset: 640)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!3778, !3796, !3778}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3782, file: !3775, line: 133, baseType: !3831, size: 64, offset: 704)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!3778, !3796, !730}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3782, file: !3775, line: 135, baseType: !3835, size: 64, offset: 768)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!259, !3796, !730, !730, !7, !7, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3775, line: 43, size: 640, elements: !3840)
!3840 = !{!3841, !3842, !3843}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3839, file: !3775, line: 44, baseType: !3778, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3839, file: !3775, line: 45, baseType: !7, size: 32, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3839, file: !3775, line: 46, baseType: !3844, size: 512, offset: 128)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 512, elements: !464)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3782, file: !3775, line: 140, baseType: !3827, size: 64, offset: 832)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3782, file: !3775, line: 143, baseType: !3823, size: 64, offset: 896)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3782, file: !3775, line: 145, baseType: !3785, size: 64, offset: 960)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3782, file: !3775, line: 146, baseType: !3849, size: 64, offset: 1024)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!259, !3796, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3775, line: 29, size: 128, elements: !3854)
!3854 = !{!3855, !3856, !3857}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3853, file: !3775, line: 30, baseType: !7, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3853, file: !3775, line: 31, baseType: !7, size: 32, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3853, file: !3775, line: 32, baseType: !3796, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3782, file: !3775, line: 148, baseType: !3859, size: 64, offset: 1088)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!259, !3796, !3472}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3774, file: !3775, line: 20, baseType: !3472, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3766, file: !3767, line: 57, baseType: !3864, size: 64, offset: 384)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3767, line: 31, size: 704, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3871}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3865, file: !3767, line: 32, baseType: !220, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3865, file: !3767, line: 33, baseType: !259, size: 32, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3865, file: !3767, line: 34, baseType: !229, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3865, file: !3767, line: 35, baseType: !3864, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3865, file: !3767, line: 43, baseType: !2127, size: 448, offset: 256)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3766, file: !3767, line: 58, baseType: !3864, size: 64, offset: 448)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3766, file: !3767, line: 59, baseType: !3765, size: 64, offset: 512)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3766, file: !3767, line: 60, baseType: !3765, size: 64, offset: 576)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3766, file: !3767, line: 61, baseType: !3765, size: 64, offset: 640)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3766, file: !3767, line: 63, baseType: !2033, size: 512, offset: 704)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3766, file: !3767, line: 65, baseType: !212, size: 64, offset: 1216)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3766, file: !3767, line: 66, baseType: !229, size: 64, offset: 1280)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3759, file: !94, line: 108, baseType: !3880, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!259, !3751, !3883, !93}
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3885)
!3885 = !{!3886, !3887, !3888}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3884, file: !94, line: 64, baseType: !3778, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3884, file: !94, line: 65, baseType: !259, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3884, file: !94, line: 66, baseType: !3889, size: 512, offset: 96)
!3889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 512, elements: !1242)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3759, file: !94, line: 110, baseType: !3891, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!259, !3751, !7, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !211, line: 164, baseType: !212)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3759, file: !94, line: 111, baseType: !3896, size: 64, offset: 192)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{null, !3751, !7}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3759, file: !94, line: 112, baseType: !3900, size: 64, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!259, !3751, !3765, !3903, !7, !3905, !1217}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3759, file: !94, line: 117, baseType: !3907, size: 64, offset: 320)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!259, !3751, !7, !7, !229}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3759, file: !94, line: 119, baseType: !3911, size: 64, offset: 384)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !3751, !7, !7}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3759, file: !94, line: 121, baseType: !3915, size: 64, offset: 448)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!259, !3751, !3918, !773}
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3920, line: 11, flags: DIFlagFwdDecl)
!3920 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3759, file: !94, line: 122, baseType: !3922, size: 64, offset: 512)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{null, !3751, !3918}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3759, file: !94, line: 123, baseType: !3926, size: 64, offset: 576)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!259, !3751, !3883, !3905, !1217}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3752, file: !94, line: 166, baseType: !229, size: 64, offset: 256)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3752, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3752, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3752, file: !94, line: 171, baseType: !3778, size: 64, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3752, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3752, file: !94, line: 173, baseType: !3935, size: 64, offset: 512)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3752, file: !94, line: 175, baseType: !3751, size: 64, offset: 576)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3752, file: !94, line: 182, baseType: !3894, size: 64, offset: 640)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3752, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3752, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3752, file: !94, line: 185, baseType: !2214, size: 128, offset: 768)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3752, file: !94, line: 186, baseType: !942, size: 192, offset: 896)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3752, file: !94, line: 187, baseType: !3944, offset: 1088)
!3944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2771)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3468, file: !73, line: 499, baseType: !225, size: 128, offset: 4224)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3468, file: !73, line: 502, baseType: !3947, size: 64, offset: 4352)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3949)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3468, file: !73, line: 504, baseType: !3951, size: 64, offset: 4416)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3468, file: !73, line: 505, baseType: !386, size: 64, offset: 4480)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3468, file: !73, line: 510, baseType: !386, size: 64, offset: 4544)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3468, file: !73, line: 511, baseType: !3955, size: 64, offset: 4608)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3957)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3468, file: !73, line: 513, baseType: !3959, size: 64, offset: 4672)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3961)
!3961 = !{!3962, !3963}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3960, file: !73, line: 293, baseType: !7, size: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3960, file: !73, line: 294, baseType: !212, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3468, file: !73, line: 515, baseType: !225, size: 128, offset: 4736)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3468, file: !73, line: 526, baseType: !3966, offset: 4864)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3967, line: 5, elements: !323)
!3967 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3468, file: !73, line: 528, baseType: !3765, size: 64, offset: 4864)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3468, file: !73, line: 529, baseType: !3778, size: 64, offset: 4928)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3468, file: !73, line: 534, baseType: !787, size: 32, offset: 4992)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3468, file: !73, line: 535, baseType: !293, size: 32, offset: 5024)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3468, file: !73, line: 537, baseType: !701, offset: 5056)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3468, file: !73, line: 538, baseType: !225, size: 128, offset: 5056)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3468, file: !73, line: 540, baseType: !3975, size: 64, offset: 5184)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3977, line: 54, size: 960, elements: !3978)
!3977 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3978 = !{!3979, !3980, !3981, !3982, !3983, !3984, !3985, !3989, !3993, !3994, !3995, !3996, !4000, !4004, !4005}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3976, file: !3977, line: 55, baseType: !730, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3976, file: !3977, line: 56, baseType: !207, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3976, file: !3977, line: 58, baseType: !2112, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3976, file: !3977, line: 59, baseType: !2112, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3976, file: !3977, line: 60, baseType: !2039, size: 64, offset: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3976, file: !3977, line: 62, baseType: !3485, size: 64, offset: 320)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3976, file: !3977, line: 63, baseType: !3986, size: 64, offset: 384)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!220, !3472, !3492}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3976, file: !3977, line: 65, baseType: !3990, size: 64, offset: 448)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !3975}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3976, file: !3977, line: 66, baseType: !3494, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3976, file: !3977, line: 68, baseType: !3503, size: 64, offset: 576)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3976, file: !3977, line: 70, baseType: !2148, size: 64, offset: 640)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3976, file: !3977, line: 71, baseType: !3997, size: 64, offset: 704)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!2165, !3472}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3976, file: !3977, line: 73, baseType: !4001, size: 64, offset: 768)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{null, !3472, !2182, !2183}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3976, file: !3977, line: 75, baseType: !3498, size: 64, offset: 832)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3976, file: !3977, line: 77, baseType: !3615, size: 64, offset: 896)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3468, file: !73, line: 541, baseType: !2112, size: 64, offset: 5248)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3468, file: !73, line: 543, baseType: !3494, size: 64, offset: 5312)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3468, file: !73, line: 544, baseType: !4009, size: 64, offset: 5376)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3468, file: !73, line: 545, baseType: !4012, size: 64, offset: 5440)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3468, file: !73, line: 547, baseType: !773, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3468, file: !73, line: 548, baseType: !773, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3468, file: !73, line: 549, baseType: !773, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3468, file: !73, line: 550, baseType: !773, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !246, file: !108, line: 709, baseType: !212, size: 64, offset: 6336)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !246, file: !108, line: 713, baseType: !259, size: 32, offset: 6400)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !246, file: !108, line: 714, baseType: !4021, size: 384, offset: 6432)
!4021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 384, elements: !4022)
!4022 = !{!4023}
!4023 = !DISubrange(count: 48)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !246, file: !108, line: 715, baseType: !2559, size: 192, offset: 6848)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !246, file: !108, line: 717, baseType: !942, size: 192, offset: 7040)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !246, file: !108, line: 718, baseType: !225, size: 128, offset: 7232)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !246, file: !108, line: 720, baseType: !4028, size: 64, offset: 7360)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !108, line: 618, size: 832, elements: !4030)
!4030 = !{!4031, !4035, !4036, !4040, !4041, !4042, !4043, !4047, !4048, !4051, !4052, !4055, !4058}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4029, file: !108, line: 619, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!259, !245}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4029, file: !108, line: 621, baseType: !4032, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4029, file: !108, line: 622, baseType: !4037, size: 64, offset: 128)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !245, !259}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4029, file: !108, line: 623, baseType: !4032, size: 64, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4029, file: !108, line: 624, baseType: !4037, size: 64, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4029, file: !108, line: 625, baseType: !4032, size: 64, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4029, file: !108, line: 627, baseType: !4044, size: 64, offset: 384)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{null, !245}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4029, file: !108, line: 628, baseType: !4044, size: 64, offset: 448)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4029, file: !108, line: 631, baseType: !4049, size: 64, offset: 512)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !108, line: 631, flags: DIFlagFwdDecl)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4029, file: !108, line: 632, baseType: !4049, size: 64, offset: 576)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4029, file: !108, line: 633, baseType: !4053, size: 64, offset: 640)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !108, line: 633, flags: DIFlagFwdDecl)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4029, file: !108, line: 634, baseType: !4056, size: 64, offset: 704)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !108, line: 634, flags: DIFlagFwdDecl)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4029, file: !108, line: 635, baseType: !4056, size: 64, offset: 768)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !246, file: !108, line: 721, baseType: !4060, size: 64, offset: 7424)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4062)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !108, line: 664, size: 192, elements: !4063)
!4063 = !{!4064, !4065, !4066, !4067, !4068, !4069}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4062, file: !108, line: 665, baseType: !386, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4062, file: !108, line: 666, baseType: !259, size: 32, offset: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4062, file: !108, line: 667, baseType: !276, size: 16, offset: 96)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4062, file: !108, line: 668, baseType: !276, size: 16, offset: 112)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4062, file: !108, line: 669, baseType: !276, size: 16, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4062, file: !108, line: 670, baseType: !276, size: 16, offset: 144)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !246, file: !108, line: 723, baseType: !3751, size: 64, offset: 7488)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !236, file: !108, line: 330, baseType: !3468, size: 5568, offset: 256)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !236, file: !108, line: 331, baseType: !259, size: 32, offset: 5824)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !236, file: !108, line: 332, baseType: !259, size: 32, offset: 5856)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !236, file: !108, line: 333, baseType: !225, size: 128, offset: 5888)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !231, file: !164, line: 14, baseType: !4076, size: 64, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_dev", file: !153, line: 162, size: 9536, elements: !4078)
!4078 = !{!4079, !4080, !4081, !4085, !4086, !4087, !4095, !4096, !4097, !4113, !4114, !4115, !4118, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4422, !4426, !4430, !4434, !4435, !4436, !4440, !4444, !4448, !4452, !4453, !4458, !4459}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4077, file: !153, line: 163, baseType: !3468, size: 5568)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "managed_alloc", scope: !4077, file: !153, line: 164, baseType: !773, size: 8, offset: 5568)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_groups", scope: !4077, file: !153, line: 165, baseType: !4082, size: 320, offset: 5632)
!4082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2113, size: 320, elements: !4083)
!4083 = !{!4084}
!4084 = !DISubrange(count: 5)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4077, file: !153, line: 166, baseType: !730, size: 64, offset: 5952)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "input_phys", scope: !4077, file: !153, line: 167, baseType: !730, size: 64, offset: 6016)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !4077, file: !153, line: 168, baseType: !4088, size: 64, offset: 6080)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4089, line: 59, size: 64, elements: !4090)
!4089 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4090 = !{!4091, !4092, !4093, !4094}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4088, file: !4089, line: 60, baseType: !216, size: 16)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4088, file: !4089, line: 61, baseType: !216, size: 16, offset: 16)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4088, file: !4089, line: 62, baseType: !216, size: 16, offset: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4088, file: !4089, line: 63, baseType: !216, size: 16, offset: 48)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4077, file: !153, line: 169, baseType: !730, size: 64, offset: 6144)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "map_name", scope: !4077, file: !153, line: 170, baseType: !730, size: 64, offset: 6208)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "rc_map", scope: !4077, file: !153, line: 171, baseType: !4098, size: 256, offset: 6272)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map", file: !4099, line: 157, size: 256, elements: !4100)
!4099 = !DIFile(filename: "./include/media/rc-map.h", directory: "/home/lizy2001/genbc/linux")
!4100 = !{!4101, !4107, !4108, !4109, !4110, !4111, !4112}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !4098, file: !4099, line: 158, baseType: !4102, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_table", file: !4099, line: 140, size: 128, elements: !4104)
!4104 = !{!4105, !4106}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4103, file: !4099, line: 141, baseType: !386, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4103, file: !4099, line: 142, baseType: !293, size: 32, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4098, file: !4099, line: 159, baseType: !7, size: 32, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4098, file: !4099, line: 160, baseType: !7, size: 32, offset: 96)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4098, file: !4099, line: 161, baseType: !7, size: 32, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "rc_proto", scope: !4098, file: !4099, line: 162, baseType: !121, size: 32, offset: 160)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4098, file: !4099, line: 163, baseType: !730, size: 64, offset: 192)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4098, file: !4099, line: 164, baseType: !701, offset: 256)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4077, file: !153, line: 172, baseType: !942, size: 192, offset: 6528)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4077, file: !153, line: 173, baseType: !7, size: 32, offset: 6720)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4077, file: !153, line: 174, baseType: !4116, size: 64, offset: 6784)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event_ctrl", file: !153, line: 174, flags: DIFlagFwdDecl)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "input_dev", scope: !4077, file: !153, line: 175, baseType: !4119, size: 64, offset: 6848)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4121, line: 131, size: 10432, elements: !4122)
!4121 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128, !4129, !4131, !4132, !4133, !4134, !4135, !4136, !4138, !4139, !4140, !4141, !4142, !4143, !4157, !4162, !4257, !4260, !4261, !4262, !4264, !4267, !4277, !4278, !4279, !4280, !4281, !4285, !4289, !4293, !4297, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4384, !4385}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4120, file: !4121, line: 132, baseType: !730, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4120, file: !4121, line: 133, baseType: !730, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4120, file: !4121, line: 134, baseType: !730, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4120, file: !4121, line: 135, baseType: !4088, size: 64, offset: 192)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4120, file: !4121, line: 137, baseType: !508, size: 64, offset: 256)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4120, file: !4121, line: 139, baseType: !508, size: 64, offset: 320)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4120, file: !4121, line: 140, baseType: !4130, size: 768, offset: 384)
!4130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 768, elements: !3390)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4120, file: !4121, line: 141, baseType: !508, size: 64, offset: 1152)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4120, file: !4121, line: 142, baseType: !508, size: 64, offset: 1216)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4120, file: !4121, line: 143, baseType: !508, size: 64, offset: 1280)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4120, file: !4121, line: 144, baseType: !508, size: 64, offset: 1344)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4120, file: !4121, line: 145, baseType: !508, size: 64, offset: 1408)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4120, file: !4121, line: 146, baseType: !4137, size: 128, offset: 1472)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 128, elements: !1739)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4120, file: !4121, line: 147, baseType: !508, size: 64, offset: 1600)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4120, file: !4121, line: 149, baseType: !7, size: 32, offset: 1664)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4120, file: !4121, line: 151, baseType: !7, size: 32, offset: 1696)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4120, file: !4121, line: 152, baseType: !7, size: 32, offset: 1728)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4120, file: !4121, line: 153, baseType: !229, size: 64, offset: 1792)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4120, file: !4121, line: 155, baseType: !4144, size: 64, offset: 1856)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!259, !4119, !4147, !1217}
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4149)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4089, line: 114, size: 320, elements: !4150)
!4150 = !{!4151, !4152, !4153, !4154, !4155}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4149, file: !4089, line: 116, baseType: !269, size: 8)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4149, file: !4089, line: 117, baseType: !269, size: 8, offset: 8)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4149, file: !4089, line: 118, baseType: !216, size: 16, offset: 16)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4149, file: !4089, line: 119, baseType: !294, size: 32, offset: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4149, file: !4089, line: 120, baseType: !4156, size: 256, offset: 64)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 256, elements: !688)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4120, file: !4121, line: 158, baseType: !4158, size: 64, offset: 1920)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!259, !4119, !4161}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4120, file: !4121, line: 161, baseType: !4163, size: 64, offset: 1984)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4121, line: 534, size: 896, elements: !4165)
!4165 = !{!4166, !4233, !4237, !4241, !4245, !4246, !4250, !4251, !4252, !4253, !4254, !4255}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4164, file: !4121, line: 535, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!259, !4119, !4170, !4170}
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4089, line: 450, size: 384, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4176, !4181, !4186}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4171, file: !4089, line: 451, baseType: !216, size: 16)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4171, file: !4089, line: 452, baseType: !2739, size: 16, offset: 16)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4171, file: !4089, line: 453, baseType: !216, size: 16, offset: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4171, file: !4089, line: 454, baseType: !4177, size: 32, offset: 48)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4089, line: 316, size: 32, elements: !4178)
!4178 = !{!4179, !4180}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4177, file: !4089, line: 317, baseType: !216, size: 16)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4177, file: !4089, line: 318, baseType: !216, size: 16, offset: 16)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4171, file: !4089, line: 455, baseType: !4182, size: 32, offset: 80)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4089, line: 306, size: 32, elements: !4183)
!4183 = !{!4184, !4185}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4182, file: !4089, line: 307, baseType: !216, size: 16)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4182, file: !4089, line: 308, baseType: !216, size: 16, offset: 16)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4171, file: !4089, line: 463, baseType: !4187, size: 256, offset: 128)
!4187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4171, file: !4089, line: 457, size: 256, elements: !4188)
!4188 = !{!4189, !4200, !4206, !4218, !4228}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4187, file: !4089, line: 458, baseType: !4190, size: 80)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4089, line: 345, size: 80, elements: !4191)
!4191 = !{!4192, !4193}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4190, file: !4089, line: 346, baseType: !2739, size: 16)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4190, file: !4089, line: 347, baseType: !4194, size: 64, offset: 16)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4089, line: 333, size: 64, elements: !4195)
!4195 = !{!4196, !4197, !4198, !4199}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4194, file: !4089, line: 334, baseType: !216, size: 16)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4194, file: !4089, line: 335, baseType: !216, size: 16, offset: 16)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4194, file: !4089, line: 336, baseType: !216, size: 16, offset: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4194, file: !4089, line: 337, baseType: !216, size: 16, offset: 48)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4187, file: !4089, line: 459, baseType: !4201, size: 96)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4089, line: 356, size: 96, elements: !4202)
!4202 = !{!4203, !4204, !4205}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4201, file: !4089, line: 357, baseType: !2739, size: 16)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4201, file: !4089, line: 358, baseType: !2739, size: 16, offset: 16)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4201, file: !4089, line: 359, baseType: !4194, size: 64, offset: 32)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4187, file: !4089, line: 460, baseType: !4207, size: 256)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4089, line: 401, size: 256, elements: !4208)
!4208 = !{!4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4207, file: !4089, line: 402, baseType: !216, size: 16)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4207, file: !4089, line: 403, baseType: !216, size: 16, offset: 16)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4207, file: !4089, line: 404, baseType: !2739, size: 16, offset: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4207, file: !4089, line: 405, baseType: !2739, size: 16, offset: 48)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4207, file: !4089, line: 406, baseType: !216, size: 16, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4207, file: !4089, line: 408, baseType: !4194, size: 64, offset: 80)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4207, file: !4089, line: 410, baseType: !294, size: 32, offset: 160)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4207, file: !4089, line: 411, baseType: !4217, size: 64, offset: 192)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4187, file: !4089, line: 461, baseType: !4219, size: 192)
!4219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4220, size: 192, elements: !1739)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4089, line: 372, size: 96, elements: !4221)
!4221 = !{!4222, !4223, !4224, !4225, !4226, !4227}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4220, file: !4089, line: 373, baseType: !216, size: 16)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4220, file: !4089, line: 374, baseType: !216, size: 16, offset: 16)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4220, file: !4089, line: 376, baseType: !2739, size: 16, offset: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4220, file: !4089, line: 377, baseType: !2739, size: 16, offset: 48)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4220, file: !4089, line: 379, baseType: !216, size: 16, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4220, file: !4089, line: 380, baseType: !2739, size: 16, offset: 80)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4187, file: !4089, line: 462, baseType: !4229, size: 32)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4089, line: 422, size: 32, elements: !4230)
!4230 = !{!4231, !4232}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4229, file: !4089, line: 423, baseType: !216, size: 16)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4229, file: !4089, line: 424, baseType: !216, size: 16, offset: 16)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4164, file: !4121, line: 537, baseType: !4234, size: 64, offset: 64)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!259, !4119, !259}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4164, file: !4121, line: 539, baseType: !4238, size: 64, offset: 128)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!259, !4119, !259, !259}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4164, file: !4121, line: 540, baseType: !4242, size: 64, offset: 192)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{null, !4119, !276}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4164, file: !4121, line: 541, baseType: !4242, size: 64, offset: 256)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4164, file: !4121, line: 543, baseType: !4247, size: 64, offset: 320)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !4163}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4164, file: !4121, line: 545, baseType: !229, size: 64, offset: 384)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4164, file: !4121, line: 547, baseType: !4137, size: 128, offset: 448)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4164, file: !4121, line: 549, baseType: !942, size: 192, offset: 576)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4164, file: !4121, line: 551, baseType: !259, size: 32, offset: 768)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4164, file: !4121, line: 552, baseType: !4170, size: 64, offset: 832)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4164, file: !4121, line: 553, baseType: !4256, offset: 896)
!4256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1405, elements: !2771)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4120, file: !4121, line: 163, baseType: !4258, size: 64, offset: 2048)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4121, line: 24, flags: DIFlagFwdDecl)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4120, file: !4121, line: 165, baseType: !7, size: 32, offset: 2112)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4120, file: !4121, line: 166, baseType: !3663, size: 320, offset: 2176)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4120, file: !4121, line: 168, baseType: !4263, size: 64, offset: 2496)
!4263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 64, elements: !1739)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4120, file: !4121, line: 170, baseType: !4265, size: 64, offset: 2560)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4121, line: 170, flags: DIFlagFwdDecl)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4120, file: !4121, line: 172, baseType: !4268, size: 64, offset: 2624)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4089, line: 90, size: 192, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4269, file: !4089, line: 91, baseType: !1756, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4269, file: !4089, line: 92, baseType: !1756, size: 32, offset: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4269, file: !4089, line: 93, baseType: !1756, size: 32, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4269, file: !4089, line: 94, baseType: !1756, size: 32, offset: 96)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4269, file: !4089, line: 95, baseType: !1756, size: 32, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4269, file: !4089, line: 96, baseType: !1756, size: 32, offset: 160)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4120, file: !4121, line: 174, baseType: !4130, size: 768, offset: 2688)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4120, file: !4121, line: 175, baseType: !508, size: 64, offset: 3456)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4120, file: !4121, line: 176, baseType: !508, size: 64, offset: 3520)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4120, file: !4121, line: 177, baseType: !508, size: 64, offset: 3584)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4120, file: !4121, line: 179, baseType: !4282, size: 64, offset: 3648)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!259, !4119}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4120, file: !4121, line: 180, baseType: !4286, size: 64, offset: 3712)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !4119}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4120, file: !4121, line: 181, baseType: !4290, size: 64, offset: 3776)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!259, !4119, !1405}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4120, file: !4121, line: 182, baseType: !4294, size: 64, offset: 3840)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!259, !4119, !7, !7, !259}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4120, file: !4121, line: 184, baseType: !4298, size: 64, offset: 3904)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4121, line: 337, size: 576, elements: !4300)
!4300 = !{!4301, !4302, !4303, !4304, !4305, !4371, !4372}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4299, file: !4121, line: 339, baseType: !229, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4299, file: !4121, line: 341, baseType: !259, size: 32, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4299, file: !4121, line: 342, baseType: !730, size: 64, offset: 128)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4299, file: !4121, line: 344, baseType: !4119, size: 64, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4299, file: !4121, line: 345, baseType: !4306, size: 64, offset: 256)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4121, line: 302, size: 960, elements: !4308)
!4308 = !{!4309, !4310, !4314, !4325, !4329, !4333, !4360, !4364, !4365, !4366, !4367, !4368, !4369, !4370}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4307, file: !4121, line: 304, baseType: !229, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4307, file: !4121, line: 306, baseType: !4311, size: 64, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{null, !4298, !7, !7, !259}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4307, file: !4121, line: 307, baseType: !4315, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{null, !4298, !4318, !7}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4320)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4121, line: 32, size: 64, elements: !4321)
!4321 = !{!4322, !4323, !4324}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4320, file: !4121, line: 33, baseType: !216, size: 16)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4320, file: !4121, line: 34, baseType: !216, size: 16, offset: 16)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4320, file: !4121, line: 35, baseType: !1756, size: 32, offset: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4307, file: !4121, line: 309, baseType: !4326, size: 64, offset: 192)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!773, !4298, !7, !7, !259}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4307, file: !4121, line: 310, baseType: !4330, size: 64, offset: 256)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!773, !4306, !4119}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4307, file: !4121, line: 311, baseType: !4334, size: 64, offset: 320)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!259, !4306, !4119, !4337}
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4339)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3556, line: 342, size: 1600, elements: !4340)
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346, !4348, !4350, !4351, !4352, !4353, !4354, !4355, !4357, !4358, !4359}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4339, file: !3556, line: 344, baseType: !3575, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4339, file: !3556, line: 346, baseType: !216, size: 16, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4339, file: !3556, line: 347, baseType: !216, size: 16, offset: 80)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4339, file: !3556, line: 348, baseType: !216, size: 16, offset: 96)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4339, file: !3556, line: 349, baseType: !216, size: 16, offset: 112)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4339, file: !3556, line: 351, baseType: !4347, size: 64, offset: 128)
!4347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3575, size: 64, elements: !509)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4339, file: !3556, line: 352, baseType: !4349, size: 768, offset: 192)
!4349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3575, size: 768, elements: !3390)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4339, file: !3556, line: 353, baseType: !4347, size: 64, offset: 960)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4339, file: !3556, line: 354, baseType: !4347, size: 64, offset: 1024)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4339, file: !3556, line: 355, baseType: !4347, size: 64, offset: 1088)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4339, file: !3556, line: 356, baseType: !4347, size: 64, offset: 1152)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4339, file: !3556, line: 357, baseType: !4347, size: 64, offset: 1216)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4339, file: !3556, line: 358, baseType: !4356, size: 128, offset: 1280)
!4356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3575, size: 128, elements: !1739)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4339, file: !3556, line: 359, baseType: !4347, size: 64, offset: 1408)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4339, file: !3556, line: 360, baseType: !4347, size: 64, offset: 1472)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4339, file: !3556, line: 362, baseType: !3575, size: 64, offset: 1536)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4307, file: !4121, line: 312, baseType: !4361, size: 64, offset: 384)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{null, !4298}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4307, file: !4121, line: 313, baseType: !4361, size: 64, offset: 448)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4307, file: !4121, line: 315, baseType: !773, size: 8, offset: 512)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4307, file: !4121, line: 316, baseType: !259, size: 32, offset: 544)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4307, file: !4121, line: 317, baseType: !730, size: 64, offset: 576)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4307, file: !4121, line: 319, baseType: !4337, size: 64, offset: 640)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4307, file: !4121, line: 321, baseType: !225, size: 128, offset: 704)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4307, file: !4121, line: 322, baseType: !225, size: 128, offset: 832)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4299, file: !4121, line: 347, baseType: !225, size: 128, offset: 320)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4299, file: !4121, line: 348, baseType: !225, size: 128, offset: 448)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4120, file: !4121, line: 186, baseType: !701, offset: 3968)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4120, file: !4121, line: 187, baseType: !942, size: 192, offset: 3968)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4120, file: !4121, line: 189, baseType: !7, size: 32, offset: 4160)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4120, file: !4121, line: 190, baseType: !773, size: 8, offset: 4192)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4120, file: !4121, line: 192, baseType: !3468, size: 5568, offset: 4224)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4120, file: !4121, line: 194, baseType: !225, size: 128, offset: 9792)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4120, file: !4121, line: 195, baseType: !225, size: 128, offset: 9920)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4120, file: !4121, line: 197, baseType: !7, size: 32, offset: 10048)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4120, file: !4121, line: 198, baseType: !7, size: 32, offset: 10080)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4120, file: !4121, line: 199, baseType: !4383, size: 64, offset: 10112)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4120, file: !4121, line: 201, baseType: !773, size: 8, offset: 10176)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4120, file: !4121, line: 203, baseType: !4386, size: 192, offset: 10240)
!4386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 192, elements: !838)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "driver_type", scope: !4077, file: !153, line: 176, baseType: !152, size: 32, offset: 6912)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !4077, file: !153, line: 177, baseType: !773, size: 8, offset: 6944)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "encode_wakeup", scope: !4077, file: !153, line: 178, baseType: !773, size: 8, offset: 6952)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_protocols", scope: !4077, file: !153, line: 179, baseType: !386, size: 64, offset: 6976)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_protocols", scope: !4077, file: !153, line: 180, baseType: !386, size: 64, offset: 7040)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_wakeup_protocols", scope: !4077, file: !153, line: 181, baseType: !386, size: 64, offset: 7104)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_protocol", scope: !4077, file: !153, line: 182, baseType: !121, size: 32, offset: 7168)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_filter", scope: !4077, file: !153, line: 183, baseType: !4395, size: 64, offset: 7200)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_scancode_filter", file: !153, line: 38, size: 64, elements: !4396)
!4396 = !{!4397, !4398}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4395, file: !153, line: 39, baseType: !293, size: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4395, file: !153, line: 40, baseType: !293, size: 32, offset: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_wakeup_filter", scope: !4077, file: !153, line: 184, baseType: !4395, size: 64, offset: 7264)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_mask", scope: !4077, file: !153, line: 185, baseType: !293, size: 32, offset: 7328)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4077, file: !153, line: 186, baseType: !293, size: 32, offset: 7360)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4077, file: !153, line: 187, baseType: !229, size: 64, offset: 7424)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "keylock", scope: !4077, file: !153, line: 188, baseType: !701, offset: 7488)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "keypressed", scope: !4077, file: !153, line: 189, baseType: !773, size: 8, offset: 7488)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "keyup_jiffies", scope: !4077, file: !153, line: 190, baseType: !212, size: 64, offset: 7552)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "timer_keyup", scope: !4077, file: !153, line: 191, baseType: !3663, size: 320, offset: 7616)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "timer_repeat", scope: !4077, file: !153, line: 192, baseType: !3663, size: 320, offset: 7936)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "last_keycode", scope: !4077, file: !153, line: 193, baseType: !293, size: 32, offset: 8256)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "last_protocol", scope: !4077, file: !153, line: 194, baseType: !121, size: 32, offset: 8288)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "last_scancode", scope: !4077, file: !153, line: 195, baseType: !386, size: 64, offset: 8320)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "last_toggle", scope: !4077, file: !153, line: 196, baseType: !278, size: 8, offset: 8384)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4077, file: !153, line: 197, baseType: !293, size: 32, offset: 8416)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !4077, file: !153, line: 198, baseType: !293, size: 32, offset: 8448)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "max_timeout", scope: !4077, file: !153, line: 199, baseType: !293, size: 32, offset: 8480)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "rx_resolution", scope: !4077, file: !153, line: 200, baseType: !293, size: 32, offset: 8512)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "tx_resolution", scope: !4077, file: !153, line: 201, baseType: !293, size: 32, offset: 8544)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4077, file: !153, line: 211, baseType: !773, size: 8, offset: 8576)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "change_protocol", scope: !4077, file: !153, line: 212, baseType: !4419, size: 64, offset: 8640)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!259, !4076, !3951}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4077, file: !153, line: 213, baseType: !4423, size: 64, offset: 8704)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!259, !4076}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4077, file: !153, line: 214, baseType: !4427, size: 64, offset: 8768)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{null, !4076}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_mask", scope: !4077, file: !153, line: 215, baseType: !4431, size: 64, offset: 8832)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!259, !4076, !293}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_carrier", scope: !4077, file: !153, line: 216, baseType: !4431, size: 64, offset: 8896)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_duty_cycle", scope: !4077, file: !153, line: 217, baseType: !4431, size: 64, offset: 8960)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "s_rx_carrier_range", scope: !4077, file: !153, line: 218, baseType: !4437, size: 64, offset: 9024)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!259, !4076, !293, !293}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ir", scope: !4077, file: !153, line: 219, baseType: !4441, size: 64, offset: 9088)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!259, !4076, !1217, !7}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "s_idle", scope: !4077, file: !153, line: 220, baseType: !4445, size: 64, offset: 9152)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{null, !4076, !773}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "s_learning_mode", scope: !4077, file: !153, line: 221, baseType: !4449, size: 64, offset: 9216)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!259, !4076, !259}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "s_carrier_report", scope: !4077, file: !153, line: 222, baseType: !4449, size: 64, offset: 9280)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "s_filter", scope: !4077, file: !153, line: 223, baseType: !4454, size: 64, offset: 9344)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!259, !4076, !4457}
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "s_wakeup_filter", scope: !4077, file: !153, line: 225, baseType: !4454, size: 64, offset: 9408)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "s_timeout", scope: !4077, file: !153, line: 227, baseType: !4460, size: 64, offset: 9472)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!259, !4076, !7}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "old", scope: !231, file: !164, line: 17, baseType: !270, size: 8, offset: 192)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "polling_interval", scope: !231, file: !164, line: 19, baseType: !293, size: 32, offset: 224)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !231, file: !164, line: 21, baseType: !4466, size: 704, offset: 256)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !174, line: 115, size: 704, elements: !4467)
!4467 = !{!4468, !4469, !4470, !4471}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4466, file: !174, line: 116, baseType: !1297, size: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4466, file: !174, line: 117, baseType: !3663, size: 320, offset: 256)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4466, file: !174, line: 120, baseType: !1273, size: 64, offset: 576)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4466, file: !174, line: 121, baseType: !259, size: 32, offset: 640)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !231, file: !164, line: 22, baseType: !1234, size: 256, offset: 960)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "get_key", scope: !231, file: !164, line: 23, baseType: !4474, size: 64, offset: 1216)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!259, !230, !4477, !2810, !4478}
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "tx_c", scope: !231, file: !164, line: 27, baseType: !235, size: 64, offset: 1280)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !231, file: !164, line: 28, baseType: !942, size: 192, offset: 1344)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "carrier", scope: !231, file: !164, line: 29, baseType: !7, size: 32, offset: 1536)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !231, file: !164, line: 30, baseType: !7, size: 32, offset: 1568)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!4485 = !{!4486, !4538, !4543, !4545, !4550, !4555, !4560, !4565, !4570, !0, !4572, !4668, !4671}
!4486 = !DIGlobalVariableExpression(var: !4487, expr: !DIExpression())
!4487 = distinct !DIGlobalVariable(name: "__param_enable_hdpvr", scope: !2, file: !3, line: 57, type: !4488, isLocal: true, isDefinition: true, align: 64)
!4488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4489)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4490, line: 69, size: 320, elements: !4491)
!4490 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4491 = !{!4492, !4493, !4494, !4510, !4512, !4516, !4517}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4489, file: !4490, line: 70, baseType: !730, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4489, file: !4490, line: 71, baseType: !207, size: 64, offset: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4489, file: !4490, line: 72, baseType: !4495, size: 64, offset: 128)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4497)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4490, line: 47, size: 256, elements: !4498)
!4498 = !{!4499, !4500, !4505, !4509}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4497, file: !4490, line: 49, baseType: !7, size: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4497, file: !4490, line: 51, baseType: !4501, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!259, !730, !4504}
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4497, file: !4490, line: 53, baseType: !4506, size: 64, offset: 128)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!259, !220, !4504}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4497, file: !4490, line: 55, baseType: !1338, size: 64, offset: 192)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4489, file: !4490, line: 73, baseType: !4511, size: 16, offset: 192)
!4511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4489, file: !4490, line: 74, baseType: !4513, size: 8, offset: 208)
!4513 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !277, line: 16, baseType: !4514)
!4514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !217, line: 20, baseType: !4515)
!4515 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4489, file: !4490, line: 75, baseType: !278, size: 8, offset: 216)
!4517 = !DIDerivedType(tag: DW_TAG_member, scope: !4489, file: !4490, line: 76, baseType: !4518, size: 64, offset: 256)
!4518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4489, file: !4490, line: 76, size: 64, elements: !4519)
!4519 = !{!4520, !4521, !4528}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4518, file: !4490, line: 77, baseType: !229, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4518, file: !4490, line: 78, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4524)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4490, line: 86, size: 128, elements: !4525)
!4525 = !{!4526, !4527}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4524, file: !4490, line: 87, baseType: !7, size: 32)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4524, file: !4490, line: 88, baseType: !220, size: 64, offset: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4518, file: !4490, line: 79, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4531)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4490, line: 92, size: 256, elements: !4532)
!4532 = !{!4533, !4534, !4535, !4536, !4537}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4531, file: !4490, line: 94, baseType: !7, size: 32)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4531, file: !4490, line: 95, baseType: !7, size: 32, offset: 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4531, file: !4490, line: 96, baseType: !1217, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4531, file: !4490, line: 97, baseType: !4495, size: 64, offset: 128)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4531, file: !4490, line: 98, baseType: !229, size: 64, offset: 192)
!4538 = !DIGlobalVariableExpression(var: !4539, expr: !DIExpression())
!4539 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_enable_hdpvrtype237", scope: !2, file: !3, line: 57, type: !4540, isLocal: true, isDefinition: true, align: 8)
!4540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 304, elements: !4541)
!4541 = !{!4542}
!4542 = !DISubrange(count: 38)
!4543 = !DIGlobalVariableExpression(var: !4544, expr: !DIExpression())
!4544 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ir_kbd_driver_init240", scope: !2, file: !3, line: 949, type: !229, isLocal: true, isDefinition: true)
!4545 = !DIGlobalVariableExpression(var: !4546, expr: !DIExpression())
!4546 = distinct !DIGlobalVariable(name: "__exitcall_ir_kbd_driver_exit", scope: !2, file: !3, line: 949, type: !4547, isLocal: true, isDefinition: true)
!4547 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4548, line: 117, baseType: !4549)
!4548 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!4550 = !DIGlobalVariableExpression(var: !4551, expr: !DIExpression())
!4551 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author241", scope: !2, file: !3, line: 953, type: !4552, isLocal: true, isDefinition: true, align: 8)
!4552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 688, elements: !4553)
!4553 = !{!4554}
!4554 = !DISubrange(count: 86)
!4555 = !DIGlobalVariableExpression(var: !4556, expr: !DIExpression())
!4556 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description242", scope: !2, file: !3, line: 954, type: !4557, isLocal: true, isDefinition: true, align: 8)
!4557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 504, elements: !4558)
!4558 = !{!4559}
!4559 = !DISubrange(count: 63)
!4560 = !DIGlobalVariableExpression(var: !4561, expr: !DIExpression())
!4561 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file243", scope: !2, file: !3, line: 955, type: !4562, isLocal: true, isDefinition: true, align: 8)
!4562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 360, elements: !4563)
!4563 = !{!4564}
!4564 = !DISubrange(count: 45)
!4565 = !DIGlobalVariableExpression(var: !4566, expr: !DIExpression())
!4566 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license244", scope: !2, file: !3, line: 955, type: !4567, isLocal: true, isDefinition: true, align: 8)
!4567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 184, elements: !4568)
!4568 = !{!4569}
!4569 = !DISubrange(count: 23)
!4570 = !DIGlobalVariableExpression(var: !4571, expr: !DIExpression())
!4571 = distinct !DIGlobalVariable(name: "enable_hdpvr", scope: !2, file: !3, line: 56, type: !773, isLocal: true, isDefinition: true)
!4572 = !DIGlobalVariableExpression(var: !4573, expr: !DIExpression())
!4573 = distinct !DIGlobalVariable(name: "ir_kbd_driver", scope: !2, file: !3, line: 940, type: !4574, isLocal: true, isDefinition: true)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_driver", file: !108, line: 255, size: 1920, elements: !4575)
!4575 = !{!4576, !4577, !4587, !4591, !4592, !4596, !4600, !4604, !4605, !4606, !4664, !4667}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4574, file: !108, line: 256, baseType: !7, size: 32)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4574, file: !108, line: 259, baseType: !4578, size: 64, offset: 64)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!259, !235, !4581}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4583)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_device_id", file: !3556, line: 457, size: 256, elements: !4584)
!4584 = !{!4585, !4586}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4583, file: !3556, line: 458, baseType: !241, size: 160)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4583, file: !3556, line: 459, baseType: !3575, size: 64, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4574, file: !108, line: 260, baseType: !4588, size: 64, offset: 128)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!259, !235}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "probe_new", scope: !4574, file: !108, line: 265, baseType: !4588, size: 64, offset: 192)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4574, file: !108, line: 268, baseType: !4593, size: 64, offset: 256)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{null, !235}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "alert", scope: !4574, file: !108, line: 277, baseType: !4597, size: 64, offset: 320)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{null, !235, !107, !7}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4574, file: !108, line: 283, baseType: !4601, size: 64, offset: 384)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!259, !235, !7, !229}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4574, file: !108, line: 285, baseType: !3544, size: 1152, offset: 448)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4574, file: !108, line: 286, baseType: !4581, size: 64, offset: 1600)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4574, file: !108, line: 289, baseType: !4607, size: 64, offset: 1664)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!259, !235, !4610}
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !108, line: 410, size: 640, elements: !4612)
!4612 = !{!4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4646, !4662, !4663}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4611, file: !108, line: 411, baseType: !241, size: 160)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4611, file: !108, line: 412, baseType: !218, size: 16, offset: 160)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4611, file: !108, line: 413, baseType: !218, size: 16, offset: 176)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4611, file: !108, line: 414, baseType: !730, size: 64, offset: 192)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4611, file: !108, line: 415, baseType: !229, size: 64, offset: 256)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4611, file: !108, line: 416, baseType: !3765, size: 64, offset: 320)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4611, file: !108, line: 417, baseType: !3778, size: 64, offset: 384)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4611, file: !108, line: 418, baseType: !4621, size: 64, offset: 448)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4623)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !113, line: 263, size: 256, elements: !4624)
!4624 = !{!4625, !4626, !4627, !4628, !4629}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4623, file: !113, line: 264, baseType: !730, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4623, file: !113, line: 265, baseType: !1437, size: 64, offset: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !4623, file: !113, line: 266, baseType: !773, size: 8, offset: 128)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4623, file: !113, line: 267, baseType: !112, size: 32, offset: 160)
!4629 = !DIDerivedType(tag: DW_TAG_member, scope: !4623, file: !113, line: 268, baseType: !4630, size: 64, offset: 192)
!4630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4623, file: !113, line: 268, size: 64, elements: !4631)
!4631 = !{!4632, !4633}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4630, file: !113, line: 269, baseType: !2165, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4630, file: !113, line: 276, baseType: !4634, size: 64)
!4634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4630, file: !113, line: 270, size: 64, elements: !4635)
!4635 = !{!4636, !4638, !4640, !4642, !4644}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !4634, file: !113, line: 271, baseType: !4637, size: 64)
!4637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 64, elements: !464)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !4634, file: !113, line: 272, baseType: !4639, size: 64)
!4639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 64, elements: !1699)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !4634, file: !113, line: 273, baseType: !4641, size: 64)
!4641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 64, elements: !1739)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !4634, file: !113, line: 274, baseType: !4643, size: 64)
!4643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 64, elements: !509)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4634, file: !113, line: 275, baseType: !4645, size: 64)
!4645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 64, elements: !509)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4611, file: !108, line: 419, baseType: !4647, size: 64, offset: 512)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4649)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4650, line: 20, size: 512, elements: !4651)
!4650 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4651 = !{!4652, !4654, !4655, !4656, !4657, !4658, !4660, !4661}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4649, file: !4650, line: 21, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !211, line: 158, baseType: !3285)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4649, file: !4650, line: 22, baseType: !4653, size: 64, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4649, file: !4650, line: 23, baseType: !730, size: 64, offset: 128)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4649, file: !4650, line: 24, baseType: !212, size: 64, offset: 192)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4649, file: !4650, line: 25, baseType: !212, size: 64, offset: 256)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4649, file: !4650, line: 26, baseType: !4659, size: 64, offset: 320)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4649, file: !4650, line: 26, baseType: !4659, size: 64, offset: 384)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4649, file: !4650, line: 26, baseType: !4659, size: 64, offset: 448)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4611, file: !108, line: 420, baseType: !7, size: 32, offset: 576)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4611, file: !108, line: 421, baseType: !259, size: 32, offset: 608)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "address_list", scope: !4574, file: !108, line: 290, baseType: !4665, size: 64, offset: 1728)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !4574, file: !108, line: 291, baseType: !225, size: 128, offset: 1792)
!4668 = !DIGlobalVariableExpression(var: !4669, expr: !DIExpression())
!4669 = distinct !DIGlobalVariable(name: "__key", scope: !4670, file: !3, line: 883, type: !832, isLocal: true, isDefinition: true)
!4670 = distinct !DISubprogram(name: "ir_probe", scope: !3, file: !3, line: 723, type: !4579, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!4671 = !DIGlobalVariableExpression(var: !4672, expr: !DIExpression())
!4672 = distinct !DIGlobalVariable(name: "ir_kbd_id", scope: !2, file: !3, line: 930, type: !4673, isLocal: true, isDefinition: true)
!4673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4582, size: 1024, elements: !1699)
!4674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 192, elements: !4675)
!4675 = !{!4676}
!4676 = !DISubrange(count: 24)
!4677 = !{i32 7, !"Dwarf Version", i32 4}
!4678 = !{i32 2, !"Debug Info Version", i32 3}
!4679 = !{i32 1, !"wchar_size", i32 2}
!4680 = !{i32 1, !"Code Model", i32 2}
!4681 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4682 = distinct !DISubprogram(name: "ir_kbd_driver_init", scope: !3, file: !3, line: 949, type: !4683, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!259}
!4685 = !DILocation(line: 949, column: 1, scope: !4682)
!4686 = distinct !DISubprogram(name: "ir_kbd_driver_exit", scope: !3, file: !3, line: 949, type: !3053, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!4687 = !DILocation(line: 949, column: 1, scope: !4686)
!4688 = !DILocalVariable(name: "client", arg: 1, scope: !4670, file: !3, line: 723, type: !235)
!4689 = !DILocation(line: 723, column: 40, scope: !4670)
!4690 = !DILocalVariable(name: "id", arg: 2, scope: !4670, file: !3, line: 723, type: !4581)
!4691 = !DILocation(line: 723, column: 76, scope: !4670)
!4692 = !DILocalVariable(name: "ir_codes", scope: !4670, file: !3, line: 725, type: !220)
!4693 = !DILocation(line: 725, column: 8, scope: !4670)
!4694 = !DILocalVariable(name: "name", scope: !4670, file: !3, line: 726, type: !730)
!4695 = !DILocation(line: 726, column: 14, scope: !4670)
!4696 = !DILocalVariable(name: "rc_proto", scope: !4670, file: !3, line: 727, type: !386)
!4697 = !DILocation(line: 727, column: 6, scope: !4670)
!4698 = !DILocalVariable(name: "ir", scope: !4670, file: !3, line: 728, type: !230)
!4699 = !DILocation(line: 728, column: 17, scope: !4670)
!4700 = !DILocalVariable(name: "rc", scope: !4670, file: !3, line: 729, type: !4076)
!4701 = !DILocation(line: 729, column: 17, scope: !4670)
!4702 = !DILocalVariable(name: "adap", scope: !4670, file: !3, line: 730, type: !245)
!4703 = !DILocation(line: 730, column: 22, scope: !4670)
!4704 = !DILocation(line: 730, column: 29, scope: !4670)
!4705 = !DILocation(line: 730, column: 37, scope: !4670)
!4706 = !DILocalVariable(name: "addr", scope: !4670, file: !3, line: 731, type: !218)
!4707 = !DILocation(line: 731, column: 17, scope: !4670)
!4708 = !DILocation(line: 731, column: 24, scope: !4670)
!4709 = !DILocation(line: 731, column: 32, scope: !4670)
!4710 = !DILocalVariable(name: "probe_tx", scope: !4670, file: !3, line: 732, type: !773)
!4711 = !DILocation(line: 732, column: 7, scope: !4670)
!4712 = !DILocation(line: 732, column: 19, scope: !4670)
!4713 = !DILocation(line: 732, column: 23, scope: !4670)
!4714 = !DILocation(line: 732, column: 35, scope: !4670)
!4715 = !DILocation(line: 732, column: 46, scope: !4670)
!4716 = !DILocalVariable(name: "err", scope: !4670, file: !3, line: 733, type: !259)
!4717 = !DILocation(line: 733, column: 6, scope: !4670)
!4718 = !DILocation(line: 735, column: 7, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 735, column: 6)
!4720 = !DILocation(line: 735, column: 11, scope: !4719)
!4721 = !DILocation(line: 735, column: 23, scope: !4719)
!4722 = !DILocation(line: 735, column: 37, scope: !4719)
!4723 = !DILocation(line: 735, column: 41, scope: !4719)
!4724 = !DILocation(line: 735, column: 6, scope: !4670)
!4725 = !DILocation(line: 736, column: 3, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 735, column: 55)
!4727 = !DILocation(line: 737, column: 3, scope: !4726)
!4728 = !DILocation(line: 740, column: 21, scope: !4670)
!4729 = !DILocation(line: 740, column: 29, scope: !4670)
!4730 = !DILocation(line: 740, column: 7, scope: !4670)
!4731 = !DILocation(line: 740, column: 5, scope: !4670)
!4732 = !DILocation(line: 741, column: 7, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 741, column: 6)
!4734 = !DILocation(line: 741, column: 6, scope: !4670)
!4735 = !DILocation(line: 742, column: 3, scope: !4733)
!4736 = !DILocation(line: 744, column: 10, scope: !4670)
!4737 = !DILocation(line: 744, column: 2, scope: !4670)
!4738 = !DILocation(line: 744, column: 6, scope: !4670)
!4739 = !DILocation(line: 744, column: 8, scope: !4670)
!4740 = !DILocation(line: 745, column: 2, scope: !4670)
!4741 = !DILocation(line: 745, column: 6, scope: !4670)
!4742 = !DILocation(line: 745, column: 23, scope: !4670)
!4743 = !DILocation(line: 746, column: 21, scope: !4670)
!4744 = !DILocation(line: 746, column: 29, scope: !4670)
!4745 = !DILocation(line: 746, column: 2, scope: !4670)
!4746 = !DILocation(line: 748, column: 9, scope: !4670)
!4747 = !DILocation(line: 748, column: 2, scope: !4670)
!4748 = !DILocation(line: 750, column: 15, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 748, column: 15)
!4750 = !DILocation(line: 751, column: 3, scope: !4749)
!4751 = !DILocation(line: 751, column: 7, scope: !4749)
!4752 = !DILocation(line: 751, column: 15, scope: !4749)
!4753 = !DILocation(line: 752, column: 15, scope: !4749)
!4754 = !DILocation(line: 753, column: 15, scope: !4749)
!4755 = !DILocation(line: 754, column: 3, scope: !4749)
!4756 = !DILocation(line: 758, column: 15, scope: !4749)
!4757 = !DILocation(line: 759, column: 3, scope: !4749)
!4758 = !DILocation(line: 759, column: 7, scope: !4749)
!4759 = !DILocation(line: 759, column: 15, scope: !4749)
!4760 = !DILocation(line: 760, column: 15, scope: !4749)
!4761 = !DILocation(line: 761, column: 15, scope: !4749)
!4762 = !DILocation(line: 762, column: 3, scope: !4749)
!4763 = !DILocation(line: 764, column: 15, scope: !4749)
!4764 = !DILocation(line: 765, column: 3, scope: !4749)
!4765 = !DILocation(line: 765, column: 7, scope: !4749)
!4766 = !DILocation(line: 765, column: 15, scope: !4749)
!4767 = !DILocation(line: 766, column: 15, scope: !4749)
!4768 = !DILocation(line: 767, column: 15, scope: !4749)
!4769 = !DILocation(line: 768, column: 3, scope: !4749)
!4770 = !DILocation(line: 770, column: 15, scope: !4749)
!4771 = !DILocation(line: 771, column: 3, scope: !4749)
!4772 = !DILocation(line: 771, column: 7, scope: !4749)
!4773 = !DILocation(line: 771, column: 15, scope: !4749)
!4774 = !DILocation(line: 772, column: 15, scope: !4749)
!4775 = !DILocation(line: 773, column: 15, scope: !4749)
!4776 = !DILocation(line: 774, column: 3, scope: !4749)
!4777 = !DILocation(line: 776, column: 15, scope: !4749)
!4778 = !DILocation(line: 777, column: 3, scope: !4749)
!4779 = !DILocation(line: 777, column: 7, scope: !4749)
!4780 = !DILocation(line: 777, column: 15, scope: !4749)
!4781 = !DILocation(line: 778, column: 15, scope: !4749)
!4782 = !DILocation(line: 779, column: 15, scope: !4749)
!4783 = !DILocation(line: 780, column: 3, scope: !4749)
!4784 = !DILocation(line: 782, column: 15, scope: !4749)
!4785 = !DILocation(line: 783, column: 3, scope: !4749)
!4786 = !DILocation(line: 783, column: 7, scope: !4749)
!4787 = !DILocation(line: 783, column: 15, scope: !4749)
!4788 = !DILocation(line: 784, column: 15, scope: !4749)
!4789 = !DILocation(line: 786, column: 15, scope: !4749)
!4790 = !DILocation(line: 787, column: 3, scope: !4749)
!4791 = !DILocation(line: 789, column: 15, scope: !4749)
!4792 = !DILocation(line: 790, column: 3, scope: !4749)
!4793 = !DILocation(line: 790, column: 7, scope: !4749)
!4794 = !DILocation(line: 790, column: 15, scope: !4749)
!4795 = !DILocation(line: 791, column: 15, scope: !4749)
!4796 = !DILocation(line: 793, column: 15, scope: !4749)
!4797 = !DILocation(line: 794, column: 12, scope: !4749)
!4798 = !DILocation(line: 795, column: 3, scope: !4749)
!4799 = !DILocation(line: 799, column: 6, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 799, column: 6)
!4801 = !DILocation(line: 799, column: 14, scope: !4800)
!4802 = !DILocation(line: 799, column: 18, scope: !4800)
!4803 = !DILocation(line: 799, column: 6, scope: !4670)
!4804 = !DILocalVariable(name: "init_data", scope: !4805, file: !3, line: 800, type: !4806)
!4805 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 799, column: 33)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4808)
!4808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IR_i2c_init_data", file: !164, line: 44, size: 448, elements: !4809)
!4809 = !{!4810, !4811, !4812, !4813, !4814, !4815, !4816}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "ir_codes", scope: !4808, file: !164, line: 45, baseType: !220, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4808, file: !164, line: 46, baseType: !730, size: 64, offset: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4808, file: !164, line: 47, baseType: !386, size: 64, offset: 128)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "polling_interval", scope: !4808, file: !164, line: 48, baseType: !293, size: 32, offset: 192)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "get_key", scope: !4808, file: !164, line: 54, baseType: !4474, size: 64, offset: 256)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "internal_get_key_func", scope: !4808, file: !164, line: 57, baseType: !163, size: 32, offset: 320)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "rc_dev", scope: !4808, file: !164, line: 59, baseType: !4076, size: 64, offset: 384)
!4817 = !DILocation(line: 800, column: 34, scope: !4805)
!4818 = !DILocation(line: 801, column: 7, scope: !4805)
!4819 = !DILocation(line: 801, column: 15, scope: !4805)
!4820 = !DILocation(line: 801, column: 19, scope: !4805)
!4821 = !DILocation(line: 803, column: 14, scope: !4805)
!4822 = !DILocation(line: 803, column: 25, scope: !4805)
!4823 = !DILocation(line: 803, column: 12, scope: !4805)
!4824 = !DILocation(line: 804, column: 8, scope: !4805)
!4825 = !DILocation(line: 804, column: 19, scope: !4805)
!4826 = !DILocation(line: 804, column: 6, scope: !4805)
!4827 = !DILocation(line: 806, column: 10, scope: !4805)
!4828 = !DILocation(line: 806, column: 21, scope: !4805)
!4829 = !DILocation(line: 806, column: 8, scope: !4805)
!4830 = !DILocation(line: 807, column: 7, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 807, column: 7)
!4832 = !DILocation(line: 807, column: 18, scope: !4831)
!4833 = !DILocation(line: 807, column: 7, scope: !4805)
!4834 = !DILocation(line: 808, column: 15, scope: !4831)
!4835 = !DILocation(line: 808, column: 26, scope: !4831)
!4836 = !DILocation(line: 808, column: 13, scope: !4831)
!4837 = !DILocation(line: 808, column: 4, scope: !4831)
!4838 = !DILocation(line: 810, column: 7, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 810, column: 7)
!4840 = !DILocation(line: 810, column: 18, scope: !4839)
!4841 = !DILocation(line: 810, column: 7, scope: !4805)
!4842 = !DILocation(line: 811, column: 27, scope: !4839)
!4843 = !DILocation(line: 811, column: 38, scope: !4839)
!4844 = !DILocation(line: 811, column: 4, scope: !4839)
!4845 = !DILocation(line: 811, column: 8, scope: !4839)
!4846 = !DILocation(line: 811, column: 25, scope: !4839)
!4847 = !DILocation(line: 813, column: 11, scope: !4805)
!4848 = !DILocation(line: 813, column: 22, scope: !4805)
!4849 = !DILocation(line: 813, column: 3, scope: !4805)
!4850 = !DILocation(line: 816, column: 18, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 813, column: 45)
!4852 = !DILocation(line: 816, column: 29, scope: !4851)
!4853 = !DILocation(line: 816, column: 4, scope: !4851)
!4854 = !DILocation(line: 816, column: 8, scope: !4851)
!4855 = !DILocation(line: 816, column: 16, scope: !4851)
!4856 = !DILocation(line: 817, column: 4, scope: !4851)
!4857 = !DILocation(line: 819, column: 4, scope: !4851)
!4858 = !DILocation(line: 819, column: 8, scope: !4851)
!4859 = !DILocation(line: 819, column: 16, scope: !4851)
!4860 = !DILocation(line: 820, column: 4, scope: !4851)
!4861 = !DILocation(line: 822, column: 4, scope: !4851)
!4862 = !DILocation(line: 822, column: 8, scope: !4851)
!4863 = !DILocation(line: 822, column: 16, scope: !4851)
!4864 = !DILocation(line: 823, column: 4, scope: !4851)
!4865 = !DILocation(line: 825, column: 4, scope: !4851)
!4866 = !DILocation(line: 825, column: 8, scope: !4851)
!4867 = !DILocation(line: 825, column: 16, scope: !4851)
!4868 = !DILocation(line: 826, column: 4, scope: !4851)
!4869 = !DILocation(line: 828, column: 4, scope: !4851)
!4870 = !DILocation(line: 828, column: 8, scope: !4851)
!4871 = !DILocation(line: 828, column: 16, scope: !4851)
!4872 = !DILocation(line: 829, column: 4, scope: !4851)
!4873 = !DILocation(line: 831, column: 4, scope: !4851)
!4874 = !DILocation(line: 831, column: 8, scope: !4851)
!4875 = !DILocation(line: 831, column: 16, scope: !4851)
!4876 = !DILocation(line: 832, column: 4, scope: !4851)
!4877 = !DILocation(line: 834, column: 4, scope: !4851)
!4878 = !DILocation(line: 834, column: 8, scope: !4851)
!4879 = !DILocation(line: 834, column: 16, scope: !4851)
!4880 = !DILocation(line: 835, column: 4, scope: !4851)
!4881 = !DILocation(line: 837, column: 2, scope: !4805)
!4882 = !DILocation(line: 839, column: 7, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 839, column: 6)
!4884 = !DILocation(line: 839, column: 6, scope: !4670)
!4885 = !DILocation(line: 844, column: 8, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 839, column: 11)
!4887 = !DILocation(line: 844, column: 6, scope: !4886)
!4888 = !DILocation(line: 845, column: 8, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 845, column: 7)
!4890 = !DILocation(line: 845, column: 7, scope: !4886)
!4891 = !DILocation(line: 846, column: 4, scope: !4889)
!4892 = !DILocation(line: 847, column: 2, scope: !4886)
!4893 = !DILocation(line: 848, column: 11, scope: !4670)
!4894 = !DILocation(line: 848, column: 2, scope: !4670)
!4895 = !DILocation(line: 848, column: 6, scope: !4670)
!4896 = !DILocation(line: 848, column: 9, scope: !4670)
!4897 = !DILocation(line: 851, column: 7, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 851, column: 6)
!4899 = !DILocation(line: 851, column: 12, scope: !4898)
!4900 = !DILocation(line: 851, column: 16, scope: !4898)
!4901 = !DILocation(line: 851, column: 20, scope: !4898)
!4902 = !DILocation(line: 851, column: 28, scope: !4898)
!4903 = !DILocation(line: 851, column: 32, scope: !4898)
!4904 = !DILocation(line: 851, column: 41, scope: !4898)
!4905 = !DILocation(line: 851, column: 45, scope: !4898)
!4906 = !DILocation(line: 851, column: 6, scope: !4670)
!4907 = !DILocation(line: 852, column: 3, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 851, column: 55)
!4909 = !DILocation(line: 854, column: 7, scope: !4908)
!4910 = !DILocation(line: 855, column: 3, scope: !4908)
!4911 = !DILocation(line: 858, column: 17, scope: !4670)
!4912 = !DILocation(line: 858, column: 2, scope: !4670)
!4913 = !DILocation(line: 858, column: 6, scope: !4670)
!4914 = !DILocation(line: 858, column: 15, scope: !4670)
!4915 = !DILocation(line: 860, column: 11, scope: !4670)
!4916 = !DILocation(line: 860, column: 15, scope: !4670)
!4917 = !DILocation(line: 860, column: 58, scope: !4670)
!4918 = !DILocation(line: 860, column: 64, scope: !4670)
!4919 = !DILocation(line: 860, column: 48, scope: !4670)
!4920 = !DILocation(line: 861, column: 14, scope: !4670)
!4921 = !DILocation(line: 861, column: 22, scope: !4670)
!4922 = !DILocation(line: 861, column: 4, scope: !4670)
!4923 = !DILocation(line: 860, column: 2, scope: !4670)
!4924 = !DILocation(line: 867, column: 2, scope: !4670)
!4925 = !DILocation(line: 867, column: 6, scope: !4670)
!4926 = !DILocation(line: 867, column: 15, scope: !4670)
!4927 = !DILocation(line: 867, column: 23, scope: !4670)
!4928 = !DILocation(line: 868, column: 25, scope: !4670)
!4929 = !DILocation(line: 868, column: 29, scope: !4670)
!4930 = !DILocation(line: 868, column: 2, scope: !4670)
!4931 = !DILocation(line: 868, column: 6, scope: !4670)
!4932 = !DILocation(line: 868, column: 23, scope: !4670)
!4933 = !DILocation(line: 869, column: 25, scope: !4670)
!4934 = !DILocation(line: 869, column: 2, scope: !4670)
!4935 = !DILocation(line: 869, column: 6, scope: !4670)
!4936 = !DILocation(line: 869, column: 23, scope: !4670)
!4937 = !DILocation(line: 870, column: 26, scope: !4670)
!4938 = !DILocation(line: 870, column: 34, scope: !4670)
!4939 = !DILocation(line: 870, column: 2, scope: !4670)
!4940 = !DILocation(line: 870, column: 6, scope: !4670)
!4941 = !DILocation(line: 870, column: 10, scope: !4670)
!4942 = !DILocation(line: 870, column: 23, scope: !4670)
!4943 = !DILocation(line: 871, column: 25, scope: !4670)
!4944 = !DILocation(line: 871, column: 2, scope: !4670)
!4945 = !DILocation(line: 871, column: 6, scope: !4670)
!4946 = !DILocation(line: 871, column: 23, scope: !4670)
!4947 = !DILocation(line: 872, column: 2, scope: !4670)
!4948 = !DILocation(line: 872, column: 6, scope: !4670)
!4949 = !DILocation(line: 872, column: 23, scope: !4670)
!4950 = !DILocation(line: 873, column: 2, scope: !4670)
!4951 = !DILocation(line: 873, column: 6, scope: !4670)
!4952 = !DILocation(line: 873, column: 23, scope: !4670)
!4953 = !DILocation(line: 878, column: 23, scope: !4670)
!4954 = !DILocation(line: 878, column: 27, scope: !4670)
!4955 = !DILocation(line: 878, column: 2, scope: !4670)
!4956 = !DILocation(line: 878, column: 6, scope: !4670)
!4957 = !DILocation(line: 878, column: 21, scope: !4670)
!4958 = !DILocation(line: 879, column: 26, scope: !4670)
!4959 = !DILocation(line: 879, column: 2, scope: !4670)
!4960 = !DILocation(line: 879, column: 6, scope: !4670)
!4961 = !DILocation(line: 879, column: 24, scope: !4670)
!4962 = !DILocation(line: 880, column: 7, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 880, column: 6)
!4964 = !DILocation(line: 880, column: 11, scope: !4963)
!4965 = !DILocation(line: 880, column: 6, scope: !4670)
!4966 = !DILocation(line: 881, column: 3, scope: !4963)
!4967 = !DILocation(line: 881, column: 7, scope: !4963)
!4968 = !DILocation(line: 881, column: 19, scope: !4963)
!4969 = !DILocation(line: 883, column: 2, scope: !4670)
!4970 = !DILocation(line: 883, column: 2, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 883, column: 2)
!4972 = !DILocation(line: 885, column: 2, scope: !4670)
!4973 = !DILocation(line: 885, column: 2, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 885, column: 2)
!4975 = !DILocation(line: 885, column: 2, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 885, column: 2)
!4977 = !DILocation(line: 887, column: 6, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 887, column: 6)
!4979 = !DILocation(line: 887, column: 6, scope: !4670)
!4980 = !DILocation(line: 888, column: 35, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 887, column: 16)
!4982 = !DILocation(line: 888, column: 43, scope: !4981)
!4983 = !DILocation(line: 888, column: 14, scope: !4981)
!4984 = !DILocation(line: 888, column: 3, scope: !4981)
!4985 = !DILocation(line: 888, column: 7, scope: !4981)
!4986 = !DILocation(line: 888, column: 12, scope: !4981)
!4987 = !DILocation(line: 889, column: 14, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 889, column: 7)
!4989 = !DILocation(line: 889, column: 18, scope: !4988)
!4990 = !DILocation(line: 889, column: 7, scope: !4988)
!4991 = !DILocation(line: 889, column: 7, scope: !4981)
!4992 = !DILocation(line: 890, column: 4, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 889, column: 25)
!4994 = !DILocation(line: 891, column: 18, scope: !4993)
!4995 = !DILocation(line: 891, column: 22, scope: !4993)
!4996 = !DILocation(line: 891, column: 10, scope: !4993)
!4997 = !DILocation(line: 891, column: 8, scope: !4993)
!4998 = !DILocation(line: 892, column: 4, scope: !4993)
!4999 = !DILocation(line: 893, column: 26, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 893, column: 14)
!5001 = !DILocation(line: 893, column: 15, scope: !5000)
!5002 = !DILocation(line: 893, column: 14, scope: !4988)
!5003 = !DILocation(line: 894, column: 4, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 893, column: 31)
!5005 = !DILocation(line: 894, column: 8, scope: !5004)
!5006 = !DILocation(line: 894, column: 16, scope: !5004)
!5007 = !DILocation(line: 895, column: 4, scope: !5004)
!5008 = !DILocation(line: 895, column: 8, scope: !5004)
!5009 = !DILocation(line: 895, column: 19, scope: !5004)
!5010 = !DILocation(line: 896, column: 4, scope: !5004)
!5011 = !DILocation(line: 896, column: 8, scope: !5004)
!5012 = !DILocation(line: 896, column: 14, scope: !5004)
!5013 = !DILocation(line: 897, column: 4, scope: !5004)
!5014 = !DILocation(line: 897, column: 8, scope: !5004)
!5015 = !DILocation(line: 897, column: 21, scope: !5004)
!5016 = !DILocation(line: 898, column: 4, scope: !5004)
!5017 = !DILocation(line: 898, column: 8, scope: !5004)
!5018 = !DILocation(line: 898, column: 24, scope: !5004)
!5019 = !DILocation(line: 899, column: 3, scope: !5004)
!5020 = !DILocation(line: 900, column: 2, scope: !4981)
!5021 = !DILocation(line: 902, column: 27, scope: !4670)
!5022 = !DILocation(line: 902, column: 8, scope: !4670)
!5023 = !DILocation(line: 902, column: 6, scope: !4670)
!5024 = !DILocation(line: 903, column: 6, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 903, column: 6)
!5026 = !DILocation(line: 903, column: 6, scope: !4670)
!5027 = !DILocation(line: 904, column: 3, scope: !5025)
!5028 = !DILocation(line: 906, column: 2, scope: !4670)
!5029 = !DILabel(scope: !4670, name: "err_out_free", file: !3, line: 908)
!5030 = !DILocation(line: 908, column: 2, scope: !4670)
!5031 = !DILocation(line: 909, column: 14, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 909, column: 6)
!5033 = !DILocation(line: 909, column: 18, scope: !5032)
!5034 = !DILocation(line: 909, column: 7, scope: !5032)
!5035 = !DILocation(line: 909, column: 6, scope: !4670)
!5036 = !DILocation(line: 910, column: 25, scope: !5032)
!5037 = !DILocation(line: 910, column: 29, scope: !5032)
!5038 = !DILocation(line: 910, column: 3, scope: !5032)
!5039 = !DILocation(line: 913, column: 17, scope: !4670)
!5040 = !DILocation(line: 913, column: 2, scope: !4670)
!5041 = !DILocation(line: 914, column: 9, scope: !4670)
!5042 = !DILocation(line: 914, column: 2, scope: !4670)
!5043 = !DILocation(line: 915, column: 1, scope: !4670)
!5044 = distinct !DISubprogram(name: "ir_remove", scope: !3, file: !3, line: 917, type: !4589, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5045 = !DILocalVariable(name: "client", arg: 1, scope: !5044, file: !3, line: 917, type: !235)
!5046 = !DILocation(line: 917, column: 41, scope: !5044)
!5047 = !DILocalVariable(name: "ir", scope: !5044, file: !3, line: 919, type: !230)
!5048 = !DILocation(line: 919, column: 17, scope: !5044)
!5049 = !DILocation(line: 919, column: 41, scope: !5044)
!5050 = !DILocation(line: 919, column: 22, scope: !5044)
!5051 = !DILocation(line: 921, column: 28, scope: !5044)
!5052 = !DILocation(line: 921, column: 32, scope: !5044)
!5053 = !DILocation(line: 921, column: 2, scope: !5044)
!5054 = !DILocation(line: 923, column: 24, scope: !5044)
!5055 = !DILocation(line: 923, column: 28, scope: !5044)
!5056 = !DILocation(line: 923, column: 2, scope: !5044)
!5057 = !DILocation(line: 925, column: 23, scope: !5044)
!5058 = !DILocation(line: 925, column: 27, scope: !5044)
!5059 = !DILocation(line: 925, column: 2, scope: !5044)
!5060 = !DILocation(line: 927, column: 2, scope: !5044)
!5061 = distinct !DISubprogram(name: "devm_kzalloc", scope: !73, file: !73, line: 215, type: !5062, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!229, !3472, !1437, !210}
!5064 = !DILocalVariable(name: "dev", arg: 1, scope: !5061, file: !73, line: 215, type: !3472)
!5065 = !DILocation(line: 215, column: 49, scope: !5061)
!5066 = !DILocalVariable(name: "size", arg: 2, scope: !5061, file: !73, line: 215, type: !1437)
!5067 = !DILocation(line: 215, column: 61, scope: !5061)
!5068 = !DILocalVariable(name: "gfp", arg: 3, scope: !5061, file: !73, line: 215, type: !210)
!5069 = !DILocation(line: 215, column: 73, scope: !5061)
!5070 = !DILocation(line: 217, column: 22, scope: !5061)
!5071 = !DILocation(line: 217, column: 27, scope: !5061)
!5072 = !DILocation(line: 217, column: 33, scope: !5061)
!5073 = !DILocation(line: 217, column: 37, scope: !5061)
!5074 = !DILocation(line: 217, column: 9, scope: !5061)
!5075 = !DILocation(line: 217, column: 2, scope: !5061)
!5076 = distinct !DISubprogram(name: "i2c_set_clientdata", scope: !108, file: !108, line: 356, type: !5077, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{null, !235, !229}
!5079 = !DILocalVariable(name: "client", arg: 1, scope: !5076, file: !108, line: 356, type: !235)
!5080 = !DILocation(line: 356, column: 58, scope: !5076)
!5081 = !DILocalVariable(name: "data", arg: 2, scope: !5076, file: !108, line: 356, type: !229)
!5082 = !DILocation(line: 356, column: 72, scope: !5076)
!5083 = !DILocation(line: 358, column: 19, scope: !5076)
!5084 = !DILocation(line: 358, column: 27, scope: !5076)
!5085 = !DILocation(line: 358, column: 32, scope: !5076)
!5086 = !DILocation(line: 358, column: 2, scope: !5076)
!5087 = !DILocation(line: 359, column: 1, scope: !5076)
!5088 = distinct !DISubprogram(name: "get_key_pixelview", scope: !3, file: !3, line: 158, type: !4475, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5089 = !DILocalVariable(name: "ir", arg: 1, scope: !5088, file: !3, line: 158, type: !230)
!5090 = !DILocation(line: 158, column: 45, scope: !5088)
!5091 = !DILocalVariable(name: "protocol", arg: 2, scope: !5088, file: !3, line: 158, type: !4477)
!5092 = !DILocation(line: 158, column: 64, scope: !5088)
!5093 = !DILocalVariable(name: "scancode", arg: 3, scope: !5088, file: !3, line: 159, type: !2810)
!5094 = !DILocation(line: 159, column: 14, scope: !5088)
!5095 = !DILocalVariable(name: "toggle", arg: 4, scope: !5088, file: !3, line: 159, type: !4478)
!5096 = !DILocation(line: 159, column: 28, scope: !5088)
!5097 = !DILocalVariable(name: "rc", scope: !5088, file: !3, line: 161, type: !259)
!5098 = !DILocation(line: 161, column: 6, scope: !5088)
!5099 = !DILocalVariable(name: "b", scope: !5088, file: !3, line: 162, type: !270)
!5100 = !DILocation(line: 162, column: 16, scope: !5088)
!5101 = !DILocation(line: 165, column: 23, scope: !5088)
!5102 = !DILocation(line: 165, column: 27, scope: !5088)
!5103 = !DILocation(line: 165, column: 7, scope: !5088)
!5104 = !DILocation(line: 165, column: 5, scope: !5088)
!5105 = !DILocation(line: 166, column: 6, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 166, column: 6)
!5107 = !DILocation(line: 166, column: 9, scope: !5106)
!5108 = !DILocation(line: 166, column: 6, scope: !5088)
!5109 = !DILocation(line: 168, column: 7, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 168, column: 7)
!5111 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 166, column: 15)
!5112 = !DILocation(line: 168, column: 10, scope: !5110)
!5113 = !DILocation(line: 168, column: 7, scope: !5111)
!5114 = !DILocation(line: 169, column: 11, scope: !5110)
!5115 = !DILocation(line: 169, column: 4, scope: !5110)
!5116 = !DILocation(line: 170, column: 3, scope: !5111)
!5117 = !DILocation(line: 173, column: 3, scope: !5088)
!5118 = !DILocation(line: 173, column: 12, scope: !5088)
!5119 = !DILocation(line: 174, column: 14, scope: !5088)
!5120 = !DILocation(line: 174, column: 3, scope: !5088)
!5121 = !DILocation(line: 174, column: 12, scope: !5088)
!5122 = !DILocation(line: 175, column: 3, scope: !5088)
!5123 = !DILocation(line: 175, column: 10, scope: !5088)
!5124 = !DILocation(line: 176, column: 2, scope: !5088)
!5125 = !DILocation(line: 177, column: 1, scope: !5088)
!5126 = distinct !DISubprogram(name: "get_key_haup", scope: !3, file: !3, line: 133, type: !4475, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5127 = !DILocalVariable(name: "ir", arg: 1, scope: !5126, file: !3, line: 133, type: !230)
!5128 = !DILocation(line: 133, column: 40, scope: !5126)
!5129 = !DILocalVariable(name: "protocol", arg: 2, scope: !5126, file: !3, line: 133, type: !4477)
!5130 = !DILocation(line: 133, column: 59, scope: !5126)
!5131 = !DILocalVariable(name: "scancode", arg: 3, scope: !5126, file: !3, line: 134, type: !2810)
!5132 = !DILocation(line: 134, column: 9, scope: !5126)
!5133 = !DILocalVariable(name: "toggle", arg: 4, scope: !5126, file: !3, line: 134, type: !4478)
!5134 = !DILocation(line: 134, column: 23, scope: !5126)
!5135 = !DILocation(line: 136, column: 29, scope: !5126)
!5136 = !DILocation(line: 136, column: 33, scope: !5126)
!5137 = !DILocation(line: 136, column: 43, scope: !5126)
!5138 = !DILocation(line: 136, column: 53, scope: !5126)
!5139 = !DILocation(line: 136, column: 9, scope: !5126)
!5140 = !DILocation(line: 136, column: 2, scope: !5126)
!5141 = distinct !DISubprogram(name: "get_key_knc1", scope: !3, file: !3, line: 207, type: !4475, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5142 = !DILocalVariable(name: "ir", arg: 1, scope: !5141, file: !3, line: 207, type: !230)
!5143 = !DILocation(line: 207, column: 40, scope: !5141)
!5144 = !DILocalVariable(name: "protocol", arg: 2, scope: !5141, file: !3, line: 207, type: !4477)
!5145 = !DILocation(line: 207, column: 59, scope: !5141)
!5146 = !DILocalVariable(name: "scancode", arg: 3, scope: !5141, file: !3, line: 208, type: !2810)
!5147 = !DILocation(line: 208, column: 9, scope: !5141)
!5148 = !DILocalVariable(name: "toggle", arg: 4, scope: !5141, file: !3, line: 208, type: !4478)
!5149 = !DILocation(line: 208, column: 23, scope: !5141)
!5150 = !DILocalVariable(name: "rc", scope: !5141, file: !3, line: 210, type: !259)
!5151 = !DILocation(line: 210, column: 6, scope: !5141)
!5152 = !DILocalVariable(name: "b", scope: !5141, file: !3, line: 211, type: !270)
!5153 = !DILocation(line: 211, column: 16, scope: !5141)
!5154 = !DILocation(line: 214, column: 23, scope: !5141)
!5155 = !DILocation(line: 214, column: 27, scope: !5141)
!5156 = !DILocation(line: 214, column: 7, scope: !5141)
!5157 = !DILocation(line: 214, column: 5, scope: !5141)
!5158 = !DILocation(line: 215, column: 6, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 215, column: 6)
!5160 = !DILocation(line: 215, column: 9, scope: !5159)
!5161 = !DILocation(line: 215, column: 6, scope: !5141)
!5162 = !DILocation(line: 217, column: 7, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 217, column: 7)
!5164 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 215, column: 15)
!5165 = !DILocation(line: 217, column: 10, scope: !5163)
!5166 = !DILocation(line: 217, column: 7, scope: !5164)
!5167 = !DILocation(line: 218, column: 11, scope: !5163)
!5168 = !DILocation(line: 218, column: 4, scope: !5163)
!5169 = !DILocation(line: 219, column: 3, scope: !5164)
!5170 = !DILocation(line: 228, column: 6, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 228, column: 6)
!5172 = !DILocation(line: 228, column: 8, scope: !5171)
!5173 = !DILocation(line: 228, column: 6, scope: !5141)
!5174 = !DILocation(line: 229, column: 3, scope: !5171)
!5175 = !DILocation(line: 231, column: 6, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 231, column: 6)
!5177 = !DILocation(line: 231, column: 8, scope: !5176)
!5178 = !DILocation(line: 231, column: 6, scope: !5141)
!5179 = !DILocation(line: 233, column: 3, scope: !5176)
!5180 = !DILocation(line: 235, column: 3, scope: !5141)
!5181 = !DILocation(line: 235, column: 12, scope: !5141)
!5182 = !DILocation(line: 236, column: 14, scope: !5141)
!5183 = !DILocation(line: 236, column: 3, scope: !5141)
!5184 = !DILocation(line: 236, column: 12, scope: !5141)
!5185 = !DILocation(line: 237, column: 3, scope: !5141)
!5186 = !DILocation(line: 237, column: 10, scope: !5141)
!5187 = !DILocation(line: 238, column: 2, scope: !5141)
!5188 = !DILocation(line: 239, column: 1, scope: !5141)
!5189 = distinct !DISubprogram(name: "get_key_fusionhdtv", scope: !3, file: !3, line: 179, type: !4475, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5190 = !DILocalVariable(name: "ir", arg: 1, scope: !5189, file: !3, line: 179, type: !230)
!5191 = !DILocation(line: 179, column: 46, scope: !5189)
!5192 = !DILocalVariable(name: "protocol", arg: 2, scope: !5189, file: !3, line: 179, type: !4477)
!5193 = !DILocation(line: 179, column: 65, scope: !5189)
!5194 = !DILocalVariable(name: "scancode", arg: 3, scope: !5189, file: !3, line: 180, type: !2810)
!5195 = !DILocation(line: 180, column: 15, scope: !5189)
!5196 = !DILocalVariable(name: "toggle", arg: 4, scope: !5189, file: !3, line: 180, type: !4478)
!5197 = !DILocation(line: 180, column: 29, scope: !5189)
!5198 = !DILocalVariable(name: "rc", scope: !5189, file: !3, line: 182, type: !259)
!5199 = !DILocation(line: 182, column: 6, scope: !5189)
!5200 = !DILocalVariable(name: "buf", scope: !5189, file: !3, line: 183, type: !5201)
!5201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 32, elements: !1699)
!5202 = !DILocation(line: 183, column: 16, scope: !5189)
!5203 = !DILocation(line: 186, column: 23, scope: !5189)
!5204 = !DILocation(line: 186, column: 27, scope: !5189)
!5205 = !DILocation(line: 186, column: 30, scope: !5189)
!5206 = !DILocation(line: 186, column: 7, scope: !5189)
!5207 = !DILocation(line: 186, column: 5, scope: !5189)
!5208 = !DILocation(line: 187, column: 6, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 187, column: 6)
!5210 = !DILocation(line: 187, column: 9, scope: !5209)
!5211 = !DILocation(line: 187, column: 6, scope: !5189)
!5212 = !DILocation(line: 189, column: 7, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 189, column: 7)
!5214 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 187, column: 15)
!5215 = !DILocation(line: 189, column: 10, scope: !5213)
!5216 = !DILocation(line: 189, column: 7, scope: !5214)
!5217 = !DILocation(line: 190, column: 11, scope: !5213)
!5218 = !DILocation(line: 190, column: 4, scope: !5213)
!5219 = !DILocation(line: 191, column: 3, scope: !5214)
!5220 = !DILocation(line: 194, column: 6, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 194, column: 6)
!5222 = !DILocation(line: 194, column: 13, scope: !5221)
!5223 = !DILocation(line: 194, column: 18, scope: !5221)
!5224 = !DILocation(line: 194, column: 21, scope: !5221)
!5225 = !DILocation(line: 194, column: 28, scope: !5221)
!5226 = !DILocation(line: 194, column: 33, scope: !5221)
!5227 = !DILocation(line: 194, column: 36, scope: !5221)
!5228 = !DILocation(line: 194, column: 43, scope: !5221)
!5229 = !DILocation(line: 194, column: 48, scope: !5221)
!5230 = !DILocation(line: 194, column: 51, scope: !5221)
!5231 = !DILocation(line: 194, column: 58, scope: !5221)
!5232 = !DILocation(line: 194, column: 6, scope: !5189)
!5233 = !DILocation(line: 195, column: 3, scope: !5221)
!5234 = !DILocation(line: 198, column: 5, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 198, column: 5)
!5236 = !DILocation(line: 198, column: 12, scope: !5235)
!5237 = !DILocation(line: 198, column: 19, scope: !5235)
!5238 = !DILocation(line: 198, column: 23, scope: !5235)
!5239 = !DILocation(line: 198, column: 30, scope: !5235)
!5240 = !DILocation(line: 198, column: 5, scope: !5189)
!5241 = !DILocation(line: 199, column: 3, scope: !5235)
!5242 = !DILocation(line: 201, column: 3, scope: !5189)
!5243 = !DILocation(line: 201, column: 12, scope: !5189)
!5244 = !DILocation(line: 202, column: 14, scope: !5189)
!5245 = !DILocation(line: 202, column: 3, scope: !5189)
!5246 = !DILocation(line: 202, column: 12, scope: !5189)
!5247 = !DILocation(line: 203, column: 3, scope: !5189)
!5248 = !DILocation(line: 203, column: 10, scope: !5189)
!5249 = !DILocation(line: 204, column: 2, scope: !5189)
!5250 = !DILocation(line: 205, column: 1, scope: !5189)
!5251 = distinct !DISubprogram(name: "get_key_avermedia_cardbus", scope: !3, file: !3, line: 241, type: !4475, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5252 = !DILocalVariable(name: "ir", arg: 1, scope: !5251, file: !3, line: 241, type: !230)
!5253 = !DILocation(line: 241, column: 53, scope: !5251)
!5254 = !DILocalVariable(name: "protocol", arg: 2, scope: !5251, file: !3, line: 241, type: !4477)
!5255 = !DILocation(line: 241, column: 72, scope: !5251)
!5256 = !DILocalVariable(name: "scancode", arg: 3, scope: !5251, file: !3, line: 242, type: !2810)
!5257 = !DILocation(line: 242, column: 15, scope: !5251)
!5258 = !DILocalVariable(name: "toggle", arg: 4, scope: !5251, file: !3, line: 242, type: !4478)
!5259 = !DILocation(line: 242, column: 29, scope: !5251)
!5260 = !DILocalVariable(name: "subaddr", scope: !5251, file: !3, line: 244, type: !270)
!5261 = !DILocation(line: 244, column: 16, scope: !5251)
!5262 = !DILocalVariable(name: "key", scope: !5251, file: !3, line: 244, type: !270)
!5263 = !DILocation(line: 244, column: 25, scope: !5251)
!5264 = !DILocalVariable(name: "keygroup", scope: !5251, file: !3, line: 244, type: !270)
!5265 = !DILocation(line: 244, column: 30, scope: !5251)
!5266 = !DILocalVariable(name: "msg", scope: !5251, file: !3, line: 245, type: !5267)
!5267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 256, elements: !1739)
!5268 = !DILocation(line: 245, column: 17, scope: !5251)
!5269 = !DILocation(line: 245, column: 25, scope: !5251)
!5270 = !DILocation(line: 245, column: 27, scope: !5251)
!5271 = !DILocation(line: 245, column: 37, scope: !5251)
!5272 = !DILocation(line: 245, column: 41, scope: !5251)
!5273 = !DILocation(line: 245, column: 44, scope: !5251)
!5274 = !DILocation(line: 247, column: 6, scope: !5251)
!5275 = !DILocation(line: 247, column: 16, scope: !5251)
!5276 = !DILocation(line: 247, column: 20, scope: !5251)
!5277 = !DILocation(line: 247, column: 23, scope: !5251)
!5278 = !DILocation(line: 249, column: 10, scope: !5251)
!5279 = !DILocation(line: 250, column: 24, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 250, column: 6)
!5281 = !DILocation(line: 250, column: 28, scope: !5280)
!5282 = !DILocation(line: 250, column: 31, scope: !5280)
!5283 = !DILocation(line: 250, column: 40, scope: !5280)
!5284 = !DILocation(line: 250, column: 11, scope: !5280)
!5285 = !DILocation(line: 250, column: 8, scope: !5280)
!5286 = !DILocation(line: 250, column: 6, scope: !5251)
!5287 = !DILocation(line: 252, column: 3, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 250, column: 49)
!5289 = !DILocation(line: 255, column: 6, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 255, column: 6)
!5291 = !DILocation(line: 255, column: 10, scope: !5290)
!5292 = !DILocation(line: 255, column: 6, scope: !5251)
!5293 = !DILocation(line: 256, column: 3, scope: !5290)
!5294 = !DILocation(line: 258, column: 10, scope: !5251)
!5295 = !DILocation(line: 259, column: 2, scope: !5251)
!5296 = !DILocation(line: 259, column: 9, scope: !5251)
!5297 = !DILocation(line: 259, column: 13, scope: !5251)
!5298 = !DILocation(line: 260, column: 24, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 260, column: 6)
!5300 = !DILocation(line: 260, column: 28, scope: !5299)
!5301 = !DILocation(line: 260, column: 31, scope: !5299)
!5302 = !DILocation(line: 260, column: 40, scope: !5299)
!5303 = !DILocation(line: 260, column: 11, scope: !5299)
!5304 = !DILocation(line: 260, column: 8, scope: !5299)
!5305 = !DILocation(line: 260, column: 6, scope: !5251)
!5306 = !DILocation(line: 262, column: 3, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 260, column: 49)
!5308 = !DILocation(line: 265, column: 6, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 265, column: 6)
!5310 = !DILocation(line: 265, column: 15, scope: !5309)
!5311 = !DILocation(line: 265, column: 6, scope: !5251)
!5312 = !DILocation(line: 266, column: 3, scope: !5309)
!5313 = !DILocation(line: 269, column: 6, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 269, column: 6)
!5315 = !DILocation(line: 269, column: 15, scope: !5314)
!5316 = !DILocation(line: 269, column: 19, scope: !5314)
!5317 = !DILocation(line: 269, column: 22, scope: !5314)
!5318 = !DILocation(line: 269, column: 31, scope: !5314)
!5319 = !DILocation(line: 269, column: 6, scope: !5251)
!5320 = !DILocation(line: 270, column: 3, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 269, column: 36)
!5322 = !DILocation(line: 272, column: 2, scope: !5321)
!5323 = !DILocation(line: 273, column: 10, scope: !5251)
!5324 = !DILocation(line: 273, column: 19, scope: !5251)
!5325 = !DILocation(line: 273, column: 24, scope: !5251)
!5326 = !DILocation(line: 273, column: 6, scope: !5251)
!5327 = !DILocation(line: 275, column: 3, scope: !5251)
!5328 = !DILocation(line: 275, column: 12, scope: !5251)
!5329 = !DILocation(line: 276, column: 14, scope: !5251)
!5330 = !DILocation(line: 276, column: 3, scope: !5251)
!5331 = !DILocation(line: 276, column: 12, scope: !5251)
!5332 = !DILocation(line: 277, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 277, column: 6)
!5334 = !DILocation(line: 277, column: 10, scope: !5333)
!5335 = !DILocation(line: 277, column: 13, scope: !5333)
!5336 = !DILocation(line: 277, column: 18, scope: !5333)
!5337 = !DILocation(line: 277, column: 6, scope: !5251)
!5338 = !DILocation(line: 278, column: 16, scope: !5333)
!5339 = !DILocation(line: 278, column: 25, scope: !5333)
!5340 = !DILocation(line: 278, column: 4, scope: !5333)
!5341 = !DILocation(line: 278, column: 13, scope: !5333)
!5342 = !DILocation(line: 278, column: 3, scope: !5333)
!5343 = !DILocation(line: 279, column: 3, scope: !5251)
!5344 = !DILocation(line: 279, column: 10, scope: !5251)
!5345 = !DILocation(line: 280, column: 2, scope: !5251)
!5346 = !DILocation(line: 281, column: 1, scope: !5251)
!5347 = distinct !DISubprogram(name: "get_key_haup_xvr", scope: !3, file: !3, line: 139, type: !4475, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5348 = !DILocalVariable(name: "ir", arg: 1, scope: !5347, file: !3, line: 139, type: !230)
!5349 = !DILocation(line: 139, column: 44, scope: !5347)
!5350 = !DILocalVariable(name: "protocol", arg: 2, scope: !5347, file: !3, line: 139, type: !4477)
!5351 = !DILocation(line: 139, column: 63, scope: !5347)
!5352 = !DILocalVariable(name: "scancode", arg: 3, scope: !5347, file: !3, line: 140, type: !2810)
!5353 = !DILocation(line: 140, column: 13, scope: !5347)
!5354 = !DILocalVariable(name: "toggle", arg: 4, scope: !5347, file: !3, line: 140, type: !4478)
!5355 = !DILocation(line: 140, column: 27, scope: !5347)
!5356 = !DILocalVariable(name: "ret", scope: !5347, file: !3, line: 142, type: !259)
!5357 = !DILocation(line: 142, column: 6, scope: !5347)
!5358 = !DILocalVariable(name: "buf", scope: !5347, file: !3, line: 143, type: !5359)
!5359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 8, elements: !509)
!5360 = !DILocation(line: 143, column: 16, scope: !5347)
!5361 = !DILocation(line: 151, column: 24, scope: !5347)
!5362 = !DILocation(line: 151, column: 28, scope: !5347)
!5363 = !DILocation(line: 151, column: 31, scope: !5347)
!5364 = !DILocation(line: 151, column: 8, scope: !5347)
!5365 = !DILocation(line: 151, column: 6, scope: !5347)
!5366 = !DILocation(line: 152, column: 6, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 152, column: 6)
!5368 = !DILocation(line: 152, column: 10, scope: !5367)
!5369 = !DILocation(line: 152, column: 6, scope: !5347)
!5370 = !DILocation(line: 153, column: 11, scope: !5367)
!5371 = !DILocation(line: 153, column: 15, scope: !5367)
!5372 = !DILocation(line: 153, column: 10, scope: !5367)
!5373 = !DILocation(line: 153, column: 22, scope: !5367)
!5374 = !DILocation(line: 153, column: 3, scope: !5367)
!5375 = !DILocation(line: 155, column: 29, scope: !5347)
!5376 = !DILocation(line: 155, column: 33, scope: !5347)
!5377 = !DILocation(line: 155, column: 43, scope: !5347)
!5378 = !DILocation(line: 155, column: 53, scope: !5347)
!5379 = !DILocation(line: 155, column: 9, scope: !5347)
!5380 = !DILocation(line: 155, column: 2, scope: !5347)
!5381 = !DILocation(line: 156, column: 1, scope: !5347)
!5382 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !5383, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{!730, !3802}
!5385 = !DILocalVariable(name: "dev", arg: 1, scope: !5382, file: !73, line: 609, type: !3802)
!5386 = !DILocation(line: 609, column: 57, scope: !5382)
!5387 = !DILocation(line: 612, column: 6, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5382, file: !73, line: 612, column: 6)
!5389 = !DILocation(line: 612, column: 11, scope: !5388)
!5390 = !DILocation(line: 612, column: 6, scope: !5382)
!5391 = !DILocation(line: 613, column: 10, scope: !5388)
!5392 = !DILocation(line: 613, column: 15, scope: !5388)
!5393 = !DILocation(line: 613, column: 3, scope: !5388)
!5394 = !DILocation(line: 615, column: 23, scope: !5382)
!5395 = !DILocation(line: 615, column: 28, scope: !5382)
!5396 = !DILocation(line: 615, column: 9, scope: !5382)
!5397 = !DILocation(line: 615, column: 2, scope: !5382)
!5398 = !DILocation(line: 616, column: 1, scope: !5382)
!5399 = distinct !DISubprogram(name: "ir_open", scope: !3, file: !3, line: 329, type: !4424, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5400 = !DILocalVariable(name: "dev", arg: 1, scope: !5399, file: !3, line: 329, type: !4076)
!5401 = !DILocation(line: 329, column: 35, scope: !5399)
!5402 = !DILocalVariable(name: "ir", scope: !5399, file: !3, line: 331, type: !230)
!5403 = !DILocation(line: 331, column: 17, scope: !5399)
!5404 = !DILocation(line: 331, column: 22, scope: !5399)
!5405 = !DILocation(line: 331, column: 27, scope: !5399)
!5406 = !DILocation(line: 333, column: 25, scope: !5399)
!5407 = !DILocation(line: 333, column: 29, scope: !5399)
!5408 = !DILocation(line: 333, column: 2, scope: !5399)
!5409 = !DILocation(line: 335, column: 2, scope: !5399)
!5410 = distinct !DISubprogram(name: "ir_close", scope: !3, file: !3, line: 338, type: !4428, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5411 = !DILocalVariable(name: "dev", arg: 1, scope: !5410, file: !3, line: 338, type: !4076)
!5412 = !DILocation(line: 338, column: 37, scope: !5410)
!5413 = !DILocalVariable(name: "ir", scope: !5410, file: !3, line: 340, type: !230)
!5414 = !DILocation(line: 340, column: 17, scope: !5410)
!5415 = !DILocation(line: 340, column: 22, scope: !5410)
!5416 = !DILocation(line: 340, column: 27, scope: !5410)
!5417 = !DILocation(line: 342, column: 28, scope: !5410)
!5418 = !DILocation(line: 342, column: 32, scope: !5410)
!5419 = !DILocation(line: 342, column: 2, scope: !5410)
!5420 = !DILocation(line: 343, column: 1, scope: !5410)
!5421 = distinct !DISubprogram(name: "__init_work", scope: !174, file: !174, line: 215, type: !5422, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{null, !1306, !259}
!5424 = !DILocalVariable(name: "work", arg: 1, scope: !5421, file: !174, line: 215, type: !1306)
!5425 = !DILocation(line: 215, column: 52, scope: !5421)
!5426 = !DILocalVariable(name: "onstack", arg: 2, scope: !5421, file: !174, line: 215, type: !259)
!5427 = !DILocation(line: 215, column: 62, scope: !5421)
!5428 = !DILocation(line: 215, column: 73, scope: !5421)
!5429 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5430, file: !5430, line: 33, type: !5431, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5430 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5431 = !DISubroutineType(types: !5432)
!5432 = !{null, !224}
!5433 = !DILocalVariable(name: "list", arg: 1, scope: !5429, file: !5430, line: 33, type: !224)
!5434 = !DILocation(line: 33, column: 53, scope: !5429)
!5435 = !DILocation(line: 35, column: 2, scope: !5429)
!5436 = !DILocation(line: 35, column: 2, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5429, file: !5430, line: 35, column: 2)
!5438 = !DILocation(line: 35, column: 2, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5437, file: !5430, line: 35, column: 2)
!5440 = !DILocation(line: 35, column: 2, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5437, file: !5430, line: 35, column: 2)
!5442 = !DILocation(line: 36, column: 15, scope: !5429)
!5443 = !DILocation(line: 36, column: 2, scope: !5429)
!5444 = !DILocation(line: 36, column: 8, scope: !5429)
!5445 = !DILocation(line: 36, column: 13, scope: !5429)
!5446 = !DILocation(line: 37, column: 1, scope: !5429)
!5447 = distinct !DISubprogram(name: "ir_work", scope: !3, file: !3, line: 307, type: !1304, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5448 = !DILocalVariable(name: "m", arg: 1, scope: !5449, file: !5450, line: 363, type: !1975)
!5449 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5450, file: !5450, line: 363, type: !5451, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5450 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!5451 = !DISubroutineType(types: !5452)
!5452 = !{!212, !1975}
!5453 = !DILocation(line: 363, column: 74, scope: !5449, inlinedAt: !5454)
!5454 = distinct !DILocation(line: 326, column: 35, scope: !5447)
!5455 = !DILocalVariable(name: "work", arg: 1, scope: !5447, file: !3, line: 307, type: !1306)
!5456 = !DILocation(line: 307, column: 41, scope: !5447)
!5457 = !DILocalVariable(name: "rc", scope: !5447, file: !3, line: 309, type: !259)
!5458 = !DILocation(line: 309, column: 6, scope: !5447)
!5459 = !DILocalVariable(name: "ir", scope: !5447, file: !3, line: 310, type: !230)
!5460 = !DILocation(line: 310, column: 17, scope: !5447)
!5461 = !DILocalVariable(name: "__mptr", scope: !5462, file: !3, line: 310, type: !229)
!5462 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 310, column: 22)
!5463 = !DILocation(line: 310, column: 22, scope: !5462)
!5464 = !DILocation(line: 310, column: 22, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 310, column: 22)
!5466 = !DILocation(line: 316, column: 21, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 316, column: 6)
!5468 = !DILocation(line: 316, column: 25, scope: !5467)
!5469 = !DILocation(line: 316, column: 6, scope: !5467)
!5470 = !DILocation(line: 316, column: 6, scope: !5447)
!5471 = !DILocation(line: 317, column: 20, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 316, column: 32)
!5473 = !DILocation(line: 317, column: 8, scope: !5472)
!5474 = !DILocation(line: 317, column: 6, scope: !5472)
!5475 = !DILocation(line: 318, column: 17, scope: !5472)
!5476 = !DILocation(line: 318, column: 21, scope: !5472)
!5477 = !DILocation(line: 318, column: 3, scope: !5472)
!5478 = !DILocation(line: 319, column: 7, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 319, column: 7)
!5480 = !DILocation(line: 319, column: 10, scope: !5479)
!5481 = !DILocation(line: 319, column: 7, scope: !5472)
!5482 = !DILocation(line: 320, column: 25, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 319, column: 22)
!5484 = !DILocation(line: 320, column: 29, scope: !5483)
!5485 = !DILocation(line: 320, column: 4, scope: !5483)
!5486 = !DILocation(line: 321, column: 4, scope: !5483)
!5487 = !DILocation(line: 321, column: 8, scope: !5483)
!5488 = !DILocation(line: 321, column: 11, scope: !5483)
!5489 = !DILocation(line: 322, column: 4, scope: !5483)
!5490 = !DILocation(line: 324, column: 2, scope: !5472)
!5491 = !DILocation(line: 326, column: 25, scope: !5447)
!5492 = !DILocation(line: 326, column: 29, scope: !5447)
!5493 = !DILocation(line: 326, column: 52, scope: !5447)
!5494 = !DILocation(line: 326, column: 56, scope: !5447)
!5495 = !DILocation(line: 365, column: 27, scope: !5496, inlinedAt: !5454)
!5496 = distinct !DILexicalBlock(scope: !5449, file: !5450, line: 365, column: 6)
!5497 = !DILocation(line: 365, column: 6, scope: !5496, inlinedAt: !5454)
!5498 = !DILocation(line: 365, column: 6, scope: !5449, inlinedAt: !5454)
!5499 = !DILocation(line: 366, column: 12, scope: !5500, inlinedAt: !5454)
!5500 = distinct !DILexicalBlock(scope: !5501, file: !5450, line: 366, column: 7)
!5501 = distinct !DILexicalBlock(scope: !5496, file: !5450, line: 365, column: 31)
!5502 = !DILocation(line: 366, column: 14, scope: !5500, inlinedAt: !5454)
!5503 = !DILocation(line: 366, column: 7, scope: !5501, inlinedAt: !5454)
!5504 = !DILocation(line: 367, column: 4, scope: !5500, inlinedAt: !5454)
!5505 = !DILocation(line: 368, column: 28, scope: !5501, inlinedAt: !5454)
!5506 = !DILocation(line: 368, column: 10, scope: !5501, inlinedAt: !5454)
!5507 = !DILocation(line: 368, column: 3, scope: !5501, inlinedAt: !5454)
!5508 = !DILocation(line: 370, column: 29, scope: !5509, inlinedAt: !5454)
!5509 = distinct !DILexicalBlock(scope: !5496, file: !5450, line: 369, column: 9)
!5510 = !DILocation(line: 370, column: 10, scope: !5509, inlinedAt: !5454)
!5511 = !DILocation(line: 370, column: 3, scope: !5509, inlinedAt: !5454)
!5512 = !DILocation(line: 372, column: 1, scope: !5449, inlinedAt: !5454)
!5513 = !DILocation(line: 326, column: 2, scope: !5447)
!5514 = !DILocation(line: 327, column: 1, scope: !5447)
!5515 = distinct !DISubprogram(name: "IS_ERR", scope: !5516, file: !5516, line: 34, type: !5517, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5516 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5517 = !DISubroutineType(types: !5518)
!5518 = !{!773, !2165}
!5519 = !DILocalVariable(name: "ptr", arg: 1, scope: !5515, file: !5516, line: 34, type: !2165)
!5520 = !DILocation(line: 34, column: 60, scope: !5515)
!5521 = !DILocation(line: 36, column: 9, scope: !5515)
!5522 = !DILocation(line: 36, column: 2, scope: !5515)
!5523 = distinct !DISubprogram(name: "PTR_ERR", scope: !5516, file: !5516, line: 29, type: !5524, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!175, !2165}
!5526 = !DILocalVariable(name: "ptr", arg: 1, scope: !5523, file: !5516, line: 29, type: !2165)
!5527 = !DILocation(line: 29, column: 61, scope: !5523)
!5528 = !DILocation(line: 31, column: 16, scope: !5523)
!5529 = !DILocation(line: 31, column: 9, scope: !5523)
!5530 = !DILocation(line: 31, column: 2, scope: !5523)
!5531 = distinct !DISubprogram(name: "zilog_init", scope: !3, file: !3, line: 422, type: !5532, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5532 = !DISubroutineType(types: !5533)
!5533 = !{!259, !230}
!5534 = !DILocalVariable(name: "val", arg: 1, scope: !5535, file: !5536, line: 53, type: !276)
!5535 = distinct !DISubprogram(name: "put_unaligned_be16", scope: !5536, file: !5536, line: 53, type: !5537, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5536 = !DIFile(filename: "./include/linux/unaligned/access_ok.h", directory: "/home/lizy2001/genbc/linux")
!5537 = !DISubroutineType(types: !5538)
!5538 = !{null, !276, !229}
!5539 = !DILocation(line: 53, column: 52, scope: !5535, inlinedAt: !5540)
!5540 = distinct !DILocation(line: 428, column: 2, scope: !5531)
!5541 = !DILocalVariable(name: "p", arg: 2, scope: !5535, file: !5536, line: 53, type: !229)
!5542 = !DILocation(line: 53, column: 63, scope: !5535, inlinedAt: !5540)
!5543 = !DILocalVariable(name: "ir", arg: 1, scope: !5531, file: !3, line: 422, type: !230)
!5544 = !DILocation(line: 422, column: 38, scope: !5531)
!5545 = !DILocalVariable(name: "code_block", scope: !5531, file: !3, line: 424, type: !5546)
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "code_block", file: !3, line: 363, size: 768, elements: !5547)
!5547 = !{!5548, !5549, !5553, !5554, !5555, !5557, !5561}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5546, file: !3, line: 364, baseType: !278, size: 8)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "pulse", scope: !5546, file: !3, line: 365, baseType: !5550, size: 112, offset: 8)
!5550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 112, elements: !5551)
!5551 = !{!5552}
!5552 = !DISubrange(count: 7)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_pulse", scope: !5546, file: !3, line: 366, baseType: !278, size: 8, offset: 120)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_space", scope: !5546, file: !3, line: 367, baseType: !278, size: 8, offset: 128)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !5546, file: !3, line: 368, baseType: !5556, size: 128, offset: 136)
!5556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 128, elements: !464)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "codes", scope: !5546, file: !3, line: 369, baseType: !5558, size: 488, offset: 264)
!5558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 488, elements: !5559)
!5559 = !{!5560}
!5560 = !DISubrange(count: 61)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !5546, file: !3, line: 370, baseType: !5562, size: 16, offset: 752)
!5562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 16, elements: !1739)
!5563 = !DILocation(line: 424, column: 20, scope: !5531)
!5564 = !DILocalVariable(name: "buf", scope: !5531, file: !3, line: 425, type: !5565)
!5565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 32, elements: !1699)
!5566 = !DILocation(line: 425, column: 5, scope: !5531)
!5567 = !DILocalVariable(name: "ret", scope: !5531, file: !3, line: 426, type: !259)
!5568 = !DILocation(line: 426, column: 6, scope: !5531)
!5569 = !DILocation(line: 428, column: 41, scope: !5531)
!5570 = !DILocation(line: 428, column: 30, scope: !5531)
!5571 = !DILocation(line: 428, column: 29, scope: !5531)
!5572 = !DILocation(line: 55, column: 19, scope: !5535, inlinedAt: !5540)
!5573 = !DILocation(line: 55, column: 14, scope: !5535, inlinedAt: !5540)
!5574 = !DILocation(line: 55, column: 4, scope: !5535, inlinedAt: !5540)
!5575 = !DILocation(line: 55, column: 17, scope: !5535, inlinedAt: !5540)
!5576 = !DILocation(line: 430, column: 24, scope: !5531)
!5577 = !DILocation(line: 430, column: 8, scope: !5531)
!5578 = !DILocation(line: 430, column: 6, scope: !5531)
!5579 = !DILocation(line: 431, column: 6, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 431, column: 6)
!5581 = !DILocation(line: 431, column: 6, scope: !5531)
!5582 = !DILocation(line: 432, column: 10, scope: !5580)
!5583 = !DILocation(line: 432, column: 3, scope: !5580)
!5584 = !DILocation(line: 434, column: 24, scope: !5531)
!5585 = !DILocation(line: 434, column: 28, scope: !5531)
!5586 = !DILocation(line: 434, column: 34, scope: !5531)
!5587 = !DILocation(line: 434, column: 8, scope: !5531)
!5588 = !DILocation(line: 434, column: 6, scope: !5531)
!5589 = !DILocation(line: 435, column: 6, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 435, column: 6)
!5591 = !DILocation(line: 435, column: 10, scope: !5590)
!5592 = !DILocation(line: 435, column: 6, scope: !5531)
!5593 = !DILocation(line: 436, column: 3, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 435, column: 16)
!5595 = !DILocation(line: 438, column: 10, scope: !5594)
!5596 = !DILocation(line: 438, column: 14, scope: !5594)
!5597 = !DILocation(line: 438, column: 20, scope: !5594)
!5598 = !DILocation(line: 438, column: 3, scope: !5594)
!5599 = !DILocation(line: 441, column: 2, scope: !5531)
!5600 = !DILocation(line: 444, column: 2, scope: !5531)
!5601 = !DILocation(line: 445, column: 1, scope: !5531)
!5602 = distinct !DISubprogram(name: "zilog_tx", scope: !3, file: !3, line: 607, type: !4442, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5603 = !DILocation(line: 363, column: 74, scope: !5449, inlinedAt: !5604)
!5604 = distinct !DILocation(line: 663, column: 20, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5606, file: !3, line: 661, column: 27)
!5606 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 661, column: 2)
!5607 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 661, column: 2)
!5608 = !DILocalVariable(name: "pscr_ret__", scope: !5609, file: !5610, line: 15, type: !340)
!5609 = distinct !DILexicalBlock(scope: !5611, file: !5610, line: 15, column: 9)
!5610 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!5611 = distinct !DISubprogram(name: "get_current", scope: !5610, file: !5610, line: 13, type: !5612, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{!340}
!5614 = !DILocation(line: 15, column: 9, scope: !5609, inlinedAt: !5615)
!5615 = distinct !DILocation(line: 662, column: 3, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 662, column: 3)
!5617 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 662, column: 3)
!5618 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 662, column: 3)
!5619 = !DILocalVariable(name: "__vpp_verify", scope: !5620, file: !5610, line: 15, type: !2165)
!5620 = distinct !DILexicalBlock(scope: !5609, file: !5610, line: 15, column: 9)
!5621 = !DILocation(line: 15, column: 9, scope: !5620, inlinedAt: !5615)
!5622 = !DILocalVariable(name: "pfo_val__", scope: !5623, file: !5610, line: 15, type: !386)
!5623 = distinct !DILexicalBlock(scope: !5609, file: !5610, line: 15, column: 9)
!5624 = !DILocation(line: 15, column: 9, scope: !5623, inlinedAt: !5615)
!5625 = !DILocalVariable(name: "rcdev", arg: 1, scope: !5602, file: !3, line: 607, type: !4076)
!5626 = !DILocation(line: 607, column: 36, scope: !5602)
!5627 = !DILocalVariable(name: "txbuf", arg: 2, scope: !5602, file: !3, line: 607, type: !1217)
!5628 = !DILocation(line: 607, column: 57, scope: !5602)
!5629 = !DILocalVariable(name: "count", arg: 3, scope: !5602, file: !3, line: 608, type: !7)
!5630 = !DILocation(line: 608, column: 20, scope: !5602)
!5631 = !DILocalVariable(name: "ir", scope: !5602, file: !3, line: 610, type: !230)
!5632 = !DILocation(line: 610, column: 17, scope: !5602)
!5633 = !DILocation(line: 610, column: 22, scope: !5602)
!5634 = !DILocation(line: 610, column: 29, scope: !5602)
!5635 = !DILocalVariable(name: "code_block", scope: !5602, file: !3, line: 611, type: !5546)
!5636 = !DILocation(line: 611, column: 20, scope: !5602)
!5637 = !DILocalVariable(name: "buf", scope: !5602, file: !3, line: 612, type: !5562)
!5638 = !DILocation(line: 612, column: 5, scope: !5602)
!5639 = !DILocalVariable(name: "ret", scope: !5602, file: !3, line: 613, type: !259)
!5640 = !DILocation(line: 613, column: 6, scope: !5602)
!5641 = !DILocalVariable(name: "i", scope: !5602, file: !3, line: 613, type: !259)
!5642 = !DILocation(line: 613, column: 11, scope: !5602)
!5643 = !DILocation(line: 615, column: 24, scope: !5602)
!5644 = !DILocation(line: 615, column: 31, scope: !5602)
!5645 = !DILocation(line: 615, column: 38, scope: !5602)
!5646 = !DILocation(line: 615, column: 8, scope: !5602)
!5647 = !DILocation(line: 615, column: 6, scope: !5602)
!5648 = !DILocation(line: 616, column: 6, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 616, column: 6)
!5650 = !DILocation(line: 616, column: 6, scope: !5602)
!5651 = !DILocation(line: 617, column: 10, scope: !5649)
!5652 = !DILocation(line: 617, column: 3, scope: !5649)
!5653 = !DILocation(line: 619, column: 34, scope: !5602)
!5654 = !DILocation(line: 619, column: 38, scope: !5602)
!5655 = !DILocation(line: 619, column: 8, scope: !5602)
!5656 = !DILocation(line: 619, column: 6, scope: !5602)
!5657 = !DILocation(line: 620, column: 6, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 620, column: 6)
!5659 = !DILocation(line: 620, column: 6, scope: !5602)
!5660 = !DILocation(line: 621, column: 10, scope: !5658)
!5661 = !DILocation(line: 621, column: 3, scope: !5658)
!5662 = !DILocation(line: 623, column: 24, scope: !5602)
!5663 = !DILocation(line: 623, column: 8, scope: !5602)
!5664 = !DILocation(line: 623, column: 6, scope: !5602)
!5665 = !DILocation(line: 624, column: 6, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 624, column: 6)
!5667 = !DILocation(line: 624, column: 6, scope: !5602)
!5668 = !DILocation(line: 625, column: 3, scope: !5666)
!5669 = !DILocation(line: 627, column: 24, scope: !5602)
!5670 = !DILocation(line: 627, column: 28, scope: !5602)
!5671 = !DILocation(line: 627, column: 34, scope: !5602)
!5672 = !DILocation(line: 627, column: 8, scope: !5602)
!5673 = !DILocation(line: 627, column: 6, scope: !5602)
!5674 = !DILocation(line: 628, column: 6, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 628, column: 6)
!5676 = !DILocation(line: 628, column: 10, scope: !5675)
!5677 = !DILocation(line: 628, column: 6, scope: !5602)
!5678 = !DILocation(line: 629, column: 3, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 628, column: 16)
!5680 = !DILocation(line: 630, column: 3, scope: !5679)
!5681 = !DILocation(line: 635, column: 6, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 635, column: 6)
!5683 = !DILocation(line: 635, column: 13, scope: !5682)
!5684 = !DILocation(line: 635, column: 6, scope: !5602)
!5685 = !DILocation(line: 636, column: 3, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5682, file: !3, line: 635, column: 54)
!5687 = !DILocation(line: 638, column: 7, scope: !5686)
!5688 = !DILocation(line: 639, column: 3, scope: !5686)
!5689 = !DILocation(line: 642, column: 2, scope: !5602)
!5690 = !DILocation(line: 642, column: 9, scope: !5602)
!5691 = !DILocation(line: 643, column: 2, scope: !5602)
!5692 = !DILocation(line: 643, column: 9, scope: !5602)
!5693 = !DILocation(line: 645, column: 24, scope: !5602)
!5694 = !DILocation(line: 645, column: 28, scope: !5602)
!5695 = !DILocation(line: 645, column: 34, scope: !5602)
!5696 = !DILocation(line: 645, column: 8, scope: !5602)
!5697 = !DILocation(line: 645, column: 6, scope: !5602)
!5698 = !DILocation(line: 646, column: 6, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 646, column: 6)
!5700 = !DILocation(line: 646, column: 10, scope: !5699)
!5701 = !DILocation(line: 646, column: 6, scope: !5602)
!5702 = !DILocation(line: 647, column: 3, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 646, column: 16)
!5704 = !DILocation(line: 648, column: 7, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 648, column: 7)
!5706 = !DILocation(line: 648, column: 11, scope: !5705)
!5707 = !DILocation(line: 648, column: 7, scope: !5703)
!5708 = !DILocation(line: 649, column: 8, scope: !5705)
!5709 = !DILocation(line: 649, column: 4, scope: !5705)
!5710 = !DILocation(line: 650, column: 3, scope: !5703)
!5711 = !DILocation(line: 661, column: 9, scope: !5607)
!5712 = !DILocation(line: 661, column: 7, scope: !5607)
!5713 = !DILocation(line: 661, column: 14, scope: !5606)
!5714 = !DILocation(line: 661, column: 16, scope: !5606)
!5715 = !DILocation(line: 661, column: 2, scope: !5607)
!5716 = !DILocation(line: 662, column: 3, scope: !5605)
!5717 = !DILocation(line: 662, column: 3, scope: !5618)
!5718 = !DILocation(line: 662, column: 3, scope: !5617)
!5719 = !DILocation(line: 662, column: 3, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 662, column: 3)
!5721 = !{i32 -2146198958}
!5722 = !DILocation(line: 662, column: 3, scope: !5616)
!5723 = !{i32 -2141300524}
!5724 = !DILocation(line: 365, column: 27, scope: !5496, inlinedAt: !5604)
!5725 = !DILocation(line: 365, column: 6, scope: !5496, inlinedAt: !5604)
!5726 = !DILocation(line: 365, column: 6, scope: !5449, inlinedAt: !5604)
!5727 = !DILocation(line: 366, column: 12, scope: !5500, inlinedAt: !5604)
!5728 = !DILocation(line: 366, column: 14, scope: !5500, inlinedAt: !5604)
!5729 = !DILocation(line: 366, column: 7, scope: !5501, inlinedAt: !5604)
!5730 = !DILocation(line: 367, column: 4, scope: !5500, inlinedAt: !5604)
!5731 = !DILocation(line: 368, column: 28, scope: !5501, inlinedAt: !5604)
!5732 = !DILocation(line: 368, column: 10, scope: !5501, inlinedAt: !5604)
!5733 = !DILocation(line: 368, column: 3, scope: !5501, inlinedAt: !5604)
!5734 = !DILocation(line: 370, column: 29, scope: !5509, inlinedAt: !5604)
!5735 = !DILocation(line: 370, column: 10, scope: !5509, inlinedAt: !5604)
!5736 = !DILocation(line: 370, column: 3, scope: !5509, inlinedAt: !5604)
!5737 = !DILocation(line: 372, column: 1, scope: !5449, inlinedAt: !5604)
!5738 = !DILocation(line: 663, column: 3, scope: !5605)
!5739 = !DILocation(line: 664, column: 25, scope: !5605)
!5740 = !DILocation(line: 664, column: 29, scope: !5605)
!5741 = !DILocation(line: 664, column: 35, scope: !5605)
!5742 = !DILocation(line: 664, column: 9, scope: !5605)
!5743 = !DILocation(line: 664, column: 7, scope: !5605)
!5744 = !DILocation(line: 665, column: 7, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 665, column: 7)
!5746 = !DILocation(line: 665, column: 11, scope: !5745)
!5747 = !DILocation(line: 665, column: 7, scope: !5605)
!5748 = !DILocation(line: 666, column: 4, scope: !5745)
!5749 = !DILocation(line: 670, column: 2, scope: !5605)
!5750 = !DILocation(line: 661, column: 22, scope: !5606)
!5751 = !DILocation(line: 661, column: 2, scope: !5606)
!5752 = distinct !{!5752, !5715, !5753}
!5753 = !DILocation(line: 670, column: 2, scope: !5607)
!5754 = !DILocation(line: 672, column: 6, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 672, column: 6)
!5756 = !DILocation(line: 672, column: 10, scope: !5755)
!5757 = !DILocation(line: 672, column: 6, scope: !5602)
!5758 = !DILocation(line: 673, column: 3, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 672, column: 16)
!5760 = !DILocation(line: 676, column: 7, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 676, column: 7)
!5762 = !DILocation(line: 676, column: 11, scope: !5761)
!5763 = !DILocation(line: 676, column: 7, scope: !5759)
!5764 = !DILocation(line: 677, column: 8, scope: !5761)
!5765 = !DILocation(line: 677, column: 4, scope: !5761)
!5766 = !DILocation(line: 678, column: 3, scope: !5759)
!5767 = !DILocation(line: 681, column: 22, scope: !5602)
!5768 = !DILocation(line: 681, column: 26, scope: !5602)
!5769 = !DILocation(line: 681, column: 32, scope: !5602)
!5770 = !DILocation(line: 681, column: 6, scope: !5602)
!5771 = !DILocation(line: 681, column: 4, scope: !5602)
!5772 = !DILocation(line: 682, column: 6, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 682, column: 6)
!5774 = !DILocation(line: 682, column: 8, scope: !5773)
!5775 = !DILocation(line: 682, column: 6, scope: !5602)
!5776 = !DILocation(line: 683, column: 3, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 682, column: 14)
!5778 = !DILocation(line: 684, column: 7, scope: !5777)
!5779 = !DILocation(line: 685, column: 3, scope: !5777)
!5780 = !DILocation(line: 686, column: 13, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 686, column: 13)
!5782 = !DILocation(line: 686, column: 20, scope: !5781)
!5783 = !DILocation(line: 686, column: 13, scope: !5773)
!5784 = !DILocation(line: 687, column: 3, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 686, column: 40)
!5786 = !DILocation(line: 689, column: 7, scope: !5785)
!5787 = !DILocation(line: 690, column: 3, scope: !5785)
!5788 = !DILocation(line: 695, column: 8, scope: !5602)
!5789 = !DILocation(line: 695, column: 6, scope: !5602)
!5790 = !DILocation(line: 695, column: 2, scope: !5602)
!5791 = !DILabel(scope: !5602, name: "out_unlock", file: !3, line: 696)
!5792 = !DILocation(line: 696, column: 1, scope: !5602)
!5793 = !DILocation(line: 697, column: 16, scope: !5602)
!5794 = !DILocation(line: 697, column: 20, scope: !5602)
!5795 = !DILocation(line: 697, column: 2, scope: !5602)
!5796 = !DILocation(line: 699, column: 9, scope: !5602)
!5797 = !DILocation(line: 699, column: 2, scope: !5602)
!5798 = !DILocation(line: 700, column: 1, scope: !5602)
!5799 = distinct !DISubprogram(name: "zilog_tx_carrier", scope: !3, file: !3, line: 702, type: !4432, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5800 = !DILocalVariable(name: "dev", arg: 1, scope: !5799, file: !3, line: 702, type: !4076)
!5801 = !DILocation(line: 702, column: 44, scope: !5799)
!5802 = !DILocalVariable(name: "carrier", arg: 2, scope: !5799, file: !3, line: 702, type: !293)
!5803 = !DILocation(line: 702, column: 53, scope: !5799)
!5804 = !DILocalVariable(name: "ir", scope: !5799, file: !3, line: 704, type: !230)
!5805 = !DILocation(line: 704, column: 17, scope: !5799)
!5806 = !DILocation(line: 704, column: 22, scope: !5799)
!5807 = !DILocation(line: 704, column: 27, scope: !5799)
!5808 = !DILocation(line: 706, column: 6, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 706, column: 6)
!5810 = !DILocation(line: 706, column: 14, scope: !5809)
!5811 = !DILocation(line: 706, column: 23, scope: !5809)
!5812 = !DILocation(line: 706, column: 26, scope: !5809)
!5813 = !DILocation(line: 706, column: 34, scope: !5809)
!5814 = !DILocation(line: 706, column: 6, scope: !5799)
!5815 = !DILocation(line: 707, column: 3, scope: !5809)
!5816 = !DILocation(line: 709, column: 16, scope: !5799)
!5817 = !DILocation(line: 709, column: 2, scope: !5799)
!5818 = !DILocation(line: 709, column: 6, scope: !5799)
!5819 = !DILocation(line: 709, column: 14, scope: !5799)
!5820 = !DILocation(line: 711, column: 2, scope: !5799)
!5821 = !DILocation(line: 712, column: 1, scope: !5799)
!5822 = distinct !DISubprogram(name: "zilog_tx_duty_cycle", scope: !3, file: !3, line: 714, type: !4432, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5823 = !DILocalVariable(name: "dev", arg: 1, scope: !5822, file: !3, line: 714, type: !4076)
!5824 = !DILocation(line: 714, column: 47, scope: !5822)
!5825 = !DILocalVariable(name: "duty_cycle", arg: 2, scope: !5822, file: !3, line: 714, type: !293)
!5826 = !DILocation(line: 714, column: 56, scope: !5822)
!5827 = !DILocalVariable(name: "ir", scope: !5822, file: !3, line: 716, type: !230)
!5828 = !DILocation(line: 716, column: 17, scope: !5822)
!5829 = !DILocation(line: 716, column: 22, scope: !5822)
!5830 = !DILocation(line: 716, column: 27, scope: !5822)
!5831 = !DILocation(line: 718, column: 19, scope: !5822)
!5832 = !DILocation(line: 718, column: 2, scope: !5822)
!5833 = !DILocation(line: 718, column: 6, scope: !5822)
!5834 = !DILocation(line: 718, column: 17, scope: !5822)
!5835 = !DILocation(line: 720, column: 2, scope: !5822)
!5836 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5837, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5837 = !DISubroutineType(types: !5838)
!5838 = !{null, !3472, !229}
!5839 = !DILocalVariable(name: "dev", arg: 1, scope: !5836, file: !73, line: 660, type: !3472)
!5840 = !DILocation(line: 660, column: 51, scope: !5836)
!5841 = !DILocalVariable(name: "data", arg: 2, scope: !5836, file: !73, line: 660, type: !229)
!5842 = !DILocation(line: 660, column: 62, scope: !5836)
!5843 = !DILocation(line: 662, column: 21, scope: !5836)
!5844 = !DILocation(line: 662, column: 2, scope: !5836)
!5845 = !DILocation(line: 662, column: 7, scope: !5836)
!5846 = !DILocation(line: 662, column: 19, scope: !5836)
!5847 = !DILocation(line: 663, column: 1, scope: !5836)
!5848 = distinct !DISubprogram(name: "i2c_master_recv", scope: !108, file: !108, line: 72, type: !5849, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5849 = !DISubroutineType(types: !5850)
!5850 = !{!259, !5851, !220, !259}
!5851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5852, size: 64)
!5852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!5853 = !DILocalVariable(name: "client", arg: 1, scope: !5848, file: !108, line: 72, type: !5851)
!5854 = !DILocation(line: 72, column: 60, scope: !5848)
!5855 = !DILocalVariable(name: "buf", arg: 2, scope: !5848, file: !108, line: 73, type: !220)
!5856 = !DILocation(line: 73, column: 13, scope: !5848)
!5857 = !DILocalVariable(name: "count", arg: 3, scope: !5848, file: !108, line: 73, type: !259)
!5858 = !DILocation(line: 73, column: 22, scope: !5848)
!5859 = !DILocation(line: 75, column: 35, scope: !5848)
!5860 = !DILocation(line: 75, column: 43, scope: !5848)
!5861 = !DILocation(line: 75, column: 48, scope: !5848)
!5862 = !DILocation(line: 75, column: 9, scope: !5848)
!5863 = !DILocation(line: 75, column: 2, scope: !5848)
!5864 = distinct !DISubprogram(name: "get_key_haup_common", scope: !3, file: !3, line: 59, type: !5865, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5865 = !DISubroutineType(types: !5866)
!5866 = !{!259, !230, !4477, !2810, !4478, !259}
!5867 = !DILocalVariable(name: "p", arg: 1, scope: !5868, file: !5869, line: 171, type: !5872)
!5868 = distinct !DISubprogram(name: "__swab16p", scope: !5869, file: !5869, line: 171, type: !5870, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5869 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!5870 = !DISubroutineType(types: !5871)
!5871 = !{!216, !5872}
!5872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5873, size: 64)
!5873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!5874 = !DILocation(line: 171, column: 53, scope: !5868, inlinedAt: !5875)
!5875 = distinct !DILocation(line: 90, column: 9, scope: !5876, inlinedAt: !5882)
!5876 = distinct !DISubprogram(name: "__be16_to_cpup", scope: !5877, file: !5877, line: 88, type: !5878, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5877 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!5878 = !DISubroutineType(types: !5879)
!5879 = !{!216, !5880}
!5880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5881, size: 64)
!5881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!5882 = distinct !DILocation(line: 25, column: 9, scope: !5883, inlinedAt: !5886)
!5883 = distinct !DISubprogram(name: "get_unaligned_be16", scope: !5536, file: !5536, line: 23, type: !5884, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!5884 = !DISubroutineType(types: !5885)
!5885 = !{!276, !2165}
!5886 = distinct !DILocation(line: 108, column: 12, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 105, column: 43)
!5888 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 105, column: 13)
!5889 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 69, column: 6)
!5890 = !DILocalVariable(name: "p", arg: 1, scope: !5876, file: !5877, line: 88, type: !5880)
!5891 = !DILocation(line: 88, column: 59, scope: !5876, inlinedAt: !5882)
!5892 = !DILocalVariable(name: "p", arg: 1, scope: !5883, file: !5536, line: 23, type: !2165)
!5893 = !DILocation(line: 23, column: 59, scope: !5883, inlinedAt: !5886)
!5894 = !DILocalVariable(name: "ir", arg: 1, scope: !5864, file: !3, line: 59, type: !230)
!5895 = !DILocation(line: 59, column: 47, scope: !5864)
!5896 = !DILocalVariable(name: "protocol", arg: 2, scope: !5864, file: !3, line: 59, type: !4477)
!5897 = !DILocation(line: 59, column: 66, scope: !5864)
!5898 = !DILocalVariable(name: "scancode", arg: 3, scope: !5864, file: !3, line: 60, type: !2810)
!5899 = !DILocation(line: 60, column: 16, scope: !5864)
!5900 = !DILocalVariable(name: "ptoggle", arg: 4, scope: !5864, file: !3, line: 60, type: !4478)
!5901 = !DILocation(line: 60, column: 30, scope: !5864)
!5902 = !DILocalVariable(name: "size", arg: 5, scope: !5864, file: !3, line: 60, type: !259)
!5903 = !DILocation(line: 60, column: 43, scope: !5864)
!5904 = !DILocalVariable(name: "buf", scope: !5864, file: !3, line: 62, type: !5905)
!5905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 48, elements: !1799)
!5906 = !DILocation(line: 62, column: 16, scope: !5864)
!5907 = !DILocalVariable(name: "start", scope: !5864, file: !3, line: 63, type: !259)
!5908 = !DILocation(line: 63, column: 6, scope: !5864)
!5909 = !DILocalVariable(name: "range", scope: !5864, file: !3, line: 63, type: !259)
!5910 = !DILocation(line: 63, column: 13, scope: !5864)
!5911 = !DILocalVariable(name: "toggle", scope: !5864, file: !3, line: 63, type: !259)
!5912 = !DILocation(line: 63, column: 20, scope: !5864)
!5913 = !DILocalVariable(name: "dev", scope: !5864, file: !3, line: 63, type: !259)
!5914 = !DILocation(line: 63, column: 28, scope: !5864)
!5915 = !DILocalVariable(name: "code", scope: !5864, file: !3, line: 63, type: !259)
!5916 = !DILocation(line: 63, column: 33, scope: !5864)
!5917 = !DILocalVariable(name: "ircode", scope: !5864, file: !3, line: 63, type: !259)
!5918 = !DILocation(line: 63, column: 39, scope: !5864)
!5919 = !DILocalVariable(name: "vendor", scope: !5864, file: !3, line: 63, type: !259)
!5920 = !DILocation(line: 63, column: 47, scope: !5864)
!5921 = !DILocation(line: 66, column: 6, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 66, column: 6)
!5923 = !DILocation(line: 66, column: 30, scope: !5922)
!5924 = !DILocation(line: 66, column: 34, scope: !5922)
!5925 = !DILocation(line: 66, column: 37, scope: !5922)
!5926 = !DILocation(line: 66, column: 42, scope: !5922)
!5927 = !DILocation(line: 66, column: 14, scope: !5922)
!5928 = !DILocation(line: 66, column: 11, scope: !5922)
!5929 = !DILocation(line: 66, column: 6, scope: !5864)
!5930 = !DILocation(line: 67, column: 3, scope: !5922)
!5931 = !DILocation(line: 69, column: 6, scope: !5889)
!5932 = !DILocation(line: 69, column: 13, scope: !5889)
!5933 = !DILocation(line: 69, column: 6, scope: !5864)
!5934 = !DILocalVariable(name: "offset", scope: !5935, file: !3, line: 70, type: !259)
!5935 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 69, column: 21)
!5936 = !DILocation(line: 70, column: 7, scope: !5935)
!5937 = !DILocation(line: 70, column: 17, scope: !5935)
!5938 = !DILocation(line: 70, column: 22, scope: !5935)
!5939 = !DILocation(line: 70, column: 16, scope: !5935)
!5940 = !DILocation(line: 73, column: 17, scope: !5935)
!5941 = !DILocation(line: 73, column: 13, scope: !5935)
!5942 = !DILocation(line: 73, column: 25, scope: !5935)
!5943 = !DILocation(line: 73, column: 31, scope: !5935)
!5944 = !DILocation(line: 73, column: 10, scope: !5935)
!5945 = !DILocation(line: 74, column: 17, scope: !5935)
!5946 = !DILocation(line: 74, column: 13, scope: !5935)
!5947 = !DILocation(line: 74, column: 25, scope: !5935)
!5948 = !DILocation(line: 74, column: 31, scope: !5935)
!5949 = !DILocation(line: 74, column: 10, scope: !5935)
!5950 = !DILocation(line: 75, column: 17, scope: !5935)
!5951 = !DILocation(line: 75, column: 13, scope: !5935)
!5952 = !DILocation(line: 75, column: 25, scope: !5935)
!5953 = !DILocation(line: 75, column: 31, scope: !5935)
!5954 = !DILocation(line: 75, column: 10, scope: !5935)
!5955 = !DILocation(line: 76, column: 17, scope: !5935)
!5956 = !DILocation(line: 76, column: 13, scope: !5935)
!5957 = !DILocation(line: 76, column: 31, scope: !5935)
!5958 = !DILocation(line: 76, column: 10, scope: !5935)
!5959 = !DILocation(line: 77, column: 17, scope: !5935)
!5960 = !DILocation(line: 77, column: 23, scope: !5935)
!5961 = !DILocation(line: 77, column: 13, scope: !5935)
!5962 = !DILocation(line: 77, column: 27, scope: !5935)
!5963 = !DILocation(line: 77, column: 33, scope: !5935)
!5964 = !DILocation(line: 77, column: 10, scope: !5935)
!5965 = !DILocation(line: 84, column: 8, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 84, column: 7)
!5967 = !DILocation(line: 84, column: 7, scope: !5935)
!5968 = !DILocation(line: 86, column: 4, scope: !5966)
!5969 = !DILocation(line: 89, column: 13, scope: !5935)
!5970 = !DILocation(line: 89, column: 19, scope: !5935)
!5971 = !DILocation(line: 89, column: 29, scope: !5935)
!5972 = !DILocation(line: 89, column: 36, scope: !5935)
!5973 = !DILocation(line: 89, column: 26, scope: !5935)
!5974 = !DILocation(line: 89, column: 46, scope: !5935)
!5975 = !DILocation(line: 89, column: 50, scope: !5935)
!5976 = !DILocation(line: 89, column: 43, scope: !5935)
!5977 = !DILocation(line: 89, column: 58, scope: !5935)
!5978 = !DILocation(line: 89, column: 56, scope: !5935)
!5979 = !DILocation(line: 89, column: 10, scope: !5935)
!5980 = !DILocation(line: 90, column: 8, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 90, column: 7)
!5982 = !DILocation(line: 90, column: 15, scope: !5981)
!5983 = !DILocation(line: 90, column: 25, scope: !5981)
!5984 = !DILocation(line: 90, column: 7, scope: !5935)
!5985 = !DILocation(line: 91, column: 4, scope: !5981)
!5986 = !DILocation(line: 93, column: 8, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 93, column: 7)
!5988 = !DILocation(line: 93, column: 7, scope: !5935)
!5989 = !DILocation(line: 94, column: 9, scope: !5987)
!5990 = !DILocation(line: 94, column: 4, scope: !5987)
!5991 = !DILocation(line: 100, column: 4, scope: !5935)
!5992 = !DILocation(line: 100, column: 13, scope: !5935)
!5993 = !DILocation(line: 101, column: 15, scope: !5935)
!5994 = !DILocation(line: 101, column: 4, scope: !5935)
!5995 = !DILocation(line: 101, column: 13, scope: !5935)
!5996 = !DILocation(line: 102, column: 14, scope: !5935)
!5997 = !DILocation(line: 102, column: 4, scope: !5935)
!5998 = !DILocation(line: 102, column: 12, scope: !5935)
!5999 = !DILocation(line: 104, column: 3, scope: !5935)
!6000 = !DILocation(line: 105, column: 13, scope: !5888)
!6001 = !DILocation(line: 105, column: 18, scope: !5888)
!6002 = !DILocation(line: 105, column: 23, scope: !5888)
!6003 = !DILocation(line: 105, column: 27, scope: !5888)
!6004 = !DILocation(line: 105, column: 34, scope: !5888)
!6005 = !DILocation(line: 105, column: 13, scope: !5889)
!6006 = !DILocation(line: 106, column: 10, scope: !5887)
!6007 = !DILocation(line: 106, column: 8, scope: !5887)
!6008 = !DILocation(line: 107, column: 9, scope: !5887)
!6009 = !DILocation(line: 107, column: 7, scope: !5887)
!6010 = !DILocation(line: 108, column: 31, scope: !5887)
!6011 = !DILocation(line: 108, column: 35, scope: !5887)
!6012 = !DILocation(line: 25, column: 32, scope: !5883, inlinedAt: !5886)
!6013 = !DILocation(line: 25, column: 22, scope: !5883, inlinedAt: !5886)
!6014 = !DILocation(line: 90, column: 28, scope: !5876, inlinedAt: !5882)
!6015 = !DILocation(line: 176, column: 9, scope: !5868, inlinedAt: !5875)
!6016 = !DILocation(line: 108, column: 12, scope: !5887)
!6017 = !DILocation(line: 108, column: 10, scope: !5887)
!6018 = !DILocation(line: 110, column: 7, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 110, column: 7)
!6020 = !DILocation(line: 110, column: 14, scope: !6019)
!6021 = !DILocation(line: 110, column: 7, scope: !5887)
!6022 = !DILocation(line: 111, column: 16, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 110, column: 25)
!6024 = !DILocation(line: 111, column: 20, scope: !6023)
!6025 = !DILocation(line: 111, column: 28, scope: !6023)
!6026 = !DILocation(line: 111, column: 15, scope: !6023)
!6027 = !DILocation(line: 111, column: 5, scope: !6023)
!6028 = !DILocation(line: 111, column: 13, scope: !6023)
!6029 = !DILocation(line: 112, column: 5, scope: !6023)
!6030 = !DILocation(line: 112, column: 14, scope: !6023)
!6031 = !DILocation(line: 113, column: 8, scope: !6023)
!6032 = !DILocation(line: 117, column: 3, scope: !6023)
!6033 = !DILocation(line: 118, column: 5, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 117, column: 10)
!6035 = !DILocation(line: 118, column: 13, scope: !6034)
!6036 = !DILocation(line: 119, column: 5, scope: !6034)
!6037 = !DILocation(line: 119, column: 14, scope: !6034)
!6038 = !DILocation(line: 125, column: 15, scope: !5887)
!6039 = !DILocation(line: 125, column: 4, scope: !5887)
!6040 = !DILocation(line: 125, column: 13, scope: !5887)
!6041 = !DILocation(line: 127, column: 3, scope: !5887)
!6042 = !DILocation(line: 130, column: 2, scope: !5864)
!6043 = !DILocation(line: 131, column: 1, scope: !5864)
!6044 = distinct !DISubprogram(name: "__fswab16", scope: !5869, file: !5869, line: 48, type: !6045, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6045 = !DISubroutineType(types: !6046)
!6046 = !{!216, !216}
!6047 = !DILocalVariable(name: "val", arg: 1, scope: !6044, file: !5869, line: 48, type: !216)
!6048 = !DILocation(line: 48, column: 57, scope: !6044)
!6049 = !DILocation(line: 53, column: 9, scope: !6044)
!6050 = !DILocation(line: 53, column: 2, scope: !6044)
!6051 = distinct !DISubprogram(name: "i2c_master_send", scope: !108, file: !108, line: 102, type: !6052, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{!259, !5851, !730, !259}
!6054 = !DILocalVariable(name: "client", arg: 1, scope: !6051, file: !108, line: 102, type: !5851)
!6055 = !DILocation(line: 102, column: 60, scope: !6051)
!6056 = !DILocalVariable(name: "buf", arg: 2, scope: !6051, file: !108, line: 103, type: !730)
!6057 = !DILocation(line: 103, column: 19, scope: !6051)
!6058 = !DILocalVariable(name: "count", arg: 3, scope: !6051, file: !108, line: 103, type: !259)
!6059 = !DILocation(line: 103, column: 28, scope: !6051)
!6060 = !DILocation(line: 105, column: 35, scope: !6051)
!6061 = !DILocation(line: 105, column: 51, scope: !6051)
!6062 = !DILocation(line: 105, column: 56, scope: !6051)
!6063 = !DILocation(line: 105, column: 9, scope: !6051)
!6064 = !DILocation(line: 105, column: 2, scope: !6051)
!6065 = distinct !DISubprogram(name: "kobject_name", scope: !2034, file: !2034, line: 88, type: !6066, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6066 = !DISubroutineType(types: !6067)
!6067 = !{!730, !6068}
!6068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6069, size: 64)
!6069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2033)
!6070 = !DILocalVariable(name: "kobj", arg: 1, scope: !6065, file: !2034, line: 88, type: !6068)
!6071 = !DILocation(line: 88, column: 62, scope: !6065)
!6072 = !DILocation(line: 90, column: 9, scope: !6065)
!6073 = !DILocation(line: 90, column: 15, scope: !6065)
!6074 = !DILocation(line: 90, column: 2, scope: !6065)
!6075 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !174, file: !174, line: 623, type: !6076, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6076 = !DISubroutineType(types: !6077)
!6077 = !{!773, !6078, !212}
!6078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!6079 = !DILocalVariable(name: "dwork", arg: 1, scope: !6075, file: !174, line: 623, type: !6078)
!6080 = !DILocation(line: 623, column: 63, scope: !6075)
!6081 = !DILocalVariable(name: "delay", arg: 2, scope: !6075, file: !174, line: 624, type: !212)
!6082 = !DILocation(line: 624, column: 21, scope: !6075)
!6083 = !DILocation(line: 626, column: 28, scope: !6075)
!6084 = !DILocation(line: 626, column: 39, scope: !6075)
!6085 = !DILocation(line: 626, column: 46, scope: !6075)
!6086 = !DILocation(line: 626, column: 9, scope: !6075)
!6087 = !DILocation(line: 626, column: 2, scope: !6075)
!6088 = distinct !DISubprogram(name: "queue_delayed_work", scope: !174, file: !174, line: 518, type: !6089, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6089 = !DISubroutineType(types: !6090)
!6090 = !{!773, !1273, !6078, !212}
!6091 = !DILocalVariable(name: "wq", arg: 1, scope: !6088, file: !174, line: 518, type: !1273)
!6092 = !DILocation(line: 518, column: 64, scope: !6088)
!6093 = !DILocalVariable(name: "dwork", arg: 2, scope: !6088, file: !174, line: 519, type: !6078)
!6094 = !DILocation(line: 519, column: 32, scope: !6088)
!6095 = !DILocalVariable(name: "delay", arg: 3, scope: !6088, file: !174, line: 520, type: !212)
!6096 = !DILocation(line: 520, column: 25, scope: !6088)
!6097 = !DILocation(line: 522, column: 49, scope: !6088)
!6098 = !DILocation(line: 522, column: 53, scope: !6088)
!6099 = !DILocation(line: 522, column: 60, scope: !6088)
!6100 = !DILocation(line: 522, column: 9, scope: !6088)
!6101 = !DILocation(line: 522, column: 2, scope: !6088)
!6102 = distinct !DISubprogram(name: "ir_key_poll", scope: !3, file: !3, line: 285, type: !5532, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6103 = !DILocalVariable(name: "ir", arg: 1, scope: !6102, file: !3, line: 285, type: !230)
!6104 = !DILocation(line: 285, column: 39, scope: !6102)
!6105 = !DILocalVariable(name: "protocol", scope: !6102, file: !3, line: 287, type: !121)
!6106 = !DILocation(line: 287, column: 16, scope: !6102)
!6107 = !DILocalVariable(name: "scancode", scope: !6102, file: !3, line: 288, type: !293)
!6108 = !DILocation(line: 288, column: 6, scope: !6102)
!6109 = !DILocalVariable(name: "toggle", scope: !6102, file: !3, line: 289, type: !278)
!6110 = !DILocation(line: 289, column: 5, scope: !6102)
!6111 = !DILocalVariable(name: "rc", scope: !6102, file: !3, line: 290, type: !259)
!6112 = !DILocation(line: 290, column: 6, scope: !6102)
!6113 = !DILocation(line: 293, column: 7, scope: !6102)
!6114 = !DILocation(line: 293, column: 11, scope: !6102)
!6115 = !DILocation(line: 293, column: 19, scope: !6102)
!6116 = !DILocation(line: 293, column: 5, scope: !6102)
!6117 = !DILocation(line: 294, column: 6, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 294, column: 6)
!6119 = !DILocation(line: 294, column: 9, scope: !6118)
!6120 = !DILocation(line: 294, column: 6, scope: !6102)
!6121 = !DILocation(line: 295, column: 3, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 294, column: 14)
!6123 = !DILocation(line: 296, column: 10, scope: !6122)
!6124 = !DILocation(line: 296, column: 3, scope: !6122)
!6125 = !DILocation(line: 299, column: 6, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 299, column: 6)
!6127 = !DILocation(line: 299, column: 6, scope: !6102)
!6128 = !DILocation(line: 302, column: 14, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 299, column: 10)
!6130 = !DILocation(line: 302, column: 18, scope: !6129)
!6131 = !DILocation(line: 302, column: 22, scope: !6129)
!6132 = !DILocation(line: 302, column: 32, scope: !6129)
!6133 = !DILocation(line: 302, column: 42, scope: !6129)
!6134 = !DILocation(line: 302, column: 3, scope: !6129)
!6135 = !DILocation(line: 303, column: 2, scope: !6129)
!6136 = !DILocation(line: 304, column: 2, scope: !6102)
!6137 = !DILocation(line: 305, column: 1, scope: !6102)
!6138 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5450, file: !5450, line: 308, type: !5451, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6139 = !DILocalVariable(name: "m", arg: 1, scope: !6138, file: !5450, line: 308, type: !1975)
!6140 = !DILocation(line: 308, column: 66, scope: !6138)
!6141 = !DILocation(line: 310, column: 10, scope: !6138)
!6142 = !DILocation(line: 310, column: 12, scope: !6138)
!6143 = !DILocation(line: 310, column: 34, scope: !6138)
!6144 = !DILocation(line: 310, column: 39, scope: !6138)
!6145 = !DILocation(line: 310, column: 2, scope: !6138)
!6146 = distinct !DISubprogram(name: "send_data_block", scope: !3, file: !3, line: 373, type: !6147, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{!259, !230, !259, !6149}
!6149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5546, size: 64)
!6150 = !DILocalVariable(name: "ir", arg: 1, scope: !6146, file: !3, line: 373, type: !230)
!6151 = !DILocation(line: 373, column: 43, scope: !6146)
!6152 = !DILocalVariable(name: "cmd", arg: 2, scope: !6146, file: !3, line: 373, type: !259)
!6153 = !DILocation(line: 373, column: 51, scope: !6146)
!6154 = !DILocalVariable(name: "code_block", arg: 3, scope: !6146, file: !3, line: 374, type: !6149)
!6155 = !DILocation(line: 374, column: 26, scope: !6146)
!6156 = !DILocalVariable(name: "i", scope: !6146, file: !3, line: 376, type: !259)
!6157 = !DILocation(line: 376, column: 6, scope: !6146)
!6158 = !DILocalVariable(name: "j", scope: !6146, file: !3, line: 376, type: !259)
!6159 = !DILocation(line: 376, column: 9, scope: !6146)
!6160 = !DILocalVariable(name: "ret", scope: !6146, file: !3, line: 376, type: !259)
!6161 = !DILocation(line: 376, column: 12, scope: !6146)
!6162 = !DILocalVariable(name: "buf", scope: !6146, file: !3, line: 377, type: !6163)
!6163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 40, elements: !4083)
!6164 = !DILocation(line: 377, column: 5, scope: !6146)
!6165 = !DILocalVariable(name: "p", scope: !6146, file: !3, line: 377, type: !4478)
!6166 = !DILocation(line: 377, column: 14, scope: !6146)
!6167 = !DILocation(line: 379, column: 7, scope: !6146)
!6168 = !DILocation(line: 379, column: 19, scope: !6146)
!6169 = !DILocation(line: 379, column: 4, scope: !6146)
!6170 = !DILocation(line: 380, column: 9, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 380, column: 2)
!6172 = !DILocation(line: 380, column: 7, scope: !6171)
!6173 = !DILocation(line: 380, column: 14, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 380, column: 2)
!6175 = !DILocation(line: 380, column: 18, scope: !6174)
!6176 = !DILocation(line: 380, column: 30, scope: !6174)
!6177 = !DILocation(line: 380, column: 16, scope: !6174)
!6178 = !DILocation(line: 380, column: 2, scope: !6171)
!6179 = !DILocation(line: 381, column: 32, scope: !6174)
!6180 = !DILocation(line: 381, column: 30, scope: !6174)
!6181 = !DILocation(line: 381, column: 3, scope: !6174)
!6182 = !DILocation(line: 381, column: 15, scope: !6174)
!6183 = !DILocation(line: 381, column: 20, scope: !6174)
!6184 = !DILocation(line: 381, column: 22, scope: !6174)
!6185 = !DILocation(line: 381, column: 27, scope: !6174)
!6186 = !DILocation(line: 380, column: 37, scope: !6174)
!6187 = !DILocation(line: 380, column: 2, scope: !6174)
!6188 = distinct !{!6188, !6178, !6189}
!6189 = !DILocation(line: 381, column: 32, scope: !6171)
!6190 = !DILocation(line: 383, column: 7, scope: !6146)
!6191 = !DILocation(line: 383, column: 19, scope: !6146)
!6192 = !DILocation(line: 383, column: 4, scope: !6146)
!6193 = !DILocation(line: 385, column: 9, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 385, column: 2)
!6195 = !DILocation(line: 385, column: 7, scope: !6194)
!6196 = !DILocation(line: 385, column: 14, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6194, file: !3, line: 385, column: 2)
!6198 = !DILocation(line: 385, column: 16, scope: !6197)
!6199 = !DILocation(line: 385, column: 2, scope: !6194)
!6200 = !DILocalVariable(name: "tosend", scope: !6201, file: !3, line: 386, type: !259)
!6201 = distinct !DILexicalBlock(scope: !6197, file: !3, line: 385, column: 40)
!6202 = !DILocation(line: 386, column: 7, scope: !6201)
!6203 = !DILocation(line: 386, column: 38, scope: !6201)
!6204 = !DILocation(line: 386, column: 36, scope: !6201)
!6205 = !DILocation(line: 386, column: 16, scope: !6201)
!6206 = !DILocation(line: 388, column: 7, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 388, column: 7)
!6208 = !DILocation(line: 388, column: 14, scope: !6207)
!6209 = !DILocation(line: 388, column: 7, scope: !6201)
!6210 = !DILocation(line: 389, column: 11, scope: !6207)
!6211 = !DILocation(line: 389, column: 4, scope: !6207)
!6212 = !DILocation(line: 390, column: 12, scope: !6201)
!6213 = !DILocation(line: 390, column: 14, scope: !6201)
!6214 = !DILocation(line: 390, column: 3, scope: !6201)
!6215 = !DILocation(line: 390, column: 10, scope: !6201)
!6216 = !DILocation(line: 391, column: 10, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 391, column: 3)
!6218 = !DILocation(line: 391, column: 8, scope: !6217)
!6219 = !DILocation(line: 391, column: 15, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 391, column: 3)
!6221 = !DILocation(line: 391, column: 19, scope: !6220)
!6222 = !DILocation(line: 391, column: 17, scope: !6220)
!6223 = !DILocation(line: 391, column: 3, scope: !6217)
!6224 = !DILocation(line: 392, column: 17, scope: !6220)
!6225 = !DILocation(line: 392, column: 19, scope: !6220)
!6226 = !DILocation(line: 392, column: 23, scope: !6220)
!6227 = !DILocation(line: 392, column: 21, scope: !6220)
!6228 = !DILocation(line: 392, column: 12, scope: !6220)
!6229 = !DILocation(line: 392, column: 10, scope: !6220)
!6230 = !DILocation(line: 392, column: 4, scope: !6220)
!6231 = !DILocation(line: 392, column: 15, scope: !6220)
!6232 = !DILocation(line: 391, column: 27, scope: !6220)
!6233 = !DILocation(line: 391, column: 3, scope: !6220)
!6234 = distinct !{!6234, !6223, !6235}
!6235 = !DILocation(line: 392, column: 24, scope: !6217)
!6236 = !DILocation(line: 394, column: 25, scope: !6201)
!6237 = !DILocation(line: 394, column: 29, scope: !6201)
!6238 = !DILocation(line: 394, column: 35, scope: !6201)
!6239 = !DILocation(line: 394, column: 40, scope: !6201)
!6240 = !DILocation(line: 394, column: 47, scope: !6201)
!6241 = !DILocation(line: 394, column: 9, scope: !6201)
!6242 = !DILocation(line: 394, column: 7, scope: !6201)
!6243 = !DILocation(line: 395, column: 7, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 395, column: 7)
!6245 = !DILocation(line: 395, column: 14, scope: !6244)
!6246 = !DILocation(line: 395, column: 21, scope: !6244)
!6247 = !DILocation(line: 395, column: 11, scope: !6244)
!6248 = !DILocation(line: 395, column: 7, scope: !6201)
!6249 = !DILocation(line: 398, column: 11, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6244, file: !3, line: 395, column: 26)
!6251 = !DILocation(line: 398, column: 15, scope: !6250)
!6252 = !DILocation(line: 398, column: 21, scope: !6250)
!6253 = !DILocation(line: 398, column: 4, scope: !6250)
!6254 = !DILocation(line: 400, column: 8, scope: !6201)
!6255 = !DILocation(line: 400, column: 5, scope: !6201)
!6256 = !DILocation(line: 385, column: 2, scope: !6197)
!6257 = distinct !{!6257, !6199, !6258}
!6258 = !DILocation(line: 401, column: 2, scope: !6194)
!6259 = !DILocation(line: 403, column: 2, scope: !6146)
!6260 = !DILocation(line: 403, column: 9, scope: !6146)
!6261 = !DILocation(line: 404, column: 11, scope: !6146)
!6262 = !DILocation(line: 404, column: 2, scope: !6146)
!6263 = !DILocation(line: 404, column: 9, scope: !6146)
!6264 = !DILocation(line: 405, column: 24, scope: !6146)
!6265 = !DILocation(line: 405, column: 28, scope: !6146)
!6266 = !DILocation(line: 405, column: 34, scope: !6146)
!6267 = !DILocation(line: 405, column: 8, scope: !6146)
!6268 = !DILocation(line: 405, column: 6, scope: !6146)
!6269 = !DILocation(line: 406, column: 6, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 406, column: 6)
!6271 = !DILocation(line: 406, column: 10, scope: !6270)
!6272 = !DILocation(line: 406, column: 6, scope: !6146)
!6273 = !DILocation(line: 407, column: 3, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 406, column: 16)
!6275 = !DILocation(line: 408, column: 10, scope: !6274)
!6276 = !DILocation(line: 408, column: 14, scope: !6274)
!6277 = !DILocation(line: 408, column: 20, scope: !6274)
!6278 = !DILocation(line: 408, column: 3, scope: !6274)
!6279 = !DILocation(line: 411, column: 2, scope: !6146)
!6280 = !DILocation(line: 413, column: 24, scope: !6146)
!6281 = !DILocation(line: 413, column: 28, scope: !6146)
!6282 = !DILocation(line: 413, column: 34, scope: !6146)
!6283 = !DILocation(line: 413, column: 8, scope: !6146)
!6284 = !DILocation(line: 413, column: 6, scope: !6146)
!6285 = !DILocation(line: 414, column: 6, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 414, column: 6)
!6287 = !DILocation(line: 414, column: 10, scope: !6286)
!6288 = !DILocation(line: 414, column: 6, scope: !6146)
!6289 = !DILocation(line: 415, column: 3, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 414, column: 16)
!6291 = !DILocation(line: 416, column: 10, scope: !6290)
!6292 = !DILocation(line: 416, column: 14, scope: !6290)
!6293 = !DILocation(line: 416, column: 20, scope: !6290)
!6294 = !DILocation(line: 416, column: 3, scope: !6290)
!6295 = !DILocation(line: 419, column: 2, scope: !6146)
!6296 = !DILocation(line: 420, column: 1, scope: !6146)
!6297 = distinct !DISubprogram(name: "zilog_ir_format", scope: !3, file: !3, line: 496, type: !6298, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6298 = !DISubroutineType(types: !6299)
!6299 = !{!259, !4076, !1217, !7, !6149}
!6300 = !DILocation(line: 171, column: 53, scope: !5868, inlinedAt: !6301)
!6301 = distinct !DILocation(line: 90, column: 9, scope: !5876, inlinedAt: !6302)
!6302 = distinct !DILocation(line: 25, column: 9, scope: !5883, inlinedAt: !6303)
!6303 = distinct !DILocation(line: 549, column: 7, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6305, file: !3, line: 549, column: 7)
!6305 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 546, column: 54)
!6306 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 546, column: 2)
!6307 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 546, column: 2)
!6308 = !DILocation(line: 88, column: 59, scope: !5876, inlinedAt: !6302)
!6309 = !DILocation(line: 23, column: 59, scope: !5883, inlinedAt: !6303)
!6310 = !DILocation(line: 171, column: 53, scope: !5868, inlinedAt: !6311)
!6311 = distinct !DILocation(line: 90, column: 9, scope: !5876, inlinedAt: !6312)
!6312 = distinct !DILocation(line: 25, column: 9, scope: !5883, inlinedAt: !6313)
!6313 = distinct !DILocation(line: 547, column: 11, scope: !6305)
!6314 = !DILocation(line: 88, column: 59, scope: !5876, inlinedAt: !6312)
!6315 = !DILocation(line: 23, column: 59, scope: !5883, inlinedAt: !6313)
!6316 = !DILocalVariable(name: "rcdev", arg: 1, scope: !6297, file: !3, line: 496, type: !4076)
!6317 = !DILocation(line: 496, column: 43, scope: !6297)
!6318 = !DILocalVariable(name: "txbuf", arg: 2, scope: !6297, file: !3, line: 496, type: !1217)
!6319 = !DILocation(line: 496, column: 64, scope: !6297)
!6320 = !DILocalVariable(name: "count", arg: 3, scope: !6297, file: !3, line: 497, type: !7)
!6321 = !DILocation(line: 497, column: 20, scope: !6297)
!6322 = !DILocalVariable(name: "code_block", arg: 4, scope: !6297, file: !3, line: 497, type: !6149)
!6323 = !DILocation(line: 497, column: 46, scope: !6297)
!6324 = !DILocalVariable(name: "ir", scope: !6297, file: !3, line: 499, type: !230)
!6325 = !DILocation(line: 499, column: 17, scope: !6297)
!6326 = !DILocation(line: 499, column: 22, scope: !6297)
!6327 = !DILocation(line: 499, column: 29, scope: !6297)
!6328 = !DILocalVariable(name: "rep", scope: !6297, file: !3, line: 500, type: !259)
!6329 = !DILocation(line: 500, column: 6, scope: !6297)
!6330 = !DILocalVariable(name: "i", scope: !6297, file: !3, line: 500, type: !259)
!6331 = !DILocation(line: 500, column: 11, scope: !6297)
!6332 = !DILocalVariable(name: "l", scope: !6297, file: !3, line: 500, type: !259)
!6333 = !DILocation(line: 500, column: 14, scope: !6297)
!6334 = !DILocalVariable(name: "p", scope: !6297, file: !3, line: 500, type: !259)
!6335 = !DILocation(line: 500, column: 17, scope: !6297)
!6336 = !DILocalVariable(name: "s", scope: !6297, file: !3, line: 500, type: !259)
!6337 = !DILocation(line: 500, column: 24, scope: !6297)
!6338 = !DILocalVariable(name: "c", scope: !6297, file: !3, line: 500, type: !259)
!6339 = !DILocation(line: 500, column: 27, scope: !6297)
!6340 = !DILocalVariable(name: "repeating", scope: !6297, file: !3, line: 501, type: !773)
!6341 = !DILocation(line: 501, column: 7, scope: !6297)
!6342 = !DILocalVariable(name: "codes", scope: !6297, file: !3, line: 502, type: !6343)
!6343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 1392, elements: !6344)
!6344 = !{!6345}
!6345 = !DISubrange(count: 174)
!6346 = !DILocation(line: 502, column: 5, scope: !6297)
!6347 = !DILocalVariable(name: "__x", scope: !6348, file: !3, line: 504, type: !7)
!6348 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 504, column: 30)
!6349 = !DILocation(line: 504, column: 30, scope: !6348)
!6350 = !DILocalVariable(name: "__d", scope: !6348, file: !3, line: 504, type: !7)
!6351 = !DILocation(line: 504, column: 30, scope: !6297)
!6352 = !DILocation(line: 504, column: 2, scope: !6297)
!6353 = !DILocation(line: 504, column: 14, scope: !6297)
!6354 = !DILocation(line: 504, column: 28, scope: !6297)
!6355 = !DILocalVariable(name: "__x", scope: !6356, file: !3, line: 506, type: !7)
!6356 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 506, column: 30)
!6357 = !DILocation(line: 506, column: 30, scope: !6356)
!6358 = !DILocalVariable(name: "__d", scope: !6356, file: !3, line: 506, type: !7)
!6359 = !DILocation(line: 506, column: 30, scope: !6297)
!6360 = !DILocation(line: 506, column: 2, scope: !6297)
!6361 = !DILocation(line: 506, column: 14, scope: !6297)
!6362 = !DILocation(line: 506, column: 28, scope: !6297)
!6363 = !DILocation(line: 509, column: 9, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 509, column: 2)
!6365 = !DILocation(line: 509, column: 7, scope: !6364)
!6366 = !DILocation(line: 509, column: 14, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 509, column: 2)
!6368 = !DILocation(line: 509, column: 18, scope: !6367)
!6369 = !DILocation(line: 509, column: 16, scope: !6367)
!6370 = !DILocation(line: 509, column: 2, scope: !6364)
!6371 = !DILocation(line: 510, column: 7, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 510, column: 7)
!6373 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 509, column: 30)
!6374 = !DILocation(line: 510, column: 9, scope: !6372)
!6375 = !DILocation(line: 510, column: 7, scope: !6373)
!6376 = !DILocation(line: 511, column: 4, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 510, column: 35)
!6378 = !DILocation(line: 512, column: 4, scope: !6377)
!6379 = !DILocation(line: 519, column: 7, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 519, column: 7)
!6381 = !DILocation(line: 519, column: 13, scope: !6380)
!6382 = !DILocation(line: 519, column: 16, scope: !6380)
!6383 = !DILocation(line: 519, column: 7, scope: !6373)
!6384 = !DILocation(line: 520, column: 4, scope: !6380)
!6385 = !DILocalVariable(name: "__x", scope: !6386, file: !3, line: 522, type: !7)
!6386 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 522, column: 7)
!6387 = !DILocation(line: 522, column: 7, scope: !6386)
!6388 = !DILocalVariable(name: "__d", scope: !6386, file: !3, line: 522, type: !259)
!6389 = !DILocation(line: 522, column: 5, scope: !6373)
!6390 = !DILocation(line: 524, column: 7, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 524, column: 7)
!6392 = !DILocation(line: 524, column: 9, scope: !6391)
!6393 = !DILocation(line: 524, column: 7, scope: !6373)
!6394 = !DILocation(line: 525, column: 18, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 524, column: 14)
!6396 = !DILocation(line: 525, column: 30, scope: !6395)
!6397 = !DILocation(line: 526, column: 42, scope: !6395)
!6398 = !DILocation(line: 525, column: 8, scope: !6395)
!6399 = !DILocation(line: 525, column: 6, scope: !6395)
!6400 = !DILocation(line: 527, column: 8, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 527, column: 8)
!6402 = !DILocation(line: 527, column: 10, scope: !6401)
!6403 = !DILocation(line: 527, column: 8, scope: !6395)
!6404 = !DILocation(line: 528, column: 5, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6401, file: !3, line: 527, column: 17)
!6406 = !DILocation(line: 529, column: 5, scope: !6405)
!6407 = !DILocation(line: 533, column: 18, scope: !6395)
!6408 = !DILocation(line: 533, column: 20, scope: !6395)
!6409 = !DILocation(line: 533, column: 28, scope: !6395)
!6410 = !DILocation(line: 533, column: 26, scope: !6395)
!6411 = !DILocation(line: 533, column: 17, scope: !6395)
!6412 = !DILocation(line: 533, column: 11, scope: !6395)
!6413 = !DILocation(line: 533, column: 4, scope: !6395)
!6414 = !DILocation(line: 533, column: 15, scope: !6395)
!6415 = !DILocation(line: 534, column: 3, scope: !6395)
!6416 = !DILocation(line: 535, column: 18, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6391, file: !3, line: 534, column: 10)
!6418 = !DILocation(line: 535, column: 30, scope: !6417)
!6419 = !DILocation(line: 536, column: 42, scope: !6417)
!6420 = !DILocation(line: 535, column: 8, scope: !6417)
!6421 = !DILocation(line: 535, column: 6, scope: !6417)
!6422 = !DILocation(line: 537, column: 8, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 537, column: 8)
!6424 = !DILocation(line: 537, column: 10, scope: !6423)
!6425 = !DILocation(line: 537, column: 8, scope: !6417)
!6426 = !DILocation(line: 538, column: 5, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6423, file: !3, line: 537, column: 17)
!6428 = !DILocation(line: 539, column: 5, scope: !6427)
!6429 = !DILocation(line: 542, column: 2, scope: !6373)
!6430 = !DILocation(line: 509, column: 26, scope: !6367)
!6431 = !DILocation(line: 509, column: 2, scope: !6367)
!6432 = distinct !{!6432, !6370, !6433}
!6433 = !DILocation(line: 542, column: 2, scope: !6364)
!6434 = !DILocation(line: 545, column: 4, scope: !6297)
!6435 = !DILocation(line: 546, column: 9, scope: !6307)
!6436 = !DILocation(line: 546, column: 7, scope: !6307)
!6437 = !DILocation(line: 546, column: 14, scope: !6306)
!6438 = !DILocation(line: 546, column: 16, scope: !6306)
!6439 = !DILocation(line: 546, column: 2, scope: !6307)
!6440 = !DILocalVariable(name: "d", scope: !6305, file: !3, line: 547, type: !276)
!6441 = !DILocation(line: 547, column: 7, scope: !6305)
!6442 = !DILocation(line: 547, column: 31, scope: !6305)
!6443 = !DILocation(line: 547, column: 43, scope: !6305)
!6444 = !DILocation(line: 547, column: 49, scope: !6305)
!6445 = !DILocation(line: 547, column: 30, scope: !6305)
!6446 = !DILocation(line: 25, column: 32, scope: !5883, inlinedAt: !6313)
!6447 = !DILocation(line: 25, column: 22, scope: !5883, inlinedAt: !6313)
!6448 = !DILocation(line: 90, column: 28, scope: !5876, inlinedAt: !6312)
!6449 = !DILocation(line: 176, column: 9, scope: !5868, inlinedAt: !6311)
!6450 = !DILocation(line: 549, column: 27, scope: !6304)
!6451 = !DILocation(line: 549, column: 39, scope: !6304)
!6452 = !DILocation(line: 549, column: 45, scope: !6304)
!6453 = !DILocation(line: 549, column: 26, scope: !6304)
!6454 = !DILocation(line: 25, column: 32, scope: !5883, inlinedAt: !6303)
!6455 = !DILocation(line: 25, column: 22, scope: !5883, inlinedAt: !6303)
!6456 = !DILocation(line: 90, column: 28, scope: !5876, inlinedAt: !6302)
!6457 = !DILocation(line: 176, column: 9, scope: !5868, inlinedAt: !6301)
!6458 = !DILocation(line: 549, column: 7, scope: !6304)
!6459 = !DILocation(line: 549, column: 51, scope: !6304)
!6460 = !DILocation(line: 549, column: 49, scope: !6304)
!6461 = !DILocation(line: 549, column: 7, scope: !6305)
!6462 = !DILocation(line: 550, column: 8, scope: !6304)
!6463 = !DILocation(line: 550, column: 6, scope: !6304)
!6464 = !DILocation(line: 550, column: 4, scope: !6304)
!6465 = !DILocation(line: 551, column: 2, scope: !6305)
!6466 = !DILocation(line: 546, column: 50, scope: !6306)
!6467 = !DILocation(line: 546, column: 2, scope: !6306)
!6468 = distinct !{!6468, !6439, !6469}
!6469 = !DILocation(line: 551, column: 2, scope: !6307)
!6470 = !DILocation(line: 553, column: 16, scope: !6297)
!6471 = !DILocation(line: 553, column: 18, scope: !6297)
!6472 = !DILocation(line: 553, column: 26, scope: !6297)
!6473 = !DILocation(line: 553, column: 24, scope: !6297)
!6474 = !DILocation(line: 553, column: 15, scope: !6297)
!6475 = !DILocation(line: 553, column: 9, scope: !6297)
!6476 = !DILocation(line: 553, column: 2, scope: !6297)
!6477 = !DILocation(line: 553, column: 13, scope: !6297)
!6478 = !DILocation(line: 562, column: 12, scope: !6297)
!6479 = !DILocation(line: 564, column: 13, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 564, column: 2)
!6481 = !DILocation(line: 564, column: 15, scope: !6480)
!6482 = !DILocation(line: 564, column: 11, scope: !6480)
!6483 = !DILocation(line: 564, column: 7, scope: !6480)
!6484 = !DILocation(line: 564, column: 20, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 564, column: 2)
!6486 = !DILocation(line: 564, column: 24, scope: !6485)
!6487 = !DILocation(line: 564, column: 2, scope: !6480)
!6488 = !DILocation(line: 565, column: 22, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6490, file: !3, line: 565, column: 7)
!6490 = distinct !DILexicalBlock(scope: !6485, file: !3, line: 564, column: 37)
!6491 = !DILocation(line: 565, column: 26, scope: !6489)
!6492 = !DILocation(line: 565, column: 30, scope: !6489)
!6493 = !DILocation(line: 565, column: 24, scope: !6489)
!6494 = !DILocation(line: 565, column: 16, scope: !6489)
!6495 = !DILocation(line: 565, column: 43, scope: !6489)
!6496 = !DILocation(line: 565, column: 47, scope: !6489)
!6497 = !DILocation(line: 565, column: 51, scope: !6489)
!6498 = !DILocation(line: 565, column: 45, scope: !6489)
!6499 = !DILocation(line: 565, column: 37, scope: !6489)
!6500 = !DILocation(line: 565, column: 57, scope: !6489)
!6501 = !DILocation(line: 565, column: 8, scope: !6489)
!6502 = !DILocation(line: 565, column: 62, scope: !6489)
!6503 = !DILocation(line: 566, column: 28, scope: !6489)
!6504 = !DILocation(line: 566, column: 32, scope: !6489)
!6505 = !DILocation(line: 566, column: 30, scope: !6489)
!6506 = !DILocation(line: 566, column: 22, scope: !6489)
!6507 = !DILocation(line: 566, column: 45, scope: !6489)
!6508 = !DILocation(line: 566, column: 49, scope: !6489)
!6509 = !DILocation(line: 566, column: 53, scope: !6489)
!6510 = !DILocation(line: 566, column: 47, scope: !6489)
!6511 = !DILocation(line: 566, column: 39, scope: !6489)
!6512 = !DILocation(line: 566, column: 59, scope: !6489)
!6513 = !DILocation(line: 566, column: 8, scope: !6489)
!6514 = !DILocation(line: 565, column: 7, scope: !6490)
!6515 = !DILocation(line: 567, column: 14, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 566, column: 65)
!6517 = !DILocation(line: 568, column: 4, scope: !6516)
!6518 = !DILocation(line: 570, column: 2, scope: !6490)
!6519 = !DILocation(line: 564, column: 33, scope: !6485)
!6520 = !DILocation(line: 564, column: 2, scope: !6485)
!6521 = distinct !{!6521, !6487, !6522}
!6522 = !DILocation(line: 570, column: 2, scope: !6480)
!6523 = !DILocation(line: 572, column: 6, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 572, column: 6)
!6525 = !DILocation(line: 572, column: 6, scope: !6297)
!6526 = !DILocalVariable(name: "leading", scope: !6527, file: !3, line: 574, type: !259)
!6527 = distinct !DILexicalBlock(scope: !6524, file: !3, line: 572, column: 17)
!6528 = !DILocation(line: 574, column: 7, scope: !6527)
!6529 = !DILocation(line: 574, column: 17, scope: !6527)
!6530 = !DILocation(line: 574, column: 21, scope: !6527)
!6531 = !DILocation(line: 574, column: 25, scope: !6527)
!6532 = !DILocation(line: 574, column: 19, scope: !6527)
!6533 = !DILocation(line: 576, column: 7, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6527, file: !3, line: 576, column: 7)
!6535 = !DILocation(line: 576, column: 54, scope: !6534)
!6536 = !DILocation(line: 576, column: 52, scope: !6534)
!6537 = !DILocation(line: 576, column: 15, scope: !6534)
!6538 = !DILocation(line: 576, column: 7, scope: !6527)
!6539 = !DILocation(line: 577, column: 4, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 576, column: 59)
!6541 = !DILocation(line: 578, column: 4, scope: !6540)
!6542 = !DILocation(line: 582, column: 14, scope: !6527)
!6543 = !DILocation(line: 582, column: 26, scope: !6527)
!6544 = !DILocation(line: 582, column: 33, scope: !6527)
!6545 = !DILocation(line: 582, column: 40, scope: !6527)
!6546 = !DILocation(line: 582, column: 3, scope: !6527)
!6547 = !DILocation(line: 583, column: 3, scope: !6527)
!6548 = !DILocation(line: 583, column: 15, scope: !6527)
!6549 = !DILocation(line: 583, column: 21, scope: !6527)
!6550 = !DILocation(line: 583, column: 30, scope: !6527)
!6551 = !DILocation(line: 584, column: 14, scope: !6527)
!6552 = !DILocation(line: 584, column: 26, scope: !6527)
!6553 = !DILocation(line: 584, column: 34, scope: !6527)
!6554 = !DILocation(line: 584, column: 32, scope: !6527)
!6555 = !DILocation(line: 584, column: 42, scope: !6527)
!6556 = !DILocation(line: 584, column: 47, scope: !6527)
!6557 = !DILocation(line: 584, column: 55, scope: !6527)
!6558 = !DILocation(line: 584, column: 53, scope: !6527)
!6559 = !DILocation(line: 585, column: 7, scope: !6527)
!6560 = !DILocation(line: 584, column: 3, scope: !6527)
!6561 = !DILocation(line: 586, column: 7, scope: !6527)
!6562 = !DILocation(line: 586, column: 15, scope: !6527)
!6563 = !DILocation(line: 586, column: 21, scope: !6527)
!6564 = !DILocation(line: 586, column: 19, scope: !6527)
!6565 = !DILocation(line: 586, column: 5, scope: !6527)
!6566 = !DILocation(line: 587, column: 3, scope: !6527)
!6567 = !DILocation(line: 587, column: 15, scope: !6527)
!6568 = !DILocation(line: 587, column: 22, scope: !6527)
!6569 = !DILocation(line: 587, column: 26, scope: !6527)
!6570 = !DILocation(line: 588, column: 2, scope: !6527)
!6571 = !DILocation(line: 589, column: 7, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6573, file: !3, line: 589, column: 7)
!6573 = distinct !DILexicalBlock(scope: !6524, file: !3, line: 588, column: 9)
!6574 = !DILocation(line: 589, column: 9, scope: !6572)
!6575 = !DILocation(line: 589, column: 7, scope: !6573)
!6576 = !DILocation(line: 590, column: 4, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6572, file: !3, line: 589, column: 47)
!6578 = !DILocation(line: 591, column: 4, scope: !6577)
!6579 = !DILocation(line: 595, column: 3, scope: !6573)
!6580 = !DILocation(line: 595, column: 15, scope: !6573)
!6581 = !DILocation(line: 595, column: 24, scope: !6573)
!6582 = !DILocation(line: 596, column: 14, scope: !6573)
!6583 = !DILocation(line: 596, column: 26, scope: !6573)
!6584 = !DILocation(line: 596, column: 32, scope: !6573)
!6585 = !DILocation(line: 596, column: 37, scope: !6573)
!6586 = !DILocation(line: 596, column: 44, scope: !6573)
!6587 = !DILocation(line: 596, column: 3, scope: !6573)
!6588 = !DILocation(line: 597, column: 4, scope: !6573)
!6589 = !DILocation(line: 598, column: 3, scope: !6573)
!6590 = !DILocation(line: 598, column: 15, scope: !6573)
!6591 = !DILocation(line: 598, column: 22, scope: !6573)
!6592 = !DILocation(line: 598, column: 26, scope: !6573)
!6593 = !DILocation(line: 601, column: 2, scope: !6297)
!6594 = !DILocation(line: 601, column: 9, scope: !6297)
!6595 = !DILocation(line: 601, column: 11, scope: !6297)
!6596 = !DILocation(line: 602, column: 3, scope: !6297)
!6597 = !DILocation(line: 602, column: 15, scope: !6297)
!6598 = !DILocation(line: 602, column: 22, scope: !6297)
!6599 = !DILocation(line: 602, column: 26, scope: !6297)
!6600 = distinct !{!6600, !6593, !6601}
!6601 = !DILocation(line: 602, column: 28, scope: !6297)
!6602 = !DILocation(line: 604, column: 2, scope: !6297)
!6603 = !DILocation(line: 605, column: 1, scope: !6297)
!6604 = distinct !DISubprogram(name: "find_slot", scope: !3, file: !3, line: 480, type: !6605, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6605 = !DISubroutineType(types: !6606)
!6606 = !{!259, !6607, !7, !276}
!6607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!6608 = !DILocation(line: 53, column: 52, scope: !5535, inlinedAt: !6609)
!6609 = distinct !DILocation(line: 488, column: 4, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6611, file: !3, line: 487, column: 25)
!6611 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 487, column: 14)
!6612 = distinct !DILexicalBlock(scope: !6613, file: !3, line: 485, column: 7)
!6613 = distinct !DILexicalBlock(scope: !6614, file: !3, line: 484, column: 29)
!6614 = distinct !DILexicalBlock(scope: !6615, file: !3, line: 484, column: 2)
!6615 = distinct !DILexicalBlock(scope: !6604, file: !3, line: 484, column: 2)
!6616 = !DILocation(line: 53, column: 63, scope: !5535, inlinedAt: !6609)
!6617 = !DILocation(line: 171, column: 53, scope: !5868, inlinedAt: !6618)
!6618 = distinct !DILocation(line: 90, column: 9, scope: !5876, inlinedAt: !6619)
!6619 = distinct !DILocation(line: 25, column: 9, scope: !5883, inlinedAt: !6620)
!6620 = distinct !DILocation(line: 485, column: 7, scope: !6612)
!6621 = !DILocation(line: 88, column: 59, scope: !5876, inlinedAt: !6619)
!6622 = !DILocation(line: 23, column: 59, scope: !5883, inlinedAt: !6620)
!6623 = !DILocalVariable(name: "array", arg: 1, scope: !6604, file: !3, line: 480, type: !6607)
!6624 = !DILocation(line: 480, column: 27, scope: !6604)
!6625 = !DILocalVariable(name: "size", arg: 2, scope: !6604, file: !3, line: 480, type: !7)
!6626 = !DILocation(line: 480, column: 47, scope: !6604)
!6627 = !DILocalVariable(name: "val", arg: 3, scope: !6604, file: !3, line: 480, type: !276)
!6628 = !DILocation(line: 480, column: 57, scope: !6604)
!6629 = !DILocalVariable(name: "i", scope: !6604, file: !3, line: 482, type: !259)
!6630 = !DILocation(line: 482, column: 6, scope: !6604)
!6631 = !DILocation(line: 484, column: 9, scope: !6615)
!6632 = !DILocation(line: 484, column: 7, scope: !6615)
!6633 = !DILocation(line: 484, column: 14, scope: !6614)
!6634 = !DILocation(line: 484, column: 18, scope: !6614)
!6635 = !DILocation(line: 484, column: 16, scope: !6614)
!6636 = !DILocation(line: 484, column: 2, scope: !6615)
!6637 = !DILocation(line: 485, column: 27, scope: !6612)
!6638 = !DILocation(line: 485, column: 33, scope: !6612)
!6639 = !DILocation(line: 485, column: 26, scope: !6612)
!6640 = !DILocation(line: 25, column: 32, scope: !5883, inlinedAt: !6620)
!6641 = !DILocation(line: 25, column: 22, scope: !5883, inlinedAt: !6620)
!6642 = !DILocation(line: 90, column: 28, scope: !5876, inlinedAt: !6619)
!6643 = !DILocation(line: 176, column: 9, scope: !5868, inlinedAt: !6618)
!6644 = !DILocation(line: 485, column: 7, scope: !6612)
!6645 = !DILocation(line: 485, column: 40, scope: !6612)
!6646 = !DILocation(line: 485, column: 37, scope: !6612)
!6647 = !DILocation(line: 485, column: 7, scope: !6613)
!6648 = !DILocation(line: 486, column: 11, scope: !6649)
!6649 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 485, column: 45)
!6650 = !DILocation(line: 486, column: 4, scope: !6649)
!6651 = !DILocation(line: 487, column: 15, scope: !6611)
!6652 = !DILocation(line: 487, column: 21, scope: !6611)
!6653 = !DILocation(line: 487, column: 14, scope: !6612)
!6654 = !DILocation(line: 488, column: 23, scope: !6610)
!6655 = !DILocation(line: 488, column: 29, scope: !6610)
!6656 = !DILocation(line: 488, column: 35, scope: !6610)
!6657 = !DILocation(line: 488, column: 28, scope: !6610)
!6658 = !DILocation(line: 55, column: 19, scope: !5535, inlinedAt: !6609)
!6659 = !DILocation(line: 55, column: 14, scope: !5535, inlinedAt: !6609)
!6660 = !DILocation(line: 55, column: 4, scope: !5535, inlinedAt: !6609)
!6661 = !DILocation(line: 55, column: 17, scope: !5535, inlinedAt: !6609)
!6662 = !DILocation(line: 489, column: 11, scope: !6610)
!6663 = !DILocation(line: 489, column: 4, scope: !6610)
!6664 = !DILocation(line: 491, column: 2, scope: !6613)
!6665 = !DILocation(line: 484, column: 25, scope: !6614)
!6666 = !DILocation(line: 484, column: 2, scope: !6614)
!6667 = distinct !{!6667, !6636, !6668}
!6668 = !DILocation(line: 491, column: 2, scope: !6615)
!6669 = !DILocation(line: 493, column: 2, scope: !6604)
!6670 = !DILocation(line: 494, column: 1, scope: !6604)
!6671 = distinct !DISubprogram(name: "cmp_no_trail", scope: !3, file: !3, line: 470, type: !6672, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6672 = !DISubroutineType(types: !6673)
!6673 = !{!259, !4478, !4478, !7}
!6674 = !DILocalVariable(name: "a", arg: 1, scope: !6671, file: !3, line: 470, type: !4478)
!6675 = !DILocation(line: 470, column: 29, scope: !6671)
!6676 = !DILocalVariable(name: "b", arg: 2, scope: !6671, file: !3, line: 470, type: !4478)
!6677 = !DILocation(line: 470, column: 36, scope: !6671)
!6678 = !DILocalVariable(name: "count", arg: 3, scope: !6671, file: !3, line: 470, type: !7)
!6679 = !DILocation(line: 470, column: 52, scope: !6671)
!6680 = !DILocation(line: 472, column: 2, scope: !6671)
!6681 = !DILocation(line: 472, column: 9, scope: !6671)
!6682 = !DILocation(line: 473, column: 9, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6684, file: !3, line: 473, column: 7)
!6684 = distinct !DILexicalBlock(scope: !6671, file: !3, line: 472, column: 18)
!6685 = !DILocation(line: 473, column: 7, scope: !6683)
!6686 = !DILocation(line: 473, column: 17, scope: !6683)
!6687 = !DILocation(line: 473, column: 15, scope: !6683)
!6688 = !DILocation(line: 473, column: 12, scope: !6683)
!6689 = !DILocation(line: 473, column: 7, scope: !6684)
!6690 = !DILocation(line: 474, column: 4, scope: !6683)
!6691 = distinct !{!6691, !6680, !6692}
!6692 = !DILocation(line: 475, column: 2, scope: !6671)
!6693 = !DILocation(line: 477, column: 11, scope: !6671)
!6694 = !DILocation(line: 477, column: 10, scope: !6671)
!6695 = !DILocation(line: 477, column: 13, scope: !6671)
!6696 = !DILocation(line: 477, column: 25, scope: !6671)
!6697 = !DILocation(line: 477, column: 24, scope: !6671)
!6698 = !DILocation(line: 477, column: 27, scope: !6671)
!6699 = !DILocation(line: 477, column: 21, scope: !6671)
!6700 = !DILocation(line: 477, column: 2, scope: !6671)
!6701 = !DILocation(line: 478, column: 1, scope: !6671)
!6702 = distinct !DISubprogram(name: "copy_codes", scope: !3, file: !3, line: 451, type: !6703, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6703 = !DISubroutineType(types: !6704)
!6704 = !{null, !4478, !4478, !7}
!6705 = !DILocalVariable(name: "dst", arg: 1, scope: !6702, file: !3, line: 451, type: !4478)
!6706 = !DILocation(line: 451, column: 28, scope: !6702)
!6707 = !DILocalVariable(name: "src", arg: 2, scope: !6702, file: !3, line: 451, type: !4478)
!6708 = !DILocation(line: 451, column: 37, scope: !6702)
!6709 = !DILocalVariable(name: "count", arg: 3, scope: !6702, file: !3, line: 451, type: !7)
!6710 = !DILocation(line: 451, column: 55, scope: !6702)
!6711 = !DILocalVariable(name: "c", scope: !6702, file: !3, line: 453, type: !278)
!6712 = !DILocation(line: 453, column: 5, scope: !6702)
!6713 = !DILocalVariable(name: "last", scope: !6702, file: !3, line: 453, type: !278)
!6714 = !DILocation(line: 453, column: 8, scope: !6702)
!6715 = !DILocation(line: 455, column: 2, scope: !6702)
!6716 = !DILocation(line: 455, column: 14, scope: !6702)
!6717 = !DILocation(line: 456, column: 11, scope: !6718)
!6718 = distinct !DILexicalBlock(scope: !6702, file: !3, line: 455, column: 18)
!6719 = !DILocation(line: 456, column: 7, scope: !6718)
!6720 = !DILocation(line: 456, column: 5, scope: !6718)
!6721 = !DILocation(line: 457, column: 8, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6718, file: !3, line: 457, column: 7)
!6723 = !DILocation(line: 457, column: 10, scope: !6722)
!6724 = !DILocation(line: 457, column: 21, scope: !6722)
!6725 = !DILocation(line: 457, column: 18, scope: !6722)
!6726 = !DILocation(line: 457, column: 7, scope: !6718)
!6727 = !DILocation(line: 458, column: 21, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6722, file: !3, line: 457, column: 27)
!6729 = !DILocation(line: 458, column: 23, scope: !6728)
!6730 = !DILocation(line: 458, column: 18, scope: !6728)
!6731 = !DILocation(line: 458, column: 13, scope: !6728)
!6732 = !DILocation(line: 458, column: 8, scope: !6728)
!6733 = !DILocation(line: 458, column: 11, scope: !6728)
!6734 = !DILocation(line: 459, column: 3, scope: !6728)
!6735 = !DILocation(line: 460, column: 13, scope: !6736)
!6736 = distinct !DILexicalBlock(scope: !6722, file: !3, line: 459, column: 10)
!6737 = !DILocation(line: 460, column: 8, scope: !6736)
!6738 = !DILocation(line: 460, column: 11, scope: !6736)
!6739 = !DILocation(line: 461, column: 11, scope: !6736)
!6740 = !DILocation(line: 461, column: 13, scope: !6736)
!6741 = !DILocation(line: 461, column: 9, scope: !6736)
!6742 = distinct !{!6742, !6715, !6743}
!6743 = !DILocation(line: 463, column: 2, scope: !6702)
!6744 = !DILocation(line: 464, column: 1, scope: !6702)
!6745 = distinct !DISubprogram(name: "i2c_get_clientdata", scope: !108, file: !108, line: 351, type: !6746, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6746 = !DISubroutineType(types: !6747)
!6747 = !{!229, !5851}
!6748 = !DILocalVariable(name: "client", arg: 1, scope: !6745, file: !108, line: 351, type: !5851)
!6749 = !DILocation(line: 351, column: 65, scope: !6745)
!6750 = !DILocation(line: 353, column: 26, scope: !6745)
!6751 = !DILocation(line: 353, column: 34, scope: !6745)
!6752 = !DILocation(line: 353, column: 9, scope: !6745)
!6753 = !DILocation(line: 353, column: 2, scope: !6745)
!6754 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !6755, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !323)
!6755 = !DISubroutineType(types: !6756)
!6756 = !{!229, !3802}
!6757 = !DILocalVariable(name: "dev", arg: 1, scope: !6754, file: !73, line: 655, type: !3802)
!6758 = !DILocation(line: 655, column: 58, scope: !6754)
!6759 = !DILocation(line: 657, column: 9, scope: !6754)
!6760 = !DILocation(line: 657, column: 14, scope: !6754)
!6761 = !DILocation(line: 657, column: 2, scope: !6754)
