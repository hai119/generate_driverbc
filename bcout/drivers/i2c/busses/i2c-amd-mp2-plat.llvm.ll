; ModuleID = '../bcout/drivers/i2c/busses/i2c-amd-mp2-plat.llvm.bc'
source_filename = "drivers/i2c/busses/i2c-amd-mp2-plat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_i2c_amd_plat_driver_init6:\09\09\09"
module asm ".long\09i2c_amd_plat_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.platform_driver = type { i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, void (%struct.platform_device*)*, i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*)*, %struct.device_driver, %struct.platform_device_id*, i8 }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.1, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.53, i32 }
%union.anon.53 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.45, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.22, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.23, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.24, %union.anon.28, %struct.key_restriction* }
%union.anon.22 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.23 = type { i64 }
%union.anon.24 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.25, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.25 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.28 = type { %union.key_payload }
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
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.31, %union.anon.32, i32 }
%struct.request_queue = type opaque
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.33 }
%struct.anon.33 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.44, i32, [12 x i8] }
%union.anon.44 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.45 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.46, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.49 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i64, i64 }
%union.anon.49 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.amd_i2c_dev = type { %struct.amd_i2c_common, %struct.platform_device*, %struct.i2c_adapter, %struct.completion }
%struct.amd_i2c_common = type { %union.i2c_event, %struct.amd_mp2_dev*, %struct.i2c_msg*, void (%struct.amd_i2c_common*)*, i32, i8, i8, i32, i8*, i64, i32 (%struct.amd_i2c_common*)*, i32 (%struct.amd_i2c_common*)* }
%union.i2c_event = type { i32 }
%struct.amd_mp2_dev = type { %struct.pci_dev*, [2 x %struct.amd_i2c_common*], i8*, %struct.mutex, i8, i32 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.66, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.66 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.74, i32, i32, %struct.list_head }
%struct.anon.74 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.75, i8, i8, i32 }
%struct.anon.75 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.device_link = type { %struct.device*, %struct.list_head, %struct.device*, %struct.list_head, %struct.device, i32, i32, %struct.refcount_struct, %struct.kref, %struct.callback_head, i8 }
%struct.anon.65 = type { i32 }

@__UNIQUE_ID___addressable_i2c_amd_plat_driver_init247 = internal global i8* bitcast (i32 ()* @i2c_amd_plat_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@i2c_amd_plat_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @i2c_amd_probe, i32 (%struct.platform_device*)* @i2c_amd_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* getelementptr inbounds ([2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* @i2c_amd_acpi_match, i32 0, i32 0), i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !4662
@__exitcall_i2c_amd_plat_driver_exit = internal global void ()* @i2c_amd_plat_driver_exit, section ".exitcall.exit", align 8, !dbg !4635
@__UNIQUE_ID_description248 = internal constant [60 x i8] c"i2c_amd_mp2_plat.description=AMD(R) MP2 I2C Platform Driver\00", section ".modinfo", align 1, !dbg !4640
@__UNIQUE_ID_author249 = internal constant [69 x i8] c"i2c_amd_mp2_plat.author=Nehal Shah <nehal-bakulchandra.shah@amd.com>\00", section ".modinfo", align 1, !dbg !4645
@__UNIQUE_ID_author250 = internal constant [58 x i8] c"i2c_amd_mp2_plat.author=Elie Morisse <syniurge@gmail.com>\00", section ".modinfo", align 1, !dbg !4650
@__UNIQUE_ID_file251 = internal constant [58 x i8] c"i2c_amd_mp2_plat.file=drivers/i2c/busses/i2c-amd-mp2-plat\00", section ".modinfo", align 1, !dbg !4655
@__UNIQUE_ID_license252 = internal constant [38 x i8] c"i2c_amd_mp2_plat.license=Dual BSD/GPL\00", section ".modinfo", align 1, !dbg !4657
@.str = private unnamed_addr constant [12 x i8] c"i2c_amd_mp2\00", align 1
@i2c_amd_acpi_match = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"AMDI0011\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !4701
@.str.1 = private unnamed_addr constant [21 x i8] c"missing UID/bus id!\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"incorrect UID/bus id \22%s\22!\0A\00", align 1
@i2c_amd_algorithm = internal constant %struct.i2c_algorithm { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_amd_xfer, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @i2c_amd_func }, align 8, !dbg !4686
@amd_i2c_dev_quirks = internal constant %struct.i2c_adapter_quirks { i64 0, i32 0, i16 4095, i16 4095, i16 0, i16 0 }, align 8, !dbg !4694
@.str.5 = private unnamed_addr constant [19 x i8] c"AMD MP2 i2c bus %u\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"initial bus enable failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"i2c add adapter failed = %d\0A\00", align 1
@supported_speeds = internal constant [5 x i32] [i32 3400000, i32 1400000, i32 1000000, i32 400000, i32 100000], align 16, !dbg !4683
@.str.8 = private unnamed_addr constant [35 x i8] c"Error while mapping dma buffer %p\0A\00", align 1
@dma_map_single_attrs.__warned = internal global i8 0, section ".data.once", align 1, !dbg !4688
@.str.9 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@vmemmap_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4696
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.used = appending global [8 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_i2c_amd_plat_driver_init247 to i8*), i8* bitcast (void ()* @i2c_amd_plat_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_i2c_amd_plat_driver_exit to i8*), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_description248, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__UNIQUE_ID_author249, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_author250, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_file251, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_license252, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_amd_plat_driver_init() #0 section ".init.text" !dbg !4709 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @i2c_amd_plat_driver, %struct.module* null) #6, !dbg !4712
  ret i32 %call, !dbg !4712
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @i2c_amd_plat_driver_exit() #0 section ".exit.text" !dbg !4713 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @i2c_amd_plat_driver) #6, !dbg !4714
  ret void, !dbg !4714
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_amd_probe(%struct.platform_device* %pdev) #2 !dbg !4715 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4716, metadata !DIExpression()), !dbg !4721
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %ret = alloca i32, align 4
  %i2c_dev = alloca %struct.amd_i2c_dev*, align 8
  %handle = alloca i8*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %mp2_dev = alloca %struct.amd_mp2_dev*, align 8
  %uid = alloca i8*, align 8
  %__to_acpi_device_node_fwnode58 = alloca %struct.fwnode_handle*, align 8
  %tmp61 = alloca %struct.acpi_device*, align 8
  %__mptr65 = alloca i8*, align 8
  %tmp68 = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode75 = alloca %struct.fwnode_handle*, align 8
  %tmp78 = alloca %struct.acpi_device*, align 8
  %__mptr82 = alloca i8*, align 8
  %tmp85 = alloca %struct.acpi_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4723, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4725, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_dev** %i2c_dev, metadata !4727, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !4729, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !4731, metadata !DIExpression()), !dbg !4733
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4733
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !4733
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 24, !dbg !4733
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4733
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4733
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4733
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #6, !dbg !4733
  br i1 %call, label %cond.true, label %cond.false, !dbg !4733

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4734, metadata !DIExpression()), !dbg !4736
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4736
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !4736
  store i8* %4, i8** %__mptr, align 8, !dbg !4736
  br label %do.body, !dbg !4736

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4737

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !4736
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !4736
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4736
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !4737
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !4736
  br label %cond.end, !dbg !4733

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4733

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !4733
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !4733
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !4733
  %call2 = call i8* @acpi_device_handle(%struct.acpi_device* %8) #6, !dbg !4739
  store i8* %call2, i8** %handle, align 8, !dbg !4730
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !4740, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.declare(metadata %struct.amd_mp2_dev** %mp2_dev, metadata !4742, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.declare(metadata i8** %uid, metadata !4744, metadata !DIExpression()), !dbg !4745
  %9 = load i8*, i8** %handle, align 8, !dbg !4746
  %call3 = call i32 @acpi_bus_get_device(i8* %9, %struct.acpi_device** %adev) #6, !dbg !4748
  %tobool = icmp ne i32 %call3, 0, !dbg !4748
  br i1 %tobool, label %if.then, label %if.end, !dbg !4749

if.then:                                          ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !4750
  br label %return, !dbg !4750

if.end:                                           ; preds = %cond.end
  %call4 = call %struct.amd_mp2_dev* @amd_mp2_find_device() #6, !dbg !4751
  store %struct.amd_mp2_dev* %call4, %struct.amd_mp2_dev** %mp2_dev, align 8, !dbg !4752
  %10 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev, align 8, !dbg !4753
  %tobool5 = icmp ne %struct.amd_mp2_dev* %10, null, !dbg !4753
  br i1 %tobool5, label %lor.lhs.false, label %if.then7, !dbg !4755

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev, align 8, !dbg !4756
  %probed = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %11, i32 0, i32 5, !dbg !4757
  %12 = load i32, i32* %probed, align 4, !dbg !4757
  %tobool6 = icmp ne i32 %12, 0, !dbg !4756
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4758

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -517, i32* %retval, align 4, !dbg !4759
  br label %return, !dbg !4759

if.end8:                                          ; preds = %lor.lhs.false
  %13 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4760
  %dev9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 3, !dbg !4761
  %call10 = call i8* @devm_kzalloc(%struct.device* %dev9, i64 1056, i32 3264) #6, !dbg !4762
  %14 = bitcast i8* %call10 to %struct.amd_i2c_dev*, !dbg !4762
  store %struct.amd_i2c_dev* %14, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4763
  %15 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4764
  %tobool11 = icmp ne %struct.amd_i2c_dev* %15, null, !dbg !4764
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4766

if.then12:                                        ; preds = %if.end8
  store i32 -12, i32* %retval, align 4, !dbg !4767
  br label %return, !dbg !4767

if.end13:                                         ; preds = %if.end8
  %16 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev, align 8, !dbg !4768
  %17 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4769
  %common = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %17, i32 0, i32 0, !dbg !4770
  %mp2_dev14 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %common, i32 0, i32 1, !dbg !4771
  store %struct.amd_mp2_dev* %16, %struct.amd_mp2_dev** %mp2_dev14, align 8, !dbg !4772
  %18 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4773
  %19 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4774
  %pdev15 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %19, i32 0, i32 1, !dbg !4775
  store %struct.platform_device* %18, %struct.platform_device** %pdev15, align 8, !dbg !4776
  %20 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4777
  %21 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4778
  %22 = bitcast %struct.amd_i2c_dev* %21 to i8*, !dbg !4778
  call void @platform_set_drvdata(%struct.platform_device* %20, i8* %22) #6, !dbg !4779
  %23 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4780
  %common16 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %23, i32 0, i32 0, !dbg !4781
  %cmd_completion = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %common16, i32 0, i32 3, !dbg !4782
  store void (%struct.amd_i2c_common*)* @i2c_amd_cmd_completion, void (%struct.amd_i2c_common*)** %cmd_completion, align 8, !dbg !4783
  %24 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4784
  %common17 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %24, i32 0, i32 0, !dbg !4785
  %suspend = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %common17, i32 0, i32 10, !dbg !4786
  store i32 (%struct.amd_i2c_common*)* @i2c_amd_suspend, i32 (%struct.amd_i2c_common*)** %suspend, align 8, !dbg !4787
  %25 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4788
  %common18 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %25, i32 0, i32 0, !dbg !4789
  %resume = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %common18, i32 0, i32 11, !dbg !4790
  store i32 (%struct.amd_i2c_common*)* @i2c_amd_resume, i32 (%struct.amd_i2c_common*)** %resume, align 8, !dbg !4791
  %26 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4792
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 10, !dbg !4793
  %unique_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 3, !dbg !4794
  %27 = load i8*, i8** %unique_id, align 8, !dbg !4794
  store i8* %27, i8** %uid, align 8, !dbg !4795
  %28 = load i8*, i8** %uid, align 8, !dbg !4796
  %tobool19 = icmp ne i8* %28, null, !dbg !4796
  br i1 %tobool19, label %if.else, label %if.then20, !dbg !4798

if.then20:                                        ; preds = %if.end13
  %29 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4799
  %dev21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 3, !dbg !4799
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !4799
  store i32 -22, i32* %retval, align 4, !dbg !4801
  br label %return, !dbg !4801

if.else:                                          ; preds = %if.end13
  %30 = load i8*, i8** %uid, align 8, !dbg !4802
  %call22 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4804
  %cmp = icmp eq i32 %call22, 0, !dbg !4805
  br i1 %cmp, label %if.then23, label %if.else25, !dbg !4806

if.then23:                                        ; preds = %if.else
  %31 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4807
  %common24 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %31, i32 0, i32 0, !dbg !4809
  %bus_id = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %common24, i32 0, i32 6, !dbg !4810
  store i8 0, i8* %bus_id, align 1, !dbg !4811
  br label %if.end34, !dbg !4812

if.else25:                                        ; preds = %if.else
  %32 = load i8*, i8** %uid, align 8, !dbg !4813
  %call26 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4815
  %cmp27 = icmp eq i32 %call26, 0, !dbg !4816
  br i1 %cmp27, label %if.then28, label %if.else31, !dbg !4817

if.then28:                                        ; preds = %if.else25
  %33 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4818
  %common29 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %33, i32 0, i32 0, !dbg !4820
  %bus_id30 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %common29, i32 0, i32 6, !dbg !4821
  store i8 1, i8* %bus_id30, align 1, !dbg !4822
  br label %if.end33, !dbg !4823

if.else31:                                        ; preds = %if.else25
  %34 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4824
  %dev32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 3, !dbg !4824
  %35 = load i8*, i8** %uid, align 8, !dbg !4824
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %35) #7, !dbg !4824
  store i32 -22, i32* %retval, align 4, !dbg !4826
  br label %return, !dbg !4826

if.end33:                                         ; preds = %if.then28
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then23
  br label %if.end35

if.end35:                                         ; preds = %if.end34
  %36 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev, align 8, !dbg !4827
  call void @amd_mp2_pm_runtime_get(%struct.amd_mp2_dev* %36) #6, !dbg !4828
  %37 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4829
  %common36 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %37, i32 0, i32 0, !dbg !4830
  %reqcmd = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %common36, i32 0, i32 4, !dbg !4831
  store i32 -1, i32* %reqcmd, align 8, !dbg !4832
  %38 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4833
  %common37 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %38, i32 0, i32 0, !dbg !4835
  %call38 = call i32 @amd_mp2_register_cb(%struct.amd_i2c_common* %common37) #6, !dbg !4836
  %tobool39 = icmp ne i32 %call38, 0, !dbg !4836
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !4837

if.then40:                                        ; preds = %if.end35
  store i32 -22, i32* %retval, align 4, !dbg !4838
  br label %return, !dbg !4838

if.end41:                                         ; preds = %if.end35
  %39 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4839
  %pdev42 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %39, i32 0, i32 1, !dbg !4840
  %40 = load %struct.platform_device*, %struct.platform_device** %pdev42, align 8, !dbg !4840
  %dev43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 3, !dbg !4841
  %41 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev, align 8, !dbg !4842
  %pci_dev = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %41, i32 0, i32 0, !dbg !4843
  %42 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !4843
  %dev44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 41, !dbg !4844
  %call45 = call %struct.device_link* @device_link_add(%struct.device* %dev43, %struct.device* %dev44, i32 2) #6, !dbg !4845
  %43 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4846
  %call46 = call i32 @i2c_amd_get_bus_speed(%struct.platform_device* %43) #6, !dbg !4847
  %44 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4848
  %common47 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %44, i32 0, i32 0, !dbg !4849
  %i2c_speed = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %common47, i32 0, i32 7, !dbg !4850
  store i32 %call46, i32* %i2c_speed, align 8, !dbg !4851
  %45 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4852
  %adap = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %45, i32 0, i32 2, !dbg !4853
  %owner = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap, i32 0, i32 0, !dbg !4854
  store %struct.module* null, %struct.module** %owner, align 8, !dbg !4855
  %46 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4856
  %adap48 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %46, i32 0, i32 2, !dbg !4857
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap48, i32 0, i32 2, !dbg !4858
  store %struct.i2c_algorithm* @i2c_amd_algorithm, %struct.i2c_algorithm** %algo, align 8, !dbg !4859
  %47 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4860
  %adap49 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %47, i32 0, i32 2, !dbg !4861
  %quirks = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap49, i32 0, i32 17, !dbg !4862
  store %struct.i2c_adapter_quirks* @amd_i2c_dev_quirks, %struct.i2c_adapter_quirks** %quirks, align 8, !dbg !4863
  %48 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4864
  %dev50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 3, !dbg !4865
  %49 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4866
  %adap51 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %49, i32 0, i32 2, !dbg !4867
  %dev52 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap51, i32 0, i32 9, !dbg !4868
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev52, i32 0, i32 1, !dbg !4869
  store %struct.device* %dev50, %struct.device** %parent, align 8, !dbg !4870
  %50 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4871
  %51 = bitcast %struct.amd_i2c_dev* %50 to i8*, !dbg !4871
  %52 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4872
  %adap53 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %52, i32 0, i32 2, !dbg !4873
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap53, i32 0, i32 3, !dbg !4874
  store i8* %51, i8** %algo_data, align 8, !dbg !4875
  store i32 250, i32* %m.addr.i, align 4
  %53 = load i32, i32* %m.addr.i, align 4, !dbg !4876
  %54 = call i1 @llvm.is.constant.i32(i32 %53) #8, !dbg !4878
  br i1 %54, label %if.then.i, label %if.else.i, !dbg !4879

if.then.i:                                        ; preds = %if.end41
  %55 = load i32, i32* %m.addr.i, align 4, !dbg !4880
  %cmp.i = icmp slt i32 %55, 0, !dbg !4883
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4884

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4885
  br label %msecs_to_jiffies.exit, !dbg !4885

if.end.i:                                         ; preds = %if.then.i
  %56 = load i32, i32* %m.addr.i, align 4, !dbg !4886
  %call.i = call i64 @_msecs_to_jiffies(i32 %56) #9, !dbg !4887
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4888
  br label %msecs_to_jiffies.exit, !dbg !4888

if.else.i:                                        ; preds = %if.end41
  %57 = load i32, i32* %m.addr.i, align 4, !dbg !4889
  %call2.i = call i64 @__msecs_to_jiffies(i32 %57) #9, !dbg !4891
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4892
  br label %msecs_to_jiffies.exit, !dbg !4892

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %58 = load i64, i64* %retval.i, align 8, !dbg !4893
  %conv = trunc i64 %58 to i32, !dbg !4894
  %59 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4895
  %adap55 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %59, i32 0, i32 2, !dbg !4896
  %timeout = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap55, i32 0, i32 7, !dbg !4897
  store i32 %conv, i32* %timeout, align 8, !dbg !4898
  %60 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4899
  %adap56 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %60, i32 0, i32 2, !dbg !4899
  %dev57 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap56, i32 0, i32 9, !dbg !4899
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode58, metadata !4900, metadata !DIExpression()), !dbg !4902
  %61 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4902
  %dev59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 3, !dbg !4902
  %fwnode60 = getelementptr inbounds %struct.device, %struct.device* %dev59, i32 0, i32 24, !dbg !4902
  %62 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode60, align 8, !dbg !4902
  store %struct.fwnode_handle* %62, %struct.fwnode_handle** %__to_acpi_device_node_fwnode58, align 8, !dbg !4902
  %63 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode58, align 8, !dbg !4902
  %call62 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %63) #6, !dbg !4902
  br i1 %call62, label %cond.true64, label %cond.false70, !dbg !4902

cond.true64:                                      ; preds = %msecs_to_jiffies.exit
  call void @llvm.dbg.declare(metadata i8** %__mptr65, metadata !4903, metadata !DIExpression()), !dbg !4905
  %64 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode58, align 8, !dbg !4905
  %65 = bitcast %struct.fwnode_handle* %64 to i8*, !dbg !4905
  store i8* %65, i8** %__mptr65, align 8, !dbg !4905
  br label %do.body66, !dbg !4905

do.body66:                                        ; preds = %cond.true64
  br label %do.end67, !dbg !4906

do.end67:                                         ; preds = %do.body66
  %66 = load i8*, i8** %__mptr65, align 8, !dbg !4905
  %add.ptr69 = getelementptr i8, i8* %66, i64 -16, !dbg !4905
  %67 = bitcast i8* %add.ptr69 to %struct.acpi_device*, !dbg !4905
  store %struct.acpi_device* %67, %struct.acpi_device** %tmp68, align 8, !dbg !4906
  %68 = load %struct.acpi_device*, %struct.acpi_device** %tmp68, align 8, !dbg !4905
  br label %cond.end71, !dbg !4902

cond.false70:                                     ; preds = %msecs_to_jiffies.exit
  br label %cond.end71, !dbg !4902

cond.end71:                                       ; preds = %cond.false70, %do.end67
  %cond72 = phi %struct.acpi_device* [ %68, %do.end67 ], [ null, %cond.false70 ], !dbg !4902
  store %struct.acpi_device* %cond72, %struct.acpi_device** %tmp61, align 8, !dbg !4902
  %69 = load %struct.acpi_device*, %struct.acpi_device** %tmp61, align 8, !dbg !4902
  %tobool73 = icmp ne %struct.acpi_device* %69, null, !dbg !4899
  br i1 %tobool73, label %cond.true74, label %cond.false91, !dbg !4899

cond.true74:                                      ; preds = %cond.end71
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode75, metadata !4908, metadata !DIExpression()), !dbg !4910
  %70 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4910
  %dev76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 3, !dbg !4910
  %fwnode77 = getelementptr inbounds %struct.device, %struct.device* %dev76, i32 0, i32 24, !dbg !4910
  %71 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode77, align 8, !dbg !4910
  store %struct.fwnode_handle* %71, %struct.fwnode_handle** %__to_acpi_device_node_fwnode75, align 8, !dbg !4910
  %72 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode75, align 8, !dbg !4910
  %call79 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %72) #6, !dbg !4910
  br i1 %call79, label %cond.true81, label %cond.false87, !dbg !4910

cond.true81:                                      ; preds = %cond.true74
  call void @llvm.dbg.declare(metadata i8** %__mptr82, metadata !4911, metadata !DIExpression()), !dbg !4913
  %73 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode75, align 8, !dbg !4913
  %74 = bitcast %struct.fwnode_handle* %73 to i8*, !dbg !4913
  store i8* %74, i8** %__mptr82, align 8, !dbg !4913
  br label %do.body83, !dbg !4913

do.body83:                                        ; preds = %cond.true81
  br label %do.end84, !dbg !4914

do.end84:                                         ; preds = %do.body83
  %75 = load i8*, i8** %__mptr82, align 8, !dbg !4913
  %add.ptr86 = getelementptr i8, i8* %75, i64 -16, !dbg !4913
  %76 = bitcast i8* %add.ptr86 to %struct.acpi_device*, !dbg !4913
  store %struct.acpi_device* %76, %struct.acpi_device** %tmp85, align 8, !dbg !4914
  %77 = load %struct.acpi_device*, %struct.acpi_device** %tmp85, align 8, !dbg !4913
  br label %cond.end88, !dbg !4910

cond.false87:                                     ; preds = %cond.true74
  br label %cond.end88, !dbg !4910

cond.end88:                                       ; preds = %cond.false87, %do.end84
  %cond89 = phi %struct.acpi_device* [ %77, %do.end84 ], [ null, %cond.false87 ], !dbg !4910
  store %struct.acpi_device* %cond89, %struct.acpi_device** %tmp78, align 8, !dbg !4910
  %78 = load %struct.acpi_device*, %struct.acpi_device** %tmp78, align 8, !dbg !4910
  %call90 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %78) #6, !dbg !4899
  br label %cond.end92, !dbg !4899

cond.false91:                                     ; preds = %cond.end71
  br label %cond.end92, !dbg !4899

cond.end92:                                       ; preds = %cond.false91, %cond.end88
  %cond93 = phi %struct.fwnode_handle* [ %call90, %cond.end88 ], [ null, %cond.false91 ], !dbg !4899
  call void @set_primary_fwnode(%struct.device* %dev57, %struct.fwnode_handle* %cond93) #6, !dbg !4899
  %79 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4916
  %dev94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 3, !dbg !4917
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev94, i32 0, i32 23, !dbg !4918
  %80 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4918
  %81 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4919
  %adap95 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %81, i32 0, i32 2, !dbg !4920
  %dev96 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap95, i32 0, i32 9, !dbg !4921
  %of_node97 = getelementptr inbounds %struct.device, %struct.device* %dev96, i32 0, i32 23, !dbg !4922
  store %struct.device_node* %80, %struct.device_node** %of_node97, align 8, !dbg !4923
  %82 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4924
  %adap98 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %82, i32 0, i32 2, !dbg !4925
  %name = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap98, i32 0, i32 12, !dbg !4926
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %name, i64 0, i64 0, !dbg !4924
  %83 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4927
  %common99 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %83, i32 0, i32 0, !dbg !4928
  %bus_id100 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %common99, i32 0, i32 6, !dbg !4929
  %84 = load i8, i8* %bus_id100, align 1, !dbg !4929
  %conv101 = zext i8 %84 to i32, !dbg !4927
  %call102 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %conv101) #6, !dbg !4930
  %85 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4931
  %adap103 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %85, i32 0, i32 2, !dbg !4932
  %86 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4933
  %87 = bitcast %struct.amd_i2c_dev* %86 to i8*, !dbg !4933
  call void @i2c_set_adapdata(%struct.i2c_adapter* %adap103, i8* %87) #6, !dbg !4934
  %88 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4935
  %cmd_complete = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %88, i32 0, i32 3, !dbg !4935
  call void @__init_completion(%struct.completion* %cmd_complete) #6, !dbg !4935
  %89 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4936
  %call104 = call i32 @i2c_amd_enable_set(%struct.amd_i2c_dev* %89, i1 zeroext true) #6, !dbg !4938
  %tobool105 = icmp ne i32 %call104, 0, !dbg !4938
  br i1 %tobool105, label %if.then106, label %if.end108, !dbg !4939

if.then106:                                       ; preds = %cond.end92
  %90 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4940
  %dev107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 3, !dbg !4940
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !4940
  br label %if.end108, !dbg !4940

if.end108:                                        ; preds = %if.then106, %cond.end92
  %91 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4941
  %adap109 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %91, i32 0, i32 2, !dbg !4942
  %call110 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %adap109) #6, !dbg !4943
  store i32 %call110, i32* %ret, align 4, !dbg !4944
  %92 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev, align 8, !dbg !4945
  call void @amd_mp2_pm_runtime_put(%struct.amd_mp2_dev* %92) #6, !dbg !4946
  %93 = load i32, i32* %ret, align 4, !dbg !4947
  %cmp111 = icmp slt i32 %93, 0, !dbg !4949
  br i1 %cmp111, label %if.then113, label %if.end115, !dbg !4950

if.then113:                                       ; preds = %if.end108
  %94 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4951
  %dev114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 3, !dbg !4951
  %95 = load i32, i32* %ret, align 4, !dbg !4951
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %95) #7, !dbg !4951
  br label %if.end115, !dbg !4951

if.end115:                                        ; preds = %if.then113, %if.end108
  %96 = load i32, i32* %ret, align 4, !dbg !4952
  store i32 %96, i32* %retval, align 4, !dbg !4953
  br label %return, !dbg !4953

return:                                           ; preds = %if.end115, %if.then40, %if.else31, %if.then20, %if.then12, %if.then7, %if.then
  %97 = load i32, i32* %retval, align 4, !dbg !4954
  ret i32 %97, !dbg !4954
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_amd_remove(%struct.platform_device* %pdev) #2 !dbg !4955 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %i2c_dev = alloca %struct.amd_i2c_dev*, align 8
  %i2c_common = alloca %struct.amd_i2c_common*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4956, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_dev** %i2c_dev, metadata !4958, metadata !DIExpression()), !dbg !4959
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4960
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #6, !dbg !4961
  %1 = bitcast i8* %call to %struct.amd_i2c_dev*, !dbg !4961
  store %struct.amd_i2c_dev* %1, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4959
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_common** %i2c_common, metadata !4962, metadata !DIExpression()), !dbg !4963
  %2 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4964
  %common = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %2, i32 0, i32 0, !dbg !4965
  store %struct.amd_i2c_common* %common, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !4963
  %3 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4966
  %adap = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %3, i32 0, i32 2, !dbg !4967
  call void @i2c_lock_bus(%struct.i2c_adapter* %adap, i32 1) #6, !dbg !4968
  %4 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4969
  %call1 = call i32 @i2c_amd_enable_set(%struct.amd_i2c_dev* %4, i1 zeroext false) #6, !dbg !4970
  %5 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !4971
  %call2 = call i32 @amd_mp2_unregister_cb(%struct.amd_i2c_common* %5) #6, !dbg !4972
  %6 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !4973
  %mp2_dev = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %6, i32 0, i32 1, !dbg !4974
  store %struct.amd_mp2_dev* null, %struct.amd_mp2_dev** %mp2_dev, align 8, !dbg !4975
  %7 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4976
  %adap3 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %7, i32 0, i32 2, !dbg !4977
  call void @i2c_unlock_bus(%struct.i2c_adapter* %adap3, i32 1) #6, !dbg !4978
  %8 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !4979
  %adap4 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %8, i32 0, i32 2, !dbg !4980
  call void @i2c_del_adapter(%struct.i2c_adapter* %adap4) #6, !dbg !4981
  ret i32 0, !dbg !4982
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_device_handle(%struct.acpi_device* %adev) #2 !dbg !4983 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4989
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !4989
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4989

cond.true:                                        ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4990
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !4991
  %2 = load i8*, i8** %handle, align 8, !dbg !4991
  br label %cond.end, !dbg !4989

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4989

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ null, %cond.false ], !dbg !4989
  ret i8* %cond, !dbg !4992
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_device(i8*, %struct.acpi_device**) #1

; Function Attrs: noredzone
declare dso_local %struct.amd_mp2_dev* @amd_mp2_find_device() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !4993 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5002
  %1 = load i64, i64* %size.addr, align 8, !dbg !5003
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !5004
  %or = or i32 %2, 256, !dbg !5005
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !5006
  ret i8* %call, !dbg !5007
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !5008 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !5011, metadata !DIExpression()), !dbg !5012
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5015
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !5016
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5017
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !5018
  ret void, !dbg !5019
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_amd_cmd_completion(%struct.amd_i2c_common* %i2c_common) #2 !dbg !5020 {
entry:
  %i2c_common.addr = alloca %struct.amd_i2c_common*, align 8
  %i2c_dev = alloca %struct.amd_i2c_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.amd_i2c_dev*, align 8
  %event = alloca %union.i2c_event*, align 8
  store %struct.amd_i2c_common* %i2c_common, %struct.amd_i2c_common** %i2c_common.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_common** %i2c_common.addr, metadata !5021, metadata !DIExpression()), !dbg !5022
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_dev** %i2c_dev, metadata !5023, metadata !DIExpression()), !dbg !5024
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5025, metadata !DIExpression()), !dbg !5027
  %0 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5027
  %1 = bitcast %struct.amd_i2c_common* %0 to i8*, !dbg !5027
  store i8* %1, i8** %__mptr, align 8, !dbg !5027
  br label %do.body, !dbg !5027

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5028

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5027
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5027
  %3 = bitcast i8* %add.ptr to %struct.amd_i2c_dev*, !dbg !5027
  store %struct.amd_i2c_dev* %3, %struct.amd_i2c_dev** %tmp, align 8, !dbg !5028
  %4 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %tmp, align 8, !dbg !5027
  store %struct.amd_i2c_dev* %4, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5024
  call void @llvm.dbg.declare(metadata %union.i2c_event** %event, metadata !5030, metadata !DIExpression()), !dbg !5032
  %5 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5033
  %eventval = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %5, i32 0, i32 0, !dbg !5034
  store %union.i2c_event* %eventval, %union.i2c_event** %event, align 8, !dbg !5032
  %6 = load %union.i2c_event*, %union.i2c_event** %event, align 8, !dbg !5035
  %r = bitcast %union.i2c_event* %6 to %struct.anon.65*, !dbg !5037
  %7 = bitcast %struct.anon.65* %r to i32*, !dbg !5038
  %bf.load = load i32, i32* %7, align 4, !dbg !5038
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !5038
  %bf.clear = and i32 %bf.lshr, 31, !dbg !5038
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !5039
  br i1 %cmp, label %if.then, label %if.end, !dbg !5040

if.then:                                          ; preds = %do.end
  br label %if.end, !dbg !5041

if.end:                                           ; preds = %if.then, %do.end
  %8 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5042
  %cmd_complete = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %8, i32 0, i32 3, !dbg !5043
  call void @complete(%struct.completion* %cmd_complete) #6, !dbg !5044
  ret void, !dbg !5045
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_amd_suspend(%struct.amd_i2c_common* %i2c_common) #2 !dbg !5046 {
entry:
  %i2c_common.addr = alloca %struct.amd_i2c_common*, align 8
  %i2c_dev = alloca %struct.amd_i2c_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.amd_i2c_dev*, align 8
  store %struct.amd_i2c_common* %i2c_common, %struct.amd_i2c_common** %i2c_common.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_common** %i2c_common.addr, metadata !5047, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_dev** %i2c_dev, metadata !5049, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5051, metadata !DIExpression()), !dbg !5053
  %0 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5053
  %1 = bitcast %struct.amd_i2c_common* %0 to i8*, !dbg !5053
  store i8* %1, i8** %__mptr, align 8, !dbg !5053
  br label %do.body, !dbg !5053

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5054

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5053
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5053
  %3 = bitcast i8* %add.ptr to %struct.amd_i2c_dev*, !dbg !5053
  store %struct.amd_i2c_dev* %3, %struct.amd_i2c_dev** %tmp, align 8, !dbg !5054
  %4 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %tmp, align 8, !dbg !5053
  store %struct.amd_i2c_dev* %4, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5050
  %5 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5056
  %call = call i32 @i2c_amd_enable_set(%struct.amd_i2c_dev* %5, i1 zeroext false) #6, !dbg !5057
  ret i32 0, !dbg !5058
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_amd_resume(%struct.amd_i2c_common* %i2c_common) #2 !dbg !5059 {
entry:
  %i2c_common.addr = alloca %struct.amd_i2c_common*, align 8
  %i2c_dev = alloca %struct.amd_i2c_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.amd_i2c_dev*, align 8
  store %struct.amd_i2c_common* %i2c_common, %struct.amd_i2c_common** %i2c_common.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_common** %i2c_common.addr, metadata !5060, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_dev** %i2c_dev, metadata !5062, metadata !DIExpression()), !dbg !5063
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5064, metadata !DIExpression()), !dbg !5066
  %0 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5066
  %1 = bitcast %struct.amd_i2c_common* %0 to i8*, !dbg !5066
  store i8* %1, i8** %__mptr, align 8, !dbg !5066
  br label %do.body, !dbg !5066

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5067

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5066
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5066
  %3 = bitcast i8* %add.ptr to %struct.amd_i2c_dev*, !dbg !5066
  store %struct.amd_i2c_dev* %3, %struct.amd_i2c_dev** %tmp, align 8, !dbg !5067
  %4 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %tmp, align 8, !dbg !5066
  store %struct.amd_i2c_dev* %4, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5063
  %5 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5069
  %call = call i32 @i2c_amd_enable_set(%struct.amd_i2c_dev* %5, i1 zeroext true) #6, !dbg !5070
  ret i32 %call, !dbg !5071
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @amd_mp2_pm_runtime_get(%struct.amd_mp2_dev* %mp2_dev) #2 !dbg !5072 {
entry:
  %mp2_dev.addr = alloca %struct.amd_mp2_dev*, align 8
  store %struct.amd_mp2_dev* %mp2_dev, %struct.amd_mp2_dev** %mp2_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_mp2_dev** %mp2_dev.addr, metadata !5075, metadata !DIExpression()), !dbg !5076
  %0 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev.addr, align 8, !dbg !5077
  %pci_dev = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %0, i32 0, i32 0, !dbg !5078
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5078
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 41, !dbg !5079
  %call = call i32 @pm_runtime_get_sync(%struct.device* %dev) #6, !dbg !5080
  ret void, !dbg !5081
}

; Function Attrs: noredzone
declare dso_local i32 @amd_mp2_register_cb(%struct.amd_i2c_common*) #1

; Function Attrs: noredzone
declare dso_local %struct.device_link* @device_link_add(%struct.device*, %struct.device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_amd_get_bus_speed(%struct.platform_device* %pdev) #2 !dbg !5082 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %acpi_speed = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.declare(metadata i32* %acpi_speed, metadata !5087, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5089, metadata !DIExpression()), !dbg !5090
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5091
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !5092
  %call = call i32 @i2c_acpi_find_bus_speed(%struct.device* %dev) #6, !dbg !5093
  store i32 %call, i32* %acpi_speed, align 4, !dbg !5094
  store i32 0, i32* %i, align 4, !dbg !5095
  br label %for.cond, !dbg !5097

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !5098
  %conv = sext i32 %1 to i64, !dbg !5098
  %cmp = icmp ult i64 %conv, 5, !dbg !5100
  br i1 %cmp, label %for.body, label %for.end, !dbg !5101

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %acpi_speed, align 4, !dbg !5102
  %3 = load i32, i32* %i, align 4, !dbg !5105
  %idxprom = sext i32 %3 to i64, !dbg !5106
  %arrayidx = getelementptr [5 x i32], [5 x i32]* @supported_speeds, i64 0, i64 %idxprom, !dbg !5106
  %4 = load i32, i32* %arrayidx, align 4, !dbg !5106
  %cmp2 = icmp uge i32 %2, %4, !dbg !5107
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5108

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5109

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5110

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4, !dbg !5111
  %inc = add i32 %5, 1, !dbg !5111
  store i32 %inc, i32* %i, align 4, !dbg !5111
  br label %for.cond, !dbg !5112, !llvm.loop !5113

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !5115
  %conv4 = sext i32 %6 to i64, !dbg !5115
  %cmp5 = icmp ult i64 %conv4, 5, !dbg !5116
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !5115

cond.true:                                        ; preds = %for.end
  %7 = load i32, i32* %i, align 4, !dbg !5117
  %idxprom7 = sext i32 %7 to i64, !dbg !5118
  %arrayidx8 = getelementptr [5 x i32], [5 x i32]* @supported_speeds, i64 0, i64 %idxprom7, !dbg !5118
  %8 = load i32, i32* %arrayidx8, align 4, !dbg !5118
  br label %cond.end, !dbg !5115

cond.false:                                       ; preds = %for.end
  br label %cond.end, !dbg !5115

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ 0, %cond.false ], !dbg !5115
  store i32 %cond, i32* %acpi_speed, align 4, !dbg !5119
  %9 = load i32, i32* %acpi_speed, align 4, !dbg !5120
  switch i32 %9, label %sw.default [
    i32 100000, label %sw.bb
    i32 400000, label %sw.bb9
    i32 1000000, label %sw.bb10
    i32 1400000, label %sw.bb11
    i32 3400000, label %sw.bb12
  ], !dbg !5121

sw.bb:                                            ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !5122
  br label %return, !dbg !5122

sw.bb9:                                           ; preds = %cond.end
  store i32 1, i32* %retval, align 4, !dbg !5124
  br label %return, !dbg !5124

sw.bb10:                                          ; preds = %cond.end
  store i32 2, i32* %retval, align 4, !dbg !5125
  br label %return, !dbg !5125

sw.bb11:                                          ; preds = %cond.end
  store i32 3, i32* %retval, align 4, !dbg !5126
  br label %return, !dbg !5126

sw.bb12:                                          ; preds = %cond.end
  store i32 4, i32* %retval, align 4, !dbg !5127
  br label %return, !dbg !5127

sw.default:                                       ; preds = %cond.end
  store i32 1, i32* %retval, align 4, !dbg !5128
  br label %return, !dbg !5128

return:                                           ; preds = %sw.default, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb
  %10 = load i32, i32* %retval, align 4, !dbg !5129
  ret i32 %10, !dbg !5129
}

; Function Attrs: noredzone
declare dso_local void @set_primary_fwnode(%struct.device*, %struct.fwnode_handle*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %adev) #2 !dbg !5130 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5135
  %fwnode = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 2, !dbg !5136
  ret %struct.fwnode_handle* %fwnode, !dbg !5137
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_adapdata(%struct.i2c_adapter* %adap, i8* %data) #2 !dbg !5138 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5145
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !5146
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5147
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !5148
  ret void, !dbg !5149
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #2 !dbg !4698 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !5152
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !5153
  store i32 0, i32* %done, align 8, !dbg !5154
  br label %do.body, !dbg !5155

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !5156
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !5156
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #6, !dbg !5156
  br label %do.end, !dbg !5156

do.end:                                           ; preds = %do.body
  ret void, !dbg !5158
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_amd_enable_set(%struct.amd_i2c_dev* %i2c_dev, i1 zeroext %enable) #2 !dbg !5159 {
entry:
  %i2c_dev.addr = alloca %struct.amd_i2c_dev*, align 8
  %enable.addr = alloca i8, align 1
  %i2c_common = alloca %struct.amd_i2c_common*, align 8
  store %struct.amd_i2c_dev* %i2c_dev, %struct.amd_i2c_dev** %i2c_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_dev** %i2c_dev.addr, metadata !5162, metadata !DIExpression()), !dbg !5163
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !5164, metadata !DIExpression()), !dbg !5165
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_common** %i2c_common, metadata !5166, metadata !DIExpression()), !dbg !5167
  %0 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev.addr, align 8, !dbg !5168
  %common = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %0, i32 0, i32 0, !dbg !5169
  store %struct.amd_i2c_common* %common, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5167
  %1 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev.addr, align 8, !dbg !5170
  call void @i2c_amd_start_cmd(%struct.amd_i2c_dev* %1) #6, !dbg !5171
  %2 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5172
  %3 = load i8, i8* %enable.addr, align 1, !dbg !5173
  %tobool = trunc i8 %3 to i1, !dbg !5173
  %call = call i32 @amd_mp2_bus_enable_set(%struct.amd_i2c_common* %2, i1 zeroext %tobool) #6, !dbg !5174
  %4 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev.addr, align 8, !dbg !5175
  %call1 = call i32 @i2c_amd_check_cmd_completion(%struct.amd_i2c_dev* %4) #6, !dbg !5176
  ret i32 %call1, !dbg !5177
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @amd_mp2_pm_runtime_put(%struct.amd_mp2_dev* %mp2_dev) #2 !dbg !5178 {
entry:
  %mp2_dev.addr = alloca %struct.amd_mp2_dev*, align 8
  store %struct.amd_mp2_dev* %mp2_dev, %struct.amd_mp2_dev** %mp2_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_mp2_dev** %mp2_dev.addr, metadata !5179, metadata !DIExpression()), !dbg !5180
  %0 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev.addr, align 8, !dbg !5181
  %pci_dev = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %0, i32 0, i32 0, !dbg !5182
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5182
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 41, !dbg !5183
  call void @pm_runtime_mark_last_busy(%struct.device* %dev) #6, !dbg !5184
  %2 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev.addr, align 8, !dbg !5185
  %pci_dev1 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %2, i32 0, i32 0, !dbg !5186
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev1, align 8, !dbg !5186
  %dev2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 41, !dbg !5187
  %call = call i32 @pm_runtime_put_autosuspend(%struct.device* %dev2) #6, !dbg !5188
  ret void, !dbg !5189
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5190 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5193, metadata !DIExpression()), !dbg !5194
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5195, metadata !DIExpression()), !dbg !5196
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5197
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5198
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5199
  store i8* %0, i8** %driver_data, align 8, !dbg !5200
  ret void, !dbg !5201
}

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #2 !dbg !5202 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5204, metadata !DIExpression()), !dbg !5205
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5206
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #6, !dbg !5207
  ret i32 %call, !dbg !5208
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @i2c_acpi_find_bus_speed(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_amd_xfer(%struct.i2c_adapter* %adap, %struct.i2c_msg* %msgs, i32 %num) #2 !dbg !5209 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %msgs.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %i2c_dev = alloca %struct.amd_i2c_dev*, align 8
  %i = alloca i32, align 4
  %pmsg = alloca %struct.i2c_msg*, align 8
  %err = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !5210, metadata !DIExpression()), !dbg !5211
  store %struct.i2c_msg* %msgs, %struct.i2c_msg** %msgs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msgs.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_dev** %i2c_dev, metadata !5216, metadata !DIExpression()), !dbg !5217
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5218
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #6, !dbg !5219
  %1 = bitcast i8* %call to %struct.amd_i2c_dev*, !dbg !5219
  store %struct.amd_i2c_dev* %1, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5217
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5220, metadata !DIExpression()), !dbg !5221
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %pmsg, metadata !5222, metadata !DIExpression()), !dbg !5223
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5224, metadata !DIExpression()), !dbg !5225
  store i32 0, i32* %err, align 4, !dbg !5225
  %2 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5226
  %common = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %2, i32 0, i32 0, !dbg !5226
  %mp2_dev = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %common, i32 0, i32 1, !dbg !5226
  %3 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev, align 8, !dbg !5226
  %tobool = icmp ne %struct.amd_mp2_dev* %3, null, !dbg !5226
  %lnot = xor i1 %tobool, true, !dbg !5226
  %lnot1 = xor i1 %lnot, true, !dbg !5226
  %lnot2 = xor i1 %lnot1, true, !dbg !5226
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5226
  %conv = sext i32 %lnot.ext to i64, !dbg !5226
  %tobool3 = icmp ne i64 %conv, 0, !dbg !5226
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5228

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5229
  br label %return, !dbg !5229

if.end:                                           ; preds = %entry
  %4 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5230
  %common4 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %4, i32 0, i32 0, !dbg !5231
  %mp2_dev5 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %common4, i32 0, i32 1, !dbg !5232
  %5 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev5, align 8, !dbg !5232
  call void @amd_mp2_pm_runtime_get(%struct.amd_mp2_dev* %5) #6, !dbg !5233
  store i32 0, i32* %i, align 4, !dbg !5234
  br label %for.cond, !dbg !5236

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !dbg !5237
  %7 = load i32, i32* %num.addr, align 4, !dbg !5239
  %cmp = icmp slt i32 %6, %7, !dbg !5240
  br i1 %cmp, label %for.body, label %for.end, !dbg !5241

for.body:                                         ; preds = %for.cond
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !5242
  %9 = load i32, i32* %i, align 4, !dbg !5244
  %idxprom = sext i32 %9 to i64, !dbg !5242
  %arrayidx = getelementptr %struct.i2c_msg, %struct.i2c_msg* %8, i64 %idxprom, !dbg !5242
  store %struct.i2c_msg* %arrayidx, %struct.i2c_msg** %pmsg, align 8, !dbg !5245
  %10 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5246
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !5247
  %call7 = call i32 @i2c_amd_xfer_msg(%struct.amd_i2c_dev* %10, %struct.i2c_msg* %11) #6, !dbg !5248
  store i32 %call7, i32* %err, align 4, !dbg !5249
  %12 = load i32, i32* %err, align 4, !dbg !5250
  %tobool8 = icmp ne i32 %12, 0, !dbg !5250
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5252

if.then9:                                         ; preds = %for.body
  br label %for.end, !dbg !5253

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !5254

for.inc:                                          ; preds = %if.end10
  %13 = load i32, i32* %i, align 4, !dbg !5255
  %inc = add i32 %13, 1, !dbg !5255
  store i32 %inc, i32* %i, align 4, !dbg !5255
  br label %for.cond, !dbg !5256, !llvm.loop !5257

for.end:                                          ; preds = %if.then9, %for.cond
  %14 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5259
  %common11 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %14, i32 0, i32 0, !dbg !5260
  %mp2_dev12 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %common11, i32 0, i32 1, !dbg !5261
  %15 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev12, align 8, !dbg !5261
  call void @amd_mp2_pm_runtime_put(%struct.amd_mp2_dev* %15) #6, !dbg !5262
  %16 = load i32, i32* %err, align 4, !dbg !5263
  %tobool13 = icmp ne i32 %16, 0, !dbg !5263
  br i1 %tobool13, label %cond.true, label %cond.false, !dbg !5263

cond.true:                                        ; preds = %for.end
  %17 = load i32, i32* %err, align 4, !dbg !5264
  br label %cond.end, !dbg !5263

cond.false:                                       ; preds = %for.end
  %18 = load i32, i32* %num.addr, align 4, !dbg !5265
  br label %cond.end, !dbg !5263

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !5263
  store i32 %cond, i32* %retval, align 4, !dbg !5266
  br label %return, !dbg !5266

return:                                           ; preds = %cond.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5267
  ret i32 %19, !dbg !5267
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_amd_func(%struct.i2c_adapter* %a) #2 !dbg !5268 {
entry:
  %a.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %a, %struct.i2c_adapter** %a.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %a.addr, metadata !5269, metadata !DIExpression()), !dbg !5270
  ret i32 251592713, !dbg !5271
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_adapdata(%struct.i2c_adapter* %adap) #2 !dbg !5272 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5279
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !5280
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !5281
  ret i8* %call, !dbg !5282
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_amd_xfer_msg(%struct.amd_i2c_dev* %i2c_dev, %struct.i2c_msg* %pmsg) #2 !dbg !5283 {
entry:
  %retval = alloca i32, align 4
  %i2c_dev.addr = alloca %struct.amd_i2c_dev*, align 8
  %pmsg.addr = alloca %struct.i2c_msg*, align 8
  %i2c_common = alloca %struct.amd_i2c_common*, align 8
  store %struct.amd_i2c_dev* %i2c_dev, %struct.amd_i2c_dev** %i2c_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_dev** %i2c_dev.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  store %struct.i2c_msg* %pmsg, %struct.i2c_msg** %pmsg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %pmsg.addr, metadata !5288, metadata !DIExpression()), !dbg !5289
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_common** %i2c_common, metadata !5290, metadata !DIExpression()), !dbg !5291
  %0 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev.addr, align 8, !dbg !5292
  %common = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %0, i32 0, i32 0, !dbg !5293
  store %struct.amd_i2c_common* %common, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5291
  %1 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev.addr, align 8, !dbg !5294
  call void @i2c_amd_start_cmd(%struct.amd_i2c_dev* %1) #6, !dbg !5295
  %2 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg.addr, align 8, !dbg !5296
  %3 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5297
  %msg = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %3, i32 0, i32 2, !dbg !5298
  store %struct.i2c_msg* %2, %struct.i2c_msg** %msg, align 8, !dbg !5299
  %4 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg.addr, align 8, !dbg !5300
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 2, !dbg !5302
  %5 = load i16, i16* %len, align 4, !dbg !5302
  %conv = zext i16 %5 to i32, !dbg !5300
  %cmp = icmp sgt i32 %conv, 32, !dbg !5303
  br i1 %cmp, label %if.then, label %if.end3, !dbg !5304

if.then:                                          ; preds = %entry
  %6 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5305
  %call = call i32 @i2c_amd_dma_map(%struct.amd_i2c_common* %6) #6, !dbg !5307
  %tobool = icmp ne i32 %call, 0, !dbg !5307
  br i1 %tobool, label %if.then2, label %if.end, !dbg !5308

if.then2:                                         ; preds = %if.then
  store i32 -5, i32* %retval, align 4, !dbg !5309
  br label %return, !dbg !5309

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !5310

if.end3:                                          ; preds = %if.end, %entry
  %7 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg.addr, align 8, !dbg !5311
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1, !dbg !5313
  %8 = load i16, i16* %flags, align 2, !dbg !5313
  %conv4 = zext i16 %8 to i32, !dbg !5311
  %and = and i32 %conv4, 1, !dbg !5314
  %tobool5 = icmp ne i32 %and, 0, !dbg !5314
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !5315

if.then6:                                         ; preds = %if.end3
  %9 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5316
  %call7 = call i32 @amd_mp2_rw(%struct.amd_i2c_common* %9, i32 0) #6, !dbg !5317
  br label %if.end9, !dbg !5317

if.else:                                          ; preds = %if.end3
  %10 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5318
  %call8 = call i32 @amd_mp2_rw(%struct.amd_i2c_common* %10, i32 1) #6, !dbg !5319
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %11 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev.addr, align 8, !dbg !5320
  %call10 = call i32 @i2c_amd_check_cmd_completion(%struct.amd_i2c_dev* %11) #6, !dbg !5321
  store i32 %call10, i32* %retval, align 4, !dbg !5322
  br label %return, !dbg !5322

return:                                           ; preds = %if.end9, %if.then2
  %12 = load i32, i32* %retval, align 4, !dbg !5323
  ret i32 %12, !dbg !5323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5324 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5329
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5330
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5330
  ret i8* %1, !dbg !5331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_amd_start_cmd(%struct.amd_i2c_dev* %i2c_dev) #2 !dbg !5332 {
entry:
  %i2c_dev.addr = alloca %struct.amd_i2c_dev*, align 8
  %i2c_common = alloca %struct.amd_i2c_common*, align 8
  store %struct.amd_i2c_dev* %i2c_dev, %struct.amd_i2c_dev** %i2c_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_dev** %i2c_dev.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_common** %i2c_common, metadata !5337, metadata !DIExpression()), !dbg !5338
  %0 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev.addr, align 8, !dbg !5339
  %common = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %0, i32 0, i32 0, !dbg !5340
  store %struct.amd_i2c_common* %common, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5338
  %1 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev.addr, align 8, !dbg !5341
  %cmd_complete = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %1, i32 0, i32 3, !dbg !5342
  call void @reinit_completion(%struct.completion* %cmd_complete) #6, !dbg !5343
  %2 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5344
  %cmd_success = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %2, i32 0, i32 5, !dbg !5345
  store i8 0, i8* %cmd_success, align 4, !dbg !5346
  ret void, !dbg !5347
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_amd_dma_map(%struct.amd_i2c_common* %i2c_common) #2 !dbg !5348 {
entry:
  %retval = alloca i32, align 4
  %i2c_common.addr = alloca %struct.amd_i2c_common*, align 8
  %dev_pci = alloca %struct.device*, align 8
  %i2c_dev = alloca %struct.amd_i2c_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.amd_i2c_dev*, align 8
  %dma_direction = alloca i32, align 4
  store %struct.amd_i2c_common* %i2c_common, %struct.amd_i2c_common** %i2c_common.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_common** %i2c_common.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.declare(metadata %struct.device** %dev_pci, metadata !5351, metadata !DIExpression()), !dbg !5352
  %0 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5353
  %mp2_dev = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %0, i32 0, i32 1, !dbg !5354
  %1 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev, align 8, !dbg !5354
  %pci_dev = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %1, i32 0, i32 0, !dbg !5355
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5355
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 41, !dbg !5356
  store %struct.device* %dev, %struct.device** %dev_pci, align 8, !dbg !5352
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_dev** %i2c_dev, metadata !5357, metadata !DIExpression()), !dbg !5358
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5359, metadata !DIExpression()), !dbg !5361
  %3 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5361
  %4 = bitcast %struct.amd_i2c_common* %3 to i8*, !dbg !5361
  store i8* %4, i8** %__mptr, align 8, !dbg !5361
  br label %do.body, !dbg !5361

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5362

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !5361
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !5361
  %6 = bitcast i8* %add.ptr to %struct.amd_i2c_dev*, !dbg !5361
  store %struct.amd_i2c_dev* %6, %struct.amd_i2c_dev** %tmp, align 8, !dbg !5362
  %7 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %tmp, align 8, !dbg !5361
  store %struct.amd_i2c_dev* %7, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5358
  call void @llvm.dbg.declare(metadata i32* %dma_direction, metadata !5364, metadata !DIExpression()), !dbg !5365
  %8 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5366
  %msg = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %8, i32 0, i32 2, !dbg !5367
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %msg, align 8, !dbg !5367
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1, !dbg !5368
  %10 = load i16, i16* %flags, align 2, !dbg !5368
  %conv = zext i16 %10 to i32, !dbg !5366
  %and = and i32 %conv, 1, !dbg !5369
  %tobool = icmp ne i32 %and, 0, !dbg !5366
  %11 = zext i1 %tobool to i64, !dbg !5366
  %cond = select i1 %tobool, i32 2, i32 1, !dbg !5366
  store i32 %cond, i32* %dma_direction, align 4, !dbg !5365
  %12 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5370
  %msg1 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %12, i32 0, i32 2, !dbg !5371
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %msg1, align 8, !dbg !5371
  %call = call i8* @i2c_get_dma_safe_msg_buf(%struct.i2c_msg* %13, i32 0) #6, !dbg !5372
  %14 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5373
  %dma_buf = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %14, i32 0, i32 8, !dbg !5374
  store i8* %call, i8** %dma_buf, align 8, !dbg !5375
  %15 = load %struct.device*, %struct.device** %dev_pci, align 8, !dbg !5376
  %16 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5376
  %dma_buf2 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %16, i32 0, i32 8, !dbg !5376
  %17 = load i8*, i8** %dma_buf2, align 8, !dbg !5376
  %18 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5376
  %msg3 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %18, i32 0, i32 2, !dbg !5376
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %msg3, align 8, !dbg !5376
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2, !dbg !5376
  %20 = load i16, i16* %len, align 4, !dbg !5376
  %conv4 = zext i16 %20 to i64, !dbg !5376
  %21 = load i32, i32* %dma_direction, align 4, !dbg !5376
  %call5 = call i64 @dma_map_single_attrs(%struct.device* %15, i8* %17, i64 %conv4, i32 %21, i64 0) #6, !dbg !5376
  %22 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5377
  %dma_addr = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %22, i32 0, i32 9, !dbg !5378
  store i64 %call5, i64* %dma_addr, align 8, !dbg !5379
  %23 = load %struct.device*, %struct.device** %dev_pci, align 8, !dbg !5380
  %24 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5380
  %dma_addr6 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %24, i32 0, i32 9, !dbg !5380
  %25 = load i64, i64* %dma_addr6, align 8, !dbg !5380
  %call7 = call i32 @dma_mapping_error(%struct.device* %23, i64 %25) #6, !dbg !5380
  %tobool8 = icmp ne i32 %call7, 0, !dbg !5380
  %lnot = xor i1 %tobool8, true, !dbg !5380
  %lnot9 = xor i1 %lnot, true, !dbg !5380
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !5380
  %conv10 = sext i32 %lnot.ext to i64, !dbg !5380
  %tobool11 = icmp ne i64 %conv10, 0, !dbg !5380
  br i1 %tobool11, label %if.then, label %if.end, !dbg !5382

if.then:                                          ; preds = %do.end
  %26 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev, align 8, !dbg !5383
  %pdev = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %26, i32 0, i32 1, !dbg !5383
  %27 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !5383
  %dev12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 3, !dbg !5383
  %28 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5383
  %dma_buf13 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %28, i32 0, i32 8, !dbg !5383
  %29 = load i8*, i8** %dma_buf13, align 8, !dbg !5383
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %29) #7, !dbg !5383
  store i32 -5, i32* %retval, align 4, !dbg !5385
  br label %return, !dbg !5385

if.end:                                           ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5386
  br label %return, !dbg !5386

return:                                           ; preds = %if.end, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !5387
  ret i32 %30, !dbg !5387
}

; Function Attrs: noredzone
declare dso_local i32 @amd_mp2_rw(%struct.amd_i2c_common*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_amd_check_cmd_completion(%struct.amd_i2c_dev* %i2c_dev) #2 !dbg !5388 {
entry:
  %retval = alloca i32, align 4
  %i2c_dev.addr = alloca %struct.amd_i2c_dev*, align 8
  %i2c_common = alloca %struct.amd_i2c_common*, align 8
  %timeout = alloca i64, align 8
  store %struct.amd_i2c_dev* %i2c_dev, %struct.amd_i2c_dev** %i2c_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_dev** %i2c_dev.addr, metadata !5391, metadata !DIExpression()), !dbg !5392
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_common** %i2c_common, metadata !5393, metadata !DIExpression()), !dbg !5394
  %0 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev.addr, align 8, !dbg !5395
  %common = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %0, i32 0, i32 0, !dbg !5396
  store %struct.amd_i2c_common* %common, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5394
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !5397, metadata !DIExpression()), !dbg !5398
  %1 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev.addr, align 8, !dbg !5399
  %cmd_complete = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %1, i32 0, i32 3, !dbg !5400
  %2 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %i2c_dev.addr, align 8, !dbg !5401
  %adap = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %2, i32 0, i32 2, !dbg !5402
  %timeout1 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap, i32 0, i32 7, !dbg !5403
  %3 = load i32, i32* %timeout1, align 8, !dbg !5403
  %conv = sext i32 %3 to i64, !dbg !5401
  %call = call i64 @wait_for_completion_timeout(%struct.completion* %cmd_complete, i64 %conv) #6, !dbg !5404
  store i64 %call, i64* %timeout, align 8, !dbg !5405
  %4 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5406
  %reqcmd = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %4, i32 0, i32 4, !dbg !5408
  %5 = load i32, i32* %reqcmd, align 8, !dbg !5408
  %cmp = icmp eq i32 %5, 0, !dbg !5409
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !5410

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5411
  %reqcmd3 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %6, i32 0, i32 4, !dbg !5412
  %7 = load i32, i32* %reqcmd3, align 8, !dbg !5412
  %cmp4 = icmp eq i32 %7, 1, !dbg !5413
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !5414

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %8 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5415
  %msg = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %8, i32 0, i32 2, !dbg !5416
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %msg, align 8, !dbg !5416
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2, !dbg !5417
  %10 = load i16, i16* %len, align 4, !dbg !5417
  %conv6 = zext i16 %10 to i32, !dbg !5415
  %cmp7 = icmp sgt i32 %conv6, 32, !dbg !5418
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5419

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5420
  call void @i2c_amd_dma_unmap(%struct.amd_i2c_common* %11) #6, !dbg !5421
  br label %if.end, !dbg !5421

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %12 = load i64, i64* %timeout, align 8, !dbg !5422
  %cmp9 = icmp eq i64 %12, 0, !dbg !5424
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5425

if.then11:                                        ; preds = %if.end
  %13 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5426
  call void @amd_mp2_rw_timeout(%struct.amd_i2c_common* %13) #6, !dbg !5428
  store i32 -110, i32* %retval, align 4, !dbg !5429
  br label %return, !dbg !5429

if.end12:                                         ; preds = %if.end
  %14 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5430
  call void @amd_mp2_process_event(%struct.amd_i2c_common* %14) #6, !dbg !5431
  %15 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common, align 8, !dbg !5432
  %cmd_success = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %15, i32 0, i32 5, !dbg !5434
  %16 = load i8, i8* %cmd_success, align 4, !dbg !5434
  %tobool = icmp ne i8 %16, 0, !dbg !5432
  br i1 %tobool, label %if.end14, label %if.then13, !dbg !5435

if.then13:                                        ; preds = %if.end12
  store i32 -5, i32* %retval, align 4, !dbg !5436
  br label %return, !dbg !5436

if.end14:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !5437
  br label %return, !dbg !5437

return:                                           ; preds = %if.end14, %if.then13, %if.then11
  %17 = load i32, i32* %retval, align 4, !dbg !5438
  ret i32 %17, !dbg !5438
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @reinit_completion(%struct.completion* %x) #2 !dbg !5439 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !5442
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !5443
  store i32 0, i32* %done, align 8, !dbg !5444
  ret void, !dbg !5445
}

; Function Attrs: noredzone
declare dso_local i8* @i2c_get_dma_safe_msg_buf(%struct.i2c_msg*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @dma_map_single_attrs(%struct.device* %dev, i8* %ptr, i64 %size, i32 %dir, i64 %attrs) #2 !dbg !4690 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  %__ret_warn_once = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp39 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5448, metadata !DIExpression()), !dbg !5449
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_once, metadata !5456, metadata !DIExpression()), !dbg !5459
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5459
  %call = call zeroext i1 @is_vmalloc_addr(i8* %0) #6, !dbg !5459
  %lnot = xor i1 %call, true, !dbg !5459
  %lnot1 = xor i1 %lnot, true, !dbg !5459
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5459
  store i32 %lnot.ext, i32* %__ret_warn_once, align 4, !dbg !5459
  %1 = load i32, i32* %__ret_warn_once, align 4, !dbg !5460
  %tobool = icmp ne i32 %1, 0, !dbg !5460
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5460

land.rhs:                                         ; preds = %entry
  %2 = load i8, i8* @dma_map_single_attrs.__warned, align 1, !dbg !5460
  %tobool2 = trunc i8 %2 to i1, !dbg !5460
  %lnot3 = xor i1 %tobool2, true, !dbg !5460
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !5462
  %lnot5 = xor i1 %3, true, !dbg !5460
  %lnot7 = xor i1 %lnot5, true, !dbg !5460
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5460
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5460
  %tobool9 = icmp ne i64 %conv, 0, !dbg !5460
  br i1 %tobool9, label %if.then, label %if.end38, !dbg !5459

if.then:                                          ; preds = %land.end
  store i8 1, i8* @dma_map_single_attrs.__warned, align 1, !dbg !5463
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5465, metadata !DIExpression()), !dbg !5467
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5467
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !5468
  %tobool10 = icmp ne i32 %4, 0, !dbg !5468
  %lnot11 = xor i1 %tobool10, true, !dbg !5468
  %lnot13 = xor i1 %lnot11, true, !dbg !5468
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !5468
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !5468
  %tobool16 = icmp ne i64 %conv15, 0, !dbg !5468
  br i1 %tobool16, label %if.then17, label %if.end, !dbg !5467

if.then17:                                        ; preds = %if.then
  br label %do.body, !dbg !5468

do.body:                                          ; preds = %if.then17
  br label %do.body18, !dbg !5470

do.body18:                                        ; preds = %do.body
  br label %do.end, !dbg !5472

do.end:                                           ; preds = %do.body18
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5470
  %call19 = call i8* @dev_driver_string(%struct.device* %5) #6, !dbg !5470
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5470
  %call20 = call i8* @dev_name(%struct.device* %6) #6, !dbg !5470
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %call19, i8* %call20) #6, !dbg !5470
  br label %do.body21, !dbg !5470

do.body21:                                        ; preds = %do.end
  br label %do.body22, !dbg !5474

do.body22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5476

do.end23:                                         ; preds = %do.body22
  br label %do.body24, !dbg !5474

do.body24:                                        ; preds = %do.end23
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 276, i32 2313, i64 12) #8, !dbg !5478, !srcloc !5480
  br label %do.end25, !dbg !5478

do.end25:                                         ; preds = %do.body24
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 237) #8, !dbg !5481, !srcloc !5483
  br label %do.body26, !dbg !5474

do.body26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !5484

do.end27:                                         ; preds = %do.body26
  br label %do.end28, !dbg !5474

do.end28:                                         ; preds = %do.end27
  br label %do.body29, !dbg !5470

do.body29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !5486

do.end30:                                         ; preds = %do.body29
  br label %do.end31, !dbg !5470

do.end31:                                         ; preds = %do.end30
  br label %if.end, !dbg !5470

if.end:                                           ; preds = %do.end31, %if.then
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !5467
  %tobool32 = icmp ne i32 %7, 0, !dbg !5467
  %lnot33 = xor i1 %tobool32, true, !dbg !5467
  %lnot35 = xor i1 %lnot33, true, !dbg !5467
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !5467
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !5467
  store i64 %conv37, i64* %tmp, align 8, !dbg !5468
  %8 = load i64, i64* %tmp, align 8, !dbg !5467
  br label %if.end38, !dbg !5463

if.end38:                                         ; preds = %if.end, %land.end
  %9 = load i32, i32* %__ret_warn_once, align 4, !dbg !5459
  %tobool40 = icmp ne i32 %9, 0, !dbg !5459
  %lnot41 = xor i1 %tobool40, true, !dbg !5459
  %lnot43 = xor i1 %lnot41, true, !dbg !5459
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !5459
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !5459
  store i64 %conv45, i64* %tmp39, align 8, !dbg !5460
  %10 = load i64, i64* %tmp39, align 8, !dbg !5459
  %tobool46 = icmp ne i64 %10, 0, !dbg !5488
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !5489

if.then47:                                        ; preds = %if.end38
  store i64 -1, i64* %retval, align 8, !dbg !5490
  br label %return, !dbg !5490

if.end48:                                         ; preds = %if.end38
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5491
  %12 = load i8*, i8** %ptr.addr, align 8, !dbg !5492
  %13 = load i64, i64* %size.addr, align 8, !dbg !5493
  call void @debug_dma_map_single(%struct.device* %11, i8* %12, i64 %13) #6, !dbg !5494
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5495
  %15 = load i64, i64* @vmemmap_base, align 8, !dbg !5496
  %16 = inttoptr i64 %15 to %struct.page*, !dbg !5496
  %17 = load i8*, i8** %ptr.addr, align 8, !dbg !5496
  %18 = ptrtoint i8* %17 to i64, !dbg !5496
  %call49 = call i64 @__phys_addr_nodebug(i64 %18) #6, !dbg !5496
  %shr = lshr i64 %call49, 12, !dbg !5496
  %add.ptr = getelementptr %struct.page, %struct.page* %16, i64 %shr, !dbg !5496
  %19 = load i8*, i8** %ptr.addr, align 8, !dbg !5497
  %20 = ptrtoint i8* %19 to i64, !dbg !5497
  %and = and i64 %20, 4095, !dbg !5497
  %21 = load i64, i64* %size.addr, align 8, !dbg !5498
  %22 = load i32, i32* %dir.addr, align 4, !dbg !5499
  %23 = load i64, i64* %attrs.addr, align 8, !dbg !5500
  %call50 = call i64 @dma_map_page_attrs(%struct.device* %14, %struct.page* %add.ptr, i64 %and, i64 %21, i32 %22, i64 %23) #6, !dbg !5501
  store i64 %call50, i64* %retval, align 8, !dbg !5502
  br label %return, !dbg !5502

return:                                           ; preds = %if.end48, %if.then47
  %24 = load i64, i64* %retval, align 8, !dbg !5503
  ret i64 %24, !dbg !5503
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_mapping_error(%struct.device* %dev, i64 %dma_addr) #2 !dbg !5504 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5507, metadata !DIExpression()), !dbg !5508
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !5509, metadata !DIExpression()), !dbg !5510
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5511
  %1 = load i64, i64* %dma_addr.addr, align 8, !dbg !5512
  call void @debug_dma_mapping_error(%struct.device* %0, i64 %1) #6, !dbg !5513
  %2 = load i64, i64* %dma_addr.addr, align 8, !dbg !5514
  %cmp = icmp eq i64 %2, -1, !dbg !5516
  br i1 %cmp, label %if.then, label %if.end, !dbg !5517

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5518
  br label %return, !dbg !5518

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5519
  br label %return, !dbg !5519

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5520
  ret i32 %3, !dbg !5520
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_vmalloc_addr(i8*) #1

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i8* @dev_driver_string(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #2 !dbg !5521 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5524, metadata !DIExpression()), !dbg !5525
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5526
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5528
  %1 = load i8*, i8** %init_name, align 8, !dbg !5528
  %tobool = icmp ne i8* %1, null, !dbg !5526
  br i1 %tobool, label %if.then, label %if.end, !dbg !5529

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5530
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5531
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5531
  store i8* %3, i8** %retval, align 8, !dbg !5532
  br label %return, !dbg !5532

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5533
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5534
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #6, !dbg !5535
  store i8* %call, i8** %retval, align 8, !dbg !5536
  br label %return, !dbg !5536

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5537
  ret i8* %5, !dbg !5537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @debug_dma_map_single(%struct.device* %dev, i8* %addr, i64 %len) #2 !dbg !5538 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %addr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5545, metadata !DIExpression()), !dbg !5546
  ret void, !dbg !5547
}

; Function Attrs: noredzone
declare dso_local i64 @dma_map_page_attrs(%struct.device*, %struct.page*, i64, i64, i32, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #2 !dbg !5548 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !5552, metadata !DIExpression()), !dbg !5553
  call void @llvm.dbg.declare(metadata i64* %y, metadata !5554, metadata !DIExpression()), !dbg !5555
  %0 = load i64, i64* %x.addr, align 8, !dbg !5556
  %sub = sub i64 %0, -2147483648, !dbg !5557
  store i64 %sub, i64* %y, align 8, !dbg !5555
  %1 = load i64, i64* %y, align 8, !dbg !5558
  %2 = load i64, i64* %x.addr, align 8, !dbg !5559
  %3 = load i64, i64* %y, align 8, !dbg !5560
  %cmp = icmp ugt i64 %2, %3, !dbg !5561
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5562

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !5563
  br label %cond.end, !dbg !5562

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !5564
  %sub1 = sub i64 -2147483648, %5, !dbg !5565
  br label %cond.end, !dbg !5562

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5562
  %add = add i64 %1, %cond, !dbg !5566
  store i64 %add, i64* %x.addr, align 8, !dbg !5567
  %6 = load i64, i64* %x.addr, align 8, !dbg !5568
  ret i64 %6, !dbg !5569
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #2 !dbg !5570 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5575, metadata !DIExpression()), !dbg !5576
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5577
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5578
  %1 = load i8*, i8** %name, align 8, !dbg !5578
  ret i8* %1, !dbg !5579
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @debug_dma_mapping_error(%struct.device* %dev, i64 %dma_addr) #2 !dbg !5580 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5583, metadata !DIExpression()), !dbg !5584
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  ret void, !dbg !5587
}

; Function Attrs: noredzone
declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_amd_dma_unmap(%struct.amd_i2c_common* %i2c_common) #2 !dbg !5588 {
entry:
  %i2c_common.addr = alloca %struct.amd_i2c_common*, align 8
  %dev_pci = alloca %struct.device*, align 8
  %dma_direction = alloca i32, align 4
  store %struct.amd_i2c_common* %i2c_common, %struct.amd_i2c_common** %i2c_common.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_i2c_common** %i2c_common.addr, metadata !5589, metadata !DIExpression()), !dbg !5590
  call void @llvm.dbg.declare(metadata %struct.device** %dev_pci, metadata !5591, metadata !DIExpression()), !dbg !5592
  %0 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5593
  %mp2_dev = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %0, i32 0, i32 1, !dbg !5594
  %1 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %mp2_dev, align 8, !dbg !5594
  %pci_dev = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %1, i32 0, i32 0, !dbg !5595
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pci_dev, align 8, !dbg !5595
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 41, !dbg !5596
  store %struct.device* %dev, %struct.device** %dev_pci, align 8, !dbg !5592
  call void @llvm.dbg.declare(metadata i32* %dma_direction, metadata !5597, metadata !DIExpression()), !dbg !5598
  %3 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5599
  %msg = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %3, i32 0, i32 2, !dbg !5600
  %4 = load %struct.i2c_msg*, %struct.i2c_msg** %msg, align 8, !dbg !5600
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1, !dbg !5601
  %5 = load i16, i16* %flags, align 2, !dbg !5601
  %conv = zext i16 %5 to i32, !dbg !5599
  %and = and i32 %conv, 1, !dbg !5602
  %tobool = icmp ne i32 %and, 0, !dbg !5599
  %6 = zext i1 %tobool to i64, !dbg !5599
  %cond = select i1 %tobool, i32 2, i32 1, !dbg !5599
  store i32 %cond, i32* %dma_direction, align 4, !dbg !5598
  %7 = load %struct.device*, %struct.device** %dev_pci, align 8, !dbg !5603
  %8 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5603
  %dma_addr = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %8, i32 0, i32 9, !dbg !5603
  %9 = load i64, i64* %dma_addr, align 8, !dbg !5603
  %10 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5603
  %msg1 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %10, i32 0, i32 2, !dbg !5603
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %msg1, align 8, !dbg !5603
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2, !dbg !5603
  %12 = load i16, i16* %len, align 4, !dbg !5603
  %conv2 = zext i16 %12 to i64, !dbg !5603
  %13 = load i32, i32* %dma_direction, align 4, !dbg !5603
  call void @dma_unmap_single_attrs(%struct.device* %7, i64 %9, i64 %conv2, i32 %13, i64 0) #6, !dbg !5603
  %14 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5604
  %dma_buf = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %14, i32 0, i32 8, !dbg !5605
  %15 = load i8*, i8** %dma_buf, align 8, !dbg !5605
  %16 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %i2c_common.addr, align 8, !dbg !5606
  %msg3 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %16, i32 0, i32 2, !dbg !5607
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %msg3, align 8, !dbg !5607
  call void @i2c_put_dma_safe_msg_buf(i8* %15, %struct.i2c_msg* %17, i1 zeroext true) #6, !dbg !5608
  ret void, !dbg !5609
}

; Function Attrs: noredzone
declare dso_local void @amd_mp2_rw_timeout(%struct.amd_i2c_common*) #1

; Function Attrs: noredzone
declare dso_local void @amd_mp2_process_event(%struct.amd_i2c_common*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_unmap_single_attrs(%struct.device* %dev, i64 %addr, i64 %size, i32 %dir, i64 %attrs) #2 !dbg !5610 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5613, metadata !DIExpression()), !dbg !5614
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !5615, metadata !DIExpression()), !dbg !5616
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5617, metadata !DIExpression()), !dbg !5618
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !5619, metadata !DIExpression()), !dbg !5620
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !5621, metadata !DIExpression()), !dbg !5622
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5623
  %1 = load i64, i64* %addr.addr, align 8, !dbg !5624
  %2 = load i64, i64* %size.addr, align 8, !dbg !5625
  %3 = load i32, i32* %dir.addr, align 4, !dbg !5626
  %4 = load i64, i64* %attrs.addr, align 8, !dbg !5627
  call void @dma_unmap_page_attrs(%struct.device* %0, i64 %1, i64 %2, i32 %3, i64 %4) #6, !dbg !5628
  ret void, !dbg !5629
}

; Function Attrs: noredzone
declare dso_local void @i2c_put_dma_safe_msg_buf(i8*, %struct.i2c_msg*, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local void @dma_unmap_page_attrs(%struct.device*, i64, i64, i32, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #2 !dbg !5630 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5631, metadata !DIExpression()), !dbg !5632
  %0 = load i32, i32* %m.addr, align 4, !dbg !5633
  %conv = zext i32 %0 to i64, !dbg !5633
  %add = add i64 %conv, 4, !dbg !5634
  %sub = sub i64 %add, 1, !dbg !5635
  %div = sdiv i64 %sub, 4, !dbg !5636
  ret i64 %div, !dbg !5637
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #1

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local i32 @amd_mp2_bus_enable_set(%struct.amd_i2c_common*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_mark_last_busy(%struct.device* %dev) #2 !dbg !5638 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5639, metadata !DIExpression()), !dbg !5640
  br label %do.body, !dbg !5641

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5642

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5644

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5642

do.body2:                                         ; preds = %do.end
  %call = call i64 @ktime_get_mono_fast_ns() #6, !dbg !5646
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5646
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !5646
  %last_busy = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 21, !dbg !5646
  store volatile i64 %call, i64* %last_busy, align 8, !dbg !5646
  br label %do.end3, !dbg !5646

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5642

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !5648
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put_autosuspend(%struct.device* %dev) #2 !dbg !5649 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5650, metadata !DIExpression()), !dbg !5651
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5652
  %call = call i32 @__pm_runtime_suspend(%struct.device* %0, i32 13) #6, !dbg !5653
  ret i32 %call, !dbg !5654
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get_mono_fast_ns() #1

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_suspend(%struct.device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !5655 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !5660, metadata !DIExpression()), !dbg !5661
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5662
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !5663
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !5664
  ret i8* %call, !dbg !5665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_lock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #2 !dbg !5666 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !5667, metadata !DIExpression()), !dbg !5668
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5669, metadata !DIExpression()), !dbg !5670
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5671
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !5672
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !5672
  %lock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 0, !dbg !5673
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %lock_bus, align 8, !dbg !5673
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5674
  %4 = load i32, i32* %flags.addr, align 4, !dbg !5675
  call void %2(%struct.i2c_adapter* %3, i32 %4) #6, !dbg !5671
  ret void, !dbg !5676
}

; Function Attrs: noredzone
declare dso_local i32 @amd_mp2_unregister_cb(%struct.amd_i2c_common*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_unlock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #2 !dbg !5677 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !5678, metadata !DIExpression()), !dbg !5679
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5680, metadata !DIExpression()), !dbg !5681
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5682
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !5683
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !5683
  %unlock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 2, !dbg !5684
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %unlock_bus, align 8, !dbg !5684
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5685
  %4 = load i32, i32* %flags.addr, align 4, !dbg !5686
  call void %2(%struct.i2c_adapter* %3, i32 %4) #6, !dbg !5682
  ret void, !dbg !5687
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_adapter(%struct.i2c_adapter*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4704, !4705, !4706, !4707}
!llvm.ident = !{!4708}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_i2c_amd_plat_driver_init247", scope: !2, file: !3, line: 367, type: !167, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !163, globals: !4634, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/i2c/busses/i2c-amd-mp2-plat.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !113, !131, !135, !144, !151, !156}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !14, line: 546, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !20, line: 65, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !25, line: 16, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !31, line: 59, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !38, line: 54, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !44, line: 296, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48, !49, !50, !51}
!46 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!50 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!51 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !53, line: 9, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!58 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!59 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !61, line: 26, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "response_type", file: !108, line: 90, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "drivers/i2c/busses/i2c-amd-mp2.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "invalid_response", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "command_success", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "command_failed", value: 2, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "status_type", file: !108, line: 96, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!115 = !DIEnumerator(name: "i2c_readcomplete_event", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "i2c_readfail_event", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "i2c_writecomplete_event", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "i2c_writefail_event", value: 3, isUnsigned: true)
!119 = !DIEnumerator(name: "i2c_busenable_complete", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "i2c_busenable_failed", value: 5, isUnsigned: true)
!121 = !DIEnumerator(name: "i2c_busdisable_complete", value: 6, isUnsigned: true)
!122 = !DIEnumerator(name: "i2c_busdisable_failed", value: 7, isUnsigned: true)
!123 = !DIEnumerator(name: "invalid_data_length", value: 8, isUnsigned: true)
!124 = !DIEnumerator(name: "invalid_slave_address", value: 9, isUnsigned: true)
!125 = !DIEnumerator(name: "invalid_i2cbus_id", value: 10, isUnsigned: true)
!126 = !DIEnumerator(name: "invalid_dram_addr", value: 11, isUnsigned: true)
!127 = !DIEnumerator(name: "invalid_command", value: 12, isUnsigned: true)
!128 = !DIEnumerator(name: "mp2_active", value: 13, isUnsigned: true)
!129 = !DIEnumerator(name: "numberof_sensors_discovered_resp", value: 14, isUnsigned: true)
!130 = !DIEnumerator(name: "i2c_bus_notinitialized", value: 15, isUnsigned: true)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mem_type", file: !108, line: 64, baseType: !7, size: 32, elements: !132)
!132 = !{!133, !134}
!133 = !DIEnumerator(name: "use_dram", value: 0, isUnsigned: true)
!134 = !DIEnumerator(name: "use_c2pmsg", value: 1, isUnsigned: true)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "i2c_cmd", file: !108, line: 46, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143}
!137 = !DIEnumerator(name: "i2c_read", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "i2c_write", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "i2c_enable", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "i2c_disable", value: 3, isUnsigned: true)
!141 = !DIEnumerator(name: "number_of_sensor_discovered", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "is_mp2_active", value: 5, isUnsigned: true)
!143 = !DIEnumerator(name: "invalid_cmd", value: 15, isUnsigned: true)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "speed_enum", file: !108, line: 56, baseType: !7, size: 32, elements: !145)
!145 = !{!146, !147, !148, !149, !150}
!146 = !DIEnumerator(name: "speed100k", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "speed400k", value: 1, isUnsigned: true)
!148 = !DIEnumerator(name: "speed1000k", value: 2, isUnsigned: true)
!149 = !DIEnumerator(name: "speed1400k", value: 3, isUnsigned: true)
!150 = !DIEnumerator(name: "speed3400k", value: 4, isUnsigned: true)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !152, line: 10, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !155}
!154 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!155 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !157, line: 5, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!158 = !{!159, !160, !161, !162}
!159 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!160 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!161 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!162 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!163 = !{!164, !167, !168, !746, !4164, !173, !923, !723, !328, !313, !4632}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !166, line: 76, flags: DIFlagFwdDecl)
!166 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !170, line: 351, size: 10880, elements: !171)
!170 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !174, !177, !3891, !3892, !3893, !3894, !3895, !3896, !3905, !3922, !3996, !4025, !4049, !4070, !4076, !4085, !4117, !4131, !4153, !4157, !4158, !4159, !4160, !4161, !4162, !4163}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !169, file: !170, line: 352, baseType: !173, size: 32)
!173 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !169, file: !170, line: 353, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !176, line: 424, baseType: !167)
!176 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!177 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !169, file: !170, line: 354, baseType: !178, size: 192, offset: 128)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !179, line: 17, size: 192, elements: !180)
!179 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!180 = !{!181, !183, !3890}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !178, file: !179, line: 18, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !178, file: !179, line: 19, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !179, line: 110, size: 1152, elements: !187)
!187 = !{!188, !192, !196, !205, !3832, !3836, !3840, !3845, !3849, !3850, !3854, !3858, !3862, !3873, !3874, !3875, !3876, !3886}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !186, file: !179, line: 111, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!182, !182}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !186, file: !179, line: 112, baseType: !193, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !182}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !186, file: !179, line: 113, baseType: !197, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!200, !203}
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !201, line: 30, baseType: !202)
!201 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!202 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !186, file: !179, line: 114, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!209, !203, !211}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !214)
!214 = !{!215, !3374, !3376, !3379, !3380, !3431, !3522, !3523, !3524, !3525, !3526, !3535, !3640, !3653, !3759, !3760, !3764, !3766, !3767, !3768, !3772, !3778, !3779, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3820, !3821, !3822, !3825, !3828, !3829, !3830, !3831}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !213, file: !73, line: 462, baseType: !216, size: 512)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !217, line: 64, size: 512, elements: !218)
!217 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!218 = !{!219, !223, !229, !231, !291, !3225, !3364, !3369, !3370, !3371, !3372, !3373}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !217, line: 65, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !216, file: !217, line: 66, baseType: !224, size: 128, offset: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !201, line: 178, size: 128, elements: !225)
!225 = !{!226, !228}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !201, line: 179, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !224, file: !201, line: 179, baseType: !227, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !217, line: 67, baseType: !230, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !216, file: !217, line: 68, baseType: !232, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !217, line: 192, size: 704, elements: !234)
!234 = !{!235, !236, !252, !253}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !233, file: !217, line: 193, baseType: !224, size: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !233, file: !217, line: 194, baseType: !237, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !238, line: 83, baseType: !239)
!238 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !238, line: 71, elements: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !238, line: 72, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !239, file: !238, line: 72, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !242, file: !238, line: 73, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !238, line: 20, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !245, file: !238, line: 21, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !249, line: 25, baseType: !250)
!249 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 25, elements: !251)
!251 = !{}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !233, file: !217, line: 195, baseType: !216, size: 512, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !233, file: !217, line: 196, baseType: !254, size: 64, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !217, line: 156, size: 192, elements: !257)
!257 = !{!258, !263, !268}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !256, file: !217, line: 157, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!173, !232, !230}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !217, line: 158, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!220, !232, !230}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !256, file: !217, line: 159, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!173, !232, !230, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !217, line: 148, size: 20736, elements: !275)
!275 = !{!276, !281, !285, !286, !290}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !274, file: !217, line: 149, baseType: !277, size: 192)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 192, elements: !279)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!279 = !{!280}
!280 = !DISubrange(count: 3)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !274, file: !217, line: 150, baseType: !282, size: 4096, offset: 192)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 4096, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !274, file: !217, line: 151, baseType: !173, size: 32, offset: 4288)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !274, file: !217, line: 152, baseType: !287, size: 16384, offset: 4320)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 16384, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 2048)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !274, file: !217, line: 153, baseType: !173, size: 32, offset: 20704)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !216, file: !217, line: 69, baseType: !292, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !217, line: 138, size: 448, elements: !294)
!294 = !{!295, !299, !329, !331, !3187, !3215, !3219}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !293, file: !217, line: 139, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !230}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !293, file: !217, line: 140, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !303, line: 230, size: 128, elements: !304)
!303 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!304 = !{!305, !321}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !302, file: !303, line: 231, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !230, !314, !278}
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !201, line: 60, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !311, line: 73, baseType: !312)
!311 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !311, line: 15, baseType: !313)
!313 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !303, line: 30, size: 128, elements: !316)
!316 = !{!317, !318}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !303, line: 31, baseType: !220, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !315, file: !303, line: 32, baseType: !319, size: 16, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !201, line: 19, baseType: !320)
!320 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !302, file: !303, line: 232, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!309, !230, !314, !220, !325}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !201, line: 55, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !311, line: 72, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !311, line: 16, baseType: !328)
!328 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !293, file: !217, line: 141, baseType: !330, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !293, file: !217, line: 142, baseType: !332, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !303, line: 84, size: 320, elements: !336)
!336 = !{!337, !338, !342, !3184, !3185}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !303, line: 85, baseType: !220, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !335, file: !303, line: 86, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!319, !230, !314, !173}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !335, file: !303, line: 88, baseType: !343, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!319, !230, !346, !173}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !303, line: 168, size: 448, elements: !348)
!348 = !{!349, !350, !351, !352, !3179, !3180}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !347, file: !303, line: 169, baseType: !315, size: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !347, file: !303, line: 170, baseType: !325, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !347, file: !303, line: 171, baseType: !167, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !347, file: !303, line: 172, baseType: !353, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!309, !356, !230, !346, !278, !533, !325}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !358)
!358 = !{!359, !377, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3162, !3163, !3172, !3173, !3174, !3175, !3176, !3177, !3178}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !357, file: !44, line: 920, baseType: !360, size: 128)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !44, line: 917, size: 128, elements: !361)
!361 = !{!362, !368}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !360, file: !44, line: 918, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !364, line: 58, size: 64, elements: !365)
!364 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !364, line: 59, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !360, file: !44, line: 919, baseType: !369, size: 128, align: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !201, line: 216, size: 128, align: 64, elements: !370)
!370 = !{!371, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !201, line: 217, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !369, file: !201, line: 218, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !372}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !357, file: !44, line: 921, baseType: !378, size: 128, offset: 128)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !379, line: 8, size: 128, elements: !380)
!379 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!380 = !{!381, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !378, file: !379, line: 9, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !384, line: 18, flags: DIFlagFwdDecl)
!384 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!385 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !378, file: !379, line: 10, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !384, line: 89, size: 1536, elements: !388)
!388 = !{!389, !390, !400, !408, !409, !432, !3112, !3114, !3126, !3127, !3128, !3129, !3130, !3136, !3137, !3138}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !387, file: !384, line: 91, baseType: !7, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !387, file: !384, line: 92, baseType: !391, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !392, line: 277, baseType: !393)
!392 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !392, line: 277, size: 32, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !393, file: !392, line: 277, baseType: !396, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !392, line: 70, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !392, line: 65, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !397, file: !392, line: 66, baseType: !7, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !387, file: !384, line: 93, baseType: !401, size: 128, offset: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !402, line: 38, size: 128, elements: !403)
!402 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !406}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !402, line: 39, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !401, file: !402, line: 39, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !387, file: !384, line: 94, baseType: !386, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !387, file: !384, line: 95, baseType: !410, size: 128, offset: 256)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !384, line: 47, size: 128, elements: !411)
!411 = !{!412, !428}
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !384, line: 48, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !384, line: 48, size: 64, elements: !414)
!414 = !{!415, !424}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !384, line: 49, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !384, line: 49, size: 64, elements: !417)
!417 = !{!418, !423}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !416, file: !384, line: 50, baseType: !419, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !420, line: 21, baseType: !421)
!420 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !422, line: 27, baseType: !7)
!422 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!423 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !416, file: !384, line: 50, baseType: !419, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !413, file: !384, line: 52, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !420, line: 23, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !422, line: 31, baseType: !427)
!427 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !410, file: !384, line: 54, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !387, file: !384, line: 96, baseType: !433, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !435)
!435 = !{!436, !437, !438, !446, !453, !454, !600, !2823, !2824, !2825, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !3088, !3096, !3097, !3098, !3108, !3109, !3110, !3111}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !434, file: !44, line: 611, baseType: !319, size: 16)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !434, file: !44, line: 612, baseType: !320, size: 16, offset: 16)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !434, file: !44, line: 613, baseType: !439, size: 32, offset: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !440, line: 23, baseType: !441)
!440 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 21, size: 32, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !441, file: !440, line: 22, baseType: !444, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !201, line: 32, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !311, line: 49, baseType: !7)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !434, file: !44, line: 614, baseType: !447, size: 32, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !440, line: 28, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 26, size: 32, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !448, file: !440, line: 27, baseType: !451, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !201, line: 33, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !311, line: 50, baseType: !7)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !434, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !434, file: !44, line: 622, baseType: !455, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !458)
!458 = !{!459, !463, !476, !480, !486, !490, !494, !498, !502, !506, !510, !511, !517, !521, !547, !576, !580, !586, !591, !595, !596}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !457, file: !44, line: 1865, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!386, !433, !386, !7}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !457, file: !44, line: 1866, baseType: !464, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!220, !386, !433, !467}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !469, line: 10, size: 128, elements: !470)
!469 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!470 = !{!471, !475}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !468, file: !469, line: 11, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !167}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !468, file: !469, line: 12, baseType: !167, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !457, file: !44, line: 1867, baseType: !477, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!173, !433, !173}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !457, file: !44, line: 1868, baseType: !481, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !433, !173}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !457, file: !44, line: 1870, baseType: !487, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!173, !386, !278, !173}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !457, file: !44, line: 1872, baseType: !491, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!173, !433, !386, !319, !200}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !457, file: !44, line: 1873, baseType: !495, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!173, !386, !433, !386}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !457, file: !44, line: 1874, baseType: !499, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!173, !433, !386}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !457, file: !44, line: 1875, baseType: !503, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!173, !433, !386, !220}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !457, file: !44, line: 1876, baseType: !507, size: 64, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!173, !433, !386, !319}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !457, file: !44, line: 1877, baseType: !499, size: 64, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !457, file: !44, line: 1878, baseType: !512, size: 64, offset: 704)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!173, !433, !386, !319, !515}
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !201, line: 16, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !201, line: 13, baseType: !419)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !457, file: !44, line: 1879, baseType: !518, size: 64, offset: 768)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!173, !433, !386, !433, !386, !7}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !457, file: !44, line: 1881, baseType: !522, size: 64, offset: 832)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!173, !386, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !536, !544, !545, !546}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !526, file: !44, line: 220, baseType: !7, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !526, file: !44, line: 221, baseType: !319, size: 16, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !526, file: !44, line: 222, baseType: !439, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !526, file: !44, line: 223, baseType: !447, size: 32, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !526, file: !44, line: 224, baseType: !533, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !201, line: 46, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !311, line: 88, baseType: !535)
!535 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !526, file: !44, line: 225, baseType: !537, size: 128, offset: 192)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !538, line: 13, size: 128, elements: !539)
!538 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!539 = !{!540, !543}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !537, file: !538, line: 14, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !538, line: 8, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !422, line: 30, baseType: !535)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !537, file: !538, line: 15, baseType: !313, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !526, file: !44, line: 226, baseType: !537, size: 128, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !526, file: !44, line: 227, baseType: !537, size: 128, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !526, file: !44, line: 234, baseType: !356, size: 64, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !457, file: !44, line: 1882, baseType: !548, size: 64, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!173, !551, !553, !419, !7}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !555, line: 22, size: 1152, elements: !556)
!555 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!556 = !{!557, !558, !559, !560, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !554, file: !555, line: 23, baseType: !419, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !554, file: !555, line: 24, baseType: !319, size: 16, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !554, file: !555, line: 25, baseType: !7, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !554, file: !555, line: 26, baseType: !561, size: 32, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !201, line: 104, baseType: !419)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !554, file: !555, line: 27, baseType: !425, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !554, file: !555, line: 28, baseType: !425, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !554, file: !555, line: 37, baseType: !425, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !554, file: !555, line: 38, baseType: !515, size: 32, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !554, file: !555, line: 39, baseType: !515, size: 32, offset: 352)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !554, file: !555, line: 40, baseType: !439, size: 32, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !554, file: !555, line: 41, baseType: !447, size: 32, offset: 416)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !554, file: !555, line: 42, baseType: !533, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !554, file: !555, line: 43, baseType: !537, size: 128, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !554, file: !555, line: 44, baseType: !537, size: 128, offset: 640)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !554, file: !555, line: 45, baseType: !537, size: 128, offset: 768)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !554, file: !555, line: 46, baseType: !537, size: 128, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !554, file: !555, line: 47, baseType: !425, size: 64, offset: 1024)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !554, file: !555, line: 48, baseType: !425, size: 64, offset: 1088)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !457, file: !44, line: 1883, baseType: !577, size: 64, offset: 960)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!309, !386, !278, !325}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !457, file: !44, line: 1884, baseType: !581, size: 64, offset: 1024)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!173, !433, !584, !425, !425}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !457, file: !44, line: 1886, baseType: !587, size: 64, offset: 1088)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!173, !433, !590, !173}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !457, file: !44, line: 1887, baseType: !592, size: 64, offset: 1152)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!173, !433, !386, !356, !7, !319}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !457, file: !44, line: 1890, baseType: !507, size: 64, offset: 1216)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !457, file: !44, line: 1891, baseType: !597, size: 64, offset: 1280)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!173, !433, !484, !173}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !434, file: !44, line: 623, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !656, !2430, !2512, !2595, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2611, !2615, !2616, !2619, !2620, !2623, !2624, !2625, !2666, !2693, !2694, !2695, !2696, !2697, !2698, !2701, !2703, !2710, !2711, !2713, !2714, !2715, !2774, !2775, !2790, !2791, !2792, !2793, !2794, !2797, !2798, !2799, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !602, file: !44, line: 1417, baseType: !224, size: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !602, file: !44, line: 1418, baseType: !515, size: 32, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !602, file: !44, line: 1419, baseType: !431, size: 8, offset: 160)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !602, file: !44, line: 1420, baseType: !328, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !602, file: !44, line: 1421, baseType: !533, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !602, file: !44, line: 1422, baseType: !610, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !612)
!612 = !{!613, !614, !615, !622, !626, !630, !634, !635, !636, !646, !649, !650, !651, !653, !654, !655}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !611, file: !44, line: 2229, baseType: !220, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !611, file: !44, line: 2230, baseType: !173, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !611, file: !44, line: 2238, baseType: !616, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!173, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !621, line: 28, flags: DIFlagFwdDecl)
!621 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!622 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !611, file: !44, line: 2239, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !611, file: !44, line: 2240, baseType: !627, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!386, !610, !173, !220, !167}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !611, file: !44, line: 2242, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !601}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !611, file: !44, line: 2243, baseType: !164, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !611, file: !44, line: 2244, baseType: !610, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !611, file: !44, line: 2245, baseType: !637, size: 64, offset: 512)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !201, line: 182, size: 64, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !637, file: !201, line: 183, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !201, line: 186, size: 128, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !641, file: !201, line: 187, baseType: !640, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !641, file: !201, line: 187, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !611, file: !44, line: 2247, baseType: !647, offset: 576)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !648, line: 187, elements: !251)
!648 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !611, file: !44, line: 2248, baseType: !647, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !611, file: !44, line: 2249, baseType: !647, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !611, file: !44, line: 2250, baseType: !652, offset: 576)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, elements: !279)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !611, file: !44, line: 2252, baseType: !647, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !611, file: !44, line: 2253, baseType: !647, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !611, file: !44, line: 2254, baseType: !647, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !602, file: !44, line: 1423, baseType: !657, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !660)
!660 = !{!661, !665, !669, !670, !674, !680, !684, !685, !686, !690, !694, !695, !696, !697, !703, !708, !709, !716, !717, !718, !719, !2414, !2429}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !659, file: !44, line: 1936, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!433, !601}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !659, file: !44, line: 1937, baseType: !666, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !433}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !659, file: !44, line: 1938, baseType: !666, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !659, file: !44, line: 1940, baseType: !671, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !433, !173}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !659, file: !44, line: 1941, baseType: !675, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!173, !433, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !659, file: !44, line: 1942, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!173, !433}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !659, file: !44, line: 1943, baseType: !666, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !659, file: !44, line: 1944, baseType: !631, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !659, file: !44, line: 1945, baseType: !687, size: 64, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!173, !601, !173}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !659, file: !44, line: 1946, baseType: !691, size: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!173, !601}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !659, file: !44, line: 1947, baseType: !691, size: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !659, file: !44, line: 1948, baseType: !691, size: 64, offset: 704)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !659, file: !44, line: 1949, baseType: !691, size: 64, offset: 768)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !659, file: !44, line: 1950, baseType: !698, size: 64, offset: 832)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!173, !386, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !659, file: !44, line: 1951, baseType: !704, size: 64, offset: 896)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!173, !601, !707, !278}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !659, file: !44, line: 1952, baseType: !631, size: 64, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !659, file: !44, line: 1954, baseType: !710, size: 64, offset: 1024)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!173, !713, !386}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !715, line: 539, flags: DIFlagFwdDecl)
!715 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !659, file: !44, line: 1955, baseType: !710, size: 64, offset: 1088)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !659, file: !44, line: 1956, baseType: !710, size: 64, offset: 1152)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !659, file: !44, line: 1957, baseType: !710, size: 64, offset: 1216)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !659, file: !44, line: 1963, baseType: !720, size: 64, offset: 1280)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!173, !601, !723, !746}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !725, line: 68, size: 512, align: 128, elements: !726)
!725 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!726 = !{!727, !728, !2406, !2413}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !725, line: 69, baseType: !328, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 77, baseType: !729, size: 320, offset: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 77, size: 320, elements: !730)
!730 = !{!731, !919, !924, !952, !960, !966, !2337, !2405}
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 78, baseType: !732, size: 320)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 78, size: 320, elements: !733)
!733 = !{!734, !735, !917, !918}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !732, file: !725, line: 84, baseType: !224, size: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !732, file: !725, line: 86, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !738)
!738 = !{!739, !740, !748, !749, !754, !769, !785, !786, !787, !788, !910, !911, !914, !915, !916}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !737, file: !44, line: 452, baseType: !433, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !737, file: !44, line: 453, baseType: !741, size: 128, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !742, line: 292, size: 128, elements: !743)
!742 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745, !747}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !741, file: !742, line: 293, baseType: !237)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !741, file: !742, line: 295, baseType: !746, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !201, line: 148, baseType: !7)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !741, file: !742, line: 296, baseType: !167, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !737, file: !44, line: 454, baseType: !746, size: 32, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !737, file: !44, line: 455, baseType: !750, size: 32, offset: 224)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !201, line: 168, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 166, size: 32, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !751, file: !201, line: 167, baseType: !173, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !737, file: !44, line: 460, baseType: !755, size: 128, offset: 256)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !756, line: 125, size: 128, elements: !757)
!756 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!757 = !{!758, !768}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !755, file: !756, line: 126, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !756, line: 31, size: 64, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !759, file: !756, line: 32, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !756, line: 24, size: 192, align: 64, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !763, file: !756, line: 25, baseType: !328, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !763, file: !756, line: 26, baseType: !762, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !763, file: !756, line: 27, baseType: !762, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !755, file: !756, line: 127, baseType: !762, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !737, file: !44, line: 461, baseType: !770, size: 256, offset: 384)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !771, line: 35, size: 256, elements: !772)
!771 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!772 = !{!773, !781, !782, !784}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !770, file: !771, line: 36, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !775, line: 13, baseType: !776)
!775 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !201, line: 175, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 173, size: 64, elements: !778)
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !777, file: !201, line: 174, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !420, line: 22, baseType: !542)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !770, file: !771, line: 42, baseType: !774, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !770, file: !771, line: 46, baseType: !783, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !238, line: 29, baseType: !245)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !770, file: !771, line: 47, baseType: !224, size: 128, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !737, file: !44, line: 462, baseType: !328, size: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !737, file: !44, line: 463, baseType: !328, size: 64, offset: 704)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !737, file: !44, line: 464, baseType: !328, size: 64, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !737, file: !44, line: 465, baseType: !789, size: 64, offset: 832)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !792)
!792 = !{!793, !797, !801, !805, !809, !813, !819, !825, !829, !834, !838, !842, !846, !874, !878, !884, !885, !886, !890, !895, !899, !906}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !791, file: !44, line: 368, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!173, !723, !678}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !791, file: !44, line: 369, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!173, !356, !723}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !791, file: !44, line: 372, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!173, !736, !678}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !791, file: !44, line: 375, baseType: !806, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!173, !723}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !791, file: !44, line: 381, baseType: !810, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!173, !356, !736, !227, !7}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !791, file: !44, line: 383, baseType: !814, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !791, file: !44, line: 385, baseType: !820, size: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!173, !356, !736, !533, !7, !7, !823, !824}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !791, file: !44, line: 388, baseType: !826, size: 64, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!173, !356, !736, !533, !7, !7, !723, !167}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !791, file: !44, line: 393, baseType: !830, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!833, !736, !833}
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !201, line: 125, baseType: !425)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !791, file: !44, line: 394, baseType: !835, size: 64, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !723, !7, !7}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !791, file: !44, line: 395, baseType: !839, size: 64, offset: 640)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!173, !723, !746}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !791, file: !44, line: 396, baseType: !843, size: 64, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !723}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !791, file: !44, line: 397, baseType: !847, size: 64, offset: 768)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!309, !850, !872}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !852)
!852 = !{!853, !854, !855, !859, !860, !861, !864, !865}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !851, file: !44, line: 321, baseType: !356, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !851, file: !44, line: 326, baseType: !533, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !851, file: !44, line: 327, baseType: !856, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !850, !313, !313}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !851, file: !44, line: 328, baseType: !167, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !851, file: !44, line: 329, baseType: !173, size: 32, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !851, file: !44, line: 330, baseType: !862, size: 16, offset: 288)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !420, line: 19, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !422, line: 24, baseType: !320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !851, file: !44, line: 331, baseType: !862, size: 16, offset: 304)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !44, line: 332, baseType: !866, size: 64, offset: 320)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !851, file: !44, line: 332, size: 64, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !866, file: !44, line: 333, baseType: !7, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !866, file: !44, line: 334, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !791, file: !44, line: 402, baseType: !875, size: 64, offset: 832)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!173, !736, !723, !723, !5}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !791, file: !44, line: 404, baseType: !879, size: 64, offset: 896)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!200, !723, !882}
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !883, line: 305, baseType: !7)
!883 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!884 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !791, file: !44, line: 405, baseType: !843, size: 64, offset: 960)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !791, file: !44, line: 406, baseType: !806, size: 64, offset: 1024)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !791, file: !44, line: 407, baseType: !887, size: 64, offset: 1088)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!173, !723, !328, !328}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !791, file: !44, line: 409, baseType: !891, size: 64, offset: 1152)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !723, !894, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !791, file: !44, line: 410, baseType: !896, size: 64, offset: 1216)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!173, !736, !723}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !791, file: !44, line: 413, baseType: !900, size: 64, offset: 1280)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!173, !903, !356, !905}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !791, file: !44, line: 415, baseType: !907, size: 64, offset: 1344)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !356}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !44, line: 466, baseType: !328, size: 64, offset: 896)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !737, file: !44, line: 467, baseType: !912, size: 32, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !913, line: 8, baseType: !419)
!913 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!914 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !737, file: !44, line: 468, baseType: !237, offset: 992)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !737, file: !44, line: 469, baseType: !224, size: 128, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !737, file: !44, line: 470, baseType: !167, size: 64, offset: 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !732, file: !725, line: 87, baseType: !328, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !732, file: !725, line: 94, baseType: !328, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 96, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 96, size: 64, elements: !921)
!921 = !{!922}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !920, file: !725, line: 101, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !201, line: 143, baseType: !425)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 103, baseType: !925, size: 320)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 103, size: 320, elements: !926)
!926 = !{!927, !937, !940, !941}
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !725, line: 104, baseType: !928, size: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !725, line: 104, size: 128, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !928, file: !725, line: 105, baseType: !224, size: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !725, line: 106, baseType: !932, size: 128)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !725, line: 106, size: 128, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !932, file: !725, line: 107, baseType: !723, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !932, file: !725, line: 109, baseType: !173, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !932, file: !725, line: 110, baseType: !173, size: 32, offset: 96)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !925, file: !725, line: 117, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !725, line: 117, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !925, file: !725, line: 119, baseType: !167, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !725, line: 120, baseType: !942, size: 64, offset: 256)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !725, line: 120, size: 64, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !942, file: !725, line: 121, baseType: !167, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !942, file: !725, line: 122, baseType: !328, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !725, line: 123, baseType: !947, size: 32)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !942, file: !725, line: 123, size: 32, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !947, file: !725, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !947, file: !725, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !947, file: !725, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 130, baseType: !953, size: 192)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 130, size: 192, elements: !954)
!954 = !{!955, !956, !957, !958, !959}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !953, file: !725, line: 131, baseType: !328, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !953, file: !725, line: 134, baseType: !431, size: 8, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !953, file: !725, line: 135, baseType: !431, size: 8, offset: 72)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !953, file: !725, line: 136, baseType: !750, size: 32, offset: 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !953, file: !725, line: 137, baseType: !7, size: 32, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 139, baseType: !961, size: 256)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 139, size: 256, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !961, file: !725, line: 140, baseType: !328, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !961, file: !725, line: 141, baseType: !750, size: 32, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !961, file: !725, line: 143, baseType: !224, size: 128, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 145, baseType: !967, size: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 145, size: 256, elements: !968)
!968 = !{!969, !970, !972, !973, !2336}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !967, file: !725, line: 146, baseType: !328, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !967, file: !725, line: 147, baseType: !971, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !715, line: 509, baseType: !723)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !967, file: !725, line: 148, baseType: !328, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !725, line: 149, baseType: !974, size: 64, offset: 192)
!974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !725, line: 149, size: 64, elements: !975)
!975 = !{!976, !2335}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !974, file: !725, line: 150, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !725, line: 388, size: 7296, elements: !979)
!979 = !{!980, !2331}
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !725, line: 389, baseType: !981, size: 7296)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !725, line: 389, size: 7296, elements: !982)
!982 = !{!983, !1101, !1102, !1103, !1107, !1108, !1109, !1110, !1111, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1152, !1160, !1163, !1209, !1210, !2315, !2316, !2319, !2320, !2321, !2324, !2325, !2326, !2329, !2330}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !981, file: !725, line: 390, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !725, line: 305, size: 1472, elements: !986)
!986 = !{!987, !988, !989, !990, !991, !992, !993, !994, !1001, !1002, !1007, !1008, !1011, !1095, !1096, !1097, !1098, !1099}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !985, file: !725, line: 308, baseType: !328, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !985, file: !725, line: 309, baseType: !328, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !985, file: !725, line: 313, baseType: !984, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !985, file: !725, line: 313, baseType: !984, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !985, file: !725, line: 315, baseType: !763, size: 192, align: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !985, file: !725, line: 323, baseType: !328, size: 64, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !985, file: !725, line: 327, baseType: !977, size: 64, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !985, file: !725, line: 333, baseType: !995, size: 64, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !715, line: 284, baseType: !996)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !715, line: 284, size: 64, elements: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !996, file: !715, line: 284, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1000, line: 19, baseType: !328)
!1000 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !985, file: !725, line: 334, baseType: !328, size: 64, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !985, file: !725, line: 343, baseType: !1003, size: 256, offset: 704)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !725, line: 340, size: 256, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1003, file: !725, line: 341, baseType: !763, size: 192, align: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1003, file: !725, line: 342, baseType: !328, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !985, file: !725, line: 351, baseType: !224, size: 128, offset: 960)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !985, file: !725, line: 353, baseType: !1009, size: 64, offset: 1088)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !725, line: 353, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !985, file: !725, line: 356, baseType: !1012, size: 64, offset: 1152)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1015)
!1015 = !{!1016, !1020, !1021, !1025, !1029, !1069, !1073, !1077, !1081, !1082, !1083, !1087, !1091}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1014, file: !14, line: 558, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !984}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1014, file: !14, line: 559, baseType: !1017, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1014, file: !14, line: 560, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!173, !984, !328}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1014, file: !14, line: 561, baseType: !1026, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!173, !984}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1014, file: !14, line: 562, baseType: !1030, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !725, line: 682, baseType: !7)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042, !1049, !1056, !1062, !1063, !1064, !1066, !1068}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1035, file: !14, line: 509, baseType: !984, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1035, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1035, file: !14, line: 511, baseType: !746, size: 32, offset: 96)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1035, file: !14, line: 512, baseType: !328, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1035, file: !14, line: 513, baseType: !328, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1035, file: !14, line: 514, baseType: !1043, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !715, line: 385, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 385, size: 64, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1045, file: !715, line: 385, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1000, line: 15, baseType: !328)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1035, file: !14, line: 516, baseType: !1050, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !715, line: 359, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 359, size: 64, elements: !1053)
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1052, file: !715, line: 359, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1000, line: 16, baseType: !328)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1035, file: !14, line: 519, baseType: !1057, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1000, line: 21, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1000, line: 21, size: 64, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1058, file: !1000, line: 21, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1000, line: 14, baseType: !328)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1035, file: !14, line: 521, baseType: !723, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1035, file: !14, line: 522, baseType: !723, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1035, file: !14, line: 528, baseType: !1065, size: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1035, file: !14, line: 532, baseType: !1067, size: 64, offset: 640)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1035, file: !14, line: 536, baseType: !971, size: 64, offset: 704)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1014, file: !14, line: 563, baseType: !1070, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!1033, !1034, !13}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1014, file: !14, line: 565, baseType: !1074, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !1034, !328, !328}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1014, file: !14, line: 567, baseType: !1078, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!328, !984}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1014, file: !14, line: 571, baseType: !1030, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1014, file: !14, line: 574, baseType: !1030, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1014, file: !14, line: 579, baseType: !1084, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!173, !984, !328, !167, !173, !173}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1014, file: !14, line: 585, baseType: !1088, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!220, !984}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1014, file: !14, line: 615, baseType: !1092, size: 64, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!723, !984, !328}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !985, file: !725, line: 359, baseType: !328, size: 64, offset: 1216)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !985, file: !725, line: 361, baseType: !356, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !985, file: !725, line: 362, baseType: !167, size: 64, offset: 1344)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !985, file: !725, line: 365, baseType: !774, size: 64, offset: 1408)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !985, file: !725, line: 373, baseType: !1100, offset: 1472)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !725, line: 296, elements: !251)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !981, file: !725, line: 391, baseType: !759, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !981, file: !725, line: 392, baseType: !425, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !981, file: !725, line: 394, baseType: !1104, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!328, !356, !328, !328, !328, !328}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !981, file: !725, line: 398, baseType: !328, size: 64, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !981, file: !725, line: 399, baseType: !328, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !981, file: !725, line: 405, baseType: !328, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !981, file: !725, line: 406, baseType: !328, size: 64, offset: 448)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !981, file: !725, line: 407, baseType: !1112, size: 64, offset: 512)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !715, line: 286, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 286, size: 64, elements: !1115)
!1115 = !{!1116}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1114, file: !715, line: 286, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1000, line: 18, baseType: !328)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !981, file: !725, line: 416, baseType: !750, size: 32, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !981, file: !725, line: 428, baseType: !750, size: 32, offset: 608)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !981, file: !725, line: 437, baseType: !750, size: 32, offset: 640)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !981, file: !725, line: 447, baseType: !750, size: 32, offset: 672)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !981, file: !725, line: 450, baseType: !774, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !981, file: !725, line: 452, baseType: !173, size: 32, offset: 768)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !981, file: !725, line: 454, baseType: !237, offset: 800)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !981, file: !725, line: 457, baseType: !770, size: 256, offset: 832)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !981, file: !725, line: 459, baseType: !224, size: 128, offset: 1088)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !981, file: !725, line: 466, baseType: !328, size: 64, offset: 1216)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !981, file: !725, line: 467, baseType: !328, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !981, file: !725, line: 469, baseType: !328, size: 64, offset: 1344)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !981, file: !725, line: 470, baseType: !328, size: 64, offset: 1408)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !981, file: !725, line: 471, baseType: !776, size: 64, offset: 1472)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !981, file: !725, line: 472, baseType: !328, size: 64, offset: 1536)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !981, file: !725, line: 473, baseType: !328, size: 64, offset: 1600)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !981, file: !725, line: 474, baseType: !328, size: 64, offset: 1664)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !981, file: !725, line: 475, baseType: !328, size: 64, offset: 1728)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !981, file: !725, line: 477, baseType: !237, offset: 1792)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !981, file: !725, line: 478, baseType: !328, size: 64, offset: 1792)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !981, file: !725, line: 478, baseType: !328, size: 64, offset: 1856)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !981, file: !725, line: 478, baseType: !328, size: 64, offset: 1920)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !981, file: !725, line: 478, baseType: !328, size: 64, offset: 1984)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !981, file: !725, line: 479, baseType: !328, size: 64, offset: 2048)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !981, file: !725, line: 479, baseType: !328, size: 64, offset: 2112)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !981, file: !725, line: 479, baseType: !328, size: 64, offset: 2176)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !981, file: !725, line: 480, baseType: !328, size: 64, offset: 2240)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !981, file: !725, line: 480, baseType: !328, size: 64, offset: 2304)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !981, file: !725, line: 480, baseType: !328, size: 64, offset: 2368)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !981, file: !725, line: 480, baseType: !328, size: 64, offset: 2432)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !981, file: !725, line: 482, baseType: !1149, size: 2816, offset: 2496)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 2816, elements: !1150)
!1150 = !{!1151}
!1151 = !DISubrange(count: 44)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !981, file: !725, line: 488, baseType: !1153, size: 256, offset: 5312)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1154, line: 60, size: 256, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1153, file: !1154, line: 61, baseType: !1157, size: 256)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 256, elements: !1158)
!1158 = !{!1159}
!1159 = !DISubrange(count: 4)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !981, file: !725, line: 490, baseType: !1161, size: 64, offset: 5568)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !725, line: 490, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !981, file: !725, line: 493, baseType: !1164, size: 896, offset: 5632)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1165, line: 53, baseType: !1166)
!1165 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1165, line: 13, size: 896, elements: !1167)
!1167 = !{!1168, !1169, !1170, !1171, !1174, !1175, !1182, !1183, !1203, !1204, !1205}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1166, file: !1165, line: 18, baseType: !425, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1166, file: !1165, line: 28, baseType: !776, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1166, file: !1165, line: 31, baseType: !770, size: 256, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1166, file: !1165, line: 32, baseType: !1172, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1165, line: 32, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1166, file: !1165, line: 37, baseType: !320, size: 16, offset: 448)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1166, file: !1165, line: 40, baseType: !1176, size: 192, offset: 512)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1177, line: 53, size: 192, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1178 = !{!1179, !1180, !1181}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1176, file: !1177, line: 54, baseType: !774, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1176, file: !1177, line: 55, baseType: !237, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1176, file: !1177, line: 59, baseType: !224, size: 128, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1166, file: !1165, line: 41, baseType: !167, size: 64, offset: 704)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1166, file: !1165, line: 42, baseType: !1184, size: 64, offset: 768)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1187, line: 13, size: 896, elements: !1188)
!1187 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1186, file: !1187, line: 14, baseType: !167, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1186, file: !1187, line: 15, baseType: !328, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1186, file: !1187, line: 17, baseType: !328, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1186, file: !1187, line: 17, baseType: !328, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1186, file: !1187, line: 19, baseType: !313, size: 64, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1186, file: !1187, line: 21, baseType: !313, size: 64, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1186, file: !1187, line: 22, baseType: !313, size: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1186, file: !1187, line: 23, baseType: !313, size: 64, offset: 448)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1186, file: !1187, line: 24, baseType: !313, size: 64, offset: 512)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1186, file: !1187, line: 25, baseType: !313, size: 64, offset: 576)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1186, file: !1187, line: 26, baseType: !313, size: 64, offset: 640)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1186, file: !1187, line: 27, baseType: !313, size: 64, offset: 704)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1186, file: !1187, line: 28, baseType: !313, size: 64, offset: 768)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1186, file: !1187, line: 29, baseType: !313, size: 64, offset: 832)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1166, file: !1165, line: 44, baseType: !750, size: 32, offset: 832)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1166, file: !1165, line: 50, baseType: !862, size: 16, offset: 864)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1166, file: !1165, line: 51, baseType: !1206, size: 16, offset: 880)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !420, line: 18, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !422, line: 23, baseType: !1208)
!1208 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !725, line: 495, baseType: !328, size: 64, offset: 6528)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !981, file: !725, line: 497, baseType: !1211, size: 64, offset: 6592)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !725, line: 381, size: 384, elements: !1213)
!1213 = !{!1214, !1215, !2314}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1212, file: !725, line: 382, baseType: !750, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1212, file: !725, line: 383, baseType: !1216, size: 128, offset: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !725, line: 376, size: 128, elements: !1217)
!1217 = !{!1218, !2312}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1216, file: !725, line: 377, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1221, line: 640, size: 48640, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1222 = !{!1223, !1229, !1231, !1232, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1249, !1267, !1278, !1363, !1364, !1365, !1376, !1377, !1379, !1380, !1381, !1382, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1461, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1499, !1501, !1502, !1503, !1515, !1516, !1517, !1518, !1519, !1520, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1544, !1549, !1733, !1734, !1735, !1736, !1740, !1743, !1746, !1749, !1752, !1755, !1856, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1902, !1903, !1904, !1905, !1906, !1911, !1912, !1913, !1916, !1917, !1920, !1923, !1926, !1929, !1972, !1975, !1976, !2055, !2056, !2059, !2060, !2063, !2064, !2065, !2069, !2070, !2071, !2084, !2085, !2086, !2096, !2101, !2104, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1220, file: !1221, line: 646, baseType: !1224, size: 128)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1225, line: 56, size: 128, elements: !1226)
!1225 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1224, file: !1225, line: 57, baseType: !328, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1224, file: !1225, line: 58, baseType: !419, size: 32, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1220, file: !1221, line: 649, baseType: !1230, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !313)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1220, file: !1221, line: 657, baseType: !167, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1220, file: !1221, line: 658, baseType: !1233, size: 32, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1234, line: 113, baseType: !1235)
!1234 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1234, line: 111, size: 32, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1235, file: !1234, line: 112, baseType: !750, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1220, file: !1221, line: 660, baseType: !7, size: 32, offset: 288)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1220, file: !1221, line: 661, baseType: !7, size: 32, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1220, file: !1221, line: 684, baseType: !173, size: 32, offset: 352)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1220, file: !1221, line: 686, baseType: !173, size: 32, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1220, file: !1221, line: 687, baseType: !173, size: 32, offset: 416)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1220, file: !1221, line: 688, baseType: !173, size: 32, offset: 448)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1220, file: !1221, line: 689, baseType: !7, size: 32, offset: 480)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1220, file: !1221, line: 691, baseType: !1246, size: 64, offset: 512)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1248)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1221, line: 691, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1220, file: !1221, line: 692, baseType: !1250, size: 832, offset: 576)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1221, line: 451, size: 832, elements: !1251)
!1251 = !{!1252, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1250, file: !1221, line: 453, baseType: !1253, size: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1221, line: 325, size: 128, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1253, file: !1221, line: 326, baseType: !328, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1253, file: !1221, line: 327, baseType: !419, size: 32, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1250, file: !1221, line: 454, baseType: !763, size: 192, align: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1250, file: !1221, line: 455, baseType: !224, size: 128, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1250, file: !1221, line: 456, baseType: !7, size: 32, offset: 448)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1250, file: !1221, line: 458, baseType: !425, size: 64, offset: 512)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1250, file: !1221, line: 459, baseType: !425, size: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1250, file: !1221, line: 460, baseType: !425, size: 64, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1250, file: !1221, line: 461, baseType: !425, size: 64, offset: 704)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1250, file: !1221, line: 463, baseType: !425, size: 64, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1250, file: !1221, line: 465, baseType: !1266, offset: 832)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1221, line: 415, elements: !251)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1220, file: !1221, line: 693, baseType: !1268, size: 384, offset: 1408)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1221, line: 489, size: 384, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275, !1276}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1268, file: !1221, line: 490, baseType: !224, size: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1268, file: !1221, line: 491, baseType: !328, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1268, file: !1221, line: 492, baseType: !328, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1268, file: !1221, line: 493, baseType: !7, size: 32, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1268, file: !1221, line: 494, baseType: !320, size: 16, offset: 288)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1268, file: !1221, line: 495, baseType: !320, size: 16, offset: 304)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1268, file: !1221, line: 497, baseType: !1277, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1220, file: !1221, line: 697, baseType: !1279, size: 1792, offset: 1792)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1221, line: 507, size: 1792, elements: !1280)
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1360, !1361}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1279, file: !1221, line: 508, baseType: !763, size: 192, align: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1279, file: !1221, line: 515, baseType: !425, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1279, file: !1221, line: 516, baseType: !425, size: 64, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1279, file: !1221, line: 517, baseType: !425, size: 64, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1279, file: !1221, line: 518, baseType: !425, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1279, file: !1221, line: 519, baseType: !425, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1279, file: !1221, line: 526, baseType: !780, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1279, file: !1221, line: 527, baseType: !425, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1279, file: !1221, line: 528, baseType: !7, size: 32, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1279, file: !1221, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1279, file: !1221, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1279, file: !1221, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1279, file: !1221, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1279, file: !1221, line: 563, baseType: !1295, size: 512, offset: 704)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1296)
!1296 = !{!1297, !1305, !1306, !1311, !1354, !1357, !1358, !1359}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1295, file: !20, line: 119, baseType: !1298, size: 256)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1299, line: 9, size: 256, elements: !1300)
!1299 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1298, file: !1299, line: 10, baseType: !763, size: 192, align: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1298, file: !1299, line: 11, baseType: !1303, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1304, line: 29, baseType: !780)
!1304 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1295, file: !20, line: 120, baseType: !1303, size: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1295, file: !20, line: 121, baseType: !1307, size: 64, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!19, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1295, file: !20, line: 122, baseType: !1312, size: 64, offset: 384)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1314)
!1314 = !{!1315, !1335, !1336, !1339, !1344, !1345, !1349, !1353}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1313, file: !20, line: 160, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1317, file: !20, line: 215, baseType: !783)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1317, file: !20, line: 216, baseType: !7, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1317, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1317, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1317, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1317, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1317, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1317, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1317, file: !20, line: 233, baseType: !1303, size: 64, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1317, file: !20, line: 234, baseType: !1310, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1317, file: !20, line: 235, baseType: !1303, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1317, file: !20, line: 236, baseType: !1310, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1317, file: !20, line: 237, baseType: !1332, size: 4096, offset: 512)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1313, size: 4096, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 8)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1313, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1313, file: !20, line: 162, baseType: !1337, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !201, line: 27, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !311, line: 96, baseType: !173)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1313, file: !20, line: 163, baseType: !1340, size: 32, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !392, line: 276, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !392, line: 276, size: 32, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1341, file: !392, line: 276, baseType: !396, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1313, file: !20, line: 164, baseType: !1310, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1313, file: !20, line: 165, baseType: !1346, size: 128, offset: 256)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1299, line: 14, size: 128, elements: !1347)
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1346, file: !1299, line: 15, baseType: !755, size: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1313, file: !20, line: 166, baseType: !1350, size: 64, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!1303}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1313, file: !20, line: 167, baseType: !1303, size: 64, offset: 448)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1295, file: !20, line: 123, baseType: !1355, size: 8, offset: 448)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !420, line: 17, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !422, line: 21, baseType: !431)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1295, file: !20, line: 124, baseType: !1355, size: 8, offset: 456)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1295, file: !20, line: 125, baseType: !1355, size: 8, offset: 464)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1295, file: !20, line: 126, baseType: !1355, size: 8, offset: 472)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1279, file: !1221, line: 572, baseType: !1295, size: 512, offset: 1216)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1279, file: !1221, line: 580, baseType: !1362, size: 64, offset: 1728)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1220, file: !1221, line: 721, baseType: !7, size: 32, offset: 3584)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1220, file: !1221, line: 722, baseType: !173, size: 32, offset: 3616)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1220, file: !1221, line: 723, baseType: !1366, size: 64, offset: 3648)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1368)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1369, line: 17, baseType: !1370)
!1369 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1369, line: 17, size: 64, elements: !1371)
!1371 = !{!1372}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1370, file: !1369, line: 17, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 64, elements: !1374)
!1374 = !{!1375}
!1375 = !DISubrange(count: 1)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1220, file: !1221, line: 724, baseType: !1368, size: 64, offset: 3712)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1220, file: !1221, line: 749, baseType: !1378, offset: 3776)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1221, line: 290, elements: !251)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1220, file: !1221, line: 751, baseType: !224, size: 128, offset: 3776)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1220, file: !1221, line: 757, baseType: !977, size: 64, offset: 3904)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1220, file: !1221, line: 758, baseType: !977, size: 64, offset: 3968)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1220, file: !1221, line: 761, baseType: !1383, size: 320, offset: 4032)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1154, line: 34, size: 320, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1383, file: !1154, line: 35, baseType: !425, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1383, file: !1154, line: 36, baseType: !1387, size: 256, offset: 64)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !984, size: 256, elements: !1158)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1220, file: !1221, line: 766, baseType: !173, size: 32, offset: 4352)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1220, file: !1221, line: 767, baseType: !173, size: 32, offset: 4384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1220, file: !1221, line: 768, baseType: !173, size: 32, offset: 4416)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1220, file: !1221, line: 770, baseType: !173, size: 32, offset: 4448)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1220, file: !1221, line: 772, baseType: !328, size: 64, offset: 4480)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1220, file: !1221, line: 775, baseType: !7, size: 32, offset: 4544)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1220, file: !1221, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1220, file: !1221, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1220, file: !1221, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1220, file: !1221, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1220, file: !1221, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1220, file: !1221, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1220, file: !1221, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1220, file: !1221, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1220, file: !1221, line: 831, baseType: !328, size: 64, offset: 4672)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1220, file: !1221, line: 833, baseType: !1404, size: 384, offset: 4736)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1405)
!1405 = !{!1406, !1411}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1404, file: !25, line: 26, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!313, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !25, line: 27, baseType: !1412, size: 320, offset: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1404, file: !25, line: 27, size: 320, elements: !1413)
!1413 = !{!1414, !1424, !1451}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1412, file: !25, line: 36, baseType: !1415, size: 320)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1412, file: !25, line: 29, size: 320, elements: !1416)
!1416 = !{!1417, !1419, !1420, !1421, !1422, !1423}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1415, file: !25, line: 30, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1415, file: !25, line: 31, baseType: !419, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1415, file: !25, line: 32, baseType: !419, size: 32, offset: 96)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1415, file: !25, line: 33, baseType: !419, size: 32, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1415, file: !25, line: 34, baseType: !425, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1415, file: !25, line: 35, baseType: !1418, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1412, file: !25, line: 46, baseType: !1425, size: 192)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1412, file: !25, line: 38, size: 192, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1450}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1425, file: !25, line: 39, baseType: !1337, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1425, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !25, line: 41, baseType: !1430, size: 64, offset: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1425, file: !25, line: 41, size: 64, elements: !1431)
!1431 = !{!1432, !1440}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1430, file: !25, line: 42, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1435, line: 7, size: 128, elements: !1436)
!1435 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1436 = !{!1437, !1439}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1434, file: !1435, line: 8, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !311, line: 93, baseType: !535)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1434, file: !1435, line: 9, baseType: !535, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1430, file: !25, line: 43, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1443, line: 7, size: 64, elements: !1444)
!1443 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1444 = !{!1445, !1449}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1442, file: !1443, line: 8, baseType: !1446, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1443, line: 5, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !420, line: 20, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !422, line: 26, baseType: !173)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1442, file: !1443, line: 9, baseType: !1447, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1425, file: !25, line: 45, baseType: !425, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1412, file: !25, line: 54, baseType: !1452, size: 256)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1412, file: !25, line: 48, size: 256, elements: !1453)
!1453 = !{!1454, !1457, !1458, !1459, !1460}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1452, file: !25, line: 49, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1452, file: !25, line: 50, baseType: !173, size: 32, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1452, file: !25, line: 51, baseType: !173, size: 32, offset: 96)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1452, file: !25, line: 52, baseType: !328, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1452, file: !25, line: 53, baseType: !328, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1220, file: !1221, line: 835, baseType: !1462, size: 32, offset: 5120)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !201, line: 22, baseType: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !311, line: 28, baseType: !173)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1220, file: !1221, line: 836, baseType: !1462, size: 32, offset: 5152)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1220, file: !1221, line: 840, baseType: !328, size: 64, offset: 5184)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1220, file: !1221, line: 849, baseType: !1219, size: 64, offset: 5248)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1220, file: !1221, line: 852, baseType: !1219, size: 64, offset: 5312)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1220, file: !1221, line: 857, baseType: !224, size: 128, offset: 5376)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1220, file: !1221, line: 858, baseType: !224, size: 128, offset: 5504)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1220, file: !1221, line: 859, baseType: !1219, size: 64, offset: 5632)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1220, file: !1221, line: 867, baseType: !224, size: 128, offset: 5696)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1220, file: !1221, line: 868, baseType: !224, size: 128, offset: 5824)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1220, file: !1221, line: 871, baseType: !1474, size: 64, offset: 5952)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1480, !1482, !1483, !1490, !1491}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1475, file: !53, line: 61, baseType: !1233, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1475, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1475, file: !53, line: 63, baseType: !237, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1475, file: !53, line: 65, baseType: !1481, size: 256, offset: 64)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 256, elements: !1158)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1475, file: !53, line: 66, baseType: !637, size: 64, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1475, file: !53, line: 68, baseType: !1484, size: 128, offset: 384)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1485, line: 40, baseType: !1486)
!1485 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1485, line: 36, size: 128, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1486, file: !1485, line: 37, baseType: !237)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1486, file: !1485, line: 38, baseType: !224, size: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1475, file: !53, line: 69, baseType: !369, size: 128, align: 64, offset: 512)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1475, file: !53, line: 70, baseType: !1492, size: 128, offset: 640)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1493, size: 128, elements: !1374)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1493, file: !53, line: 55, baseType: !173, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1493, file: !53, line: 56, baseType: !1497, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1220, file: !1221, line: 872, baseType: !1500, size: 512, offset: 6016)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 512, elements: !1158)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1220, file: !1221, line: 873, baseType: !224, size: 128, offset: 6528)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1220, file: !1221, line: 874, baseType: !224, size: 128, offset: 6656)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1220, file: !1221, line: 876, baseType: !1504, size: 64, offset: 6784)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1506, line: 26, size: 192, elements: !1507)
!1506 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1505, file: !1506, line: 27, baseType: !7, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1505, file: !1506, line: 28, baseType: !1510, size: 128, offset: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1511, line: 43, size: 128, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1510, file: !1511, line: 44, baseType: !783)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1510, file: !1511, line: 45, baseType: !224, size: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1220, file: !1221, line: 879, baseType: !707, size: 64, offset: 6848)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1220, file: !1221, line: 882, baseType: !707, size: 64, offset: 6912)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1220, file: !1221, line: 884, baseType: !425, size: 64, offset: 6976)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1220, file: !1221, line: 885, baseType: !425, size: 64, offset: 7040)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1220, file: !1221, line: 890, baseType: !425, size: 64, offset: 7104)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1220, file: !1221, line: 891, baseType: !1521, size: 128, offset: 7168)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1221, line: 242, size: 128, elements: !1522)
!1522 = !{!1523, !1524, !1525}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1521, file: !1221, line: 244, baseType: !425, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1521, file: !1221, line: 245, baseType: !425, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1521, file: !1221, line: 246, baseType: !783, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1220, file: !1221, line: 900, baseType: !328, size: 64, offset: 7296)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1220, file: !1221, line: 901, baseType: !328, size: 64, offset: 7360)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1220, file: !1221, line: 904, baseType: !425, size: 64, offset: 7424)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1220, file: !1221, line: 907, baseType: !425, size: 64, offset: 7488)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1220, file: !1221, line: 910, baseType: !328, size: 64, offset: 7552)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1220, file: !1221, line: 911, baseType: !328, size: 64, offset: 7616)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1220, file: !1221, line: 914, baseType: !1533, size: 640, offset: 7680)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1534, line: 123, size: 640, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1542, !1543}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1533, file: !1534, line: 124, baseType: !1537, size: 576)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1538, size: 576, elements: !279)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1534, line: 108, size: 192, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1538, file: !1534, line: 109, baseType: !425, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1538, file: !1534, line: 110, baseType: !1346, size: 128, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1533, file: !1534, line: 125, baseType: !7, size: 32, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1533, file: !1534, line: 126, baseType: !7, size: 32, offset: 608)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1220, file: !1221, line: 917, baseType: !1545, size: 192, offset: 8320)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1534, line: 134, size: 192, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1545, file: !1534, line: 135, baseType: !369, size: 128, align: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1545, file: !1534, line: 136, baseType: !7, size: 32, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1220, file: !1221, line: 923, baseType: !1550, size: 64, offset: 8512)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1553, line: 111, size: 1280, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1554 = !{!1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1574, !1575, !1576, !1577, !1578, !1579, !1686, !1687, !1688, !1689, !1715, !1718, !1728}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1552, file: !1553, line: 112, baseType: !750, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1552, file: !1553, line: 120, baseType: !439, size: 32, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1552, file: !1553, line: 121, baseType: !447, size: 32, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1552, file: !1553, line: 122, baseType: !439, size: 32, offset: 96)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1552, file: !1553, line: 123, baseType: !447, size: 32, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1552, file: !1553, line: 124, baseType: !439, size: 32, offset: 160)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1552, file: !1553, line: 125, baseType: !447, size: 32, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1552, file: !1553, line: 126, baseType: !439, size: 32, offset: 224)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1552, file: !1553, line: 127, baseType: !447, size: 32, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1552, file: !1553, line: 128, baseType: !7, size: 32, offset: 288)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1552, file: !1553, line: 129, baseType: !1566, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1567, line: 26, baseType: !1568)
!1567 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1567, line: 24, size: 64, elements: !1569)
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1568, file: !1567, line: 25, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 64, elements: !1572)
!1572 = !{!1573}
!1573 = !DISubrange(count: 2)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1552, file: !1553, line: 130, baseType: !1566, size: 64, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1552, file: !1553, line: 131, baseType: !1566, size: 64, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1552, file: !1553, line: 132, baseType: !1566, size: 64, offset: 512)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1552, file: !1553, line: 133, baseType: !1566, size: 64, offset: 576)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1552, file: !1553, line: 135, baseType: !431, size: 8, offset: 640)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1552, file: !1553, line: 137, baseType: !1580, size: 64, offset: 704)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1582, line: 189, size: 1664, elements: !1583)
!1582 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1583 = !{!1584, !1585, !1588, !1593, !1594, !1597, !1598, !1603, !1604, !1605, !1606, !1608, !1609, !1610, !1611, !1612, !1650, !1671}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1581, file: !1582, line: 190, baseType: !1233, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1581, file: !1582, line: 191, baseType: !1586, size: 32, offset: 32)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1582, line: 28, baseType: !1587)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !201, line: 98, baseType: !1447)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !1582, line: 192, baseType: !1589, size: 192, offset: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1581, file: !1582, line: 192, size: 192, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1589, file: !1582, line: 193, baseType: !224, size: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1589, file: !1582, line: 194, baseType: !763, size: 192, align: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1581, file: !1582, line: 199, baseType: !770, size: 256, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1581, file: !1582, line: 200, baseType: !1595, size: 64, offset: 512)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1582, line: 200, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1581, file: !1582, line: 201, baseType: !167, size: 64, offset: 576)
!1598 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !1582, line: 202, baseType: !1599, size: 64, offset: 640)
!1599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1581, file: !1582, line: 202, size: 64, elements: !1600)
!1600 = !{!1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1599, file: !1582, line: 203, baseType: !541, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1599, file: !1582, line: 204, baseType: !541, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1581, file: !1582, line: 206, baseType: !541, size: 64, offset: 704)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1581, file: !1582, line: 207, baseType: !439, size: 32, offset: 768)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1581, file: !1582, line: 208, baseType: !447, size: 32, offset: 800)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1581, file: !1582, line: 209, baseType: !1607, size: 32, offset: 832)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1582, line: 31, baseType: !561)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1581, file: !1582, line: 210, baseType: !320, size: 16, offset: 864)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1581, file: !1582, line: 211, baseType: !320, size: 16, offset: 880)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1581, file: !1582, line: 215, baseType: !1208, size: 16, offset: 896)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1581, file: !1582, line: 222, baseType: !328, size: 64, offset: 960)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !1582, line: 239, baseType: !1613, size: 320, offset: 1024)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1581, file: !1582, line: 239, size: 320, elements: !1614)
!1614 = !{!1615, !1642}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1613, file: !1582, line: 240, baseType: !1616, size: 320)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1582, line: 108, size: 320, elements: !1617)
!1617 = !{!1618, !1619, !1631, !1634, !1641}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1616, file: !1582, line: 110, baseType: !328, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1582, line: 111, baseType: !1620, size: 64, offset: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1616, file: !1582, line: 111, size: 64, elements: !1621)
!1621 = !{!1622, !1630}
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1582, line: 112, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1620, file: !1582, line: 112, size: 64, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1623, file: !1582, line: 114, baseType: !862, size: 16)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1623, file: !1582, line: 115, baseType: !1627, size: 48, offset: 16)
!1627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 48, elements: !1628)
!1628 = !{!1629}
!1629 = !DISubrange(count: 6)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1620, file: !1582, line: 121, baseType: !328, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1616, file: !1582, line: 123, baseType: !1632, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1582, line: 96, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1616, file: !1582, line: 124, baseType: !1635, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1582, line: 102, size: 192, elements: !1637)
!1637 = !{!1638, !1639, !1640}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1636, file: !1582, line: 103, baseType: !369, size: 128, align: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1636, file: !1582, line: 104, baseType: !1233, size: 32, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1636, file: !1582, line: 105, baseType: !200, size: 8, offset: 160)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1616, file: !1582, line: 125, baseType: !220, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1613, file: !1582, line: 241, baseType: !1643, size: 320)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1613, file: !1582, line: 241, size: 320, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648, !1649}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1643, file: !1582, line: 242, baseType: !328, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1643, file: !1582, line: 243, baseType: !328, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1643, file: !1582, line: 244, baseType: !1632, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1643, file: !1582, line: 245, baseType: !1635, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1643, file: !1582, line: 246, baseType: !278, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !1582, line: 254, baseType: !1651, size: 256, offset: 1344)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1581, file: !1582, line: 254, size: 256, elements: !1652)
!1652 = !{!1653, !1659}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1651, file: !1582, line: 255, baseType: !1654, size: 256)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1582, line: 128, size: 256, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1654, file: !1582, line: 129, baseType: !167, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1654, file: !1582, line: 130, baseType: !1658, size: 256)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 256, elements: !1158)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !1582, line: 256, baseType: !1660, size: 256)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1651, file: !1582, line: 256, size: 256, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1660, file: !1582, line: 258, baseType: !224, size: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1660, file: !1582, line: 259, baseType: !1664, size: 128, offset: 128)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1665, line: 22, size: 128, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !{!1667, !1670}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1664, file: !1665, line: 23, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1665, line: 23, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1664, file: !1665, line: 24, baseType: !328, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1581, file: !1582, line: 274, baseType: !1672, size: 64, offset: 1600)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1582, line: 170, size: 192, elements: !1674)
!1674 = !{!1675, !1684, !1685}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1673, file: !1582, line: 171, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1582, line: 165, baseType: !1677)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!173, !1580, !1680, !1682, !1580}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1673, file: !1582, line: 172, baseType: !1580, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1673, file: !1582, line: 173, baseType: !1632, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1552, file: !1553, line: 138, baseType: !1580, size: 64, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1552, file: !1553, line: 139, baseType: !1580, size: 64, offset: 832)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1552, file: !1553, line: 140, baseType: !1580, size: 64, offset: 896)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1552, file: !1553, line: 145, baseType: !1690, size: 64, offset: 960)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1692, line: 13, size: 896, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1691, file: !1692, line: 14, baseType: !1233, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1691, file: !1692, line: 15, baseType: !750, size: 32, offset: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1691, file: !1692, line: 16, baseType: !750, size: 32, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1691, file: !1692, line: 21, baseType: !774, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1691, file: !1692, line: 27, baseType: !328, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1691, file: !1692, line: 28, baseType: !328, size: 64, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1691, file: !1692, line: 29, baseType: !774, size: 64, offset: 320)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1691, file: !1692, line: 32, baseType: !641, size: 128, offset: 384)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1691, file: !1692, line: 33, baseType: !439, size: 32, offset: 512)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1691, file: !1692, line: 37, baseType: !774, size: 64, offset: 576)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1691, file: !1692, line: 44, baseType: !1705, size: 256, offset: 640)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1706, line: 15, size: 256, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1705, file: !1706, line: 16, baseType: !783)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1705, file: !1706, line: 18, baseType: !173, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1705, file: !1706, line: 19, baseType: !173, size: 32, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1705, file: !1706, line: 20, baseType: !173, size: 32, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1705, file: !1706, line: 21, baseType: !173, size: 32, offset: 96)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1705, file: !1706, line: 22, baseType: !328, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1705, file: !1706, line: 23, baseType: !328, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1552, file: !1553, line: 146, baseType: !1716, size: 64, offset: 1024)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !725, line: 516, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1552, file: !1553, line: 147, baseType: !1719, size: 64, offset: 1088)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1553, line: 25, size: 64, elements: !1721)
!1721 = !{!1722, !1723, !1724}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1720, file: !1553, line: 26, baseType: !750, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1720, file: !1553, line: 27, baseType: !173, size: 32, offset: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1720, file: !1553, line: 28, baseType: !1725, offset: 64)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, elements: !1726)
!1726 = !{!1727}
!1727 = !DISubrange(count: 0)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1553, line: 149, baseType: !1729, size: 128, offset: 1152)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !1553, line: 149, size: 128, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1729, file: !1553, line: 150, baseType: !173, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1729, file: !1553, line: 151, baseType: !369, size: 128, align: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1220, file: !1221, line: 926, baseType: !1550, size: 64, offset: 8576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1220, file: !1221, line: 929, baseType: !1550, size: 64, offset: 8640)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1220, file: !1221, line: 933, baseType: !1580, size: 64, offset: 8704)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1220, file: !1221, line: 943, baseType: !1737, size: 128, offset: 8768)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !1738)
!1738 = !{!1739}
!1739 = !DISubrange(count: 16)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1220, file: !1221, line: 945, baseType: !1741, size: 64, offset: 8896)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1221, line: 49, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1220, file: !1221, line: 956, baseType: !1744, size: 64, offset: 8960)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1221, line: 45, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1220, file: !1221, line: 959, baseType: !1747, size: 64, offset: 9024)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1221, line: 959, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1220, file: !1221, line: 962, baseType: !1750, size: 64, offset: 9088)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1221, line: 66, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1220, file: !1221, line: 966, baseType: !1753, size: 64, offset: 9152)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1221, line: 50, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1220, file: !1221, line: 969, baseType: !1756, size: 64, offset: 9216)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1758, line: 82, size: 7296, elements: !1759)
!1758 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1795, !1804, !1805, !1807, !1808, !1809, !1812, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1842, !1843, !1850, !1851, !1852, !1853, !1854, !1855}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1757, file: !1758, line: 83, baseType: !1233, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1757, file: !1758, line: 84, baseType: !750, size: 32, offset: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1757, file: !1758, line: 85, baseType: !173, size: 32, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1757, file: !1758, line: 86, baseType: !224, size: 128, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1757, file: !1758, line: 88, baseType: !1484, size: 128, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1757, file: !1758, line: 91, baseType: !1219, size: 64, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1757, file: !1758, line: 94, baseType: !1767, size: 192, offset: 448)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1768, line: 30, size: 192, elements: !1769)
!1768 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1767, file: !1768, line: 31, baseType: !224, size: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1767, file: !1768, line: 32, baseType: !1772, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1773, line: 25, baseType: !1774)
!1773 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1773, line: 23, size: 64, elements: !1775)
!1775 = !{!1776}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1774, file: !1773, line: 24, baseType: !1373, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1757, file: !1758, line: 97, baseType: !637, size: 64, offset: 640)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1757, file: !1758, line: 100, baseType: !173, size: 32, offset: 704)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1757, file: !1758, line: 106, baseType: !173, size: 32, offset: 736)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1757, file: !1758, line: 107, baseType: !1219, size: 64, offset: 768)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1757, file: !1758, line: 110, baseType: !173, size: 32, offset: 832)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1757, file: !1758, line: 111, baseType: !7, size: 32, offset: 864)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1757, file: !1758, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1757, file: !1758, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1757, file: !1758, line: 128, baseType: !173, size: 32, offset: 928)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1757, file: !1758, line: 129, baseType: !224, size: 128, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1757, file: !1758, line: 132, baseType: !1295, size: 512, offset: 1088)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1757, file: !1758, line: 133, baseType: !1303, size: 64, offset: 1600)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1757, file: !1758, line: 140, baseType: !1790, size: 256, offset: 1664)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1791, size: 256, elements: !1572)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1758, line: 38, size: 128, elements: !1792)
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1791, file: !1758, line: 39, baseType: !425, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1791, file: !1758, line: 40, baseType: !425, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1757, file: !1758, line: 146, baseType: !1796, size: 192, offset: 1920)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1758, line: 66, size: 192, elements: !1797)
!1797 = !{!1798}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1796, file: !1758, line: 67, baseType: !1799, size: 192)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1758, line: 47, size: 192, elements: !1800)
!1800 = !{!1801, !1802, !1803}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1799, file: !1758, line: 48, baseType: !776, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1799, file: !1758, line: 49, baseType: !776, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1799, file: !1758, line: 50, baseType: !776, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1757, file: !1758, line: 150, baseType: !1533, size: 640, offset: 2112)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1757, file: !1758, line: 153, baseType: !1806, size: 256, offset: 2752)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1474, size: 256, elements: !1158)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1757, file: !1758, line: 159, baseType: !1474, size: 64, offset: 3008)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1757, file: !1758, line: 162, baseType: !173, size: 32, offset: 3072)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1757, file: !1758, line: 164, baseType: !1810, size: 64, offset: 3136)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1758, line: 164, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1757, file: !1758, line: 175, baseType: !1813, size: 32, offset: 3200)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !392, line: 805, baseType: !1814)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 798, size: 32, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1814, file: !392, line: 803, baseType: !391, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1814, file: !392, line: 804, baseType: !237, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1757, file: !1758, line: 176, baseType: !425, size: 64, offset: 3264)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1757, file: !1758, line: 176, baseType: !425, size: 64, offset: 3328)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1757, file: !1758, line: 176, baseType: !425, size: 64, offset: 3392)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1757, file: !1758, line: 176, baseType: !425, size: 64, offset: 3456)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1757, file: !1758, line: 177, baseType: !425, size: 64, offset: 3520)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1757, file: !1758, line: 178, baseType: !425, size: 64, offset: 3584)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1757, file: !1758, line: 179, baseType: !1521, size: 128, offset: 3648)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1757, file: !1758, line: 180, baseType: !328, size: 64, offset: 3776)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1757, file: !1758, line: 180, baseType: !328, size: 64, offset: 3840)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1757, file: !1758, line: 180, baseType: !328, size: 64, offset: 3904)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1757, file: !1758, line: 180, baseType: !328, size: 64, offset: 3968)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1757, file: !1758, line: 181, baseType: !328, size: 64, offset: 4032)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1757, file: !1758, line: 181, baseType: !328, size: 64, offset: 4096)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1757, file: !1758, line: 181, baseType: !328, size: 64, offset: 4160)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1757, file: !1758, line: 181, baseType: !328, size: 64, offset: 4224)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1757, file: !1758, line: 182, baseType: !328, size: 64, offset: 4288)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1757, file: !1758, line: 182, baseType: !328, size: 64, offset: 4352)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1757, file: !1758, line: 182, baseType: !328, size: 64, offset: 4416)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1757, file: !1758, line: 182, baseType: !328, size: 64, offset: 4480)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1757, file: !1758, line: 183, baseType: !328, size: 64, offset: 4544)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1757, file: !1758, line: 183, baseType: !328, size: 64, offset: 4608)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1757, file: !1758, line: 184, baseType: !1840, offset: 4672)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1841, line: 12, elements: !251)
!1841 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1757, file: !1758, line: 192, baseType: !427, size: 64, offset: 4672)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1757, file: !1758, line: 203, baseType: !1844, size: 2048, offset: 4736)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1845, size: 2048, elements: !1738)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1846, line: 43, size: 128, elements: !1847)
!1846 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1845, file: !1846, line: 44, baseType: !327, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1845, file: !1846, line: 45, baseType: !327, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1757, file: !1758, line: 220, baseType: !200, size: 8, offset: 6784)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1757, file: !1758, line: 221, baseType: !1208, size: 16, offset: 6800)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1757, file: !1758, line: 222, baseType: !1208, size: 16, offset: 6816)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1757, file: !1758, line: 224, baseType: !977, size: 64, offset: 6848)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1757, file: !1758, line: 227, baseType: !1176, size: 192, offset: 6912)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1757, file: !1758, line: 233, baseType: !1176, size: 192, offset: 7104)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1220, file: !1221, line: 970, baseType: !1857, size: 64, offset: 9280)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1758, line: 20, size: 16576, elements: !1859)
!1859 = !{!1860, !1861, !1862, !1863}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1858, file: !1758, line: 21, baseType: !237)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1858, file: !1758, line: 22, baseType: !1233, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1858, file: !1758, line: 23, baseType: !1484, size: 128, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1858, file: !1758, line: 24, baseType: !1864, size: 16384, offset: 192)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1865, size: 16384, elements: !283)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1768, line: 49, size: 256, elements: !1866)
!1866 = !{!1867}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1865, file: !1768, line: 50, baseType: !1868, size: 256)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1768, line: 35, size: 256, elements: !1869)
!1869 = !{!1870, !1877, !1878, !1884}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1868, file: !1768, line: 37, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1872, line: 19, baseType: !1873)
!1872 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1872, line: 18, baseType: !1875)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !173}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1868, file: !1768, line: 38, baseType: !328, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1868, file: !1768, line: 44, baseType: !1879, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1872, line: 22, baseType: !1880)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1872, line: 21, baseType: !1882)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1868, file: !1768, line: 46, baseType: !1772, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1220, file: !1221, line: 971, baseType: !1772, size: 64, offset: 9344)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1220, file: !1221, line: 972, baseType: !1772, size: 64, offset: 9408)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1220, file: !1221, line: 974, baseType: !1772, size: 64, offset: 9472)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1220, file: !1221, line: 975, baseType: !1767, size: 192, offset: 9536)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1220, file: !1221, line: 976, baseType: !328, size: 64, offset: 9728)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1220, file: !1221, line: 977, baseType: !325, size: 64, offset: 9792)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1220, file: !1221, line: 978, baseType: !7, size: 32, offset: 9856)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1220, file: !1221, line: 980, baseType: !372, size: 64, offset: 9920)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1220, file: !1221, line: 989, baseType: !1894, size: 128, offset: 9984)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1895, line: 35, size: 128, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !{!1897, !1898, !1899}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1894, file: !1895, line: 36, baseType: !173, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1894, file: !1895, line: 37, baseType: !750, size: 32, offset: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1894, file: !1895, line: 38, baseType: !1900, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1895, line: 23, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1220, file: !1221, line: 992, baseType: !425, size: 64, offset: 10112)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1220, file: !1221, line: 993, baseType: !425, size: 64, offset: 10176)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1220, file: !1221, line: 996, baseType: !237, offset: 10240)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1220, file: !1221, line: 999, baseType: !783, offset: 10240)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1220, file: !1221, line: 1001, baseType: !1907, size: 64, offset: 10240)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1221, line: 636, size: 64, elements: !1908)
!1908 = !{!1909}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1907, file: !1221, line: 637, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1220, file: !1221, line: 1005, baseType: !755, size: 128, offset: 10304)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1220, file: !1221, line: 1007, baseType: !1219, size: 64, offset: 10432)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1220, file: !1221, line: 1009, baseType: !1914, size: 64, offset: 10496)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1221, line: 1009, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1220, file: !1221, line: 1043, baseType: !167, size: 64, offset: 10560)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1220, file: !1221, line: 1046, baseType: !1918, size: 64, offset: 10624)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1221, line: 41, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1220, file: !1221, line: 1050, baseType: !1921, size: 64, offset: 10688)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1221, line: 42, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1220, file: !1221, line: 1054, baseType: !1924, size: 64, offset: 10752)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1221, line: 55, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1220, file: !1221, line: 1056, baseType: !1927, size: 64, offset: 10816)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1221, line: 40, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1220, file: !1221, line: 1058, baseType: !1930, size: 64, offset: 10880)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1932, line: 99, size: 704, elements: !1933)
!1932 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1933 = !{!1934, !1935, !1936, !1937, !1938, !1939, !1940, !1959, !1960}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1931, file: !1932, line: 100, baseType: !774, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1931, file: !1932, line: 101, baseType: !750, size: 32, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1931, file: !1932, line: 102, baseType: !750, size: 32, offset: 96)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1931, file: !1932, line: 105, baseType: !237, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1931, file: !1932, line: 107, baseType: !320, size: 16, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1931, file: !1932, line: 109, baseType: !741, size: 128, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1931, file: !1932, line: 110, baseType: !1941, size: 64, offset: 320)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1932, line: 73, size: 448, elements: !1943)
!1943 = !{!1944, !1947, !1948, !1953, !1958}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1942, file: !1932, line: 74, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1932, line: 74, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1942, file: !1932, line: 75, baseType: !1930, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !1932, line: 83, baseType: !1949, size: 128, offset: 128)
!1949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1942, file: !1932, line: 83, size: 128, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1949, file: !1932, line: 84, baseType: !224, size: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1949, file: !1932, line: 85, baseType: !938, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !1932, line: 87, baseType: !1954, size: 128, offset: 256)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1942, file: !1932, line: 87, size: 128, elements: !1955)
!1955 = !{!1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1954, file: !1932, line: 88, baseType: !641, size: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1954, file: !1932, line: 89, baseType: !369, size: 128, align: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1942, file: !1932, line: 92, baseType: !7, size: 32, offset: 384)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1931, file: !1932, line: 111, baseType: !637, size: 64, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1931, file: !1932, line: 113, baseType: !1961, size: 256, offset: 448)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1962, line: 102, size: 256, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1963 = !{!1964, !1965, !1966}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1961, file: !1962, line: 103, baseType: !774, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1961, file: !1962, line: 104, baseType: !224, size: 128, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1961, file: !1962, line: 105, baseType: !1967, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1962, line: 21, baseType: !1968)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !1971}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1220, file: !1221, line: 1061, baseType: !1973, size: 64, offset: 10944)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1221, line: 43, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1220, file: !1221, line: 1064, baseType: !328, size: 64, offset: 11008)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1220, file: !1221, line: 1065, baseType: !1977, size: 64, offset: 11072)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1768, line: 14, baseType: !1979)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1768, line: 12, size: 384, elements: !1980)
!1980 = !{!1981}
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !1768, line: 13, baseType: !1982, size: 384)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1768, line: 13, size: 384, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1982, file: !1768, line: 13, baseType: !173, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1982, file: !1768, line: 13, baseType: !173, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1982, file: !1768, line: 13, baseType: !173, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1982, file: !1768, line: 13, baseType: !1988, size: 256, offset: 128)
!1988 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1989, line: 32, size: 256, elements: !1990)
!1989 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1990 = !{!1991, !1996, !2009, !2015, !2024, !2044, !2049}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1988, file: !1989, line: 37, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1988, file: !1989, line: 34, size: 64, elements: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1992, file: !1989, line: 35, baseType: !1463, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1992, file: !1989, line: 36, baseType: !445, size: 32, offset: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1988, file: !1989, line: 45, baseType: !1997, size: 192)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1988, file: !1989, line: 40, size: 192, elements: !1998)
!1998 = !{!1999, !2001, !2002, !2008}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1997, file: !1989, line: 41, baseType: !2000, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !311, line: 95, baseType: !173)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1997, file: !1989, line: 42, baseType: !173, size: 32, offset: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1997, file: !1989, line: 43, baseType: !2003, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1989, line: 11, baseType: !2004)
!2004 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1989, line: 8, size: 64, elements: !2005)
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2004, file: !1989, line: 9, baseType: !173, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2004, file: !1989, line: 10, baseType: !167, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1997, file: !1989, line: 44, baseType: !173, size: 32, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1988, file: !1989, line: 52, baseType: !2010, size: 128)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1988, file: !1989, line: 48, size: 128, elements: !2011)
!2011 = !{!2012, !2013, !2014}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2010, file: !1989, line: 49, baseType: !1463, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2010, file: !1989, line: 50, baseType: !445, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2010, file: !1989, line: 51, baseType: !2003, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1988, file: !1989, line: 61, baseType: !2016, size: 256)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1988, file: !1989, line: 55, size: 256, elements: !2017)
!2017 = !{!2018, !2019, !2020, !2021, !2023}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2016, file: !1989, line: 56, baseType: !1463, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2016, file: !1989, line: 57, baseType: !445, size: 32, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2016, file: !1989, line: 58, baseType: !173, size: 32, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2016, file: !1989, line: 59, baseType: !2022, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !311, line: 94, baseType: !312)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2016, file: !1989, line: 60, baseType: !2022, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1988, file: !1989, line: 95, baseType: !2025, size: 256)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1988, file: !1989, line: 64, size: 256, elements: !2026)
!2026 = !{!2027, !2028}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2025, file: !1989, line: 65, baseType: !167, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !1989, line: 77, baseType: !2029, size: 192, offset: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2025, file: !1989, line: 77, size: 192, elements: !2030)
!2030 = !{!2031, !2032, !2039}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2029, file: !1989, line: 82, baseType: !1208, size: 16)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2029, file: !1989, line: 88, baseType: !2033, size: 192)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2029, file: !1989, line: 84, size: 192, elements: !2034)
!2034 = !{!2035, !2037, !2038}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2033, file: !1989, line: 85, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 64, elements: !1333)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2033, file: !1989, line: 86, baseType: !167, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2033, file: !1989, line: 87, baseType: !167, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2029, file: !1989, line: 93, baseType: !2040, size: 96)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2029, file: !1989, line: 90, size: 96, elements: !2041)
!2041 = !{!2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2040, file: !1989, line: 91, baseType: !2036, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2040, file: !1989, line: 92, baseType: !421, size: 32, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1988, file: !1989, line: 101, baseType: !2045, size: 128)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1988, file: !1989, line: 98, size: 128, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2045, file: !1989, line: 99, baseType: !313, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2045, file: !1989, line: 100, baseType: !173, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1988, file: !1989, line: 108, baseType: !2050, size: 128)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1988, file: !1989, line: 104, size: 128, elements: !2051)
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2050, file: !1989, line: 105, baseType: !167, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2050, file: !1989, line: 106, baseType: !173, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2050, file: !1989, line: 107, baseType: !7, size: 32, offset: 96)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1220, file: !1221, line: 1067, baseType: !1840, offset: 11136)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1220, file: !1221, line: 1099, baseType: !2057, size: 64, offset: 11136)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1221, line: 56, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1220, file: !1221, line: 1103, baseType: !224, size: 128, offset: 11200)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1220, file: !1221, line: 1104, baseType: !2061, size: 64, offset: 11328)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1221, line: 46, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1220, file: !1221, line: 1105, baseType: !1176, size: 192, offset: 11392)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1220, file: !1221, line: 1106, baseType: !7, size: 32, offset: 11584)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1220, file: !1221, line: 1109, baseType: !2066, size: 128, offset: 11648)
!2066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2067, size: 128, elements: !1572)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1221, line: 51, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1220, file: !1221, line: 1110, baseType: !1176, size: 192, offset: 11776)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1220, file: !1221, line: 1111, baseType: !224, size: 128, offset: 11968)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1220, file: !1221, line: 1173, baseType: !2072, size: 64, offset: 12096)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2074, line: 62, size: 256, align: 256, elements: !2075)
!2074 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2075 = !{!2076, !2077, !2078, !2083}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2073, file: !2074, line: 75, baseType: !421, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2073, file: !2074, line: 90, baseType: !421, size: 32, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2073, file: !2074, line: 124, baseType: !2079, size: 64, offset: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2073, file: !2074, line: 109, size: 64, elements: !2080)
!2080 = !{!2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2079, file: !2074, line: 110, baseType: !426, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2079, file: !2074, line: 112, baseType: !426, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2073, file: !2074, line: 144, baseType: !421, size: 32, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1220, file: !1221, line: 1174, baseType: !419, size: 32, offset: 12160)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1220, file: !1221, line: 1179, baseType: !328, size: 64, offset: 12224)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1220, file: !1221, line: 1182, baseType: !2087, size: 128, offset: 12288)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1154, line: 76, size: 128, elements: !2088)
!2088 = !{!2089, !2094, !2095}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2087, file: !1154, line: 85, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2091, line: 7, size: 64, elements: !2092)
!2091 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2092 = !{!2093}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2090, file: !2091, line: 12, baseType: !1370, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2087, file: !1154, line: 88, baseType: !200, size: 8, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2087, file: !1154, line: 95, baseType: !200, size: 8, offset: 72)
!2096 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !1221, line: 1184, baseType: !2097, size: 128, offset: 12416)
!2097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1220, file: !1221, line: 1184, size: 128, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2097, file: !1221, line: 1185, baseType: !1233, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2097, file: !1221, line: 1186, baseType: !369, size: 128, align: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1220, file: !1221, line: 1190, baseType: !2102, size: 64, offset: 12544)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1221, line: 53, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1220, file: !1221, line: 1192, baseType: !2105, size: 128, offset: 12608)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1154, line: 64, size: 128, elements: !2106)
!2106 = !{!2107, !2108, !2109}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2105, file: !1154, line: 65, baseType: !723, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2105, file: !1154, line: 67, baseType: !421, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2105, file: !1154, line: 68, baseType: !421, size: 32, offset: 96)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1220, file: !1221, line: 1206, baseType: !173, size: 32, offset: 12736)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1220, file: !1221, line: 1207, baseType: !173, size: 32, offset: 12768)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1220, file: !1221, line: 1209, baseType: !328, size: 64, offset: 12800)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1220, file: !1221, line: 1219, baseType: !425, size: 64, offset: 12864)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1220, file: !1221, line: 1220, baseType: !425, size: 64, offset: 12928)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1220, file: !1221, line: 1317, baseType: !173, size: 32, offset: 12992)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1220, file: !1221, line: 1319, baseType: !1219, size: 64, offset: 13056)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1220, file: !1221, line: 1322, baseType: !2118, size: 64, offset: 13120)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2120, line: 56, size: 512, elements: !2121)
!2120 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128, !2130}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2119, file: !2120, line: 57, baseType: !2118, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2119, file: !2120, line: 58, baseType: !167, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2119, file: !2120, line: 59, baseType: !328, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2119, file: !2120, line: 60, baseType: !328, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2119, file: !2120, line: 61, baseType: !823, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2119, file: !2120, line: 62, baseType: !7, size: 32, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2119, file: !2120, line: 63, baseType: !2129, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !201, line: 153, baseType: !425)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2119, file: !2120, line: 64, baseType: !209, size: 64, offset: 448)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1220, file: !1221, line: 1326, baseType: !1233, size: 32, offset: 13184)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1220, file: !1221, line: 1342, baseType: !167, size: 64, offset: 13248)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1220, file: !1221, line: 1343, baseType: !426, size: 64, offset: 13312)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1220, file: !1221, line: 1344, baseType: !425, size: 64, offset: 13376)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1220, file: !1221, line: 1345, baseType: !426, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1220, file: !1221, line: 1346, baseType: !426, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1220, file: !1221, line: 1347, baseType: !426, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1220, file: !1221, line: 1348, baseType: !369, size: 128, align: 64, offset: 13504)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1220, file: !1221, line: 1358, baseType: !2140, size: 34816, offset: 13824)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2141, line: 485, size: 34816, elements: !2142)
!2141 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2142 = !{!2143, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2172, !2173, !2174, !2175, !2176, !2177, !2180, !2181, !2182}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2140, file: !2141, line: 487, baseType: !2144, size: 192)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2145, size: 192, elements: !279)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2146, line: 16, size: 64, elements: !2147)
!2146 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2147 = !{!2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2145, file: !2146, line: 17, baseType: !862, size: 16)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2145, file: !2146, line: 18, baseType: !862, size: 16, offset: 16)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2145, file: !2146, line: 19, baseType: !862, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2145, file: !2146, line: 19, baseType: !862, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2145, file: !2146, line: 19, baseType: !862, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2145, file: !2146, line: 19, baseType: !862, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2145, file: !2146, line: 19, baseType: !862, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2145, file: !2146, line: 20, baseType: !862, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2145, file: !2146, line: 20, baseType: !862, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2145, file: !2146, line: 20, baseType: !862, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2145, file: !2146, line: 20, baseType: !862, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2145, file: !2146, line: 20, baseType: !862, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2145, file: !2146, line: 20, baseType: !862, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2140, file: !2141, line: 491, baseType: !328, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2140, file: !2141, line: 495, baseType: !320, size: 16, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2140, file: !2141, line: 496, baseType: !320, size: 16, offset: 272)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2140, file: !2141, line: 497, baseType: !320, size: 16, offset: 288)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2140, file: !2141, line: 498, baseType: !320, size: 16, offset: 304)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2140, file: !2141, line: 502, baseType: !328, size: 64, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2140, file: !2141, line: 503, baseType: !328, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2140, file: !2141, line: 514, baseType: !2169, size: 256, offset: 448)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2170, size: 256, elements: !1158)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2141, line: 483, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2140, file: !2141, line: 516, baseType: !328, size: 64, offset: 704)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2140, file: !2141, line: 518, baseType: !328, size: 64, offset: 768)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2140, file: !2141, line: 520, baseType: !328, size: 64, offset: 832)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2140, file: !2141, line: 521, baseType: !328, size: 64, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2140, file: !2141, line: 522, baseType: !328, size: 64, offset: 960)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2140, file: !2141, line: 528, baseType: !2178, size: 64, offset: 1024)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2141, line: 10, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2140, file: !2141, line: 535, baseType: !328, size: 64, offset: 1088)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2140, file: !2141, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2140, file: !2141, line: 540, baseType: !2183, size: 33280, offset: 1536)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2184, line: 317, size: 33280, elements: !2185)
!2184 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2185 = !{!2186, !2187, !2188}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2183, file: !2184, line: 330, baseType: !7, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2183, file: !2184, line: 337, baseType: !328, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2183, file: !2184, line: 348, baseType: !2189, size: 32768, offset: 512)
!2189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2184, line: 304, size: 32768, elements: !2190)
!2190 = !{!2191, !2206, !2245, !2295, !2308}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2189, file: !2184, line: 305, baseType: !2192, size: 896)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2184, line: 12, size: 896, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2205}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2192, file: !2184, line: 13, baseType: !419, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2192, file: !2184, line: 14, baseType: !419, size: 32, offset: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2192, file: !2184, line: 15, baseType: !419, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2192, file: !2184, line: 16, baseType: !419, size: 32, offset: 96)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2192, file: !2184, line: 17, baseType: !419, size: 32, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2192, file: !2184, line: 18, baseType: !419, size: 32, offset: 160)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2192, file: !2184, line: 19, baseType: !419, size: 32, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2192, file: !2184, line: 22, baseType: !2202, size: 640, offset: 224)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 640, elements: !2203)
!2203 = !{!2204}
!2204 = !DISubrange(count: 20)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2192, file: !2184, line: 25, baseType: !419, size: 32, offset: 864)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2189, file: !2184, line: 306, baseType: !2207, size: 4096, align: 128)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2184, line: 34, size: 4096, align: 128, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2212, !2213, !2228, !2229, !2230, !2234, !2236, !2240}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2207, file: !2184, line: 35, baseType: !862, size: 16)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2207, file: !2184, line: 36, baseType: !862, size: 16, offset: 16)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2207, file: !2184, line: 37, baseType: !862, size: 16, offset: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2207, file: !2184, line: 38, baseType: !862, size: 16, offset: 48)
!2213 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !2184, line: 39, baseType: !2214, size: 128, offset: 64)
!2214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2207, file: !2184, line: 39, size: 128, elements: !2215)
!2215 = !{!2216, !2221}
!2216 = !DIDerivedType(tag: DW_TAG_member, scope: !2214, file: !2184, line: 40, baseType: !2217, size: 128)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2214, file: !2184, line: 40, size: 128, elements: !2218)
!2218 = !{!2219, !2220}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2217, file: !2184, line: 41, baseType: !425, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2217, file: !2184, line: 42, baseType: !425, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, scope: !2214, file: !2184, line: 44, baseType: !2222, size: 128)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2214, file: !2184, line: 44, size: 128, elements: !2223)
!2223 = !{!2224, !2225, !2226, !2227}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2222, file: !2184, line: 45, baseType: !419, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2222, file: !2184, line: 46, baseType: !419, size: 32, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2222, file: !2184, line: 47, baseType: !419, size: 32, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2222, file: !2184, line: 48, baseType: !419, size: 32, offset: 96)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2207, file: !2184, line: 51, baseType: !419, size: 32, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2207, file: !2184, line: 52, baseType: !419, size: 32, offset: 224)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2207, file: !2184, line: 55, baseType: !2231, size: 1024, offset: 256)
!2231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 1024, elements: !2232)
!2232 = !{!2233}
!2233 = !DISubrange(count: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2207, file: !2184, line: 58, baseType: !2235, size: 2048, offset: 1280)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 2048, elements: !283)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2207, file: !2184, line: 60, baseType: !2237, size: 384, offset: 3328)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 384, elements: !2238)
!2238 = !{!2239}
!2239 = !DISubrange(count: 12)
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !2184, line: 62, baseType: !2241, size: 384, offset: 3712)
!2241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2207, file: !2184, line: 62, size: 384, elements: !2242)
!2242 = !{!2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2241, file: !2184, line: 63, baseType: !2237, size: 384)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2241, file: !2184, line: 64, baseType: !2237, size: 384)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2189, file: !2184, line: 307, baseType: !2246, size: 1088)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2184, line: 79, size: 1088, elements: !2247)
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2294}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2246, file: !2184, line: 80, baseType: !419, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2246, file: !2184, line: 81, baseType: !419, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2246, file: !2184, line: 82, baseType: !419, size: 32, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2246, file: !2184, line: 83, baseType: !419, size: 32, offset: 96)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2246, file: !2184, line: 84, baseType: !419, size: 32, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2246, file: !2184, line: 85, baseType: !419, size: 32, offset: 160)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2246, file: !2184, line: 86, baseType: !419, size: 32, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2246, file: !2184, line: 88, baseType: !2202, size: 640, offset: 224)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2246, file: !2184, line: 89, baseType: !1355, size: 8, offset: 864)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2246, file: !2184, line: 90, baseType: !1355, size: 8, offset: 872)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2246, file: !2184, line: 91, baseType: !1355, size: 8, offset: 880)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2246, file: !2184, line: 92, baseType: !1355, size: 8, offset: 888)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2246, file: !2184, line: 93, baseType: !1355, size: 8, offset: 896)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2246, file: !2184, line: 94, baseType: !1355, size: 8, offset: 904)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2246, file: !2184, line: 95, baseType: !2263, size: 64, offset: 960)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2265, line: 11, size: 128, elements: !2266)
!2265 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2266 = !{!2267, !2268}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2264, file: !2265, line: 12, baseType: !313, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2264, file: !2265, line: 13, baseType: !2269, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2271, line: 56, size: 1344, elements: !2272)
!2271 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2272 = !{!2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2270, file: !2271, line: 61, baseType: !328, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2270, file: !2271, line: 62, baseType: !328, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2270, file: !2271, line: 63, baseType: !328, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2270, file: !2271, line: 64, baseType: !328, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2270, file: !2271, line: 65, baseType: !328, size: 64, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2270, file: !2271, line: 66, baseType: !328, size: 64, offset: 320)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2270, file: !2271, line: 68, baseType: !328, size: 64, offset: 384)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2270, file: !2271, line: 69, baseType: !328, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2270, file: !2271, line: 70, baseType: !328, size: 64, offset: 512)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2270, file: !2271, line: 71, baseType: !328, size: 64, offset: 576)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2270, file: !2271, line: 72, baseType: !328, size: 64, offset: 640)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2270, file: !2271, line: 73, baseType: !328, size: 64, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2270, file: !2271, line: 74, baseType: !328, size: 64, offset: 768)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2270, file: !2271, line: 75, baseType: !328, size: 64, offset: 832)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2270, file: !2271, line: 76, baseType: !328, size: 64, offset: 896)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2270, file: !2271, line: 81, baseType: !328, size: 64, offset: 960)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2270, file: !2271, line: 83, baseType: !328, size: 64, offset: 1024)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2270, file: !2271, line: 84, baseType: !328, size: 64, offset: 1088)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2270, file: !2271, line: 85, baseType: !328, size: 64, offset: 1152)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2270, file: !2271, line: 86, baseType: !328, size: 64, offset: 1216)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2270, file: !2271, line: 87, baseType: !328, size: 64, offset: 1280)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2246, file: !2184, line: 96, baseType: !419, size: 32, offset: 1024)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2189, file: !2184, line: 308, baseType: !2296, size: 4608, align: 512)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2184, line: 289, size: 4608, align: 512, elements: !2297)
!2297 = !{!2298, !2299, !2306}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2296, file: !2184, line: 290, baseType: !2207, size: 4096, align: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2296, file: !2184, line: 291, baseType: !2300, size: 512, offset: 4096)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2184, line: 268, size: 512, elements: !2301)
!2301 = !{!2302, !2303, !2304}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2300, file: !2184, line: 269, baseType: !425, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2300, file: !2184, line: 270, baseType: !425, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2300, file: !2184, line: 271, baseType: !2305, size: 384, offset: 128)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 384, elements: !1628)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2296, file: !2184, line: 292, baseType: !2307, offset: 4608)
!2307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, elements: !1726)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2189, file: !2184, line: 309, baseType: !2309, size: 32768)
!2309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 32768, elements: !2310)
!2310 = !{!2311}
!2311 = !DISubrange(count: 4096)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1216, file: !725, line: 378, baseType: !2313, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1212, file: !725, line: 384, baseType: !1505, size: 192, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !981, file: !725, line: 500, baseType: !237, offset: 6656)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !981, file: !725, line: 501, baseType: !2317, size: 64, offset: 6656)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !725, line: 387, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !981, file: !725, line: 516, baseType: !1716, size: 64, offset: 6720)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !981, file: !725, line: 519, baseType: !356, size: 64, offset: 6784)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !981, file: !725, line: 521, baseType: !2322, size: 64, offset: 6848)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !725, line: 521, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !981, file: !725, line: 545, baseType: !750, size: 32, offset: 6912)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !981, file: !725, line: 548, baseType: !200, size: 8, offset: 6944)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !981, file: !725, line: 550, baseType: !2327, offset: 6952)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2328, line: 142, elements: !251)
!2328 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !981, file: !725, line: 554, baseType: !1961, size: 256, offset: 6976)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !981, file: !725, line: 557, baseType: !419, size: 32, offset: 7232)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !978, file: !725, line: 565, baseType: !2332, offset: 7296)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, elements: !2333)
!2333 = !{!2334}
!2334 = !DISubrange(count: -1)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !974, file: !725, line: 151, baseType: !750, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !967, file: !725, line: 156, baseType: !237, offset: 256)
!2337 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 159, baseType: !2338, size: 128)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 159, size: 128, elements: !2339)
!2339 = !{!2340, !2404}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2338, file: !725, line: 161, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2343)
!2343 = !{!2344, !2354, !2375, !2376, !2377, !2378, !2379, !2391, !2392, !2393}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2342, file: !31, line: 111, baseType: !2345, size: 384)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2346)
!2346 = !{!2347, !2349, !2350, !2351, !2352, !2353}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2345, file: !31, line: 20, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2345, file: !31, line: 21, baseType: !2348, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2345, file: !31, line: 22, baseType: !2348, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2345, file: !31, line: 23, baseType: !328, size: 64, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2345, file: !31, line: 24, baseType: !328, size: 64, offset: 256)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2345, file: !31, line: 25, baseType: !328, size: 64, offset: 320)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2342, file: !31, line: 112, baseType: !2355, size: 64, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2357, line: 105, size: 128, elements: !2358)
!2357 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2358 = !{!2359, !2360}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2356, file: !2357, line: 110, baseType: !328, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2356, file: !2357, line: 118, baseType: !2361, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2357, line: 95, size: 448, elements: !2363)
!2363 = !{!2364, !2365, !2370, !2371, !2372, !2373, !2374}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2362, file: !2357, line: 96, baseType: !774, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2362, file: !2357, line: 97, baseType: !2366, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2357, line: 60, baseType: !2368)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2355}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2362, file: !2357, line: 98, baseType: !2366, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2362, file: !2357, line: 99, baseType: !200, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2362, file: !2357, line: 100, baseType: !200, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2362, file: !2357, line: 101, baseType: !369, size: 128, align: 64, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2362, file: !2357, line: 102, baseType: !2355, size: 64, offset: 384)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2342, file: !31, line: 113, baseType: !2356, size: 128, offset: 448)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2342, file: !31, line: 114, baseType: !1505, size: 192, offset: 576)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2342, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2342, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2342, file: !31, line: 117, baseType: !2380, size: 64, offset: 832)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2382)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2383)
!2383 = !{!2384, !2385, !2389, !2390}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2382, file: !31, line: 73, baseType: !843, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2382, file: !31, line: 78, baseType: !2386, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !2341}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2382, file: !31, line: 83, baseType: !2386, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2382, file: !31, line: 89, baseType: !1030, size: 64, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2342, file: !31, line: 118, baseType: !167, size: 64, offset: 896)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2342, file: !31, line: 119, baseType: !173, size: 32, offset: 960)
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !2342, file: !31, line: 120, baseType: !2394, size: 128, offset: 1024)
!2394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2342, file: !31, line: 120, size: 128, elements: !2395)
!2395 = !{!2396, !2402}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2394, file: !31, line: 121, baseType: !2397, size: 128)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2398, line: 6, size: 128, elements: !2399)
!2398 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2399 = !{!2400, !2401}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2397, file: !2398, line: 7, baseType: !425, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2397, file: !2398, line: 8, baseType: !425, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2394, file: !31, line: 122, baseType: !2403)
!2403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2397, elements: !1726)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2338, file: !725, line: 162, baseType: !167, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !729, file: !725, line: 176, baseType: !369, size: 128, align: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 179, baseType: !2407, size: 32, offset: 384)
!2407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 179, size: 32, elements: !2408)
!2408 = !{!2409, !2410, !2411, !2412}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2407, file: !725, line: 184, baseType: !750, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2407, file: !725, line: 192, baseType: !7, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2407, file: !725, line: 194, baseType: !7, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2407, file: !725, line: 195, baseType: !173, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !724, file: !725, line: 199, baseType: !750, size: 32, offset: 416)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !659, file: !44, line: 1964, baseType: !2415, size: 64, offset: 1344)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!313, !601, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2420, line: 12, size: 256, elements: !2421)
!2420 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2421 = !{!2422, !2423, !2424, !2425, !2426}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2419, file: !2420, line: 13, baseType: !746, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2419, file: !2420, line: 16, baseType: !173, size: 32, offset: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2419, file: !2420, line: 23, baseType: !328, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2419, file: !2420, line: 30, baseType: !328, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2419, file: !2420, line: 33, baseType: !2427, size: 64, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !725, line: 27, flags: DIFlagFwdDecl)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !659, file: !44, line: 1966, baseType: !2415, size: 64, offset: 1408)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !602, file: !44, line: 1424, baseType: !2431, size: 64, offset: 448)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2433)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2434)
!2434 = !{!2435, !2481, !2485, !2489, !2490, !2491, !2492, !2493, !2498, !2503, !2507}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2433, file: !38, line: 323, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!173, !2439}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2466, !2467, !2468}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2440, file: !38, line: 295, baseType: !641, size: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2440, file: !38, line: 296, baseType: !224, size: 128, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2440, file: !38, line: 297, baseType: !224, size: 128, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2440, file: !38, line: 298, baseType: !224, size: 128, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2440, file: !38, line: 299, baseType: !1176, size: 192, offset: 512)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2440, file: !38, line: 300, baseType: !237, offset: 704)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2440, file: !38, line: 301, baseType: !750, size: 32, offset: 704)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2440, file: !38, line: 302, baseType: !601, size: 64, offset: 768)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2440, file: !38, line: 303, baseType: !2451, size: 64, offset: 832)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2452)
!2452 = !{!2453, !2465}
!2453 = !DIDerivedType(tag: DW_TAG_member, scope: !2451, file: !38, line: 69, baseType: !2454, size: 32)
!2454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2451, file: !38, line: 69, size: 32, elements: !2455)
!2455 = !{!2456, !2457, !2458}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2454, file: !38, line: 70, baseType: !439, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2454, file: !38, line: 71, baseType: !447, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2454, file: !38, line: 72, baseType: !2459, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2460, line: 24, baseType: !2461)
!2460 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2460, line: 22, size: 32, elements: !2462)
!2462 = !{!2463}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2461, file: !2460, line: 23, baseType: !2464, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2460, line: 20, baseType: !445)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2451, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2440, file: !38, line: 304, baseType: !533, size: 64, offset: 896)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2440, file: !38, line: 305, baseType: !328, size: 64, offset: 960)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2440, file: !38, line: 306, baseType: !2469, size: 576, offset: 1024)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2470)
!2470 = !{!2471, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2469, file: !38, line: 206, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !535)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2469, file: !38, line: 207, baseType: !2472, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2469, file: !38, line: 208, baseType: !2472, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2469, file: !38, line: 209, baseType: !2472, size: 64, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2469, file: !38, line: 210, baseType: !2472, size: 64, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2469, file: !38, line: 211, baseType: !2472, size: 64, offset: 320)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2469, file: !38, line: 212, baseType: !2472, size: 64, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2469, file: !38, line: 213, baseType: !541, size: 64, offset: 448)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2469, file: !38, line: 214, baseType: !541, size: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2433, file: !38, line: 324, baseType: !2482, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!2439, !601, !173}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2433, file: !38, line: 325, baseType: !2486, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !2439}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2433, file: !38, line: 326, baseType: !2436, size: 64, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2433, file: !38, line: 327, baseType: !2436, size: 64, offset: 256)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2433, file: !38, line: 328, baseType: !2436, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2433, file: !38, line: 329, baseType: !687, size: 64, offset: 384)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2433, file: !38, line: 332, baseType: !2494, size: 64, offset: 448)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!2497, !433}
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2433, file: !38, line: 333, baseType: !2499, size: 64, offset: 512)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!173, !433, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2433, file: !38, line: 335, baseType: !2504, size: 64, offset: 576)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!173, !433, !2497}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2433, file: !38, line: 337, baseType: !2508, size: 64, offset: 640)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!173, !601, !2511}
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !602, file: !44, line: 1425, baseType: !2513, size: 64, offset: 512)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2515)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2516)
!2516 = !{!2517, !2521, !2522, !2526, !2527, !2528, !2543, !2566, !2570, !2571, !2594}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2515, file: !38, line: 429, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!173, !601, !173, !173, !551}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2515, file: !38, line: 430, baseType: !687, size: 64, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2515, file: !38, line: 431, baseType: !2523, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!173, !601, !7}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2515, file: !38, line: 432, baseType: !2523, size: 64, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2515, file: !38, line: 433, baseType: !687, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2515, file: !38, line: 434, baseType: !2529, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!173, !601, !173, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2534)
!2534 = !{!2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2533, file: !38, line: 416, baseType: !173, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2533, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2533, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2533, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2533, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2533, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2533, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2533, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2515, file: !38, line: 435, baseType: !2544, size: 64, offset: 384)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!173, !601, !2451, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2548, file: !38, line: 344, baseType: !173, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2548, file: !38, line: 345, baseType: !425, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2548, file: !38, line: 346, baseType: !425, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2548, file: !38, line: 347, baseType: !425, size: 64, offset: 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2548, file: !38, line: 348, baseType: !425, size: 64, offset: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2548, file: !38, line: 349, baseType: !425, size: 64, offset: 320)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2548, file: !38, line: 350, baseType: !425, size: 64, offset: 384)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2548, file: !38, line: 351, baseType: !780, size: 64, offset: 448)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2548, file: !38, line: 353, baseType: !780, size: 64, offset: 512)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2548, file: !38, line: 354, baseType: !173, size: 32, offset: 576)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2548, file: !38, line: 355, baseType: !173, size: 32, offset: 608)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2548, file: !38, line: 356, baseType: !425, size: 64, offset: 640)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2548, file: !38, line: 357, baseType: !425, size: 64, offset: 704)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2548, file: !38, line: 358, baseType: !425, size: 64, offset: 768)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2548, file: !38, line: 359, baseType: !780, size: 64, offset: 832)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2548, file: !38, line: 360, baseType: !173, size: 32, offset: 896)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2515, file: !38, line: 436, baseType: !2567, size: 64, offset: 448)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!173, !601, !2511, !2547}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2515, file: !38, line: 438, baseType: !2544, size: 64, offset: 512)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2515, file: !38, line: 439, baseType: !2572, size: 64, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!173, !601, !2575}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2577)
!2577 = !{!2578, !2579}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2576, file: !38, line: 410, baseType: !7, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2576, file: !38, line: 411, baseType: !2580, size: 1344, offset: 64)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2581, size: 1344, elements: !279)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2582)
!2582 = !{!2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2593}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2581, file: !38, line: 396, baseType: !7, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2581, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2581, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2581, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2581, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2581, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2581, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2581, file: !38, line: 404, baseType: !427, size: 64, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2581, file: !38, line: 405, baseType: !2592, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !201, line: 126, baseType: !425)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2581, file: !38, line: 406, baseType: !2592, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2515, file: !38, line: 440, baseType: !2523, size: 64, offset: 640)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !602, file: !44, line: 1426, baseType: !2596, size: 64, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2598)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !602, file: !44, line: 1427, baseType: !328, size: 64, offset: 640)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !602, file: !44, line: 1428, baseType: !328, size: 64, offset: 704)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !602, file: !44, line: 1429, baseType: !328, size: 64, offset: 768)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !602, file: !44, line: 1430, baseType: !386, size: 64, offset: 832)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !602, file: !44, line: 1431, baseType: !770, size: 256, offset: 896)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !602, file: !44, line: 1432, baseType: !173, size: 32, offset: 1152)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !602, file: !44, line: 1433, baseType: !750, size: 32, offset: 1184)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !602, file: !44, line: 1437, baseType: !2607, size: 64, offset: 1216)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2610)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !602, file: !44, line: 1449, baseType: !2612, size: 64, offset: 1280)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !402, line: 34, size: 64, elements: !2613)
!2613 = !{!2614}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2612, file: !402, line: 35, baseType: !405, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !602, file: !44, line: 1450, baseType: !224, size: 128, offset: 1344)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !602, file: !44, line: 1451, baseType: !2617, size: 64, offset: 1472)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !602, file: !44, line: 1452, baseType: !1927, size: 64, offset: 1536)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !602, file: !44, line: 1453, baseType: !2621, size: 64, offset: 1600)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !602, file: !44, line: 1454, baseType: !641, size: 128, offset: 1664)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !602, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !602, file: !44, line: 1456, baseType: !2626, size: 2432, offset: 1856)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2627)
!2627 = !{!2628, !2629, !2630, !2632, !2664}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2626, file: !38, line: 519, baseType: !7, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2626, file: !38, line: 520, baseType: !770, size: 256, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2626, file: !38, line: 521, baseType: !2631, size: 192, offset: 320)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 192, elements: !279)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2626, file: !38, line: 522, baseType: !2633, size: 1728, offset: 512)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2634, size: 1728, elements: !279)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2635)
!2635 = !{!2636, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2634, file: !38, line: 223, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2639)
!2639 = !{!2640, !2641, !2654, !2655}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2638, file: !38, line: 444, baseType: !173, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2638, file: !38, line: 445, baseType: !2642, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2644)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2644, file: !38, line: 311, baseType: !687, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2644, file: !38, line: 312, baseType: !687, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2644, file: !38, line: 313, baseType: !687, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2644, file: !38, line: 314, baseType: !687, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2644, file: !38, line: 315, baseType: !2436, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2644, file: !38, line: 316, baseType: !2436, size: 64, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2644, file: !38, line: 317, baseType: !2436, size: 64, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2644, file: !38, line: 318, baseType: !2508, size: 64, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2638, file: !38, line: 446, baseType: !164, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2638, file: !38, line: 447, baseType: !2637, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2634, file: !38, line: 224, baseType: !173, size: 32, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2634, file: !38, line: 226, baseType: !224, size: 128, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2634, file: !38, line: 227, baseType: !328, size: 64, offset: 256)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2634, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2634, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2634, file: !38, line: 230, baseType: !2472, size: 64, offset: 384)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2634, file: !38, line: 231, baseType: !2472, size: 64, offset: 448)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2634, file: !38, line: 232, baseType: !167, size: 64, offset: 512)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2626, file: !38, line: 523, baseType: !2665, size: 192, offset: 2240)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2642, size: 192, elements: !279)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !602, file: !44, line: 1458, baseType: !2667, size: 2112, offset: 4288)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2668)
!2668 = !{!2669, !2670, !2671}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2667, file: !44, line: 1411, baseType: !173, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2667, file: !44, line: 1412, baseType: !1484, size: 128, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2667, file: !44, line: 1413, baseType: !2672, size: 1920, offset: 192)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2673, size: 1920, elements: !279)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2674, line: 12, size: 640, elements: !2675)
!2674 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2675 = !{!2676, !2684, !2686, !2691, !2692}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2673, file: !2674, line: 13, baseType: !2677, size: 320)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2678, line: 17, size: 320, elements: !2679)
!2678 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2679 = !{!2680, !2681, !2682, !2683}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2677, file: !2678, line: 18, baseType: !173, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2677, file: !2678, line: 19, baseType: !173, size: 32, offset: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2677, file: !2678, line: 20, baseType: !1484, size: 128, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2677, file: !2678, line: 22, baseType: !369, size: 128, align: 64, offset: 192)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2673, file: !2674, line: 14, baseType: !2685, size: 64, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2673, file: !2674, line: 15, baseType: !2687, size: 64, offset: 384)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2688, line: 16, size: 64, elements: !2689)
!2688 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2689 = !{!2690}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2687, file: !2688, line: 17, baseType: !1219, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2673, file: !2674, line: 16, baseType: !1484, size: 128, offset: 448)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2673, file: !2674, line: 17, baseType: !750, size: 32, offset: 576)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !602, file: !44, line: 1465, baseType: !167, size: 64, offset: 6400)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !602, file: !44, line: 1468, baseType: !419, size: 32, offset: 6464)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !602, file: !44, line: 1470, baseType: !541, size: 64, offset: 6528)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !602, file: !44, line: 1471, baseType: !541, size: 64, offset: 6592)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !602, file: !44, line: 1473, baseType: !421, size: 32, offset: 6656)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !602, file: !44, line: 1474, baseType: !2699, size: 64, offset: 6720)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !602, file: !44, line: 1477, baseType: !2702, size: 256, offset: 6784)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !2232)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !602, file: !44, line: 1478, baseType: !2704, size: 128, offset: 7040)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2705, line: 18, baseType: !2706)
!2705 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2705, line: 16, size: 128, elements: !2707)
!2707 = !{!2708}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2706, file: !2705, line: 17, baseType: !2709, size: 128)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1356, size: 128, elements: !1738)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !602, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !602, file: !44, line: 1481, baseType: !2712, size: 32, offset: 7200)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !201, line: 150, baseType: !7)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !602, file: !44, line: 1487, baseType: !1176, size: 192, offset: 7232)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !602, file: !44, line: 1493, baseType: !220, size: 64, offset: 7424)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !602, file: !44, line: 1495, baseType: !2716, size: 64, offset: 7488)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2718)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !384, line: 135, size: 1024, align: 512, elements: !2719)
!2719 = !{!2720, !2724, !2725, !2732, !2738, !2742, !2746, !2750, !2751, !2755, !2759, !2764, !2768}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2718, file: !384, line: 136, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!173, !386, !7}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2718, file: !384, line: 137, baseType: !2721, size: 64, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2718, file: !384, line: 138, baseType: !2726, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!173, !2729, !2731}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2718, file: !384, line: 139, baseType: !2733, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!173, !2729, !7, !220, !2736}
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2718, file: !384, line: 141, baseType: !2739, size: 64, offset: 256)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!173, !2729}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2718, file: !384, line: 142, baseType: !2743, size: 64, offset: 320)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!173, !386}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2718, file: !384, line: 143, baseType: !2747, size: 64, offset: 384)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !386}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2718, file: !384, line: 144, baseType: !2747, size: 64, offset: 448)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2718, file: !384, line: 145, baseType: !2752, size: 64, offset: 512)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !386, !433}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2718, file: !384, line: 146, baseType: !2756, size: 64, offset: 576)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!278, !386, !278, !173}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2718, file: !384, line: 147, baseType: !2760, size: 64, offset: 640)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!382, !2763}
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2718, file: !384, line: 148, baseType: !2765, size: 64, offset: 704)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!173, !551, !200}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2718, file: !384, line: 149, baseType: !2769, size: 64, offset: 768)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!386, !386, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !602, file: !44, line: 1500, baseType: !173, size: 32, offset: 7552)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !602, file: !44, line: 1502, baseType: !2776, size: 448, offset: 7616)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2420, line: 60, size: 448, elements: !2777)
!2777 = !{!2778, !2783, !2784, !2785, !2786, !2787, !2788}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2776, file: !2420, line: 61, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!328, !2782, !2418}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2776, file: !2420, line: 63, baseType: !2779, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2776, file: !2420, line: 66, baseType: !313, size: 64, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2776, file: !2420, line: 67, baseType: !173, size: 32, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2776, file: !2420, line: 68, baseType: !7, size: 32, offset: 224)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2776, file: !2420, line: 71, baseType: !224, size: 128, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2776, file: !2420, line: 77, baseType: !2789, size: 64, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !602, file: !44, line: 1505, baseType: !774, size: 64, offset: 8064)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !602, file: !44, line: 1508, baseType: !774, size: 64, offset: 8128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !602, file: !44, line: 1511, baseType: !173, size: 32, offset: 8192)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !602, file: !44, line: 1514, baseType: !912, size: 32, offset: 8224)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !602, file: !44, line: 1517, baseType: !2795, size: 64, offset: 8256)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1962, line: 18, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !602, file: !44, line: 1518, baseType: !637, size: 64, offset: 8320)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !602, file: !44, line: 1525, baseType: !1716, size: 64, offset: 8384)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !602, file: !44, line: 1532, baseType: !2800, size: 64, offset: 8448)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2801, line: 52, size: 64, elements: !2802)
!2801 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2802 = !{!2803}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2800, file: !2801, line: 53, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2801, line: 40, size: 256, elements: !2806)
!2806 = !{!2807, !2808, !2813}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2805, file: !2801, line: 42, baseType: !237)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2805, file: !2801, line: 44, baseType: !2809, size: 192)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2801, line: 28, size: 192, elements: !2810)
!2810 = !{!2811, !2812}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2809, file: !2801, line: 29, baseType: !224, size: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2809, file: !2801, line: 31, baseType: !313, size: 64, offset: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2805, file: !2801, line: 49, baseType: !313, size: 64, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !602, file: !44, line: 1533, baseType: !2800, size: 64, offset: 8512)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !602, file: !44, line: 1534, baseType: !369, size: 128, align: 64, offset: 8576)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !602, file: !44, line: 1535, baseType: !1961, size: 256, offset: 8704)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !602, file: !44, line: 1537, baseType: !1176, size: 192, offset: 8960)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !602, file: !44, line: 1542, baseType: !173, size: 32, offset: 9152)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !602, file: !44, line: 1545, baseType: !237, offset: 9184)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !602, file: !44, line: 1546, baseType: !224, size: 128, offset: 9216)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !602, file: !44, line: 1548, baseType: !237, offset: 9344)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !602, file: !44, line: 1549, baseType: !224, size: 128, offset: 9344)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !434, file: !44, line: 624, baseType: !736, size: 64, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !434, file: !44, line: 631, baseType: !328, size: 64, offset: 320)
!2825 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !44, line: 639, baseType: !2826, size: 32, offset: 384)
!2826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !44, line: 639, size: 32, elements: !2827)
!2827 = !{!2828, !2830}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2826, file: !44, line: 640, baseType: !2829, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2826, file: !44, line: 641, baseType: !7, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !434, file: !44, line: 643, baseType: !515, size: 32, offset: 416)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !434, file: !44, line: 644, baseType: !533, size: 64, offset: 448)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !434, file: !44, line: 645, baseType: !537, size: 128, offset: 512)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !434, file: !44, line: 646, baseType: !537, size: 128, offset: 640)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !434, file: !44, line: 647, baseType: !537, size: 128, offset: 768)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !434, file: !44, line: 648, baseType: !237, offset: 896)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !434, file: !44, line: 649, baseType: !320, size: 16, offset: 896)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !434, file: !44, line: 650, baseType: !1355, size: 8, offset: 912)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !434, file: !44, line: 651, baseType: !1355, size: 8, offset: 920)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !434, file: !44, line: 652, baseType: !2592, size: 64, offset: 960)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !434, file: !44, line: 659, baseType: !328, size: 64, offset: 1024)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !434, file: !44, line: 660, baseType: !770, size: 256, offset: 1088)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !434, file: !44, line: 662, baseType: !328, size: 64, offset: 1344)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !434, file: !44, line: 663, baseType: !328, size: 64, offset: 1408)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !434, file: !44, line: 665, baseType: !641, size: 128, offset: 1472)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !434, file: !44, line: 666, baseType: !224, size: 128, offset: 1600)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !434, file: !44, line: 675, baseType: !224, size: 128, offset: 1728)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !434, file: !44, line: 676, baseType: !224, size: 128, offset: 1856)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !434, file: !44, line: 677, baseType: !224, size: 128, offset: 1984)
!2850 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !44, line: 678, baseType: !2851, size: 128, offset: 2112)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !44, line: 678, size: 128, elements: !2852)
!2852 = !{!2853, !2854}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2851, file: !44, line: 679, baseType: !637, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2851, file: !44, line: 680, baseType: !369, size: 128, align: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !434, file: !44, line: 682, baseType: !776, size: 64, offset: 2240)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !434, file: !44, line: 683, baseType: !776, size: 64, offset: 2304)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !434, file: !44, line: 684, baseType: !750, size: 32, offset: 2368)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !434, file: !44, line: 685, baseType: !750, size: 32, offset: 2400)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !434, file: !44, line: 686, baseType: !750, size: 32, offset: 2432)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !434, file: !44, line: 688, baseType: !750, size: 32, offset: 2464)
!2861 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !44, line: 690, baseType: !2862, size: 64, offset: 2496)
!2862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !44, line: 690, size: 64, elements: !2863)
!2863 = !{!2864, !3087}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2862, file: !44, line: 691, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2867)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2868)
!2868 = !{!2869, !2870, !2874, !2879, !2883, !2884, !2885, !2889, !2902, !2903, !2911, !2915, !2916, !2920, !2921, !2925, !2930, !2931, !2935, !2939, !3047, !3051, !3052, !3056, !3057, !3061, !3065, !3070, !3074, !3078, !3082, !3086}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2867, file: !44, line: 1823, baseType: !164, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2867, file: !44, line: 1824, baseType: !2871, size: 64, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!533, !356, !533, !173}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2867, file: !44, line: 1825, baseType: !2875, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!309, !356, !278, !325, !2878}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2867, file: !44, line: 1826, baseType: !2880, size: 64, offset: 192)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!309, !356, !220, !325, !2878}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2867, file: !44, line: 1827, baseType: !847, size: 64, offset: 256)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2867, file: !44, line: 1828, baseType: !847, size: 64, offset: 320)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2867, file: !44, line: 1829, baseType: !2886, size: 64, offset: 384)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!173, !850, !200}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2867, file: !44, line: 1830, baseType: !2890, size: 64, offset: 448)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!173, !356, !2893}
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2895)
!2895 = !{!2896, !2901}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2894, file: !44, line: 1777, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2898)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!173, !2893, !220, !173, !533, !425, !7}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2894, file: !44, line: 1778, baseType: !533, size: 64, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2867, file: !44, line: 1831, baseType: !2890, size: 64, offset: 512)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2867, file: !44, line: 1832, baseType: !2904, size: 64, offset: 576)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!2907, !356, !2909}
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2908, line: 52, baseType: !7)
!2908 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !621, line: 27, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2867, file: !44, line: 1833, baseType: !2912, size: 64, offset: 640)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!313, !356, !7, !328}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2867, file: !44, line: 1834, baseType: !2912, size: 64, offset: 704)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2867, file: !44, line: 1835, baseType: !2917, size: 64, offset: 768)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!173, !356, !984}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2867, file: !44, line: 1836, baseType: !328, size: 64, offset: 832)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2867, file: !44, line: 1837, baseType: !2922, size: 64, offset: 896)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!173, !433, !356}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2867, file: !44, line: 1838, baseType: !2926, size: 64, offset: 960)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!173, !356, !2929}
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !167)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2867, file: !44, line: 1839, baseType: !2922, size: 64, offset: 1024)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2867, file: !44, line: 1840, baseType: !2932, size: 64, offset: 1088)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!173, !356, !533, !533, !173}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2867, file: !44, line: 1841, baseType: !2936, size: 64, offset: 1152)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!173, !173, !356, !173}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2867, file: !44, line: 1842, baseType: !2940, size: 64, offset: 1216)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!173, !356, !173, !2943}
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2945)
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2977, !2978, !2979, !2992, !3023}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2944, file: !44, line: 1063, baseType: !2943, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2944, file: !44, line: 1064, baseType: !224, size: 128, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2944, file: !44, line: 1065, baseType: !641, size: 128, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2944, file: !44, line: 1066, baseType: !224, size: 128, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2944, file: !44, line: 1069, baseType: !224, size: 128, offset: 448)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2944, file: !44, line: 1072, baseType: !2929, size: 64, offset: 576)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2944, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2944, file: !44, line: 1074, baseType: !431, size: 8, offset: 672)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2944, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2944, file: !44, line: 1076, baseType: !173, size: 32, offset: 736)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2944, file: !44, line: 1077, baseType: !1484, size: 128, offset: 768)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2944, file: !44, line: 1078, baseType: !356, size: 64, offset: 896)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2944, file: !44, line: 1079, baseType: !533, size: 64, offset: 960)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2944, file: !44, line: 1080, baseType: !533, size: 64, offset: 1024)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2944, file: !44, line: 1082, baseType: !2961, size: 64, offset: 1088)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2963)
!2963 = !{!2964, !2972, !2973, !2974, !2975, !2976}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2962, file: !44, line: 1315, baseType: !2965)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2966, line: 20, baseType: !2967)
!2966 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2966, line: 11, elements: !2968)
!2968 = !{!2969}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2967, file: !2966, line: 12, baseType: !2970)
!2970 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !249, line: 33, baseType: !2971)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 31, elements: !251)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2962, file: !44, line: 1316, baseType: !173, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2962, file: !44, line: 1317, baseType: !173, size: 32, offset: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2962, file: !44, line: 1318, baseType: !2961, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2962, file: !44, line: 1319, baseType: !356, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2962, file: !44, line: 1320, baseType: !369, size: 128, align: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2944, file: !44, line: 1084, baseType: !328, size: 64, offset: 1152)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2944, file: !44, line: 1085, baseType: !328, size: 64, offset: 1216)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2944, file: !44, line: 1087, baseType: !2980, size: 64, offset: 1280)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2982)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2983)
!2983 = !{!2984, !2988}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2982, file: !44, line: 1012, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !2943, !2943}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2982, file: !44, line: 1013, baseType: !2989, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !2943}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2944, file: !44, line: 1088, baseType: !2993, size: 64, offset: 1344)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2995)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2996)
!2996 = !{!2997, !3001, !3005, !3006, !3010, !3014, !3018, !3022}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2995, file: !44, line: 1017, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!2929, !2929}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2995, file: !44, line: 1018, baseType: !3002, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !2929}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2995, file: !44, line: 1019, baseType: !2989, size: 64, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2995, file: !44, line: 1020, baseType: !3007, size: 64, offset: 192)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!173, !2943, !173}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2995, file: !44, line: 1021, baseType: !3011, size: 64, offset: 256)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!200, !2943}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2995, file: !44, line: 1022, baseType: !3015, size: 64, offset: 320)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!173, !2943, !173, !227}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2995, file: !44, line: 1023, baseType: !3019, size: 64, offset: 384)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !2943, !824}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2995, file: !44, line: 1024, baseType: !3011, size: 64, offset: 448)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2944, file: !44, line: 1097, baseType: !3024, size: 256, offset: 1408)
!3024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2944, file: !44, line: 1089, size: 256, elements: !3025)
!3025 = !{!3026, !3035, !3041}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3024, file: !44, line: 1090, baseType: !3027, size: 256)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3028, line: 10, size: 256, elements: !3029)
!3028 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3029 = !{!3030, !3031, !3034}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3027, file: !3028, line: 11, baseType: !419, size: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3027, file: !3028, line: 12, baseType: !3032, size: 64, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3028, line: 5, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3027, file: !3028, line: 13, baseType: !224, size: 128, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3024, file: !44, line: 1091, baseType: !3036, size: 64)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3028, line: 17, size: 64, elements: !3037)
!3037 = !{!3038}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3036, file: !3028, line: 18, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3028, line: 16, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3024, file: !44, line: 1096, baseType: !3042, size: 192)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3024, file: !44, line: 1092, size: 192, elements: !3043)
!3043 = !{!3044, !3045, !3046}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3042, file: !44, line: 1093, baseType: !224, size: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3042, file: !44, line: 1094, baseType: !173, size: 32, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3042, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2867, file: !44, line: 1843, baseType: !3048, size: 64, offset: 1280)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!309, !356, !723, !173, !325, !2878, !173}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2867, file: !44, line: 1844, baseType: !1104, size: 64, offset: 1344)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2867, file: !44, line: 1845, baseType: !3053, size: 64, offset: 1408)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!173, !173}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2867, file: !44, line: 1846, baseType: !2940, size: 64, offset: 1472)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2867, file: !44, line: 1847, baseType: !3058, size: 64, offset: 1536)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!309, !2102, !356, !2878, !325, !7}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2867, file: !44, line: 1848, baseType: !3062, size: 64, offset: 1600)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!309, !356, !2878, !2102, !325, !7}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2867, file: !44, line: 1849, baseType: !3066, size: 64, offset: 1664)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!173, !356, !313, !3069, !824}
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2867, file: !44, line: 1850, baseType: !3071, size: 64, offset: 1728)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!313, !356, !173, !533, !533}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2867, file: !44, line: 1852, baseType: !3075, size: 64, offset: 1792)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{null, !713, !356}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2867, file: !44, line: 1856, baseType: !3079, size: 64, offset: 1856)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!309, !356, !533, !356, !533, !325, !7}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2867, file: !44, line: 1858, baseType: !3083, size: 64, offset: 1920)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!533, !356, !533, !356, !533, !533, !7}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2867, file: !44, line: 1861, baseType: !2932, size: 64, offset: 1984)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2862, file: !44, line: 692, baseType: !666, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !434, file: !44, line: 694, baseType: !3089, size: 64, offset: 2560)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3091)
!3091 = !{!3092, !3093, !3094, !3095}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3090, file: !44, line: 1101, baseType: !237)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3090, file: !44, line: 1102, baseType: !224, size: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3090, file: !44, line: 1103, baseType: !224, size: 128, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3090, file: !44, line: 1104, baseType: !224, size: 128, offset: 256)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !434, file: !44, line: 695, baseType: !737, size: 1216, align: 64, offset: 2624)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !434, file: !44, line: 696, baseType: !224, size: 128, offset: 3840)
!3098 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !44, line: 697, baseType: !3099, size: 64, offset: 3968)
!3099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !44, line: 697, size: 64, elements: !3100)
!3100 = !{!3101, !3102, !3103, !3106, !3107}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3099, file: !44, line: 698, baseType: !2102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3099, file: !44, line: 699, baseType: !2617, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3099, file: !44, line: 700, baseType: !3104, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3099, file: !44, line: 701, baseType: !278, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3099, file: !44, line: 702, baseType: !7, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !434, file: !44, line: 705, baseType: !421, size: 32, offset: 4032)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !434, file: !44, line: 708, baseType: !421, size: 32, offset: 4064)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !434, file: !44, line: 709, baseType: !2699, size: 64, offset: 4096)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !434, file: !44, line: 720, baseType: !167, size: 64, offset: 4160)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !387, file: !384, line: 98, baseType: !3113, size: 256, offset: 448)
!3113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 256, elements: !2232)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !387, file: !384, line: 101, baseType: !3115, size: 32, offset: 704)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3116, line: 25, size: 32, elements: !3117)
!3116 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3117 = !{!3118}
!3118 = !DIDerivedType(tag: DW_TAG_member, scope: !3115, file: !3116, line: 26, baseType: !3119, size: 32)
!3119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3115, file: !3116, line: 26, size: 32, elements: !3120)
!3120 = !{!3121}
!3121 = !DIDerivedType(tag: DW_TAG_member, scope: !3119, file: !3116, line: 30, baseType: !3122, size: 32)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3119, file: !3116, line: 30, size: 32, elements: !3123)
!3123 = !{!3124, !3125}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3122, file: !3116, line: 31, baseType: !237)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3122, file: !3116, line: 32, baseType: !173, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !387, file: !384, line: 102, baseType: !2716, size: 64, offset: 768)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !387, file: !384, line: 103, baseType: !601, size: 64, offset: 832)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !387, file: !384, line: 104, baseType: !328, size: 64, offset: 896)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !387, file: !384, line: 105, baseType: !167, size: 64, offset: 960)
!3130 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !384, line: 107, baseType: !3131, size: 128, offset: 1024)
!3131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !384, line: 107, size: 128, elements: !3132)
!3132 = !{!3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3131, file: !384, line: 108, baseType: !224, size: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3131, file: !384, line: 109, baseType: !3135, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !387, file: !384, line: 111, baseType: !224, size: 128, offset: 1152)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !387, file: !384, line: 112, baseType: !224, size: 128, offset: 1280)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !387, file: !384, line: 120, baseType: !3139, size: 128, offset: 1408)
!3139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !384, line: 116, size: 128, elements: !3140)
!3140 = !{!3141, !3142, !3143}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3139, file: !384, line: 117, baseType: !641, size: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3139, file: !384, line: 118, baseType: !401, size: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3139, file: !384, line: 119, baseType: !369, size: 128, align: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !357, file: !44, line: 922, baseType: !433, size: 64, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !357, file: !44, line: 923, baseType: !2865, size: 64, offset: 320)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !357, file: !44, line: 929, baseType: !237, offset: 384)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !357, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !357, file: !44, line: 931, baseType: !774, size: 64, offset: 448)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !357, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !357, file: !44, line: 933, baseType: !2712, size: 32, offset: 544)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !357, file: !44, line: 934, baseType: !1176, size: 192, offset: 576)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !357, file: !44, line: 935, baseType: !533, size: 64, offset: 768)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !357, file: !44, line: 936, baseType: !3154, size: 192, offset: 832)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3159, !3160, !3161}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3154, file: !44, line: 886, baseType: !2965)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3154, file: !44, line: 887, baseType: !1474, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3154, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3154, file: !44, line: 889, baseType: !439, size: 32, offset: 96)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3154, file: !44, line: 889, baseType: !439, size: 32, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3154, file: !44, line: 890, baseType: !173, size: 32, offset: 160)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !357, file: !44, line: 937, baseType: !1550, size: 64, offset: 1024)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !357, file: !44, line: 938, baseType: !3164, size: 256, offset: 1088)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3165)
!3165 = !{!3166, !3167, !3168, !3169, !3170, !3171}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3164, file: !44, line: 897, baseType: !328, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3164, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3164, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3164, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3164, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3164, file: !44, line: 904, baseType: !533, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !357, file: !44, line: 940, baseType: !425, size: 64, offset: 1344)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !357, file: !44, line: 945, baseType: !167, size: 64, offset: 1408)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !357, file: !44, line: 949, baseType: !224, size: 128, offset: 1472)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !357, file: !44, line: 950, baseType: !224, size: 128, offset: 1600)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !357, file: !44, line: 952, baseType: !736, size: 64, offset: 1728)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !357, file: !44, line: 953, baseType: !912, size: 32, offset: 1792)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !357, file: !44, line: 954, baseType: !912, size: 32, offset: 1824)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !347, file: !303, line: 174, baseType: !353, size: 64, offset: 320)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !347, file: !303, line: 176, baseType: !3181, size: 64, offset: 384)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!173, !356, !230, !346, !984}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !335, file: !303, line: 90, baseType: !330, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !335, file: !303, line: 91, baseType: !3186, size: 64, offset: 256)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !293, file: !217, line: 143, baseType: !3188, size: 64, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!3191, !230}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3193)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3194)
!3194 = !{!3195, !3196, !3200, !3204, !3210, !3214}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3193, file: !61, line: 40, baseType: !60, size: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3193, file: !61, line: 41, baseType: !3197, size: 64, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!200}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3193, file: !61, line: 42, baseType: !3201, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!167}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3193, file: !61, line: 43, baseType: !3205, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!209, !3208}
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3193, file: !61, line: 44, baseType: !3211, size: 64, offset: 256)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!209}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3193, file: !61, line: 45, baseType: !472, size: 64, offset: 320)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !293, file: !217, line: 144, baseType: !3216, size: 64, offset: 320)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!209, !230}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !293, file: !217, line: 145, baseType: !3220, size: 64, offset: 384)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{null, !230, !3223, !3224}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !216, file: !217, line: 70, baseType: !3226, size: 64, offset: 384)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !621, line: 123, size: 1024, elements: !3228)
!3228 = !{!3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3357, !3358, !3359, !3360, !3361}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3227, file: !621, line: 124, baseType: !750, size: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3227, file: !621, line: 125, baseType: !750, size: 32, offset: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3227, file: !621, line: 135, baseType: !3226, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3227, file: !621, line: 136, baseType: !220, size: 64, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3227, file: !621, line: 138, baseType: !763, size: 192, align: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3227, file: !621, line: 140, baseType: !209, size: 64, offset: 384)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3227, file: !621, line: 141, baseType: !7, size: 32, offset: 448)
!3236 = !DIDerivedType(tag: DW_TAG_member, scope: !3227, file: !621, line: 142, baseType: !3237, size: 256, offset: 512)
!3237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3227, file: !621, line: 142, size: 256, elements: !3238)
!3238 = !{!3239, !3285, !3289}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3237, file: !621, line: 143, baseType: !3240, size: 192)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !621, line: 91, size: 192, elements: !3241)
!3241 = !{!3242, !3243, !3244}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3240, file: !621, line: 92, baseType: !328, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3240, file: !621, line: 94, baseType: !759, size: 64, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3240, file: !621, line: 100, baseType: !3245, size: 64, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !621, line: 180, size: 704, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3257, !3258, !3259, !3283, !3284}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3246, file: !621, line: 182, baseType: !3226, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3246, file: !621, line: 183, baseType: !7, size: 32, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3246, file: !621, line: 186, baseType: !3251, size: 192, offset: 128)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3252, line: 19, size: 192, elements: !3253)
!3252 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3253 = !{!3254, !3255, !3256}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3251, file: !3252, line: 20, baseType: !741, size: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3251, file: !3252, line: 21, baseType: !7, size: 32, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3251, file: !3252, line: 22, baseType: !7, size: 32, offset: 160)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3246, file: !621, line: 187, baseType: !419, size: 32, offset: 320)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3246, file: !621, line: 188, baseType: !419, size: 32, offset: 352)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3246, file: !621, line: 189, baseType: !3260, size: 64, offset: 384)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !621, line: 168, size: 320, elements: !3262)
!3262 = !{!3263, !3267, !3271, !3275, !3279}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3261, file: !621, line: 169, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!173, !713, !3245}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3261, file: !621, line: 171, baseType: !3268, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!173, !3226, !220, !319}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3261, file: !621, line: 173, baseType: !3272, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!173, !3226}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3261, file: !621, line: 174, baseType: !3276, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!173, !3226, !3226, !220}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3261, file: !621, line: 176, baseType: !3280, size: 64, offset: 256)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!173, !713, !3226, !3245}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3246, file: !621, line: 192, baseType: !224, size: 128, offset: 448)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3246, file: !621, line: 194, baseType: !1484, size: 128, offset: 576)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3237, file: !621, line: 144, baseType: !3286, size: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !621, line: 103, size: 64, elements: !3287)
!3287 = !{!3288}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3286, file: !621, line: 104, baseType: !3226, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3237, file: !621, line: 145, baseType: !3290, size: 256)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !621, line: 107, size: 256, elements: !3291)
!3291 = !{!3292, !3352, !3355, !3356}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3290, file: !621, line: 108, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3295)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !621, line: 217, size: 768, elements: !3296)
!3296 = !{!3297, !3317, !3321, !3325, !3329, !3333, !3337, !3341, !3342, !3343, !3344, !3348}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3295, file: !621, line: 222, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!173, !3301}
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !621, line: 197, size: 1088, elements: !3303)
!3303 = !{!3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3302, file: !621, line: 199, baseType: !3226, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3302, file: !621, line: 200, baseType: !356, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3302, file: !621, line: 201, baseType: !713, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3302, file: !621, line: 202, baseType: !167, size: 64, offset: 192)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3302, file: !621, line: 205, baseType: !1176, size: 192, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3302, file: !621, line: 206, baseType: !1176, size: 192, offset: 448)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3302, file: !621, line: 207, baseType: !173, size: 32, offset: 640)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3302, file: !621, line: 208, baseType: !224, size: 128, offset: 704)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3302, file: !621, line: 209, baseType: !278, size: 64, offset: 832)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3302, file: !621, line: 211, baseType: !325, size: 64, offset: 896)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3302, file: !621, line: 212, baseType: !200, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3302, file: !621, line: 213, baseType: !200, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3302, file: !621, line: 214, baseType: !1012, size: 64, offset: 1024)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3295, file: !621, line: 223, baseType: !3318, size: 64, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{null, !3301}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3295, file: !621, line: 236, baseType: !3322, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!173, !713, !167}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3295, file: !621, line: 238, baseType: !3326, size: 64, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!167, !713, !2878}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3295, file: !621, line: 239, baseType: !3330, size: 64, offset: 256)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!167, !713, !167, !2878}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3295, file: !621, line: 240, baseType: !3334, size: 64, offset: 320)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{null, !713, !167}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3295, file: !621, line: 242, baseType: !3338, size: 64, offset: 384)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!309, !3301, !278, !325, !533}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3295, file: !621, line: 252, baseType: !325, size: 64, offset: 448)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3295, file: !621, line: 259, baseType: !200, size: 8, offset: 512)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3295, file: !621, line: 260, baseType: !3338, size: 64, offset: 576)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3295, file: !621, line: 263, baseType: !3345, size: 64, offset: 640)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!2907, !3301, !2909}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3295, file: !621, line: 266, baseType: !3349, size: 64, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!173, !3301, !984}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3290, file: !621, line: 109, baseType: !3353, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !621, line: 31, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3290, file: !621, line: 110, baseType: !533, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3290, file: !621, line: 111, baseType: !3226, size: 64, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3227, file: !621, line: 148, baseType: !167, size: 64, offset: 768)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3227, file: !621, line: 154, baseType: !425, size: 64, offset: 832)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3227, file: !621, line: 156, baseType: !320, size: 16, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3227, file: !621, line: 157, baseType: !319, size: 16, offset: 912)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3227, file: !621, line: 158, baseType: !3362, size: 64, offset: 960)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !621, line: 32, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !216, file: !217, line: 71, baseType: !3365, size: 32, offset: 448)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3366, line: 19, size: 32, elements: !3367)
!3366 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3367 = !{!3368}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3365, file: !3366, line: 20, baseType: !1233, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !216, file: !217, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !216, file: !217, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !216, file: !217, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !216, file: !217, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !216, file: !217, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !73, line: 463, baseType: !3375, size: 64, offset: 512)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !213, file: !73, line: 465, baseType: !3377, size: 64, offset: 576)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !213, file: !73, line: 467, baseType: !220, size: 64, offset: 640)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !213, file: !73, line: 468, baseType: !3381, size: 64, offset: 704)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3391, !3396, !3400}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3383, file: !73, line: 88, baseType: !220, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3383, file: !73, line: 89, baseType: !332, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3383, file: !73, line: 90, baseType: !3388, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!173, !3375, !273}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3383, file: !73, line: 91, baseType: !3392, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!278, !3375, !3395, !3223, !3224}
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3383, file: !73, line: 93, baseType: !3397, size: 64, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !3375}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3383, file: !73, line: 95, baseType: !3401, size: 64, offset: 320)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3403)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3404)
!3404 = !{!3405, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3403, file: !80, line: 279, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!173, !3375}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3403, file: !80, line: 280, baseType: !3397, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3403, file: !80, line: 281, baseType: !3406, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3403, file: !80, line: 282, baseType: !3406, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3403, file: !80, line: 283, baseType: !3406, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3403, file: !80, line: 284, baseType: !3406, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3403, file: !80, line: 285, baseType: !3406, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3403, file: !80, line: 286, baseType: !3406, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3403, file: !80, line: 287, baseType: !3406, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3403, file: !80, line: 288, baseType: !3406, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3403, file: !80, line: 289, baseType: !3406, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3403, file: !80, line: 290, baseType: !3406, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3403, file: !80, line: 291, baseType: !3406, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3403, file: !80, line: 292, baseType: !3406, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3403, file: !80, line: 293, baseType: !3406, size: 64, offset: 896)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3403, file: !80, line: 294, baseType: !3406, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3403, file: !80, line: 295, baseType: !3406, size: 64, offset: 1024)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3403, file: !80, line: 296, baseType: !3406, size: 64, offset: 1088)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3403, file: !80, line: 297, baseType: !3406, size: 64, offset: 1152)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3403, file: !80, line: 298, baseType: !3406, size: 64, offset: 1216)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3403, file: !80, line: 299, baseType: !3406, size: 64, offset: 1280)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3403, file: !80, line: 300, baseType: !3406, size: 64, offset: 1344)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3403, file: !80, line: 301, baseType: !3406, size: 64, offset: 1408)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !213, file: !73, line: 470, baseType: !3432, size: 64, offset: 768)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3434, line: 82, size: 1408, elements: !3435)
!3434 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3517, !3520, !3521}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3433, file: !3434, line: 83, baseType: !220, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3433, file: !3434, line: 84, baseType: !220, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3433, file: !3434, line: 85, baseType: !3375, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3433, file: !3434, line: 86, baseType: !332, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3433, file: !3434, line: 87, baseType: !332, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3433, file: !3434, line: 88, baseType: !332, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3433, file: !3434, line: 90, baseType: !3443, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!173, !3375, !3446}
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3448)
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3454, !3455, !3468, !3481, !3482, !3483, !3484, !3485, !3493, !3494, !3495, !3496, !3497, !3498}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3447, file: !67, line: 96, baseType: !220, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3447, file: !67, line: 97, baseType: !3432, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3447, file: !67, line: 99, baseType: !164, size: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3447, file: !67, line: 100, baseType: !220, size: 64, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3447, file: !67, line: 102, baseType: !200, size: 8, offset: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3447, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3447, file: !67, line: 105, baseType: !3456, size: 64, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3458)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3459, line: 262, size: 1600, elements: !3460)
!3459 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3460 = !{!3461, !3462, !3463, !3467}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3458, file: !3459, line: 263, baseType: !2702, size: 256)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3458, file: !3459, line: 264, baseType: !2702, size: 256, offset: 256)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3458, file: !3459, line: 265, baseType: !3464, size: 1024, offset: 512)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 1024, elements: !3465)
!3465 = !{!3466}
!3466 = !DISubrange(count: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3458, file: !3459, line: 266, baseType: !209, size: 64, offset: 1536)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3447, file: !67, line: 106, baseType: !3469, size: 64, offset: 384)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3471)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3459, line: 210, size: 256, elements: !3472)
!3472 = !{!3473, !3477, !3479, !3480}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3471, file: !3459, line: 211, baseType: !3474, size: 72)
!3474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1356, size: 72, elements: !3475)
!3475 = !{!3476}
!3476 = !DISubrange(count: 9)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3471, file: !3459, line: 212, baseType: !3478, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3459, line: 14, baseType: !328)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3471, file: !3459, line: 213, baseType: !421, size: 32, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3471, file: !3459, line: 214, baseType: !421, size: 32, offset: 224)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3447, file: !67, line: 108, baseType: !3406, size: 64, offset: 448)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3447, file: !67, line: 109, baseType: !3397, size: 64, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3447, file: !67, line: 110, baseType: !3406, size: 64, offset: 576)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3447, file: !67, line: 111, baseType: !3397, size: 64, offset: 640)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3447, file: !67, line: 112, baseType: !3486, size: 64, offset: 704)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!173, !3375, !3489}
!3489 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3490)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3491)
!3491 = !{!3492}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3490, file: !80, line: 51, baseType: !173, size: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3447, file: !67, line: 113, baseType: !3406, size: 64, offset: 768)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3447, file: !67, line: 114, baseType: !332, size: 64, offset: 832)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3447, file: !67, line: 115, baseType: !332, size: 64, offset: 896)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3447, file: !67, line: 117, baseType: !3401, size: 64, offset: 960)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3447, file: !67, line: 118, baseType: !3397, size: 64, offset: 1024)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3447, file: !67, line: 120, baseType: !3499, size: 64, offset: 1088)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3433, file: !3434, line: 91, baseType: !3388, size: 64, offset: 448)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3433, file: !3434, line: 92, baseType: !3406, size: 64, offset: 512)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3433, file: !3434, line: 93, baseType: !3397, size: 64, offset: 576)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3433, file: !3434, line: 94, baseType: !3406, size: 64, offset: 640)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3433, file: !3434, line: 95, baseType: !3397, size: 64, offset: 704)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3433, file: !3434, line: 97, baseType: !3406, size: 64, offset: 768)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3433, file: !3434, line: 98, baseType: !3406, size: 64, offset: 832)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3433, file: !3434, line: 100, baseType: !3486, size: 64, offset: 896)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3433, file: !3434, line: 101, baseType: !3406, size: 64, offset: 960)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3433, file: !3434, line: 103, baseType: !3406, size: 64, offset: 1024)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3433, file: !3434, line: 105, baseType: !3406, size: 64, offset: 1088)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3433, file: !3434, line: 107, baseType: !3401, size: 64, offset: 1152)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3433, file: !3434, line: 109, baseType: !3514, size: 64, offset: 1216)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3516)
!3516 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3434, line: 109, flags: DIFlagFwdDecl)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3433, file: !3434, line: 111, baseType: !3518, size: 64, offset: 1280)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3434, line: 111, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3433, file: !3434, line: 112, baseType: !647, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3433, file: !3434, line: 114, baseType: !200, size: 8, offset: 1344)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !213, file: !73, line: 471, baseType: !3446, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !213, file: !73, line: 473, baseType: !167, size: 64, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !213, file: !73, line: 475, baseType: !167, size: 64, offset: 960)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !213, file: !73, line: 480, baseType: !1176, size: 192, offset: 1024)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !213, file: !73, line: 484, baseType: !3527, size: 576, offset: 1216)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3527, file: !73, line: 362, baseType: !224, size: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3527, file: !73, line: 363, baseType: !224, size: 128, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3527, file: !73, line: 364, baseType: !224, size: 128, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3527, file: !73, line: 365, baseType: !224, size: 128, offset: 384)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3527, file: !73, line: 366, baseType: !200, size: 8, offset: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3527, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !213, file: !73, line: 485, baseType: !3536, size: 2304, offset: 1792)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3633, !3637}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3536, file: !80, line: 566, baseType: !3489, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3536, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3536, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3536, file: !80, line: 569, baseType: !200, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3536, file: !80, line: 570, baseType: !200, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3536, file: !80, line: 571, baseType: !200, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3536, file: !80, line: 572, baseType: !200, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3536, file: !80, line: 573, baseType: !200, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3536, file: !80, line: 574, baseType: !200, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3536, file: !80, line: 575, baseType: !200, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3536, file: !80, line: 576, baseType: !200, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3536, file: !80, line: 577, baseType: !419, size: 32, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3536, file: !80, line: 578, baseType: !237, offset: 96)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3536, file: !80, line: 580, baseType: !224, size: 128, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3536, file: !80, line: 581, baseType: !1505, size: 192, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3536, file: !80, line: 582, baseType: !3554, size: 64, offset: 448)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3556, line: 43, size: 1472, elements: !3557)
!3556 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3557 = !{!3558, !3559, !3560, !3561, !3562, !3565, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3555, file: !3556, line: 44, baseType: !220, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3555, file: !3556, line: 45, baseType: !173, size: 32, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3555, file: !3556, line: 46, baseType: !224, size: 128, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3555, file: !3556, line: 47, baseType: !237, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3555, file: !3556, line: 48, baseType: !3563, size: 64, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3555, file: !3556, line: 49, baseType: !3566, size: 320, offset: 320)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3567, line: 11, size: 320, elements: !3568)
!3567 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3568 = !{!3569, !3570, !3571, !3576}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3566, file: !3567, line: 16, baseType: !641, size: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3566, file: !3567, line: 17, baseType: !328, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3566, file: !3567, line: 18, baseType: !3572, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{null, !3575}
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3566, file: !3567, line: 19, baseType: !419, size: 32, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3555, file: !3556, line: 50, baseType: !328, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3555, file: !3556, line: 51, baseType: !1303, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3555, file: !3556, line: 52, baseType: !1303, size: 64, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3555, file: !3556, line: 53, baseType: !1303, size: 64, offset: 832)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3555, file: !3556, line: 54, baseType: !1303, size: 64, offset: 896)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3555, file: !3556, line: 55, baseType: !1303, size: 64, offset: 960)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3555, file: !3556, line: 56, baseType: !328, size: 64, offset: 1024)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3555, file: !3556, line: 57, baseType: !328, size: 64, offset: 1088)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3555, file: !3556, line: 58, baseType: !328, size: 64, offset: 1152)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3555, file: !3556, line: 59, baseType: !328, size: 64, offset: 1216)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3555, file: !3556, line: 60, baseType: !328, size: 64, offset: 1280)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3555, file: !3556, line: 61, baseType: !3375, size: 64, offset: 1344)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3555, file: !3556, line: 62, baseType: !200, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3555, file: !3556, line: 63, baseType: !200, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3536, file: !80, line: 583, baseType: !200, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3536, file: !80, line: 584, baseType: !200, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3536, file: !80, line: 585, baseType: !200, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3536, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3536, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3536, file: !80, line: 592, baseType: !1295, size: 512, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3536, file: !80, line: 593, baseType: !425, size: 64, offset: 1088)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3536, file: !80, line: 594, baseType: !1961, size: 256, offset: 1152)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3536, file: !80, line: 595, baseType: !1484, size: 128, offset: 1408)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3536, file: !80, line: 596, baseType: !3563, size: 64, offset: 1536)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3536, file: !80, line: 597, baseType: !750, size: 32, offset: 1600)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3536, file: !80, line: 598, baseType: !750, size: 32, offset: 1632)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3536, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3536, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3536, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3536, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3536, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3536, file: !80, line: 604, baseType: !200, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3536, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3536, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3536, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3536, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3536, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3536, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3536, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3536, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3536, file: !80, line: 613, baseType: !173, size: 32, offset: 1792)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3536, file: !80, line: 614, baseType: !173, size: 32, offset: 1824)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3536, file: !80, line: 615, baseType: !425, size: 64, offset: 1856)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3536, file: !80, line: 616, baseType: !425, size: 64, offset: 1920)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3536, file: !80, line: 617, baseType: !425, size: 64, offset: 1984)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3536, file: !80, line: 618, baseType: !425, size: 64, offset: 2048)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3536, file: !80, line: 620, baseType: !3624, size: 64, offset: 2112)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3630}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3625, file: !80, line: 537, baseType: !237)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3625, file: !80, line: 538, baseType: !7, size: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3625, file: !80, line: 540, baseType: !224, size: 128, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3625, file: !80, line: 543, baseType: !3631, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3536, file: !80, line: 621, baseType: !3634, size: 64, offset: 2176)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !3375, !1447}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3536, file: !80, line: 622, baseType: !3638, size: 64, offset: 2240)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !213, file: !73, line: 486, baseType: !3641, size: 64, offset: 4096)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3643)
!3643 = !{!3644, !3645, !3646, !3650, !3651, !3652}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3642, file: !80, line: 643, baseType: !3403, size: 1472)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3642, file: !80, line: 644, baseType: !3406, size: 64, offset: 1472)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3642, file: !80, line: 645, baseType: !3647, size: 64, offset: 1536)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{null, !3375, !200}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3642, file: !80, line: 646, baseType: !3406, size: 64, offset: 1600)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3642, file: !80, line: 647, baseType: !3397, size: 64, offset: 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3642, file: !80, line: 648, baseType: !3397, size: 64, offset: 1728)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !213, file: !73, line: 493, baseType: !3654, size: 64, offset: 4160)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3656)
!3656 = !{!3657, !3658, !3659, !3743, !3744, !3745, !3746, !3747, !3748, !3751, !3752, !3753, !3754, !3755, !3756, !3757}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3655, file: !94, line: 163, baseType: !224, size: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3655, file: !94, line: 164, baseType: !220, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3655, file: !94, line: 165, baseType: !3660, size: 64, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3662)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3663)
!3663 = !{!3664, !3693, !3704, !3709, !3713, !3720, !3724, !3728, !3735, !3739}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3662, file: !94, line: 106, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!173, !3654, !3668, !93}
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3670, line: 51, size: 1344, elements: !3671)
!3670 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3671 = !{!3672, !3673, !3675, !3676, !3677, !3686, !3687, !3688, !3689, !3690, !3691, !3692}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3669, file: !3670, line: 52, baseType: !220, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3669, file: !3670, line: 53, baseType: !3674, size: 32, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3670, line: 28, baseType: !419)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3669, file: !3670, line: 54, baseType: !220, size: 64, offset: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3669, file: !3670, line: 55, baseType: !178, size: 192, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3669, file: !3670, line: 57, baseType: !3678, size: 64, offset: 384)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3670, line: 31, size: 704, elements: !3680)
!3680 = !{!3681, !3682, !3683, !3684, !3685}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3679, file: !3670, line: 32, baseType: !278, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3679, file: !3670, line: 33, baseType: !173, size: 32, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3679, file: !3670, line: 34, baseType: !167, size: 64, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3679, file: !3670, line: 35, baseType: !3678, size: 64, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3679, file: !3670, line: 43, baseType: !347, size: 448, offset: 256)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3669, file: !3670, line: 58, baseType: !3678, size: 64, offset: 448)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3669, file: !3670, line: 59, baseType: !3668, size: 64, offset: 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3669, file: !3670, line: 60, baseType: !3668, size: 64, offset: 576)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3669, file: !3670, line: 61, baseType: !3668, size: 64, offset: 640)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3669, file: !3670, line: 63, baseType: !216, size: 512, offset: 704)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3669, file: !3670, line: 65, baseType: !328, size: 64, offset: 1216)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3669, file: !3670, line: 66, baseType: !167, size: 64, offset: 1280)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3662, file: !94, line: 108, baseType: !3694, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!173, !3654, !3697, !93}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3699)
!3699 = !{!3700, !3701, !3702}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3698, file: !94, line: 64, baseType: !182, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3698, file: !94, line: 65, baseType: !173, size: 32, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3698, file: !94, line: 66, baseType: !3703, size: 512, offset: 96)
!3703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 512, elements: !1738)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3662, file: !94, line: 110, baseType: !3705, size: 64, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!173, !3654, !7, !3708}
!3708 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !201, line: 164, baseType: !328)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3662, file: !94, line: 111, baseType: !3710, size: 64, offset: 192)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{null, !3654, !7}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3662, file: !94, line: 112, baseType: !3714, size: 64, offset: 256)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!173, !3654, !3668, !3717, !7, !3719, !2685}
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3662, file: !94, line: 117, baseType: !3721, size: 64, offset: 320)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!173, !3654, !7, !7, !167}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3662, file: !94, line: 119, baseType: !3725, size: 64, offset: 384)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !3654, !7, !7}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3662, file: !94, line: 121, baseType: !3729, size: 64, offset: 448)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!173, !3654, !3732, !200}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3734, line: 11, flags: DIFlagFwdDecl)
!3734 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3662, file: !94, line: 122, baseType: !3736, size: 64, offset: 512)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{null, !3654, !3732}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3662, file: !94, line: 123, baseType: !3740, size: 64, offset: 576)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!173, !3654, !3697, !3719, !2685}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3655, file: !94, line: 166, baseType: !167, size: 64, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3655, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3655, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3655, file: !94, line: 171, baseType: !182, size: 64, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3655, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3655, file: !94, line: 173, baseType: !3749, size: 64, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3655, file: !94, line: 175, baseType: !3654, size: 64, offset: 576)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3655, file: !94, line: 182, baseType: !3708, size: 64, offset: 640)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3655, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3655, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3655, file: !94, line: 185, baseType: !741, size: 128, offset: 768)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3655, file: !94, line: 186, baseType: !1176, size: 192, offset: 896)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3655, file: !94, line: 187, baseType: !3758, offset: 1088)
!3758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2333)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !213, file: !73, line: 499, baseType: !224, size: 128, offset: 4224)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !213, file: !73, line: 502, baseType: !3761, size: 64, offset: 4352)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3763)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !213, file: !73, line: 504, baseType: !3765, size: 64, offset: 4416)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !213, file: !73, line: 505, baseType: !425, size: 64, offset: 4480)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !213, file: !73, line: 510, baseType: !425, size: 64, offset: 4544)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !213, file: !73, line: 511, baseType: !3769, size: 64, offset: 4608)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3771)
!3771 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !213, file: !73, line: 513, baseType: !3773, size: 64, offset: 4672)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3775)
!3775 = !{!3776, !3777}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3774, file: !73, line: 293, baseType: !7, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3774, file: !73, line: 294, baseType: !328, size: 64, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !213, file: !73, line: 515, baseType: !224, size: 128, offset: 4736)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !213, file: !73, line: 526, baseType: !3780, offset: 4864)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3781, line: 5, elements: !251)
!3781 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !213, file: !73, line: 528, baseType: !3668, size: 64, offset: 4864)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !213, file: !73, line: 529, baseType: !182, size: 64, offset: 4928)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !213, file: !73, line: 534, baseType: !515, size: 32, offset: 4992)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !213, file: !73, line: 535, baseType: !419, size: 32, offset: 5024)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !213, file: !73, line: 537, baseType: !237, offset: 5056)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !213, file: !73, line: 538, baseType: !224, size: 128, offset: 5056)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !213, file: !73, line: 540, baseType: !3789, size: 64, offset: 5184)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3791, line: 54, size: 960, elements: !3792)
!3791 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3792 = !{!3793, !3794, !3795, !3796, !3797, !3798, !3799, !3803, !3807, !3808, !3809, !3810, !3814, !3818, !3819}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3790, file: !3791, line: 55, baseType: !220, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3790, file: !3791, line: 56, baseType: !164, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3790, file: !3791, line: 58, baseType: !332, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3790, file: !3791, line: 59, baseType: !332, size: 64, offset: 192)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3790, file: !3791, line: 60, baseType: !230, size: 64, offset: 256)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3790, file: !3791, line: 62, baseType: !3388, size: 64, offset: 320)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3790, file: !3791, line: 63, baseType: !3800, size: 64, offset: 384)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!278, !3375, !3395}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3790, file: !3791, line: 65, baseType: !3804, size: 64, offset: 448)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{null, !3789}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3790, file: !3791, line: 66, baseType: !3397, size: 64, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3790, file: !3791, line: 68, baseType: !3406, size: 64, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3790, file: !3791, line: 70, baseType: !3191, size: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3790, file: !3791, line: 71, baseType: !3811, size: 64, offset: 704)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!209, !3375}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3790, file: !3791, line: 73, baseType: !3815, size: 64, offset: 768)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{null, !3375, !3223, !3224}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3790, file: !3791, line: 75, baseType: !3401, size: 64, offset: 832)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3790, file: !3791, line: 77, baseType: !3518, size: 64, offset: 896)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !213, file: !73, line: 541, baseType: !332, size: 64, offset: 5248)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !213, file: !73, line: 543, baseType: !3397, size: 64, offset: 5312)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !213, file: !73, line: 544, baseType: !3823, size: 64, offset: 5376)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !213, file: !73, line: 545, baseType: !3826, size: 64, offset: 5440)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !213, file: !73, line: 547, baseType: !200, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !213, file: !73, line: 548, baseType: !200, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !213, file: !73, line: 549, baseType: !200, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !213, file: !73, line: 550, baseType: !200, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !186, file: !179, line: 116, baseType: !3833, size: 64, offset: 256)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!200, !203, !220}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !186, file: !179, line: 118, baseType: !3837, size: 64, offset: 320)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!173, !203, !220, !7, !167, !325}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !186, file: !179, line: 123, baseType: !3841, size: 64, offset: 384)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!173, !203, !220, !3844, !325}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !186, file: !179, line: 126, baseType: !3846, size: 64, offset: 448)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!220, !203}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !186, file: !179, line: 127, baseType: !3846, size: 64, offset: 512)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !186, file: !179, line: 128, baseType: !3851, size: 64, offset: 576)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!182, !203}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !186, file: !179, line: 130, baseType: !3855, size: 64, offset: 640)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!182, !203, !182}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !186, file: !179, line: 133, baseType: !3859, size: 64, offset: 704)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!182, !203, !220}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !186, file: !179, line: 135, baseType: !3863, size: 64, offset: 768)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!173, !203, !220, !220, !7, !7, !3866}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !179, line: 43, size: 640, elements: !3868)
!3868 = !{!3869, !3870, !3871}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3867, file: !179, line: 44, baseType: !182, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3867, file: !179, line: 45, baseType: !7, size: 32, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3867, file: !179, line: 46, baseType: !3872, size: 512, offset: 128)
!3872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 512, elements: !1333)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !186, file: !179, line: 140, baseType: !3855, size: 64, offset: 832)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !186, file: !179, line: 143, baseType: !3851, size: 64, offset: 896)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !186, file: !179, line: 145, baseType: !189, size: 64, offset: 960)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !186, file: !179, line: 146, baseType: !3877, size: 64, offset: 1024)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!173, !203, !3880}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !179, line: 29, size: 128, elements: !3882)
!3882 = !{!3883, !3884, !3885}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3881, file: !179, line: 30, baseType: !7, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3881, file: !179, line: 31, baseType: !7, size: 32, offset: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3881, file: !179, line: 32, baseType: !203, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !186, file: !179, line: 148, baseType: !3887, size: 64, offset: 1088)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!173, !203, !3375}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !178, file: !179, line: 20, baseType: !3375, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !169, file: !170, line: 355, baseType: !168, size: 64, offset: 320)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !169, file: !170, line: 356, baseType: !224, size: 128, offset: 384)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !169, file: !170, line: 357, baseType: !224, size: 128, offset: 512)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !169, file: !170, line: 358, baseType: !224, size: 128, offset: 640)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !169, file: !170, line: 359, baseType: !224, size: 128, offset: 768)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !169, file: !170, line: 360, baseType: !3897, size: 32, offset: 896)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !170, line: 179, size: 32, elements: !3898)
!3898 = !{!3899, !3900, !3901, !3902, !3903, !3904}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3897, file: !170, line: 180, baseType: !419, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3897, file: !170, line: 181, baseType: !419, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !3897, file: !170, line: 182, baseType: !419, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !3897, file: !170, line: 183, baseType: !419, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !3897, file: !170, line: 184, baseType: !419, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3897, file: !170, line: 185, baseType: !419, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !169, file: !170, line: 361, baseType: !3906, size: 32, offset: 928)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !170, line: 190, size: 32, elements: !3907)
!3907 = !{!3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !3906, file: !170, line: 191, baseType: !419, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3906, file: !170, line: 192, baseType: !419, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !3906, file: !170, line: 193, baseType: !419, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !3906, file: !170, line: 194, baseType: !419, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3906, file: !170, line: 195, baseType: !419, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3906, file: !170, line: 196, baseType: !419, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !3906, file: !170, line: 197, baseType: !419, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !3906, file: !170, line: 198, baseType: !419, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !3906, file: !170, line: 199, baseType: !419, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !3906, file: !170, line: 200, baseType: !419, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !3906, file: !170, line: 201, baseType: !419, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !3906, file: !170, line: 202, baseType: !419, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !3906, file: !170, line: 203, baseType: !419, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3906, file: !170, line: 204, baseType: !419, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !169, file: !170, line: 362, baseType: !3923, size: 960, offset: 960)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !170, line: 234, size: 960, elements: !3924)
!3924 = !{!3925, !3927, !3934, !3936, !3937, !3938, !3943, !3946}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3923, file: !170, line: 235, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !170, line: 217, baseType: !2036)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3923, file: !170, line: 236, baseType: !3928, size: 32, offset: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !170, line: 227, size: 32, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !3928, file: !170, line: 228, baseType: !419, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3928, file: !170, line: 229, baseType: !419, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !3928, file: !170, line: 230, baseType: !419, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3928, file: !170, line: 231, baseType: !419, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3923, file: !170, line: 237, baseType: !3935, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !170, line: 218, baseType: !425)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !3923, file: !170, line: 238, baseType: !278, size: 64, offset: 192)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3923, file: !170, line: 239, baseType: !224, size: 128, offset: 256)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !3923, file: !170, line: 240, baseType: !3939, size: 320, offset: 384)
!3939 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !170, line: 219, baseType: !3940)
!3940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 320, elements: !3941)
!3941 = !{!3942}
!3942 = !DISubrange(count: 40)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !3923, file: !170, line: 241, baseType: !3944, size: 160, offset: 704)
!3944 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !170, line: 220, baseType: !3945)
!3945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 160, elements: !2203)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !3923, file: !170, line: 242, baseType: !3947, size: 64, offset: 896)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !176, line: 899, size: 192, elements: !3949)
!3949 = !{!3950, !3952, !3957, !3963, !3970, !3976, !3982, !3990}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3948, file: !176, line: 900, baseType: !3951, size: 32)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !176, line: 635, baseType: !419)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !3948, file: !176, line: 904, baseType: !3953, size: 128)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3948, file: !176, line: 901, size: 128, elements: !3954)
!3954 = !{!3955, !3956}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3953, file: !176, line: 902, baseType: !3951, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3953, file: !176, line: 903, baseType: !425, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3948, file: !176, line: 910, baseType: !3958, size: 128)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3948, file: !176, line: 906, size: 128, elements: !3959)
!3959 = !{!3960, !3961, !3962}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3958, file: !176, line: 907, baseType: !3951, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3958, file: !176, line: 908, baseType: !419, size: 32, offset: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3958, file: !176, line: 909, baseType: !278, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3948, file: !176, line: 916, baseType: !3964, size: 128)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3948, file: !176, line: 912, size: 128, elements: !3965)
!3965 = !{!3966, !3967, !3968}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3964, file: !176, line: 913, baseType: !3951, size: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3964, file: !176, line: 914, baseType: !419, size: 32, offset: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3964, file: !176, line: 915, baseType: !3969, size: 64, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !3948, file: !176, line: 922, baseType: !3971, size: 128)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3948, file: !176, line: 918, size: 128, elements: !3972)
!3972 = !{!3973, !3974, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3971, file: !176, line: 919, baseType: !3951, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3971, file: !176, line: 920, baseType: !419, size: 32, offset: 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3971, file: !176, line: 921, baseType: !3947, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !3948, file: !176, line: 928, baseType: !3977, size: 128)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3948, file: !176, line: 924, size: 128, elements: !3978)
!3978 = !{!3979, !3980, !3981}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3977, file: !176, line: 925, baseType: !3951, size: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !3977, file: !176, line: 926, baseType: !3951, size: 32, offset: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3977, file: !176, line: 927, baseType: !175, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !3948, file: !176, line: 935, baseType: !3983, size: 192)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3948, file: !176, line: 930, size: 192, elements: !3984)
!3984 = !{!3985, !3986, !3987, !3989}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3983, file: !176, line: 931, baseType: !3951, size: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !3983, file: !176, line: 932, baseType: !419, size: 32, offset: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !3983, file: !176, line: 933, baseType: !3988, size: 64, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !176, line: 128, baseType: !425)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !3983, file: !176, line: 934, baseType: !419, size: 32, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !3948, file: !176, line: 941, baseType: !3991, size: 96)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3948, file: !176, line: 937, size: 96, elements: !3992)
!3992 = !{!3993, !3994, !3995}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3991, file: !176, line: 938, baseType: !3951, size: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !3991, file: !176, line: 939, baseType: !419, size: 32, offset: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !3991, file: !176, line: 940, baseType: !419, size: 32, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !169, file: !170, line: 363, baseType: !3997, size: 1344, offset: 1920)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !170, line: 275, size: 1344, elements: !3998)
!3998 = !{!3999, !4000, !4010}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3997, file: !170, line: 276, baseType: !173, size: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3997, file: !170, line: 277, baseType: !4001, size: 32, offset: 32)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !170, line: 254, size: 32, elements: !4002)
!4002 = !{!4003, !4004, !4005, !4006, !4007, !4008, !4009}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !4001, file: !170, line: 255, baseType: !419, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !4001, file: !170, line: 256, baseType: !419, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !4001, file: !170, line: 257, baseType: !419, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !4001, file: !170, line: 258, baseType: !419, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !4001, file: !170, line: 259, baseType: !419, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !4001, file: !170, line: 260, baseType: !419, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4001, file: !170, line: 261, baseType: !419, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3997, file: !170, line: 278, baseType: !4011, size: 1280, offset: 64)
!4011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4012, size: 1280, elements: !4023)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !170, line: 264, size: 256, elements: !4013)
!4013 = !{!4014, !4020, !4021, !4022}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4012, file: !170, line: 269, baseType: !4015, size: 8)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4012, file: !170, line: 265, size: 8, elements: !4016)
!4016 = !{!4017, !4018, !4019}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4015, file: !170, line: 266, baseType: !1355, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !4015, file: !170, line: 267, baseType: !1355, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4015, file: !170, line: 268, baseType: !1355, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4012, file: !170, line: 270, baseType: !173, size: 32, offset: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4012, file: !170, line: 271, baseType: !173, size: 32, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4012, file: !170, line: 272, baseType: !224, size: 128, offset: 128)
!4023 = !{!4024}
!4024 = !DISubrange(count: 5)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !169, file: !170, line: 364, baseType: !4026, size: 640, offset: 3264)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !170, line: 315, size: 640, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4037, !4046, !4047, !4048}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !4026, file: !170, line: 316, baseType: !175, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !4026, file: !170, line: 317, baseType: !425, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !4026, file: !170, line: 318, baseType: !425, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4026, file: !170, line: 319, baseType: !224, size: 128, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4026, file: !170, line: 320, baseType: !4033, size: 8, offset: 320)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !170, line: 305, size: 8, elements: !4034)
!4034 = !{!4035, !4036}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4033, file: !170, line: 306, baseType: !1355, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !4033, file: !170, line: 307, baseType: !1355, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4026, file: !170, line: 321, baseType: !4038, size: 128, offset: 384)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !170, line: 310, size: 128, elements: !4039)
!4039 = !{!4040, !4045}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4038, file: !170, line: 311, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{null, !4044}
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4038, file: !170, line: 312, baseType: !3375, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4026, file: !170, line: 322, baseType: !3554, size: 64, offset: 512)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !4026, file: !170, line: 323, baseType: !173, size: 32, offset: 576)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !4026, file: !170, line: 324, baseType: !173, size: 32, offset: 608)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !169, file: !170, line: 365, baseType: !4050, size: 192, offset: 3904)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !170, line: 297, size: 192, elements: !4051)
!4051 = !{!4052, !4053, !4057, !4058}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4050, file: !170, line: 298, baseType: !173, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4050, file: !170, line: 299, baseType: !4054, size: 8, offset: 32)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !170, line: 283, size: 8, elements: !4055)
!4055 = !{!4056}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4054, file: !170, line: 284, baseType: !1355, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4050, file: !170, line: 300, baseType: !173, size: 32, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4050, file: !170, line: 301, baseType: !4059, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !170, line: 287, size: 64, elements: !4061)
!4061 = !{!4062, !4067, !4068, !4069}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4060, file: !170, line: 291, baseType: !4063, size: 8)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4060, file: !170, line: 288, size: 8, elements: !4064)
!4064 = !{!4065, !4066}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4063, file: !170, line: 289, baseType: !1355, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4063, file: !170, line: 290, baseType: !1355, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4060, file: !170, line: 292, baseType: !1355, size: 8, offset: 8)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4060, file: !170, line: 293, baseType: !1355, size: 8, offset: 16)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4060, file: !170, line: 294, baseType: !173, size: 32, offset: 32)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !169, file: !170, line: 366, baseType: !4071, size: 64, offset: 4096)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !170, line: 209, size: 64, elements: !4072)
!4072 = !{!4073}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4071, file: !170, line: 210, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !170, line: 84, flags: DIFlagFwdDecl)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !169, file: !170, line: 367, baseType: !4077, size: 384, offset: 4160)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !170, line: 341, size: 384, elements: !4078)
!4078 = !{!4079, !4082, !4083, !4084}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4077, file: !170, line: 342, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3948)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4077, file: !170, line: 343, baseType: !224, size: 128, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4077, file: !170, line: 344, baseType: !4080, size: 64, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4077, file: !170, line: 345, baseType: !224, size: 128, offset: 256)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !169, file: !170, line: 368, baseType: !4086, size: 64, offset: 4544)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !170, line: 122, size: 1216, elements: !4088)
!4088 = !{!4089, !4090, !4091, !4096, !4100, !4104, !4105, !4106}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4087, file: !170, line: 123, baseType: !3469, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4087, file: !170, line: 124, baseType: !224, size: 128, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4087, file: !170, line: 125, baseType: !4092, size: 64, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!200, !220, !4095}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4087, file: !170, line: 126, baseType: !4097, size: 64, offset: 256)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!173, !168, !3469}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4087, file: !170, line: 127, baseType: !4101, size: 64, offset: 320)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{null, !168}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4087, file: !170, line: 128, baseType: !3397, size: 64, offset: 384)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4087, file: !170, line: 129, baseType: !3397, size: 64, offset: 448)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4087, file: !170, line: 130, baseType: !4107, size: 704, offset: 512)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !170, line: 108, size: 704, elements: !4108)
!4108 = !{!4109, !4110, !4114, !4115, !4116}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4107, file: !170, line: 109, baseType: !216, size: 512)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4107, file: !170, line: 110, baseType: !4111, size: 64, offset: 512)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!173, !168}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4107, file: !170, line: 111, baseType: !4101, size: 64, offset: 576)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4107, file: !170, line: 112, baseType: !200, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4107, file: !170, line: 113, baseType: !200, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !169, file: !170, line: 369, baseType: !4118, size: 64, offset: 4608)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !170, line: 138, size: 256, elements: !4120)
!4120 = !{!4121, !4122, !4126, !4130}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4119, file: !170, line: 139, baseType: !168, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4119, file: !170, line: 140, baseType: !4123, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!173, !168, !419}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4119, file: !170, line: 141, baseType: !4127, size: 64, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{null, !168, !419}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4119, file: !170, line: 142, baseType: !4101, size: 64, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !169, file: !170, line: 370, baseType: !4132, size: 64, offset: 4672)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !170, line: 162, size: 2816, elements: !4134)
!4134 = !{!4135, !4139, !4140, !4141, !4142, !4151, !4152}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4133, file: !170, line: 163, baseType: !4136, size: 640)
!4136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 640, elements: !4137)
!4137 = !{!4138}
!4138 = !DISubrange(count: 80)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4133, file: !170, line: 164, baseType: !4136, size: 640, offset: 640)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4133, file: !170, line: 165, baseType: !3469, size: 64, offset: 1280)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4133, file: !170, line: 166, baseType: !7, size: 32, offset: 1344)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4133, file: !170, line: 167, baseType: !4143, size: 192, offset: 1408)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !170, line: 154, size: 192, elements: !4144)
!4144 = !{!4145, !4147, !4149}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4143, file: !170, line: 155, baseType: !4146, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !170, line: 150, baseType: !4111)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4143, file: !170, line: 156, baseType: !4148, size: 64, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !170, line: 151, baseType: !4111)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4143, file: !170, line: 157, baseType: !4150, size: 64, offset: 128)
!4150 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !170, line: 152, baseType: !4127)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4133, file: !170, line: 168, baseType: !3447, size: 1152, offset: 1600)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4133, file: !170, line: 169, baseType: !164, size: 64, offset: 2752)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !169, file: !170, line: 371, baseType: !4154, size: 64, offset: 4736)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4156)
!4156 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !170, line: 348, flags: DIFlagFwdDecl)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !169, file: !170, line: 372, baseType: !167, size: 64, offset: 4800)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !169, file: !170, line: 373, baseType: !213, size: 5568, offset: 4864)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !169, file: !170, line: 374, baseType: !7, size: 32, offset: 10432)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !169, file: !170, line: 375, baseType: !7, size: 32, offset: 10464)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !169, file: !170, line: 376, baseType: !224, size: 128, offset: 10496)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !169, file: !170, line: 377, baseType: !1176, size: 192, offset: 10624)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !169, file: !170, line: 378, baseType: !4101, size: 64, offset: 10816)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_i2c_dev", file: !3, line: 31, size: 8448, elements: !4166)
!4166 = !{!4167, !4494, !4520, !4631}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !4165, file: !3, line: 32, baseType: !4168, size: 640)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_i2c_common", file: !108, line: 152, size: 640, elements: !4169)
!4169 = !{!4170, !4183, !4469, !4479, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4493}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "eventval", scope: !4168, file: !108, line: 153, baseType: !4171, size: 32)
!4171 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_event", file: !108, line: 124, size: 32, elements: !4172)
!4172 = !{!4173, !4174}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "ul", scope: !4171, file: !108, line: 125, baseType: !419, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !4171, file: !108, line: 133, baseType: !4175, size: 32)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4171, file: !108, line: 126, size: 32, elements: !4176)
!4176 = !{!4177, !4178, !4179, !4180, !4181, !4182}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !4175, file: !108, line: 127, baseType: !107, size: 2, flags: DIFlagBitField, extraData: i64 0)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4175, file: !108, line: 128, baseType: !113, size: 5, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !4175, file: !108, line: 129, baseType: !131, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !4175, file: !108, line: 130, baseType: !1355, size: 4, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4175, file: !108, line: 131, baseType: !419, size: 12, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !4175, file: !108, line: 132, baseType: !419, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "mp2_dev", scope: !4168, file: !108, line: 154, baseType: !4184, size: 64, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_mp2_dev", file: !108, line: 179, size: 512, elements: !4186)
!4186 = !{!4187, !4462, !4465, !4466, !4467, !4468}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "pci_dev", scope: !4185, file: !108, line: 180, baseType: !4188, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4190, line: 309, size: 19264, elements: !4191)
!4190 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4191 = !{!4192, !4193, !4265, !4266, !4267, !4268, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4360, !4361, !4362, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4436, !4437, !4438, !4439, !4440, !4441, !4443, !4444, !4445, !4448, !4455, !4456, !4457, !4458, !4459, !4460, !4461}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4189, file: !4190, line: 310, baseType: !224, size: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4189, file: !4190, line: 311, baseType: !4194, size: 64, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4190, line: 605, size: 8064, elements: !4196)
!4196 = !{!4197, !4198, !4199, !4200, !4201, !4202, !4203, !4218, !4219, !4220, !4244, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4257, !4258, !4260, !4261, !4262, !4263, !4264}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4195, file: !4190, line: 606, baseType: !224, size: 128)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4195, file: !4190, line: 607, baseType: !4194, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4195, file: !4190, line: 608, baseType: !224, size: 128, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4195, file: !4190, line: 609, baseType: !224, size: 128, offset: 320)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4195, file: !4190, line: 610, baseType: !4188, size: 64, offset: 448)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4195, file: !4190, line: 611, baseType: !224, size: 128, offset: 512)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4195, file: !4190, line: 613, baseType: !4204, size: 256, offset: 640)
!4204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4205, size: 256, elements: !1158)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4207, line: 20, size: 512, elements: !4208)
!4207 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4208 = !{!4209, !4211, !4212, !4213, !4214, !4215, !4216, !4217}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4206, file: !4207, line: 21, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !201, line: 158, baseType: !2129)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4206, file: !4207, line: 22, baseType: !4210, size: 64, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4206, file: !4207, line: 23, baseType: !220, size: 64, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4206, file: !4207, line: 24, baseType: !328, size: 64, offset: 192)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4206, file: !4207, line: 25, baseType: !328, size: 64, offset: 256)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4206, file: !4207, line: 26, baseType: !4205, size: 64, offset: 320)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4206, file: !4207, line: 26, baseType: !4205, size: 64, offset: 384)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4206, file: !4207, line: 26, baseType: !4205, size: 64, offset: 448)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4195, file: !4190, line: 614, baseType: !224, size: 128, offset: 896)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4195, file: !4190, line: 615, baseType: !4206, size: 512, offset: 1024)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4195, file: !4190, line: 617, baseType: !4221, size: 64, offset: 1536)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4190, line: 731, size: 320, elements: !4223)
!4223 = !{!4224, !4228, !4232, !4236, !4240}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4222, file: !4190, line: 732, baseType: !4225, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!173, !4194}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4222, file: !4190, line: 733, baseType: !4229, size: 64, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !4194}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4222, file: !4190, line: 734, baseType: !4233, size: 64, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!167, !4194, !7, !173}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4222, file: !4190, line: 735, baseType: !4237, size: 64, offset: 192)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!173, !4194, !7, !173, !173, !1418}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4222, file: !4190, line: 736, baseType: !4241, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!173, !4194, !7, !173, !173, !419}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4195, file: !4190, line: 618, baseType: !4245, size: 64, offset: 1600)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4190, line: 537, flags: DIFlagFwdDecl)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4195, file: !4190, line: 619, baseType: !167, size: 64, offset: 1664)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4195, file: !4190, line: 620, baseType: !4074, size: 64, offset: 1728)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4195, file: !4190, line: 622, baseType: !431, size: 8, offset: 1792)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4195, file: !4190, line: 623, baseType: !431, size: 8, offset: 1800)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4195, file: !4190, line: 624, baseType: !431, size: 8, offset: 1808)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4195, file: !4190, line: 625, baseType: !431, size: 8, offset: 1816)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4195, file: !4190, line: 630, baseType: !4254, size: 384, offset: 1824)
!4254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 384, elements: !4255)
!4255 = !{!4256}
!4256 = !DISubrange(count: 48)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4195, file: !4190, line: 632, baseType: !320, size: 16, offset: 2208)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4195, file: !4190, line: 633, baseType: !4259, size: 16, offset: 2224)
!4259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4190, line: 237, baseType: !320)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4195, file: !4190, line: 634, baseType: !3375, size: 64, offset: 2240)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4195, file: !4190, line: 635, baseType: !213, size: 5568, offset: 2304)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4195, file: !4190, line: 636, baseType: !346, size: 64, offset: 7872)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4195, file: !4190, line: 637, baseType: !346, size: 64, offset: 7936)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4195, file: !4190, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4189, file: !4190, line: 312, baseType: !4194, size: 64, offset: 192)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4189, file: !4190, line: 314, baseType: !167, size: 64, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4189, file: !4190, line: 315, baseType: !4074, size: 64, offset: 320)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4189, file: !4190, line: 316, baseType: !4269, size: 64, offset: 384)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4190, line: 69, size: 832, elements: !4271)
!4271 = !{!4272, !4273, !4274, !4277, !4278}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4270, file: !4190, line: 70, baseType: !4194, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4270, file: !4190, line: 71, baseType: !224, size: 128, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4270, file: !4190, line: 72, baseType: !4275, size: 64, offset: 192)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4190, line: 72, flags: DIFlagFwdDecl)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4270, file: !4190, line: 73, baseType: !431, size: 8, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4270, file: !4190, line: 74, baseType: !216, size: 512, offset: 320)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4189, file: !4190, line: 318, baseType: !7, size: 32, offset: 448)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4189, file: !4190, line: 319, baseType: !320, size: 16, offset: 480)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4189, file: !4190, line: 320, baseType: !320, size: 16, offset: 496)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4189, file: !4190, line: 321, baseType: !320, size: 16, offset: 512)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4189, file: !4190, line: 322, baseType: !320, size: 16, offset: 528)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4189, file: !4190, line: 323, baseType: !7, size: 32, offset: 544)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4189, file: !4190, line: 324, baseType: !1355, size: 8, offset: 576)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4189, file: !4190, line: 325, baseType: !1355, size: 8, offset: 584)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4189, file: !4190, line: 330, baseType: !1355, size: 8, offset: 592)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4189, file: !4190, line: 331, baseType: !1355, size: 8, offset: 600)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4189, file: !4190, line: 332, baseType: !1355, size: 8, offset: 608)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4189, file: !4190, line: 333, baseType: !1355, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4189, file: !4190, line: 334, baseType: !1355, size: 8, offset: 624)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4189, file: !4190, line: 335, baseType: !1355, size: 8, offset: 632)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4189, file: !4190, line: 336, baseType: !862, size: 16, offset: 640)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4189, file: !4190, line: 337, baseType: !3719, size: 64, offset: 704)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4189, file: !4190, line: 339, baseType: !4296, size: 64, offset: 768)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4190, line: 858, size: 2048, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4313, !4317, !4321, !4325, !4329, !4330, !4334, !4353, !4354, !4355}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4297, file: !4190, line: 859, baseType: !224, size: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4297, file: !4190, line: 860, baseType: !220, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4297, file: !4190, line: 861, baseType: !4302, size: 64, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4304)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3459, line: 38, size: 256, elements: !4305)
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4311, !4312}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4304, file: !3459, line: 39, baseType: !421, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4304, file: !3459, line: 39, baseType: !421, size: 32, offset: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4304, file: !3459, line: 40, baseType: !421, size: 32, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4304, file: !3459, line: 40, baseType: !421, size: 32, offset: 96)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4304, file: !3459, line: 41, baseType: !421, size: 32, offset: 128)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4304, file: !3459, line: 41, baseType: !421, size: 32, offset: 160)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4304, file: !3459, line: 42, baseType: !3478, size: 64, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4297, file: !4190, line: 862, baseType: !4314, size: 64, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!173, !4188, !4302}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4297, file: !4190, line: 863, baseType: !4318, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{null, !4188}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4297, file: !4190, line: 864, baseType: !4322, size: 64, offset: 384)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!173, !4188, !3489}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4297, file: !4190, line: 865, baseType: !4326, size: 64, offset: 448)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!173, !4188}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4297, file: !4190, line: 866, baseType: !4318, size: 64, offset: 512)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4297, file: !4190, line: 867, baseType: !4331, size: 64, offset: 576)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!173, !4188, !173}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4297, file: !4190, line: 868, baseType: !4335, size: 64, offset: 640)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4337)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4190, line: 795, size: 384, elements: !4338)
!4338 = !{!4339, !4345, !4349, !4350, !4351, !4352}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4337, file: !4190, line: 797, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!4343, !4188, !4344}
!4343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4190, line: 772, baseType: !7)
!4344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4190, line: 180, baseType: !7)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4337, file: !4190, line: 801, baseType: !4346, size: 64, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!4343, !4188}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4337, file: !4190, line: 804, baseType: !4346, size: 64, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4337, file: !4190, line: 807, baseType: !4318, size: 64, offset: 192)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4337, file: !4190, line: 808, baseType: !4318, size: 64, offset: 256)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4337, file: !4190, line: 811, baseType: !4318, size: 64, offset: 320)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4297, file: !4190, line: 869, baseType: !332, size: 64, offset: 704)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4297, file: !4190, line: 870, baseType: !3447, size: 1152, offset: 768)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4297, file: !4190, line: 871, baseType: !4356, size: 128, offset: 1920)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4190, line: 759, size: 128, elements: !4357)
!4357 = !{!4358, !4359}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4356, file: !4190, line: 760, baseType: !237)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4356, file: !4190, line: 761, baseType: !224, size: 128)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4189, file: !4190, line: 340, baseType: !425, size: 64, offset: 832)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4189, file: !4190, line: 346, baseType: !3774, size: 128, offset: 896)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4189, file: !4190, line: 348, baseType: !4363, size: 32, offset: 1024)
!4363 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4190, line: 155, baseType: !173)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4189, file: !4190, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4189, file: !4190, line: 352, baseType: !1355, size: 8, offset: 1064)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4189, file: !4190, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4189, file: !4190, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4189, file: !4190, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4189, file: !4190, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4189, file: !4190, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4189, file: !4190, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4189, file: !4190, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4189, file: !4190, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4189, file: !4190, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4189, file: !4190, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4189, file: !4190, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4189, file: !4190, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4189, file: !4190, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4189, file: !4190, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4189, file: !4190, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4189, file: !4190, line: 376, baseType: !7, size: 32, offset: 1120)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4189, file: !4190, line: 377, baseType: !7, size: 32, offset: 1152)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4189, file: !4190, line: 380, baseType: !4384, size: 64, offset: 1216)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4190, line: 303, flags: DIFlagFwdDecl)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4189, file: !4190, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4189, file: !4190, line: 383, baseType: !173, size: 32, offset: 1312)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4189, file: !4190, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4189, file: !4190, line: 387, baseType: !4344, size: 32, offset: 1376)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4189, file: !4190, line: 388, baseType: !213, size: 5568, offset: 1408)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4189, file: !4190, line: 390, baseType: !173, size: 32, offset: 6976)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4189, file: !4190, line: 396, baseType: !7, size: 32, offset: 7008)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4189, file: !4190, line: 397, baseType: !4394, size: 8704, offset: 7040)
!4394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4206, size: 8704, elements: !4395)
!4395 = !{!4396}
!4396 = !DISubrange(count: 17)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4189, file: !4190, line: 399, baseType: !200, size: 8, offset: 15744)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4189, file: !4190, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4189, file: !4190, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4189, file: !4190, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4189, file: !4190, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4189, file: !4190, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4189, file: !4190, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4189, file: !4190, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4189, file: !4190, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4189, file: !4190, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4189, file: !4190, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4189, file: !4190, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4189, file: !4190, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4189, file: !4190, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4189, file: !4190, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4189, file: !4190, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4189, file: !4190, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4189, file: !4190, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4189, file: !4190, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4189, file: !4190, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4189, file: !4190, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4189, file: !4190, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4189, file: !4190, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4189, file: !4190, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4189, file: !4190, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4189, file: !4190, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4189, file: !4190, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4189, file: !4190, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4189, file: !4190, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4189, file: !4190, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4189, file: !4190, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4189, file: !4190, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4189, file: !4190, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4189, file: !4190, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4189, file: !4190, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4189, file: !4190, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4189, file: !4190, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4189, file: !4190, line: 450, baseType: !4435, size: 16, offset: 15792)
!4435 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4190, line: 206, baseType: !320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4189, file: !4190, line: 451, baseType: !750, size: 32, offset: 15808)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4189, file: !4190, line: 453, baseType: !3703, size: 512, offset: 15840)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4189, file: !4190, line: 454, baseType: !637, size: 64, offset: 16384)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4189, file: !4190, line: 455, baseType: !346, size: 64, offset: 16448)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4189, file: !4190, line: 456, baseType: !173, size: 32, offset: 16512)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4189, file: !4190, line: 457, baseType: !4442, size: 1088, offset: 16576)
!4442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 1088, elements: !4395)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4189, file: !4190, line: 458, baseType: !4442, size: 1088, offset: 17664)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4189, file: !4190, line: 469, baseType: !332, size: 64, offset: 18752)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4189, file: !4190, line: 471, baseType: !4446, size: 64, offset: 18816)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4190, line: 304, flags: DIFlagFwdDecl)
!4448 = !DIDerivedType(tag: DW_TAG_member, scope: !4189, file: !4190, line: 478, baseType: !4449, size: 64, offset: 18880)
!4449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4189, file: !4190, line: 478, size: 64, elements: !4450)
!4450 = !{!4451, !4454}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4449, file: !4190, line: 479, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4190, line: 305, flags: DIFlagFwdDecl)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4449, file: !4190, line: 480, baseType: !4188, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4189, file: !4190, line: 482, baseType: !862, size: 16, offset: 18944)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4189, file: !4190, line: 483, baseType: !1355, size: 8, offset: 18960)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4189, file: !4190, line: 497, baseType: !862, size: 16, offset: 18976)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4189, file: !4190, line: 498, baseType: !2129, size: 64, offset: 19008)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4189, file: !4190, line: 499, baseType: !325, size: 64, offset: 19072)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4189, file: !4190, line: 500, baseType: !278, size: 64, offset: 19136)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4189, file: !4190, line: 502, baseType: !328, size: 64, offset: 19200)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "busses", scope: !4185, file: !108, line: 181, baseType: !4463, size: 128, offset: 64)
!4463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4464, size: 128, elements: !1572)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !4185, file: !108, line: 182, baseType: !167, size: 64, offset: 192)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "c2p_lock", scope: !4185, file: !108, line: 183, baseType: !1176, size: 192, offset: 256)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "c2p_lock_busid", scope: !4185, file: !108, line: 184, baseType: !1355, size: 8, offset: 448)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "probed", scope: !4185, file: !108, line: 185, baseType: !7, size: 32, offset: 480)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4168, file: !108, line: 155, baseType: !4470, size: 64, offset: 128)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4472, line: 69, size: 128, elements: !4473)
!4472 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4473 = !{!4474, !4475, !4476, !4477}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4471, file: !4472, line: 70, baseType: !863, size: 16)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4471, file: !4472, line: 71, baseType: !863, size: 16, offset: 16)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4471, file: !4472, line: 84, baseType: !863, size: 16, offset: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4471, file: !4472, line: 85, baseType: !4478, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_completion", scope: !4168, file: !108, line: 156, baseType: !4480, size: 64, offset: 192)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{null, !4464}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "reqcmd", scope: !4168, file: !108, line: 157, baseType: !135, size: 32, offset: 256)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_success", scope: !4168, file: !108, line: 158, baseType: !1355, size: 8, offset: 288)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !4168, file: !108, line: 159, baseType: !1355, size: 8, offset: 296)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_speed", scope: !4168, file: !108, line: 160, baseType: !144, size: 32, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !4168, file: !108, line: 161, baseType: !3969, size: 64, offset: 384)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4168, file: !108, line: 162, baseType: !923, size: 64, offset: 448)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4168, file: !108, line: 164, baseType: !4490, size: 64, offset: 512)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!173, !4464}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4168, file: !108, line: 165, baseType: !4490, size: 64, offset: 576)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !4165, file: !3, line: 33, baseType: !4495, size: 64, offset: 640)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !4497, line: 22, size: 6208, elements: !4498)
!4497 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!4498 = !{!4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4514, !4515, !4518}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4496, file: !4497, line: 23, baseType: !220, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4496, file: !4497, line: 24, baseType: !173, size: 32, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !4496, file: !4497, line: 25, baseType: !200, size: 8, offset: 96)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4496, file: !4497, line: 26, baseType: !213, size: 5568, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !4496, file: !4497, line: 27, baseType: !425, size: 64, offset: 5696)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4496, file: !4497, line: 28, baseType: !3774, size: 128, offset: 5760)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4496, file: !4497, line: 29, baseType: !419, size: 32, offset: 5888)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4496, file: !4497, line: 30, baseType: !4205, size: 64, offset: 5952)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !4496, file: !4497, line: 32, baseType: !4508, size: 64, offset: 6016)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4510)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !3459, line: 586, size: 256, elements: !4511)
!4511 = !{!4512, !4513}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4510, file: !3459, line: 587, baseType: !3945, size: 160)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4510, file: !3459, line: 588, baseType: !3478, size: 64, offset: 192)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4496, file: !4497, line: 33, baseType: !278, size: 64, offset: 6080)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !4496, file: !4497, line: 36, baseType: !4516, size: 64, offset: 6144)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !4497, line: 18, flags: DIFlagFwdDecl)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4496, file: !4497, line: 39, baseType: !4519, offset: 6208)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !3781, line: 8, elements: !251)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "adap", scope: !4165, file: !3, line: 34, baseType: !4521, size: 7552, offset: 704)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4522, line: 695, size: 7552, elements: !4523)
!4522 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4523 = !{!4524, !4525, !4526, !4555, !4556, !4570, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4619, !4630}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4521, file: !4522, line: 696, baseType: !164, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4521, file: !4522, line: 697, baseType: !7, size: 32, offset: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4521, file: !4522, line: 698, baseType: !4527, size: 64, offset: 128)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4529)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4522, line: 519, size: 320, elements: !4530)
!4530 = !{!4531, !4536, !4537, !4550, !4551}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4529, file: !4522, line: 529, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!173, !4535, !4470, !173}
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4529, file: !4522, line: 531, baseType: !4532, size: 64, offset: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4529, file: !4522, line: 533, baseType: !4538, size: 64, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!173, !4535, !862, !320, !222, !1355, !173, !4541}
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4472, line: 135, size: 272, elements: !4543)
!4543 = !{!4544, !4545, !4546}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4542, file: !4472, line: 136, baseType: !1356, size: 8)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4542, file: !4472, line: 137, baseType: !863, size: 16)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4542, file: !4472, line: 138, baseType: !4547, size: 272)
!4547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1356, size: 272, elements: !4548)
!4548 = !{!4549}
!4549 = !DISubrange(count: 34)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4529, file: !4522, line: 536, baseType: !4538, size: 64, offset: 192)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4529, file: !4522, line: 541, baseType: !4552, size: 64, offset: 256)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!419, !4535}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4521, file: !4522, line: 699, baseType: !167, size: 64, offset: 192)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4521, file: !4522, line: 702, baseType: !4557, size: 64, offset: 256)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4559)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4522, line: 557, size: 192, elements: !4560)
!4560 = !{!4561, !4565, !4569}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4559, file: !4522, line: 558, baseType: !4562, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{null, !4535, !7}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4559, file: !4522, line: 559, baseType: !4566, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!173, !4535, !7}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4559, file: !4522, line: 560, baseType: !4562, size: 64, offset: 128)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4521, file: !4522, line: 703, baseType: !4571, size: 192, offset: 320)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4572, line: 30, size: 192, elements: !4573)
!4572 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4573 = !{!4574, !4575, !4576}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4571, file: !4572, line: 31, baseType: !783)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4571, file: !4572, line: 32, baseType: !755, size: 128)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4571, file: !4572, line: 33, baseType: !1219, size: 64, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4521, file: !4522, line: 704, baseType: !4571, size: 192, offset: 512)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4521, file: !4522, line: 706, baseType: !173, size: 32, offset: 704)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4521, file: !4522, line: 707, baseType: !173, size: 32, offset: 736)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4521, file: !4522, line: 708, baseType: !213, size: 5568, offset: 768)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4521, file: !4522, line: 709, baseType: !328, size: 64, offset: 6336)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4521, file: !4522, line: 713, baseType: !173, size: 32, offset: 6400)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4521, file: !4522, line: 714, baseType: !4254, size: 384, offset: 6432)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4521, file: !4522, line: 715, baseType: !1505, size: 192, offset: 6848)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4521, file: !4522, line: 717, baseType: !1176, size: 192, offset: 7040)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4521, file: !4522, line: 718, baseType: !224, size: 128, offset: 7232)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4521, file: !4522, line: 720, baseType: !4588, size: 64, offset: 7360)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4522, line: 618, size: 832, elements: !4590)
!4590 = !{!4591, !4595, !4596, !4600, !4601, !4602, !4603, !4607, !4608, !4611, !4612, !4615, !4618}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4589, file: !4522, line: 619, baseType: !4592, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!173, !4535}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4589, file: !4522, line: 621, baseType: !4592, size: 64, offset: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4589, file: !4522, line: 622, baseType: !4597, size: 64, offset: 128)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{null, !4535, !173}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4589, file: !4522, line: 623, baseType: !4592, size: 64, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4589, file: !4522, line: 624, baseType: !4597, size: 64, offset: 256)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4589, file: !4522, line: 625, baseType: !4592, size: 64, offset: 320)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4589, file: !4522, line: 627, baseType: !4604, size: 64, offset: 384)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{null, !4535}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4589, file: !4522, line: 628, baseType: !4604, size: 64, offset: 448)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4589, file: !4522, line: 631, baseType: !4609, size: 64, offset: 512)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4522, line: 631, flags: DIFlagFwdDecl)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4589, file: !4522, line: 632, baseType: !4609, size: 64, offset: 576)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4589, file: !4522, line: 633, baseType: !4613, size: 64, offset: 640)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4522, line: 633, flags: DIFlagFwdDecl)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4589, file: !4522, line: 634, baseType: !4616, size: 64, offset: 704)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4522, line: 634, flags: DIFlagFwdDecl)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4589, file: !4522, line: 635, baseType: !4616, size: 64, offset: 768)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4521, file: !4522, line: 721, baseType: !4620, size: 64, offset: 7424)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4622)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4522, line: 664, size: 192, elements: !4623)
!4623 = !{!4624, !4625, !4626, !4627, !4628, !4629}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4622, file: !4522, line: 665, baseType: !425, size: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4622, file: !4522, line: 666, baseType: !173, size: 32, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4622, file: !4522, line: 667, baseType: !862, size: 16, offset: 96)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4622, file: !4522, line: 668, baseType: !862, size: 16, offset: 112)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4622, file: !4522, line: 669, baseType: !862, size: 16, offset: 128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4622, file: !4522, line: 670, baseType: !862, size: 16, offset: 144)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4521, file: !4522, line: 723, baseType: !3654, size: 64, offset: 7488)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_complete", scope: !4165, file: !3, line: 35, baseType: !1505, size: 192, offset: 8256)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !425)
!4634 = !{!0, !4635, !4640, !4645, !4650, !4655, !4657, !4662, !4683, !4686, !4688, !4694, !4696, !4701}
!4635 = !DIGlobalVariableExpression(var: !4636, expr: !DIExpression())
!4636 = distinct !DIGlobalVariable(name: "__exitcall_i2c_amd_plat_driver_exit", scope: !2, file: !3, line: 367, type: !4637, isLocal: true, isDefinition: true)
!4637 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4638, line: 117, baseType: !4639)
!4638 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!4640 = !DIGlobalVariableExpression(var: !4641, expr: !DIExpression())
!4641 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description248", scope: !2, file: !3, line: 369, type: !4642, isLocal: true, isDefinition: true, align: 8)
!4642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 480, elements: !4643)
!4643 = !{!4644}
!4644 = !DISubrange(count: 60)
!4645 = !DIGlobalVariableExpression(var: !4646, expr: !DIExpression())
!4646 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author249", scope: !2, file: !3, line: 370, type: !4647, isLocal: true, isDefinition: true, align: 8)
!4647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 552, elements: !4648)
!4648 = !{!4649}
!4649 = !DISubrange(count: 69)
!4650 = !DIGlobalVariableExpression(var: !4651, expr: !DIExpression())
!4651 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author250", scope: !2, file: !3, line: 371, type: !4652, isLocal: true, isDefinition: true, align: 8)
!4652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 464, elements: !4653)
!4653 = !{!4654}
!4654 = !DISubrange(count: 58)
!4655 = !DIGlobalVariableExpression(var: !4656, expr: !DIExpression())
!4656 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file251", scope: !2, file: !3, line: 372, type: !4652, isLocal: true, isDefinition: true, align: 8)
!4657 = !DIGlobalVariableExpression(var: !4658, expr: !DIExpression())
!4658 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license252", scope: !2, file: !3, line: 372, type: !4659, isLocal: true, isDefinition: true, align: 8)
!4659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 304, elements: !4660)
!4660 = !{!4661}
!4661 = !DISubrange(count: 38)
!4662 = !DIGlobalVariableExpression(var: !4663, expr: !DIExpression())
!4663 = distinct !DIGlobalVariable(name: "i2c_amd_plat_driver", scope: !2, file: !3, line: 359, type: !4664, isLocal: true, isDefinition: true)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !4497, line: 200, size: 1600, elements: !4665)
!4665 = !{!4666, !4670, !4671, !4675, !4679, !4680, !4681, !4682}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4664, file: !4497, line: 201, baseType: !4667, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!173, !4495}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4664, file: !4497, line: 202, baseType: !4667, size: 64, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4664, file: !4497, line: 203, baseType: !4672, size: 64, offset: 128)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{null, !4495}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4664, file: !4497, line: 204, baseType: !4676, size: 64, offset: 192)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!173, !4495, !3489}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4664, file: !4497, line: 205, baseType: !4667, size: 64, offset: 256)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4664, file: !4497, line: 206, baseType: !3447, size: 1152, offset: 320)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4664, file: !4497, line: 207, baseType: !4508, size: 64, offset: 1472)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !4664, file: !4497, line: 208, baseType: !200, size: 8, offset: 1536)
!4683 = !DIGlobalVariableExpression(var: !4684, expr: !DIExpression())
!4684 = distinct !DIGlobalVariable(name: "supported_speeds", scope: !2, file: !3, line: 204, type: !4685, isLocal: true, isDefinition: true)
!4685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3718, size: 160, elements: !4023)
!4686 = !DIGlobalVariableExpression(var: !4687, expr: !DIExpression())
!4687 = distinct !DIGlobalVariable(name: "i2c_amd_algorithm", scope: !2, file: !3, line: 182, type: !4528, isLocal: true, isDefinition: true)
!4688 = !DIGlobalVariableExpression(var: !4689, expr: !DIExpression())
!4689 = distinct !DIGlobalVariable(name: "__warned", scope: !4690, file: !4691, line: 275, type: !200, isLocal: true, isDefinition: true)
!4690 = distinct !DISubprogram(name: "dma_map_single_attrs", scope: !4691, file: !4691, line: 271, type: !4692, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!4691 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!923, !3375, !167, !325, !156, !328}
!4694 = !DIGlobalVariableExpression(var: !4695, expr: !DIExpression())
!4695 = distinct !DIGlobalVariable(name: "amd_i2c_dev_quirks", scope: !2, file: !3, line: 241, type: !4621, isLocal: true, isDefinition: true)
!4696 = !DIGlobalVariableExpression(var: !4697, expr: !DIExpression())
!4697 = distinct !DIGlobalVariable(name: "__key", scope: !4698, file: !1506, line: 88, type: !647, isLocal: true, isDefinition: true)
!4698 = distinct !DISubprogram(name: "__init_completion", scope: !1506, file: !1506, line: 85, type: !4699, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{null, !1504}
!4701 = !DIGlobalVariableExpression(var: !4702, expr: !DIExpression())
!4702 = distinct !DIGlobalVariable(name: "i2c_amd_acpi_match", scope: !2, file: !3, line: 353, type: !4703, isLocal: true, isDefinition: true)
!4703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3470, size: 512, elements: !1572)
!4704 = !{i32 7, !"Dwarf Version", i32 4}
!4705 = !{i32 2, !"Debug Info Version", i32 3}
!4706 = !{i32 1, !"wchar_size", i32 2}
!4707 = !{i32 1, !"Code Model", i32 2}
!4708 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4709 = distinct !DISubprogram(name: "i2c_amd_plat_driver_init", scope: !3, file: !3, line: 367, type: !4710, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!173}
!4712 = !DILocation(line: 367, column: 1, scope: !4709)
!4713 = distinct !DISubprogram(name: "i2c_amd_plat_driver_exit", scope: !3, file: !3, line: 367, type: !1882, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!4714 = !DILocation(line: 367, column: 1, scope: !4713)
!4715 = distinct !DISubprogram(name: "i2c_amd_probe", scope: !3, file: !3, line: 246, type: !4668, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!4716 = !DILocalVariable(name: "m", arg: 1, scope: !4717, file: !4718, line: 363, type: !2829)
!4717 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4718, file: !4718, line: 363, type: !4719, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!4718 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!328, !2829}
!4721 = !DILocation(line: 363, column: 74, scope: !4717, inlinedAt: !4722)
!4722 = distinct !DILocation(line: 312, column: 26, scope: !4715)
!4723 = !DILocalVariable(name: "pdev", arg: 1, scope: !4715, file: !3, line: 246, type: !4495)
!4724 = !DILocation(line: 246, column: 50, scope: !4715)
!4725 = !DILocalVariable(name: "ret", scope: !4715, file: !3, line: 248, type: !173)
!4726 = !DILocation(line: 248, column: 6, scope: !4715)
!4727 = !DILocalVariable(name: "i2c_dev", scope: !4715, file: !3, line: 249, type: !4164)
!4728 = !DILocation(line: 249, column: 22, scope: !4715)
!4729 = !DILocalVariable(name: "handle", scope: !4715, file: !3, line: 250, type: !175)
!4730 = !DILocation(line: 250, column: 14, scope: !4715)
!4731 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4732, file: !3, line: 250, type: !182)
!4732 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 250, column: 23)
!4733 = !DILocation(line: 250, column: 23, scope: !4732)
!4734 = !DILocalVariable(name: "__mptr", scope: !4735, file: !3, line: 250, type: !167)
!4735 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 250, column: 23)
!4736 = !DILocation(line: 250, column: 23, scope: !4735)
!4737 = !DILocation(line: 250, column: 23, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 250, column: 23)
!4739 = !DILocation(line: 250, column: 23, scope: !4715)
!4740 = !DILocalVariable(name: "adev", scope: !4715, file: !3, line: 251, type: !168)
!4741 = !DILocation(line: 251, column: 22, scope: !4715)
!4742 = !DILocalVariable(name: "mp2_dev", scope: !4715, file: !3, line: 252, type: !4184)
!4743 = !DILocation(line: 252, column: 22, scope: !4715)
!4744 = !DILocalVariable(name: "uid", scope: !4715, file: !3, line: 253, type: !220)
!4745 = !DILocation(line: 253, column: 14, scope: !4715)
!4746 = !DILocation(line: 255, column: 26, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 255, column: 6)
!4748 = !DILocation(line: 255, column: 6, scope: !4747)
!4749 = !DILocation(line: 255, column: 6, scope: !4715)
!4750 = !DILocation(line: 256, column: 3, scope: !4747)
!4751 = !DILocation(line: 262, column: 12, scope: !4715)
!4752 = !DILocation(line: 262, column: 10, scope: !4715)
!4753 = !DILocation(line: 263, column: 7, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 263, column: 6)
!4755 = !DILocation(line: 263, column: 15, scope: !4754)
!4756 = !DILocation(line: 263, column: 19, scope: !4754)
!4757 = !DILocation(line: 263, column: 28, scope: !4754)
!4758 = !DILocation(line: 263, column: 6, scope: !4715)
!4759 = !DILocation(line: 265, column: 3, scope: !4754)
!4760 = !DILocation(line: 267, column: 26, scope: !4715)
!4761 = !DILocation(line: 267, column: 32, scope: !4715)
!4762 = !DILocation(line: 267, column: 12, scope: !4715)
!4763 = !DILocation(line: 267, column: 10, scope: !4715)
!4764 = !DILocation(line: 268, column: 7, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 268, column: 6)
!4766 = !DILocation(line: 268, column: 6, scope: !4715)
!4767 = !DILocation(line: 269, column: 3, scope: !4765)
!4768 = !DILocation(line: 271, column: 28, scope: !4715)
!4769 = !DILocation(line: 271, column: 2, scope: !4715)
!4770 = !DILocation(line: 271, column: 11, scope: !4715)
!4771 = !DILocation(line: 271, column: 18, scope: !4715)
!4772 = !DILocation(line: 271, column: 26, scope: !4715)
!4773 = !DILocation(line: 272, column: 18, scope: !4715)
!4774 = !DILocation(line: 272, column: 2, scope: !4715)
!4775 = !DILocation(line: 272, column: 11, scope: !4715)
!4776 = !DILocation(line: 272, column: 16, scope: !4715)
!4777 = !DILocation(line: 273, column: 23, scope: !4715)
!4778 = !DILocation(line: 273, column: 29, scope: !4715)
!4779 = !DILocation(line: 273, column: 2, scope: !4715)
!4780 = !DILocation(line: 275, column: 2, scope: !4715)
!4781 = !DILocation(line: 275, column: 11, scope: !4715)
!4782 = !DILocation(line: 275, column: 18, scope: !4715)
!4783 = !DILocation(line: 275, column: 33, scope: !4715)
!4784 = !DILocation(line: 277, column: 2, scope: !4715)
!4785 = !DILocation(line: 277, column: 11, scope: !4715)
!4786 = !DILocation(line: 277, column: 18, scope: !4715)
!4787 = !DILocation(line: 277, column: 26, scope: !4715)
!4788 = !DILocation(line: 278, column: 2, scope: !4715)
!4789 = !DILocation(line: 278, column: 11, scope: !4715)
!4790 = !DILocation(line: 278, column: 18, scope: !4715)
!4791 = !DILocation(line: 278, column: 25, scope: !4715)
!4792 = !DILocation(line: 281, column: 8, scope: !4715)
!4793 = !DILocation(line: 281, column: 14, scope: !4715)
!4794 = !DILocation(line: 281, column: 18, scope: !4715)
!4795 = !DILocation(line: 281, column: 6, scope: !4715)
!4796 = !DILocation(line: 282, column: 7, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 282, column: 6)
!4798 = !DILocation(line: 282, column: 6, scope: !4715)
!4799 = !DILocation(line: 283, column: 3, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 282, column: 12)
!4801 = !DILocation(line: 284, column: 3, scope: !4800)
!4802 = !DILocation(line: 285, column: 20, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 285, column: 13)
!4804 = !DILocation(line: 285, column: 13, scope: !4803)
!4805 = !DILocation(line: 285, column: 30, scope: !4803)
!4806 = !DILocation(line: 285, column: 13, scope: !4797)
!4807 = !DILocation(line: 286, column: 3, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 285, column: 36)
!4809 = !DILocation(line: 286, column: 12, scope: !4808)
!4810 = !DILocation(line: 286, column: 19, scope: !4808)
!4811 = !DILocation(line: 286, column: 26, scope: !4808)
!4812 = !DILocation(line: 287, column: 2, scope: !4808)
!4813 = !DILocation(line: 287, column: 20, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 287, column: 13)
!4815 = !DILocation(line: 287, column: 13, scope: !4814)
!4816 = !DILocation(line: 287, column: 30, scope: !4814)
!4817 = !DILocation(line: 287, column: 13, scope: !4803)
!4818 = !DILocation(line: 288, column: 3, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 287, column: 36)
!4820 = !DILocation(line: 288, column: 12, scope: !4819)
!4821 = !DILocation(line: 288, column: 19, scope: !4819)
!4822 = !DILocation(line: 288, column: 26, scope: !4819)
!4823 = !DILocation(line: 289, column: 2, scope: !4819)
!4824 = !DILocation(line: 290, column: 3, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 289, column: 9)
!4826 = !DILocation(line: 291, column: 3, scope: !4825)
!4827 = !DILocation(line: 296, column: 25, scope: !4715)
!4828 = !DILocation(line: 296, column: 2, scope: !4715)
!4829 = !DILocation(line: 298, column: 2, scope: !4715)
!4830 = !DILocation(line: 298, column: 11, scope: !4715)
!4831 = !DILocation(line: 298, column: 18, scope: !4715)
!4832 = !DILocation(line: 298, column: 25, scope: !4715)
!4833 = !DILocation(line: 299, column: 27, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 299, column: 6)
!4835 = !DILocation(line: 299, column: 36, scope: !4834)
!4836 = !DILocation(line: 299, column: 6, scope: !4834)
!4837 = !DILocation(line: 299, column: 6, scope: !4715)
!4838 = !DILocation(line: 300, column: 3, scope: !4834)
!4839 = !DILocation(line: 301, column: 19, scope: !4715)
!4840 = !DILocation(line: 301, column: 28, scope: !4715)
!4841 = !DILocation(line: 301, column: 34, scope: !4715)
!4842 = !DILocation(line: 301, column: 40, scope: !4715)
!4843 = !DILocation(line: 301, column: 49, scope: !4715)
!4844 = !DILocation(line: 301, column: 58, scope: !4715)
!4845 = !DILocation(line: 301, column: 2, scope: !4715)
!4846 = !DILocation(line: 304, column: 52, scope: !4715)
!4847 = !DILocation(line: 304, column: 30, scope: !4715)
!4848 = !DILocation(line: 304, column: 2, scope: !4715)
!4849 = !DILocation(line: 304, column: 11, scope: !4715)
!4850 = !DILocation(line: 304, column: 18, scope: !4715)
!4851 = !DILocation(line: 304, column: 28, scope: !4715)
!4852 = !DILocation(line: 307, column: 2, scope: !4715)
!4853 = !DILocation(line: 307, column: 11, scope: !4715)
!4854 = !DILocation(line: 307, column: 16, scope: !4715)
!4855 = !DILocation(line: 307, column: 22, scope: !4715)
!4856 = !DILocation(line: 308, column: 2, scope: !4715)
!4857 = !DILocation(line: 308, column: 11, scope: !4715)
!4858 = !DILocation(line: 308, column: 16, scope: !4715)
!4859 = !DILocation(line: 308, column: 21, scope: !4715)
!4860 = !DILocation(line: 309, column: 2, scope: !4715)
!4861 = !DILocation(line: 309, column: 11, scope: !4715)
!4862 = !DILocation(line: 309, column: 16, scope: !4715)
!4863 = !DILocation(line: 309, column: 23, scope: !4715)
!4864 = !DILocation(line: 310, column: 30, scope: !4715)
!4865 = !DILocation(line: 310, column: 36, scope: !4715)
!4866 = !DILocation(line: 310, column: 2, scope: !4715)
!4867 = !DILocation(line: 310, column: 11, scope: !4715)
!4868 = !DILocation(line: 310, column: 16, scope: !4715)
!4869 = !DILocation(line: 310, column: 20, scope: !4715)
!4870 = !DILocation(line: 310, column: 27, scope: !4715)
!4871 = !DILocation(line: 311, column: 28, scope: !4715)
!4872 = !DILocation(line: 311, column: 2, scope: !4715)
!4873 = !DILocation(line: 311, column: 11, scope: !4715)
!4874 = !DILocation(line: 311, column: 16, scope: !4715)
!4875 = !DILocation(line: 311, column: 26, scope: !4715)
!4876 = !DILocation(line: 365, column: 27, scope: !4877, inlinedAt: !4722)
!4877 = distinct !DILexicalBlock(scope: !4717, file: !4718, line: 365, column: 6)
!4878 = !DILocation(line: 365, column: 6, scope: !4877, inlinedAt: !4722)
!4879 = !DILocation(line: 365, column: 6, scope: !4717, inlinedAt: !4722)
!4880 = !DILocation(line: 366, column: 12, scope: !4881, inlinedAt: !4722)
!4881 = distinct !DILexicalBlock(scope: !4882, file: !4718, line: 366, column: 7)
!4882 = distinct !DILexicalBlock(scope: !4877, file: !4718, line: 365, column: 31)
!4883 = !DILocation(line: 366, column: 14, scope: !4881, inlinedAt: !4722)
!4884 = !DILocation(line: 366, column: 7, scope: !4882, inlinedAt: !4722)
!4885 = !DILocation(line: 367, column: 4, scope: !4881, inlinedAt: !4722)
!4886 = !DILocation(line: 368, column: 28, scope: !4882, inlinedAt: !4722)
!4887 = !DILocation(line: 368, column: 10, scope: !4882, inlinedAt: !4722)
!4888 = !DILocation(line: 368, column: 3, scope: !4882, inlinedAt: !4722)
!4889 = !DILocation(line: 370, column: 29, scope: !4890, inlinedAt: !4722)
!4890 = distinct !DILexicalBlock(scope: !4877, file: !4718, line: 369, column: 9)
!4891 = !DILocation(line: 370, column: 10, scope: !4890, inlinedAt: !4722)
!4892 = !DILocation(line: 370, column: 3, scope: !4890, inlinedAt: !4722)
!4893 = !DILocation(line: 372, column: 1, scope: !4717, inlinedAt: !4722)
!4894 = !DILocation(line: 312, column: 26, scope: !4715)
!4895 = !DILocation(line: 312, column: 2, scope: !4715)
!4896 = !DILocation(line: 312, column: 11, scope: !4715)
!4897 = !DILocation(line: 312, column: 16, scope: !4715)
!4898 = !DILocation(line: 312, column: 24, scope: !4715)
!4899 = !DILocation(line: 313, column: 2, scope: !4715)
!4900 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4901, file: !3, line: 313, type: !182)
!4901 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 313, column: 2)
!4902 = !DILocation(line: 313, column: 2, scope: !4901)
!4903 = !DILocalVariable(name: "__mptr", scope: !4904, file: !3, line: 313, type: !167)
!4904 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 313, column: 2)
!4905 = !DILocation(line: 313, column: 2, scope: !4904)
!4906 = !DILocation(line: 313, column: 2, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 313, column: 2)
!4908 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4909, file: !3, line: 313, type: !182)
!4909 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 313, column: 2)
!4910 = !DILocation(line: 313, column: 2, scope: !4909)
!4911 = !DILocalVariable(name: "__mptr", scope: !4912, file: !3, line: 313, type: !167)
!4912 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 313, column: 2)
!4913 = !DILocation(line: 313, column: 2, scope: !4912)
!4914 = !DILocation(line: 313, column: 2, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 313, column: 2)
!4916 = !DILocation(line: 314, column: 30, scope: !4715)
!4917 = !DILocation(line: 314, column: 36, scope: !4715)
!4918 = !DILocation(line: 314, column: 40, scope: !4715)
!4919 = !DILocation(line: 314, column: 2, scope: !4715)
!4920 = !DILocation(line: 314, column: 11, scope: !4715)
!4921 = !DILocation(line: 314, column: 16, scope: !4715)
!4922 = !DILocation(line: 314, column: 20, scope: !4715)
!4923 = !DILocation(line: 314, column: 28, scope: !4715)
!4924 = !DILocation(line: 315, column: 11, scope: !4715)
!4925 = !DILocation(line: 315, column: 20, scope: !4715)
!4926 = !DILocation(line: 315, column: 25, scope: !4715)
!4927 = !DILocation(line: 316, column: 26, scope: !4715)
!4928 = !DILocation(line: 316, column: 35, scope: !4715)
!4929 = !DILocation(line: 316, column: 42, scope: !4715)
!4930 = !DILocation(line: 315, column: 2, scope: !4715)
!4931 = !DILocation(line: 317, column: 20, scope: !4715)
!4932 = !DILocation(line: 317, column: 29, scope: !4715)
!4933 = !DILocation(line: 317, column: 35, scope: !4715)
!4934 = !DILocation(line: 317, column: 2, scope: !4715)
!4935 = !DILocation(line: 319, column: 2, scope: !4715)
!4936 = !DILocation(line: 322, column: 25, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 322, column: 6)
!4938 = !DILocation(line: 322, column: 6, scope: !4937)
!4939 = !DILocation(line: 322, column: 6, scope: !4715)
!4940 = !DILocation(line: 323, column: 3, scope: !4937)
!4941 = !DILocation(line: 326, column: 25, scope: !4715)
!4942 = !DILocation(line: 326, column: 34, scope: !4715)
!4943 = !DILocation(line: 326, column: 8, scope: !4715)
!4944 = !DILocation(line: 326, column: 6, scope: !4715)
!4945 = !DILocation(line: 328, column: 25, scope: !4715)
!4946 = !DILocation(line: 328, column: 2, scope: !4715)
!4947 = !DILocation(line: 330, column: 6, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 330, column: 6)
!4949 = !DILocation(line: 330, column: 10, scope: !4948)
!4950 = !DILocation(line: 330, column: 6, scope: !4715)
!4951 = !DILocation(line: 331, column: 3, scope: !4948)
!4952 = !DILocation(line: 333, column: 9, scope: !4715)
!4953 = !DILocation(line: 333, column: 2, scope: !4715)
!4954 = !DILocation(line: 334, column: 1, scope: !4715)
!4955 = distinct !DISubprogram(name: "i2c_amd_remove", scope: !3, file: !3, line: 336, type: !4668, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!4956 = !DILocalVariable(name: "pdev", arg: 1, scope: !4955, file: !3, line: 336, type: !4495)
!4957 = !DILocation(line: 336, column: 51, scope: !4955)
!4958 = !DILocalVariable(name: "i2c_dev", scope: !4955, file: !3, line: 338, type: !4164)
!4959 = !DILocation(line: 338, column: 22, scope: !4955)
!4960 = !DILocation(line: 338, column: 53, scope: !4955)
!4961 = !DILocation(line: 338, column: 32, scope: !4955)
!4962 = !DILocalVariable(name: "i2c_common", scope: !4955, file: !3, line: 339, type: !4464)
!4963 = !DILocation(line: 339, column: 25, scope: !4955)
!4964 = !DILocation(line: 339, column: 39, scope: !4955)
!4965 = !DILocation(line: 339, column: 48, scope: !4955)
!4966 = !DILocation(line: 341, column: 16, scope: !4955)
!4967 = !DILocation(line: 341, column: 25, scope: !4955)
!4968 = !DILocation(line: 341, column: 2, scope: !4955)
!4969 = !DILocation(line: 343, column: 21, scope: !4955)
!4970 = !DILocation(line: 343, column: 2, scope: !4955)
!4971 = !DILocation(line: 344, column: 24, scope: !4955)
!4972 = !DILocation(line: 344, column: 2, scope: !4955)
!4973 = !DILocation(line: 345, column: 2, scope: !4955)
!4974 = !DILocation(line: 345, column: 14, scope: !4955)
!4975 = !DILocation(line: 345, column: 22, scope: !4955)
!4976 = !DILocation(line: 347, column: 18, scope: !4955)
!4977 = !DILocation(line: 347, column: 27, scope: !4955)
!4978 = !DILocation(line: 347, column: 2, scope: !4955)
!4979 = !DILocation(line: 349, column: 19, scope: !4955)
!4980 = !DILocation(line: 349, column: 28, scope: !4955)
!4981 = !DILocation(line: 349, column: 2, scope: !4955)
!4982 = !DILocation(line: 350, column: 2, scope: !4955)
!4983 = distinct !DISubprogram(name: "acpi_device_handle", scope: !4984, file: !4984, line: 38, type: !4985, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!4984 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!175, !168}
!4987 = !DILocalVariable(name: "adev", arg: 1, scope: !4983, file: !4984, line: 38, type: !168)
!4988 = !DILocation(line: 38, column: 66, scope: !4983)
!4989 = !DILocation(line: 40, column: 9, scope: !4983)
!4990 = !DILocation(line: 40, column: 16, scope: !4983)
!4991 = !DILocation(line: 40, column: 22, scope: !4983)
!4992 = !DILocation(line: 40, column: 2, scope: !4983)
!4993 = distinct !DISubprogram(name: "devm_kzalloc", scope: !73, file: !73, line: 215, type: !4994, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!167, !3375, !325, !746}
!4996 = !DILocalVariable(name: "dev", arg: 1, scope: !4993, file: !73, line: 215, type: !3375)
!4997 = !DILocation(line: 215, column: 49, scope: !4993)
!4998 = !DILocalVariable(name: "size", arg: 2, scope: !4993, file: !73, line: 215, type: !325)
!4999 = !DILocation(line: 215, column: 61, scope: !4993)
!5000 = !DILocalVariable(name: "gfp", arg: 3, scope: !4993, file: !73, line: 215, type: !746)
!5001 = !DILocation(line: 215, column: 73, scope: !4993)
!5002 = !DILocation(line: 217, column: 22, scope: !4993)
!5003 = !DILocation(line: 217, column: 27, scope: !4993)
!5004 = !DILocation(line: 217, column: 33, scope: !4993)
!5005 = !DILocation(line: 217, column: 37, scope: !4993)
!5006 = !DILocation(line: 217, column: 9, scope: !4993)
!5007 = !DILocation(line: 217, column: 2, scope: !4993)
!5008 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !4497, file: !4497, line: 236, type: !5009, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{null, !4495, !167}
!5011 = !DILocalVariable(name: "pdev", arg: 1, scope: !5008, file: !4497, line: 236, type: !4495)
!5012 = !DILocation(line: 236, column: 65, scope: !5008)
!5013 = !DILocalVariable(name: "data", arg: 2, scope: !5008, file: !4497, line: 237, type: !167)
!5014 = !DILocation(line: 237, column: 12, scope: !5008)
!5015 = !DILocation(line: 239, column: 19, scope: !5008)
!5016 = !DILocation(line: 239, column: 25, scope: !5008)
!5017 = !DILocation(line: 239, column: 30, scope: !5008)
!5018 = !DILocation(line: 239, column: 2, scope: !5008)
!5019 = !DILocation(line: 240, column: 1, scope: !5008)
!5020 = distinct !DISubprogram(name: "i2c_amd_cmd_completion", scope: !3, file: !3, line: 85, type: !4481, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5021 = !DILocalVariable(name: "i2c_common", arg: 1, scope: !5020, file: !3, line: 85, type: !4464)
!5022 = !DILocation(line: 85, column: 59, scope: !5020)
!5023 = !DILocalVariable(name: "i2c_dev", scope: !5020, file: !3, line: 87, type: !4164)
!5024 = !DILocation(line: 87, column: 22, scope: !5020)
!5025 = !DILocalVariable(name: "__mptr", scope: !5026, file: !3, line: 87, type: !167)
!5026 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 87, column: 32)
!5027 = !DILocation(line: 87, column: 32, scope: !5026)
!5028 = !DILocation(line: 87, column: 32, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 87, column: 32)
!5030 = !DILocalVariable(name: "event", scope: !5020, file: !3, line: 88, type: !5031)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!5032 = !DILocation(line: 88, column: 19, scope: !5020)
!5033 = !DILocation(line: 88, column: 28, scope: !5020)
!5034 = !DILocation(line: 88, column: 40, scope: !5020)
!5035 = !DILocation(line: 90, column: 6, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 90, column: 6)
!5037 = !DILocation(line: 90, column: 13, scope: !5036)
!5038 = !DILocation(line: 90, column: 15, scope: !5036)
!5039 = !DILocation(line: 90, column: 22, scope: !5036)
!5040 = !DILocation(line: 90, column: 6, scope: !5020)
!5041 = !DILocation(line: 91, column: 3, scope: !5036)
!5042 = !DILocation(line: 95, column: 12, scope: !5020)
!5043 = !DILocation(line: 95, column: 21, scope: !5020)
!5044 = !DILocation(line: 95, column: 2, scope: !5020)
!5045 = !DILocation(line: 96, column: 1, scope: !5020)
!5046 = distinct !DISubprogram(name: "i2c_amd_suspend", scope: !3, file: !3, line: 188, type: !4491, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5047 = !DILocalVariable(name: "i2c_common", arg: 1, scope: !5046, file: !3, line: 188, type: !4464)
!5048 = !DILocation(line: 188, column: 51, scope: !5046)
!5049 = !DILocalVariable(name: "i2c_dev", scope: !5046, file: !3, line: 190, type: !4164)
!5050 = !DILocation(line: 190, column: 22, scope: !5046)
!5051 = !DILocalVariable(name: "__mptr", scope: !5052, file: !3, line: 190, type: !167)
!5052 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 190, column: 32)
!5053 = !DILocation(line: 190, column: 32, scope: !5052)
!5054 = !DILocation(line: 190, column: 32, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 190, column: 32)
!5056 = !DILocation(line: 192, column: 21, scope: !5046)
!5057 = !DILocation(line: 192, column: 2, scope: !5046)
!5058 = !DILocation(line: 193, column: 2, scope: !5046)
!5059 = distinct !DISubprogram(name: "i2c_amd_resume", scope: !3, file: !3, line: 196, type: !4491, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5060 = !DILocalVariable(name: "i2c_common", arg: 1, scope: !5059, file: !3, line: 196, type: !4464)
!5061 = !DILocation(line: 196, column: 50, scope: !5059)
!5062 = !DILocalVariable(name: "i2c_dev", scope: !5059, file: !3, line: 198, type: !4164)
!5063 = !DILocation(line: 198, column: 22, scope: !5059)
!5064 = !DILocalVariable(name: "__mptr", scope: !5065, file: !3, line: 198, type: !167)
!5065 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 198, column: 32)
!5066 = !DILocation(line: 198, column: 32, scope: !5065)
!5067 = !DILocation(line: 198, column: 32, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 198, column: 32)
!5069 = !DILocation(line: 200, column: 28, scope: !5059)
!5070 = !DILocation(line: 200, column: 9, scope: !5059)
!5071 = !DILocation(line: 200, column: 2, scope: !5059)
!5072 = distinct !DISubprogram(name: "amd_mp2_pm_runtime_get", scope: !108, file: !108, line: 208, type: !5073, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{null, !4184}
!5075 = !DILocalVariable(name: "mp2_dev", arg: 1, scope: !5072, file: !108, line: 208, type: !4184)
!5076 = !DILocation(line: 208, column: 63, scope: !5072)
!5077 = !DILocation(line: 210, column: 23, scope: !5072)
!5078 = !DILocation(line: 210, column: 32, scope: !5072)
!5079 = !DILocation(line: 210, column: 41, scope: !5072)
!5080 = !DILocation(line: 210, column: 2, scope: !5072)
!5081 = !DILocation(line: 211, column: 1, scope: !5072)
!5082 = distinct !DISubprogram(name: "i2c_amd_get_bus_speed", scope: !3, file: !3, line: 212, type: !5083, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!144, !4495}
!5085 = !DILocalVariable(name: "pdev", arg: 1, scope: !5082, file: !3, line: 212, type: !4495)
!5086 = !DILocation(line: 212, column: 70, scope: !5082)
!5087 = !DILocalVariable(name: "acpi_speed", scope: !5082, file: !3, line: 214, type: !419)
!5088 = !DILocation(line: 214, column: 6, scope: !5082)
!5089 = !DILocalVariable(name: "i", scope: !5082, file: !3, line: 215, type: !173)
!5090 = !DILocation(line: 215, column: 6, scope: !5082)
!5091 = !DILocation(line: 217, column: 40, scope: !5082)
!5092 = !DILocation(line: 217, column: 46, scope: !5082)
!5093 = !DILocation(line: 217, column: 15, scope: !5082)
!5094 = !DILocation(line: 217, column: 13, scope: !5082)
!5095 = !DILocation(line: 219, column: 9, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 219, column: 2)
!5097 = !DILocation(line: 219, column: 7, scope: !5096)
!5098 = !DILocation(line: 219, column: 14, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 219, column: 2)
!5100 = !DILocation(line: 219, column: 16, scope: !5099)
!5101 = !DILocation(line: 219, column: 2, scope: !5096)
!5102 = !DILocation(line: 220, column: 7, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 220, column: 7)
!5104 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 219, column: 53)
!5105 = !DILocation(line: 220, column: 38, scope: !5103)
!5106 = !DILocation(line: 220, column: 21, scope: !5103)
!5107 = !DILocation(line: 220, column: 18, scope: !5103)
!5108 = !DILocation(line: 220, column: 7, scope: !5104)
!5109 = !DILocation(line: 221, column: 4, scope: !5103)
!5110 = !DILocation(line: 222, column: 2, scope: !5104)
!5111 = !DILocation(line: 219, column: 49, scope: !5099)
!5112 = !DILocation(line: 219, column: 2, scope: !5099)
!5113 = distinct !{!5113, !5101, !5114}
!5114 = !DILocation(line: 222, column: 2, scope: !5096)
!5115 = !DILocation(line: 223, column: 15, scope: !5082)
!5116 = !DILocation(line: 223, column: 17, scope: !5082)
!5117 = !DILocation(line: 223, column: 67, scope: !5082)
!5118 = !DILocation(line: 223, column: 50, scope: !5082)
!5119 = !DILocation(line: 223, column: 13, scope: !5082)
!5120 = !DILocation(line: 225, column: 10, scope: !5082)
!5121 = !DILocation(line: 225, column: 2, scope: !5082)
!5122 = !DILocation(line: 227, column: 3, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 225, column: 22)
!5124 = !DILocation(line: 229, column: 3, scope: !5123)
!5125 = !DILocation(line: 231, column: 3, scope: !5123)
!5126 = !DILocation(line: 233, column: 3, scope: !5123)
!5127 = !DILocation(line: 235, column: 3, scope: !5123)
!5128 = !DILocation(line: 237, column: 3, scope: !5123)
!5129 = !DILocation(line: 239, column: 1, scope: !5082)
!5130 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !170, file: !170, line: 438, type: !5131, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!182, !168}
!5133 = !DILocalVariable(name: "adev", arg: 1, scope: !5130, file: !170, line: 438, type: !168)
!5134 = !DILocation(line: 438, column: 76, scope: !5130)
!5135 = !DILocation(line: 440, column: 10, scope: !5130)
!5136 = !DILocation(line: 440, column: 16, scope: !5130)
!5137 = !DILocation(line: 440, column: 2, scope: !5130)
!5138 = distinct !DISubprogram(name: "i2c_set_adapdata", scope: !4522, file: !4522, line: 732, type: !5139, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{null, !4535, !167}
!5141 = !DILocalVariable(name: "adap", arg: 1, scope: !5138, file: !4522, line: 732, type: !4535)
!5142 = !DILocation(line: 732, column: 57, scope: !5138)
!5143 = !DILocalVariable(name: "data", arg: 2, scope: !5138, file: !4522, line: 732, type: !167)
!5144 = !DILocation(line: 732, column: 69, scope: !5138)
!5145 = !DILocation(line: 734, column: 19, scope: !5138)
!5146 = !DILocation(line: 734, column: 25, scope: !5138)
!5147 = !DILocation(line: 734, column: 30, scope: !5138)
!5148 = !DILocation(line: 734, column: 2, scope: !5138)
!5149 = !DILocation(line: 735, column: 1, scope: !5138)
!5150 = !DILocalVariable(name: "x", arg: 1, scope: !4698, file: !1506, line: 85, type: !1504)
!5151 = !DILocation(line: 85, column: 57, scope: !4698)
!5152 = !DILocation(line: 87, column: 2, scope: !4698)
!5153 = !DILocation(line: 87, column: 5, scope: !4698)
!5154 = !DILocation(line: 87, column: 10, scope: !4698)
!5155 = !DILocation(line: 88, column: 2, scope: !4698)
!5156 = !DILocation(line: 88, column: 2, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !4698, file: !1506, line: 88, column: 2)
!5158 = !DILocation(line: 89, column: 1, scope: !4698)
!5159 = distinct !DISubprogram(name: "i2c_amd_enable_set", scope: !3, file: !3, line: 124, type: !5160, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!173, !4164, !200}
!5162 = !DILocalVariable(name: "i2c_dev", arg: 1, scope: !5159, file: !3, line: 124, type: !4164)
!5163 = !DILocation(line: 124, column: 51, scope: !5159)
!5164 = !DILocalVariable(name: "enable", arg: 2, scope: !5159, file: !3, line: 124, type: !200)
!5165 = !DILocation(line: 124, column: 65, scope: !5159)
!5166 = !DILocalVariable(name: "i2c_common", scope: !5159, file: !3, line: 126, type: !4464)
!5167 = !DILocation(line: 126, column: 25, scope: !5159)
!5168 = !DILocation(line: 126, column: 39, scope: !5159)
!5169 = !DILocation(line: 126, column: 48, scope: !5159)
!5170 = !DILocation(line: 128, column: 20, scope: !5159)
!5171 = !DILocation(line: 128, column: 2, scope: !5159)
!5172 = !DILocation(line: 129, column: 25, scope: !5159)
!5173 = !DILocation(line: 129, column: 37, scope: !5159)
!5174 = !DILocation(line: 129, column: 2, scope: !5159)
!5175 = !DILocation(line: 131, column: 38, scope: !5159)
!5176 = !DILocation(line: 131, column: 9, scope: !5159)
!5177 = !DILocation(line: 131, column: 2, scope: !5159)
!5178 = distinct !DISubprogram(name: "amd_mp2_pm_runtime_put", scope: !108, file: !108, line: 213, type: !5073, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5179 = !DILocalVariable(name: "mp2_dev", arg: 1, scope: !5178, file: !108, line: 213, type: !4184)
!5180 = !DILocation(line: 213, column: 63, scope: !5178)
!5181 = !DILocation(line: 215, column: 29, scope: !5178)
!5182 = !DILocation(line: 215, column: 38, scope: !5178)
!5183 = !DILocation(line: 215, column: 47, scope: !5178)
!5184 = !DILocation(line: 215, column: 2, scope: !5178)
!5185 = !DILocation(line: 216, column: 30, scope: !5178)
!5186 = !DILocation(line: 216, column: 39, scope: !5178)
!5187 = !DILocation(line: 216, column: 48, scope: !5178)
!5188 = !DILocation(line: 216, column: 2, scope: !5178)
!5189 = !DILocation(line: 217, column: 1, scope: !5178)
!5190 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5191, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{null, !3375, !167}
!5193 = !DILocalVariable(name: "dev", arg: 1, scope: !5190, file: !73, line: 660, type: !3375)
!5194 = !DILocation(line: 660, column: 51, scope: !5190)
!5195 = !DILocalVariable(name: "data", arg: 2, scope: !5190, file: !73, line: 660, type: !167)
!5196 = !DILocation(line: 660, column: 62, scope: !5190)
!5197 = !DILocation(line: 662, column: 21, scope: !5190)
!5198 = !DILocation(line: 662, column: 2, scope: !5190)
!5199 = !DILocation(line: 662, column: 7, scope: !5190)
!5200 = !DILocation(line: 662, column: 19, scope: !5190)
!5201 = !DILocation(line: 663, column: 1, scope: !5190)
!5202 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !5203, file: !5203, line: 384, type: !3407, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5203 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!5204 = !DILocalVariable(name: "dev", arg: 1, scope: !5202, file: !5203, line: 384, type: !3375)
!5205 = !DILocation(line: 384, column: 54, scope: !5202)
!5206 = !DILocation(line: 386, column: 29, scope: !5202)
!5207 = !DILocation(line: 386, column: 9, scope: !5202)
!5208 = !DILocation(line: 386, column: 2, scope: !5202)
!5209 = distinct !DISubprogram(name: "i2c_amd_xfer", scope: !3, file: !3, line: 153, type: !4533, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5210 = !DILocalVariable(name: "adap", arg: 1, scope: !5209, file: !3, line: 153, type: !4535)
!5211 = !DILocation(line: 153, column: 45, scope: !5209)
!5212 = !DILocalVariable(name: "msgs", arg: 2, scope: !5209, file: !3, line: 153, type: !4470)
!5213 = !DILocation(line: 153, column: 67, scope: !5209)
!5214 = !DILocalVariable(name: "num", arg: 3, scope: !5209, file: !3, line: 153, type: !173)
!5215 = !DILocation(line: 153, column: 77, scope: !5209)
!5216 = !DILocalVariable(name: "i2c_dev", scope: !5209, file: !3, line: 155, type: !4164)
!5217 = !DILocation(line: 155, column: 22, scope: !5209)
!5218 = !DILocation(line: 155, column: 49, scope: !5209)
!5219 = !DILocation(line: 155, column: 32, scope: !5209)
!5220 = !DILocalVariable(name: "i", scope: !5209, file: !3, line: 156, type: !173)
!5221 = !DILocation(line: 156, column: 6, scope: !5209)
!5222 = !DILocalVariable(name: "pmsg", scope: !5209, file: !3, line: 157, type: !4470)
!5223 = !DILocation(line: 157, column: 18, scope: !5209)
!5224 = !DILocalVariable(name: "err", scope: !5209, file: !3, line: 158, type: !173)
!5225 = !DILocation(line: 158, column: 6, scope: !5209)
!5226 = !DILocation(line: 161, column: 6, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 161, column: 6)
!5228 = !DILocation(line: 161, column: 6, scope: !5209)
!5229 = !DILocation(line: 162, column: 3, scope: !5227)
!5230 = !DILocation(line: 164, column: 25, scope: !5209)
!5231 = !DILocation(line: 164, column: 34, scope: !5209)
!5232 = !DILocation(line: 164, column: 41, scope: !5209)
!5233 = !DILocation(line: 164, column: 2, scope: !5209)
!5234 = !DILocation(line: 166, column: 9, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 166, column: 2)
!5236 = !DILocation(line: 166, column: 7, scope: !5235)
!5237 = !DILocation(line: 166, column: 14, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 166, column: 2)
!5239 = !DILocation(line: 166, column: 18, scope: !5238)
!5240 = !DILocation(line: 166, column: 16, scope: !5238)
!5241 = !DILocation(line: 166, column: 2, scope: !5235)
!5242 = !DILocation(line: 167, column: 11, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 166, column: 28)
!5244 = !DILocation(line: 167, column: 16, scope: !5243)
!5245 = !DILocation(line: 167, column: 8, scope: !5243)
!5246 = !DILocation(line: 168, column: 26, scope: !5243)
!5247 = !DILocation(line: 168, column: 35, scope: !5243)
!5248 = !DILocation(line: 168, column: 9, scope: !5243)
!5249 = !DILocation(line: 168, column: 7, scope: !5243)
!5250 = !DILocation(line: 169, column: 7, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 169, column: 7)
!5252 = !DILocation(line: 169, column: 7, scope: !5243)
!5253 = !DILocation(line: 170, column: 4, scope: !5251)
!5254 = !DILocation(line: 171, column: 2, scope: !5243)
!5255 = !DILocation(line: 166, column: 24, scope: !5238)
!5256 = !DILocation(line: 166, column: 2, scope: !5238)
!5257 = distinct !{!5257, !5241, !5258}
!5258 = !DILocation(line: 171, column: 2, scope: !5235)
!5259 = !DILocation(line: 173, column: 25, scope: !5209)
!5260 = !DILocation(line: 173, column: 34, scope: !5209)
!5261 = !DILocation(line: 173, column: 41, scope: !5209)
!5262 = !DILocation(line: 173, column: 2, scope: !5209)
!5263 = !DILocation(line: 174, column: 9, scope: !5209)
!5264 = !DILocation(line: 174, column: 15, scope: !5209)
!5265 = !DILocation(line: 174, column: 21, scope: !5209)
!5266 = !DILocation(line: 174, column: 2, scope: !5209)
!5267 = !DILocation(line: 175, column: 1, scope: !5209)
!5268 = distinct !DISubprogram(name: "i2c_amd_func", scope: !3, file: !3, line: 177, type: !4553, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5269 = !DILocalVariable(name: "a", arg: 1, scope: !5268, file: !3, line: 177, type: !4535)
!5270 = !DILocation(line: 177, column: 45, scope: !5268)
!5271 = !DILocation(line: 179, column: 2, scope: !5268)
!5272 = distinct !DISubprogram(name: "i2c_get_adapdata", scope: !4522, file: !4522, line: 727, type: !5273, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!167, !5275}
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4521)
!5277 = !DILocalVariable(name: "adap", arg: 1, scope: !5272, file: !4522, line: 727, type: !5275)
!5278 = !DILocation(line: 727, column: 64, scope: !5272)
!5279 = !DILocation(line: 729, column: 26, scope: !5272)
!5280 = !DILocation(line: 729, column: 32, scope: !5272)
!5281 = !DILocation(line: 729, column: 9, scope: !5272)
!5282 = !DILocation(line: 729, column: 2, scope: !5272)
!5283 = distinct !DISubprogram(name: "i2c_amd_xfer_msg", scope: !3, file: !3, line: 134, type: !5284, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!173, !4164, !4470}
!5286 = !DILocalVariable(name: "i2c_dev", arg: 1, scope: !5283, file: !3, line: 134, type: !4164)
!5287 = !DILocation(line: 134, column: 49, scope: !5283)
!5288 = !DILocalVariable(name: "pmsg", arg: 2, scope: !5283, file: !3, line: 134, type: !4470)
!5289 = !DILocation(line: 134, column: 74, scope: !5283)
!5290 = !DILocalVariable(name: "i2c_common", scope: !5283, file: !3, line: 136, type: !4464)
!5291 = !DILocation(line: 136, column: 25, scope: !5283)
!5292 = !DILocation(line: 136, column: 39, scope: !5283)
!5293 = !DILocation(line: 136, column: 48, scope: !5283)
!5294 = !DILocation(line: 138, column: 20, scope: !5283)
!5295 = !DILocation(line: 138, column: 2, scope: !5283)
!5296 = !DILocation(line: 139, column: 20, scope: !5283)
!5297 = !DILocation(line: 139, column: 2, scope: !5283)
!5298 = !DILocation(line: 139, column: 14, scope: !5283)
!5299 = !DILocation(line: 139, column: 18, scope: !5283)
!5300 = !DILocation(line: 141, column: 6, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 141, column: 6)
!5302 = !DILocation(line: 141, column: 12, scope: !5301)
!5303 = !DILocation(line: 141, column: 16, scope: !5301)
!5304 = !DILocation(line: 141, column: 6, scope: !5283)
!5305 = !DILocation(line: 142, column: 23, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 142, column: 7)
!5307 = !DILocation(line: 142, column: 7, scope: !5306)
!5308 = !DILocation(line: 142, column: 7, scope: !5301)
!5309 = !DILocation(line: 143, column: 4, scope: !5306)
!5310 = !DILocation(line: 142, column: 33, scope: !5306)
!5311 = !DILocation(line: 145, column: 6, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 145, column: 6)
!5313 = !DILocation(line: 145, column: 12, scope: !5312)
!5314 = !DILocation(line: 145, column: 18, scope: !5312)
!5315 = !DILocation(line: 145, column: 6, scope: !5283)
!5316 = !DILocation(line: 146, column: 14, scope: !5312)
!5317 = !DILocation(line: 146, column: 3, scope: !5312)
!5318 = !DILocation(line: 148, column: 14, scope: !5312)
!5319 = !DILocation(line: 148, column: 3, scope: !5312)
!5320 = !DILocation(line: 150, column: 38, scope: !5283)
!5321 = !DILocation(line: 150, column: 9, scope: !5283)
!5322 = !DILocation(line: 150, column: 2, scope: !5283)
!5323 = !DILocation(line: 151, column: 1, scope: !5283)
!5324 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5325, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!167, !211}
!5327 = !DILocalVariable(name: "dev", arg: 1, scope: !5324, file: !73, line: 655, type: !211)
!5328 = !DILocation(line: 655, column: 58, scope: !5324)
!5329 = !DILocation(line: 657, column: 9, scope: !5324)
!5330 = !DILocation(line: 657, column: 14, scope: !5324)
!5331 = !DILocation(line: 657, column: 2, scope: !5324)
!5332 = distinct !DISubprogram(name: "i2c_amd_start_cmd", scope: !3, file: !3, line: 77, type: !5333, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{null, !4164}
!5335 = !DILocalVariable(name: "i2c_dev", arg: 1, scope: !5332, file: !3, line: 77, type: !4164)
!5336 = !DILocation(line: 77, column: 51, scope: !5332)
!5337 = !DILocalVariable(name: "i2c_common", scope: !5332, file: !3, line: 79, type: !4464)
!5338 = !DILocation(line: 79, column: 25, scope: !5332)
!5339 = !DILocation(line: 79, column: 39, scope: !5332)
!5340 = !DILocation(line: 79, column: 48, scope: !5332)
!5341 = !DILocation(line: 81, column: 21, scope: !5332)
!5342 = !DILocation(line: 81, column: 30, scope: !5332)
!5343 = !DILocation(line: 81, column: 2, scope: !5332)
!5344 = !DILocation(line: 82, column: 2, scope: !5332)
!5345 = !DILocation(line: 82, column: 14, scope: !5332)
!5346 = !DILocation(line: 82, column: 26, scope: !5332)
!5347 = !DILocation(line: 83, column: 1, scope: !5332)
!5348 = distinct !DISubprogram(name: "i2c_amd_dma_map", scope: !3, file: !3, line: 41, type: !4491, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5349 = !DILocalVariable(name: "i2c_common", arg: 1, scope: !5348, file: !3, line: 41, type: !4464)
!5350 = !DILocation(line: 41, column: 51, scope: !5348)
!5351 = !DILocalVariable(name: "dev_pci", scope: !5348, file: !3, line: 43, type: !3375)
!5352 = !DILocation(line: 43, column: 17, scope: !5348)
!5353 = !DILocation(line: 43, column: 28, scope: !5348)
!5354 = !DILocation(line: 43, column: 40, scope: !5348)
!5355 = !DILocation(line: 43, column: 49, scope: !5348)
!5356 = !DILocation(line: 43, column: 58, scope: !5348)
!5357 = !DILocalVariable(name: "i2c_dev", scope: !5348, file: !3, line: 44, type: !4164)
!5358 = !DILocation(line: 44, column: 22, scope: !5348)
!5359 = !DILocalVariable(name: "__mptr", scope: !5360, file: !3, line: 44, type: !167)
!5360 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 44, column: 32)
!5361 = !DILocation(line: 44, column: 32, scope: !5360)
!5362 = !DILocation(line: 44, column: 32, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 44, column: 32)
!5364 = !DILocalVariable(name: "dma_direction", scope: !5348, file: !3, line: 45, type: !156)
!5365 = !DILocation(line: 45, column: 26, scope: !5348)
!5366 = !DILocation(line: 46, column: 4, scope: !5348)
!5367 = !DILocation(line: 46, column: 16, scope: !5348)
!5368 = !DILocation(line: 46, column: 21, scope: !5348)
!5369 = !DILocation(line: 46, column: 27, scope: !5348)
!5370 = !DILocation(line: 49, column: 49, scope: !5348)
!5371 = !DILocation(line: 49, column: 61, scope: !5348)
!5372 = !DILocation(line: 49, column: 24, scope: !5348)
!5373 = !DILocation(line: 49, column: 2, scope: !5348)
!5374 = !DILocation(line: 49, column: 14, scope: !5348)
!5375 = !DILocation(line: 49, column: 22, scope: !5348)
!5376 = !DILocation(line: 50, column: 25, scope: !5348)
!5377 = !DILocation(line: 50, column: 2, scope: !5348)
!5378 = !DILocation(line: 50, column: 14, scope: !5348)
!5379 = !DILocation(line: 50, column: 23, scope: !5348)
!5380 = !DILocation(line: 54, column: 6, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 54, column: 6)
!5382 = !DILocation(line: 54, column: 6, scope: !5348)
!5383 = !DILocation(line: 55, column: 3, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 54, column: 66)
!5385 = !DILocation(line: 58, column: 3, scope: !5384)
!5386 = !DILocation(line: 61, column: 2, scope: !5348)
!5387 = !DILocation(line: 62, column: 1, scope: !5348)
!5388 = distinct !DISubprogram(name: "i2c_amd_check_cmd_completion", scope: !3, file: !3, line: 98, type: !5389, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{!173, !4164}
!5391 = !DILocalVariable(name: "i2c_dev", arg: 1, scope: !5388, file: !3, line: 98, type: !4164)
!5392 = !DILocation(line: 98, column: 61, scope: !5388)
!5393 = !DILocalVariable(name: "i2c_common", scope: !5388, file: !3, line: 100, type: !4464)
!5394 = !DILocation(line: 100, column: 25, scope: !5388)
!5395 = !DILocation(line: 100, column: 39, scope: !5388)
!5396 = !DILocation(line: 100, column: 48, scope: !5388)
!5397 = !DILocalVariable(name: "timeout", scope: !5388, file: !3, line: 101, type: !328)
!5398 = !DILocation(line: 101, column: 16, scope: !5388)
!5399 = !DILocation(line: 103, column: 41, scope: !5388)
!5400 = !DILocation(line: 103, column: 50, scope: !5388)
!5401 = !DILocation(line: 104, column: 12, scope: !5388)
!5402 = !DILocation(line: 104, column: 21, scope: !5388)
!5403 = !DILocation(line: 104, column: 26, scope: !5388)
!5404 = !DILocation(line: 103, column: 12, scope: !5388)
!5405 = !DILocation(line: 103, column: 10, scope: !5388)
!5406 = !DILocation(line: 106, column: 7, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 106, column: 6)
!5408 = !DILocation(line: 106, column: 19, scope: !5407)
!5409 = !DILocation(line: 106, column: 26, scope: !5407)
!5410 = !DILocation(line: 106, column: 38, scope: !5407)
!5411 = !DILocation(line: 107, column: 7, scope: !5407)
!5412 = !DILocation(line: 107, column: 19, scope: !5407)
!5413 = !DILocation(line: 107, column: 26, scope: !5407)
!5414 = !DILocation(line: 107, column: 40, scope: !5407)
!5415 = !DILocation(line: 108, column: 6, scope: !5407)
!5416 = !DILocation(line: 108, column: 18, scope: !5407)
!5417 = !DILocation(line: 108, column: 23, scope: !5407)
!5418 = !DILocation(line: 108, column: 27, scope: !5407)
!5419 = !DILocation(line: 106, column: 6, scope: !5388)
!5420 = !DILocation(line: 109, column: 21, scope: !5407)
!5421 = !DILocation(line: 109, column: 3, scope: !5407)
!5422 = !DILocation(line: 111, column: 6, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 111, column: 6)
!5424 = !DILocation(line: 111, column: 14, scope: !5423)
!5425 = !DILocation(line: 111, column: 6, scope: !5388)
!5426 = !DILocation(line: 112, column: 22, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5423, file: !3, line: 111, column: 20)
!5428 = !DILocation(line: 112, column: 3, scope: !5427)
!5429 = !DILocation(line: 113, column: 3, scope: !5427)
!5430 = !DILocation(line: 116, column: 24, scope: !5388)
!5431 = !DILocation(line: 116, column: 2, scope: !5388)
!5432 = !DILocation(line: 118, column: 7, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 118, column: 6)
!5434 = !DILocation(line: 118, column: 19, scope: !5433)
!5435 = !DILocation(line: 118, column: 6, scope: !5388)
!5436 = !DILocation(line: 119, column: 3, scope: !5433)
!5437 = !DILocation(line: 121, column: 2, scope: !5388)
!5438 = !DILocation(line: 122, column: 1, scope: !5388)
!5439 = distinct !DISubprogram(name: "reinit_completion", scope: !1506, file: !1506, line: 98, type: !4699, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5440 = !DILocalVariable(name: "x", arg: 1, scope: !5439, file: !1506, line: 98, type: !1504)
!5441 = !DILocation(line: 98, column: 57, scope: !5439)
!5442 = !DILocation(line: 100, column: 2, scope: !5439)
!5443 = !DILocation(line: 100, column: 5, scope: !5439)
!5444 = !DILocation(line: 100, column: 10, scope: !5439)
!5445 = !DILocation(line: 101, column: 1, scope: !5439)
!5446 = !DILocalVariable(name: "dev", arg: 1, scope: !4690, file: !4691, line: 271, type: !3375)
!5447 = !DILocation(line: 271, column: 62, scope: !4690)
!5448 = !DILocalVariable(name: "ptr", arg: 2, scope: !4690, file: !4691, line: 271, type: !167)
!5449 = !DILocation(line: 271, column: 73, scope: !4690)
!5450 = !DILocalVariable(name: "size", arg: 3, scope: !4690, file: !4691, line: 272, type: !325)
!5451 = !DILocation(line: 272, column: 10, scope: !4690)
!5452 = !DILocalVariable(name: "dir", arg: 4, scope: !4690, file: !4691, line: 272, type: !156)
!5453 = !DILocation(line: 272, column: 40, scope: !4690)
!5454 = !DILocalVariable(name: "attrs", arg: 5, scope: !4690, file: !4691, line: 272, type: !328)
!5455 = !DILocation(line: 272, column: 59, scope: !4690)
!5456 = !DILocalVariable(name: "__ret_warn_once", scope: !5457, file: !4691, line: 275, type: !173)
!5457 = distinct !DILexicalBlock(scope: !5458, file: !4691, line: 275, column: 6)
!5458 = distinct !DILexicalBlock(scope: !4690, file: !4691, line: 275, column: 6)
!5459 = !DILocation(line: 275, column: 6, scope: !5457)
!5460 = !DILocation(line: 275, column: 6, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5457, file: !4691, line: 275, column: 6)
!5462 = !DILocation(line: 0, scope: !5461)
!5463 = !DILocation(line: 275, column: 6, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5461, file: !4691, line: 275, column: 6)
!5465 = !DILocalVariable(name: "__ret_warn_on", scope: !5466, file: !4691, line: 275, type: !173)
!5466 = distinct !DILexicalBlock(scope: !5464, file: !4691, line: 275, column: 6)
!5467 = !DILocation(line: 275, column: 6, scope: !5466)
!5468 = !DILocation(line: 275, column: 6, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5466, file: !4691, line: 275, column: 6)
!5470 = !DILocation(line: 275, column: 6, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5469, file: !4691, line: 275, column: 6)
!5472 = !DILocation(line: 275, column: 6, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5471, file: !4691, line: 275, column: 6)
!5474 = !DILocation(line: 275, column: 6, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5471, file: !4691, line: 275, column: 6)
!5476 = !DILocation(line: 275, column: 6, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5475, file: !4691, line: 275, column: 6)
!5478 = !DILocation(line: 275, column: 6, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5475, file: !4691, line: 275, column: 6)
!5480 = !{i32 -2141093777, i32 -2141093748, i32 -2141093702, i32 -2141093644, i32 -2141093590, i32 -2141093536, i32 -2141093481, i32 -2141093450}
!5481 = !DILocation(line: 275, column: 6, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5475, file: !4691, line: 275, column: 6)
!5483 = !{i32 -2141093030, i32 -2141093023, i32 -2141092971, i32 -2141092940, i32 -2141092910}
!5484 = !DILocation(line: 275, column: 6, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5475, file: !4691, line: 275, column: 6)
!5486 = !DILocation(line: 275, column: 6, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5471, file: !4691, line: 275, column: 6)
!5488 = !DILocation(line: 275, column: 6, scope: !5458)
!5489 = !DILocation(line: 275, column: 6, scope: !4690)
!5490 = !DILocation(line: 277, column: 3, scope: !5458)
!5491 = !DILocation(line: 278, column: 23, scope: !4690)
!5492 = !DILocation(line: 278, column: 28, scope: !4690)
!5493 = !DILocation(line: 278, column: 33, scope: !4690)
!5494 = !DILocation(line: 278, column: 2, scope: !4690)
!5495 = !DILocation(line: 279, column: 28, scope: !4690)
!5496 = !DILocation(line: 279, column: 33, scope: !4690)
!5497 = !DILocation(line: 279, column: 52, scope: !4690)
!5498 = !DILocation(line: 280, column: 4, scope: !4690)
!5499 = !DILocation(line: 280, column: 10, scope: !4690)
!5500 = !DILocation(line: 280, column: 15, scope: !4690)
!5501 = !DILocation(line: 279, column: 9, scope: !4690)
!5502 = !DILocation(line: 279, column: 2, scope: !4690)
!5503 = !DILocation(line: 281, column: 1, scope: !4690)
!5504 = distinct !DISubprogram(name: "dma_mapping_error", scope: !4691, file: !4691, line: 94, type: !5505, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!173, !3375, !923}
!5507 = !DILocalVariable(name: "dev", arg: 1, scope: !5504, file: !4691, line: 94, type: !3375)
!5508 = !DILocation(line: 94, column: 52, scope: !5504)
!5509 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !5504, file: !4691, line: 94, type: !923)
!5510 = !DILocation(line: 94, column: 68, scope: !5504)
!5511 = !DILocation(line: 96, column: 26, scope: !5504)
!5512 = !DILocation(line: 96, column: 31, scope: !5504)
!5513 = !DILocation(line: 96, column: 2, scope: !5504)
!5514 = !DILocation(line: 98, column: 6, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5504, file: !4691, line: 98, column: 6)
!5516 = !DILocation(line: 98, column: 15, scope: !5515)
!5517 = !DILocation(line: 98, column: 6, scope: !5504)
!5518 = !DILocation(line: 99, column: 3, scope: !5515)
!5519 = !DILocation(line: 100, column: 2, scope: !5504)
!5520 = !DILocation(line: 101, column: 1, scope: !5504)
!5521 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !5522, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5522 = !DISubroutineType(types: !5523)
!5523 = !{!220, !211}
!5524 = !DILocalVariable(name: "dev", arg: 1, scope: !5521, file: !73, line: 609, type: !211)
!5525 = !DILocation(line: 609, column: 57, scope: !5521)
!5526 = !DILocation(line: 612, column: 6, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5521, file: !73, line: 612, column: 6)
!5528 = !DILocation(line: 612, column: 11, scope: !5527)
!5529 = !DILocation(line: 612, column: 6, scope: !5521)
!5530 = !DILocation(line: 613, column: 10, scope: !5527)
!5531 = !DILocation(line: 613, column: 15, scope: !5527)
!5532 = !DILocation(line: 613, column: 3, scope: !5527)
!5533 = !DILocation(line: 615, column: 23, scope: !5521)
!5534 = !DILocation(line: 615, column: 28, scope: !5521)
!5535 = !DILocation(line: 615, column: 9, scope: !5521)
!5536 = !DILocation(line: 615, column: 2, scope: !5521)
!5537 = !DILocation(line: 616, column: 1, scope: !5521)
!5538 = distinct !DISubprogram(name: "debug_dma_map_single", scope: !4691, file: !4691, line: 87, type: !5539, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5539 = !DISubroutineType(types: !5540)
!5540 = !{null, !3375, !209, !328}
!5541 = !DILocalVariable(name: "dev", arg: 1, scope: !5538, file: !4691, line: 87, type: !3375)
!5542 = !DILocation(line: 87, column: 56, scope: !5538)
!5543 = !DILocalVariable(name: "addr", arg: 2, scope: !5538, file: !4691, line: 87, type: !209)
!5544 = !DILocation(line: 87, column: 73, scope: !5538)
!5545 = !DILocalVariable(name: "len", arg: 3, scope: !5538, file: !4691, line: 88, type: !328)
!5546 = !DILocation(line: 88, column: 17, scope: !5538)
!5547 = !DILocation(line: 90, column: 1, scope: !5538)
!5548 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5549, file: !5549, line: 18, type: !5550, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5549 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!5550 = !DISubroutineType(types: !5551)
!5551 = !{!328, !328}
!5552 = !DILocalVariable(name: "x", arg: 1, scope: !5548, file: !5549, line: 18, type: !328)
!5553 = !DILocation(line: 18, column: 63, scope: !5548)
!5554 = !DILocalVariable(name: "y", scope: !5548, file: !5549, line: 20, type: !328)
!5555 = !DILocation(line: 20, column: 16, scope: !5548)
!5556 = !DILocation(line: 20, column: 20, scope: !5548)
!5557 = !DILocation(line: 20, column: 22, scope: !5548)
!5558 = !DILocation(line: 23, column: 6, scope: !5548)
!5559 = !DILocation(line: 23, column: 12, scope: !5548)
!5560 = !DILocation(line: 23, column: 16, scope: !5548)
!5561 = !DILocation(line: 23, column: 14, scope: !5548)
!5562 = !DILocation(line: 23, column: 11, scope: !5548)
!5563 = !DILocation(line: 23, column: 21, scope: !5548)
!5564 = !DILocation(line: 23, column: 55, scope: !5548)
!5565 = !DILocation(line: 23, column: 53, scope: !5548)
!5566 = !DILocation(line: 23, column: 8, scope: !5548)
!5567 = !DILocation(line: 23, column: 4, scope: !5548)
!5568 = !DILocation(line: 25, column: 9, scope: !5548)
!5569 = !DILocation(line: 25, column: 2, scope: !5548)
!5570 = distinct !DISubprogram(name: "kobject_name", scope: !217, file: !217, line: 88, type: !5571, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5571 = !DISubroutineType(types: !5572)
!5572 = !{!220, !5573}
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!5575 = !DILocalVariable(name: "kobj", arg: 1, scope: !5570, file: !217, line: 88, type: !5573)
!5576 = !DILocation(line: 88, column: 62, scope: !5570)
!5577 = !DILocation(line: 90, column: 9, scope: !5570)
!5578 = !DILocation(line: 90, column: 15, scope: !5570)
!5579 = !DILocation(line: 90, column: 2, scope: !5570)
!5580 = distinct !DISubprogram(name: "debug_dma_mapping_error", scope: !4691, file: !4691, line: 83, type: !5581, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{null, !3375, !923}
!5583 = !DILocalVariable(name: "dev", arg: 1, scope: !5580, file: !4691, line: 83, type: !3375)
!5584 = !DILocation(line: 83, column: 59, scope: !5580)
!5585 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !5580, file: !4691, line: 84, type: !923)
!5586 = !DILocation(line: 84, column: 14, scope: !5580)
!5587 = !DILocation(line: 86, column: 1, scope: !5580)
!5588 = distinct !DISubprogram(name: "i2c_amd_dma_unmap", scope: !3, file: !3, line: 64, type: !4481, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5589 = !DILocalVariable(name: "i2c_common", arg: 1, scope: !5588, file: !3, line: 64, type: !4464)
!5590 = !DILocation(line: 64, column: 54, scope: !5588)
!5591 = !DILocalVariable(name: "dev_pci", scope: !5588, file: !3, line: 66, type: !3375)
!5592 = !DILocation(line: 66, column: 17, scope: !5588)
!5593 = !DILocation(line: 66, column: 28, scope: !5588)
!5594 = !DILocation(line: 66, column: 40, scope: !5588)
!5595 = !DILocation(line: 66, column: 49, scope: !5588)
!5596 = !DILocation(line: 66, column: 58, scope: !5588)
!5597 = !DILocalVariable(name: "dma_direction", scope: !5588, file: !3, line: 67, type: !156)
!5598 = !DILocation(line: 67, column: 26, scope: !5588)
!5599 = !DILocation(line: 68, column: 4, scope: !5588)
!5600 = !DILocation(line: 68, column: 16, scope: !5588)
!5601 = !DILocation(line: 68, column: 21, scope: !5588)
!5602 = !DILocation(line: 68, column: 27, scope: !5588)
!5603 = !DILocation(line: 71, column: 2, scope: !5588)
!5604 = !DILocation(line: 74, column: 27, scope: !5588)
!5605 = !DILocation(line: 74, column: 39, scope: !5588)
!5606 = !DILocation(line: 74, column: 48, scope: !5588)
!5607 = !DILocation(line: 74, column: 60, scope: !5588)
!5608 = !DILocation(line: 74, column: 2, scope: !5588)
!5609 = !DILocation(line: 75, column: 1, scope: !5588)
!5610 = distinct !DISubprogram(name: "dma_unmap_single_attrs", scope: !4691, file: !4691, line: 283, type: !5611, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{null, !3375, !923, !325, !156, !328}
!5613 = !DILocalVariable(name: "dev", arg: 1, scope: !5610, file: !4691, line: 283, type: !3375)
!5614 = !DILocation(line: 283, column: 58, scope: !5610)
!5615 = !DILocalVariable(name: "addr", arg: 2, scope: !5610, file: !4691, line: 283, type: !923)
!5616 = !DILocation(line: 283, column: 74, scope: !5610)
!5617 = !DILocalVariable(name: "size", arg: 3, scope: !5610, file: !4691, line: 284, type: !325)
!5618 = !DILocation(line: 284, column: 10, scope: !5610)
!5619 = !DILocalVariable(name: "dir", arg: 4, scope: !5610, file: !4691, line: 284, type: !156)
!5620 = !DILocation(line: 284, column: 40, scope: !5610)
!5621 = !DILocalVariable(name: "attrs", arg: 5, scope: !5610, file: !4691, line: 284, type: !328)
!5622 = !DILocation(line: 284, column: 59, scope: !5610)
!5623 = !DILocation(line: 286, column: 30, scope: !5610)
!5624 = !DILocation(line: 286, column: 35, scope: !5610)
!5625 = !DILocation(line: 286, column: 41, scope: !5610)
!5626 = !DILocation(line: 286, column: 47, scope: !5610)
!5627 = !DILocation(line: 286, column: 52, scope: !5610)
!5628 = !DILocation(line: 286, column: 9, scope: !5610)
!5629 = !DILocation(line: 286, column: 2, scope: !5610)
!5630 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4718, file: !4718, line: 308, type: !4719, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5631 = !DILocalVariable(name: "m", arg: 1, scope: !5630, file: !4718, line: 308, type: !2829)
!5632 = !DILocation(line: 308, column: 66, scope: !5630)
!5633 = !DILocation(line: 310, column: 10, scope: !5630)
!5634 = !DILocation(line: 310, column: 12, scope: !5630)
!5635 = !DILocation(line: 310, column: 34, scope: !5630)
!5636 = !DILocation(line: 310, column: 39, scope: !5630)
!5637 = !DILocation(line: 310, column: 2, scope: !5630)
!5638 = distinct !DISubprogram(name: "pm_runtime_mark_last_busy", scope: !5203, file: !5203, line: 194, type: !3398, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5639 = !DILocalVariable(name: "dev", arg: 1, scope: !5638, file: !5203, line: 194, type: !3375)
!5640 = !DILocation(line: 194, column: 61, scope: !5638)
!5641 = !DILocation(line: 196, column: 2, scope: !5638)
!5642 = !DILocation(line: 196, column: 2, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5638, file: !5203, line: 196, column: 2)
!5644 = !DILocation(line: 196, column: 2, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5643, file: !5203, line: 196, column: 2)
!5646 = !DILocation(line: 196, column: 2, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5643, file: !5203, line: 196, column: 2)
!5648 = !DILocation(line: 197, column: 1, scope: !5638)
!5649 = distinct !DISubprogram(name: "pm_runtime_put_autosuspend", scope: !5203, file: !5203, line: 429, type: !3407, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5650 = !DILocalVariable(name: "dev", arg: 1, scope: !5649, file: !5203, line: 429, type: !3375)
!5651 = !DILocation(line: 429, column: 61, scope: !5649)
!5652 = !DILocation(line: 431, column: 30, scope: !5649)
!5653 = !DILocation(line: 431, column: 9, scope: !5649)
!5654 = !DILocation(line: 431, column: 2, scope: !5649)
!5655 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !4497, file: !4497, line: 231, type: !5656, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5656 = !DISubroutineType(types: !5657)
!5657 = !{!167, !5658}
!5658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5659, size: 64)
!5659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4496)
!5660 = !DILocalVariable(name: "pdev", arg: 1, scope: !5655, file: !4497, line: 231, type: !5658)
!5661 = !DILocation(line: 231, column: 72, scope: !5655)
!5662 = !DILocation(line: 233, column: 26, scope: !5655)
!5663 = !DILocation(line: 233, column: 32, scope: !5655)
!5664 = !DILocation(line: 233, column: 9, scope: !5655)
!5665 = !DILocation(line: 233, column: 2, scope: !5655)
!5666 = distinct !DISubprogram(name: "i2c_lock_bus", scope: !4522, file: !4522, line: 763, type: !4563, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5667 = !DILocalVariable(name: "adapter", arg: 1, scope: !5666, file: !4522, line: 763, type: !4535)
!5668 = !DILocation(line: 763, column: 34, scope: !5666)
!5669 = !DILocalVariable(name: "flags", arg: 2, scope: !5666, file: !4522, line: 763, type: !7)
!5670 = !DILocation(line: 763, column: 56, scope: !5666)
!5671 = !DILocation(line: 765, column: 2, scope: !5666)
!5672 = !DILocation(line: 765, column: 11, scope: !5666)
!5673 = !DILocation(line: 765, column: 21, scope: !5666)
!5674 = !DILocation(line: 765, column: 30, scope: !5666)
!5675 = !DILocation(line: 765, column: 39, scope: !5666)
!5676 = !DILocation(line: 766, column: 1, scope: !5666)
!5677 = distinct !DISubprogram(name: "i2c_unlock_bus", scope: !4522, file: !4522, line: 789, type: !4563, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !251)
!5678 = !DILocalVariable(name: "adapter", arg: 1, scope: !5677, file: !4522, line: 789, type: !4535)
!5679 = !DILocation(line: 789, column: 36, scope: !5677)
!5680 = !DILocalVariable(name: "flags", arg: 2, scope: !5677, file: !4522, line: 789, type: !7)
!5681 = !DILocation(line: 789, column: 58, scope: !5677)
!5682 = !DILocation(line: 791, column: 2, scope: !5677)
!5683 = !DILocation(line: 791, column: 11, scope: !5677)
!5684 = !DILocation(line: 791, column: 21, scope: !5677)
!5685 = !DILocation(line: 791, column: 32, scope: !5677)
!5686 = !DILocation(line: 791, column: 41, scope: !5677)
!5687 = !DILocation(line: 792, column: 1, scope: !5677)
