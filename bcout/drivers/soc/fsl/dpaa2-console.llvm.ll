; ModuleID = '../bcout/drivers/soc/fsl/dpaa2-console.llvm.bc'
source_filename = "drivers/soc/fsl/dpaa2-console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_dpaa2_console_driver_init6:\09\09\09"
module asm ".long\09dpaa2_console_driver_init - .\09\09\09"
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.63, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.63 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.1, %union.anon.51, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.51 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.52, i32 }
%union.anon.52 = type { %struct.kuid_t }
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
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.53 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.54 = type { %struct.callback_head }
%union.anon.55 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.58 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
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
%struct.vm_operations_struct = type opaque
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
%struct.irq_domain = type opaque
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
%struct.miscdevice = type { i32, i8*, %struct.file_operations*, %struct.list_head, %struct.device*, %struct.device*, %struct.attribute_group**, i8*, i16 }
%struct.kmem_cache = type opaque
%struct.console_data = type { i8*, %struct.log_header*, i8*, i8*, i8*, i8* }
%struct.log_header = type { i32, [4 x i8], i32, i32, i32 }

@__UNIQUE_ID___addressable_dpaa2_console_driver_init203 = internal global i8* bitcast (i32 ()* @dpaa2_console_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@dpaa2_console_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @dpaa2_console_probe, i32 (%struct.platform_device*)* @dpaa2_console_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @dpaa2_console_match_table, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !147
@__exitcall_dpaa2_console_driver_exit = internal global void ()* @dpaa2_console_driver_exit, section ".exitcall.exit", align 8, !dbg !119
@__UNIQUE_ID_file204 = internal constant [49 x i8] c"dpaa2_console.file=drivers/soc/fsl/dpaa2-console\00", section ".modinfo", align 1, !dbg !126
@__UNIQUE_ID_license205 = internal constant [35 x i8] c"dpaa2_console.license=Dual BSD/GPL\00", section ".modinfo", align 1, !dbg !132
@__UNIQUE_ID_author206 = internal constant [53 x i8] c"dpaa2_console.author=Roy Pledge <roy.pledge@nxp.com>\00", section ".modinfo", align 1, !dbg !137
@__UNIQUE_ID_description207 = internal constant [47 x i8] c"dpaa2_console.description=DPAA2 console driver\00", section ".modinfo", align 1, !dbg !142
@.str = private unnamed_addr constant [14 x i8] c"dpaa2-console\00", align 1
@dpaa2_console_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,dpaa2-console\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !3713
@mc_base_addr = internal global %struct.resource zeroinitializer, align 8, !dbg !3691
@.str.1 = private unnamed_addr constant [67 x i8] c"\013dpaa2-console: of_address_to_resource() failed for %pOF with %d\0A\00", align 1
@dpaa2_mc_console_dev = internal global %struct.miscdevice { i32 255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), %struct.file_operations* @dpaa2_mc_console_fops, %struct.list_head zeroinitializer, %struct.device* null, %struct.device* null, %struct.attribute_group** null, i8* null, i16 0 }, align 8, !dbg !3693
@.str.2 = private unnamed_addr constant [44 x i8] c"\013dpaa2-console: cannot register device %s\0A\00", align 1
@dpaa2_aiop_console_dev = internal global %struct.miscdevice { i32 255, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), %struct.file_operations* @dpaa2_aiop_console_fops, %struct.list_head zeroinitializer, %struct.device* null, %struct.device* null, %struct.attribute_group** null, i8* null, i16 0 }, align 8, !dbg !3709
@.str.3 = private unnamed_addr constant [17 x i8] c"dpaa2_mc_console\00", align 1
@dpaa2_mc_console_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* null, i64 (%struct.file*, i8*, i64, i64*)* @dpaa2_console_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @dpaa2_mc_console_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @dpaa2_console_close, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !3707
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"\013dpaa2-console: cannot map console log memory\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"\014dpaa2-console: expected = %08x, read = %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"\013dpaa2-console: could not map MC Firmware Base registers\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"dpaa2_aiop_console\00", align 1
@dpaa2_aiop_console_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* null, i64 (%struct.file*, i8*, i64, i64*)* @dpaa2_console_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @dpaa2_aiop_console_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @dpaa2_console_close, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !3711
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_dpaa2_console_driver_init203 to i8*), i8* bitcast (void ()* @dpaa2_console_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_dpaa2_console_driver_exit to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file204, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_license205, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__UNIQUE_ID_author206, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_description207, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dpaa2_console_driver_init() #0 section ".init.text" !dbg !3721 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @dpaa2_console_driver, %struct.module* null) #8, !dbg !3724
  ret i32 %call, !dbg !3724
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dpaa2_console_driver_exit() #0 section ".exit.text" !dbg !3725 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @dpaa2_console_driver) #8, !dbg !3726
  ret void, !dbg !3726
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dpaa2_console_probe(%struct.platform_device* %pdev) #2 !dbg !3727 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %error = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3728, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3730, metadata !DIExpression()), !dbg !3731
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3732
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3733
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !3734
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3734
  %call = call i32 @of_address_to_resource(%struct.device_node* %1, i32 0, %struct.resource* @mc_base_addr) #8, !dbg !3735
  store i32 %call, i32* %error, align 4, !dbg !3736
  %2 = load i32, i32* %error, align 4, !dbg !3737
  %cmp = icmp slt i32 %2, 0, !dbg !3739
  br i1 %cmp, label %if.then, label %if.end, !dbg !3740

if.then:                                          ; preds = %entry
  %3 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3741
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %3, i32 0, i32 3, !dbg !3741
  %of_node2 = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 23, !dbg !3741
  %4 = load %struct.device_node*, %struct.device_node** %of_node2, align 8, !dbg !3741
  %5 = load i32, i32* %error, align 4, !dbg !3741
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %4, i32 %5) #9, !dbg !3741
  %6 = load i32, i32* %error, align 4, !dbg !3743
  store i32 %6, i32* %retval, align 4, !dbg !3744
  br label %return, !dbg !3744

if.end:                                           ; preds = %entry
  %call4 = call i32 @misc_register(%struct.miscdevice* @dpaa2_mc_console_dev) #8, !dbg !3745
  store i32 %call4, i32* %error, align 4, !dbg !3746
  %7 = load i32, i32* %error, align 4, !dbg !3747
  %tobool = icmp ne i32 %7, 0, !dbg !3747
  br i1 %tobool, label %if.then5, label %if.end7, !dbg !3749

if.then5:                                         ; preds = %if.end
  %8 = load i8*, i8** getelementptr inbounds (%struct.miscdevice, %struct.miscdevice* @dpaa2_mc_console_dev, i32 0, i32 1), align 8, !dbg !3750
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %8) #9, !dbg !3750
  br label %err_register_mc, !dbg !3752

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @misc_register(%struct.miscdevice* @dpaa2_aiop_console_dev) #8, !dbg !3753
  store i32 %call8, i32* %error, align 4, !dbg !3754
  %9 = load i32, i32* %error, align 4, !dbg !3755
  %tobool9 = icmp ne i32 %9, 0, !dbg !3755
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !3757

if.then10:                                        ; preds = %if.end7
  %10 = load i8*, i8** getelementptr inbounds (%struct.miscdevice, %struct.miscdevice* @dpaa2_aiop_console_dev, i32 0, i32 1), align 8, !dbg !3758
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %10) #9, !dbg !3758
  br label %err_register_aiop, !dbg !3760

if.end12:                                         ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !3761
  br label %return, !dbg !3761

err_register_aiop:                                ; preds = %if.then10
  call void @llvm.dbg.label(metadata !3762), !dbg !3763
  call void @misc_deregister(%struct.miscdevice* @dpaa2_mc_console_dev) #8, !dbg !3764
  br label %err_register_mc, !dbg !3764

err_register_mc:                                  ; preds = %err_register_aiop, %if.then5
  call void @llvm.dbg.label(metadata !3765), !dbg !3766
  %11 = load i32, i32* %error, align 4, !dbg !3767
  store i32 %11, i32* %retval, align 4, !dbg !3768
  br label %return, !dbg !3768

return:                                           ; preds = %err_register_mc, %if.end12, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !3769
  ret i32 %12, !dbg !3769
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dpaa2_console_remove(%struct.platform_device* %pdev) #2 !dbg !3770 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3771, metadata !DIExpression()), !dbg !3772
  call void @misc_deregister(%struct.miscdevice* @dpaa2_mc_console_dev) #8, !dbg !3773
  call void @misc_deregister(%struct.miscdevice* @dpaa2_aiop_console_dev) #8, !dbg !3774
  ret i32 0, !dbg !3775
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @misc_register(%struct.miscdevice*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @misc_deregister(%struct.miscdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @dpaa2_console_read(%struct.file* %fp, i8* %buf, i64 %count, i64* %f_pos) #2 !dbg !3776 {
entry:
  %retval.i.i35 = alloca i1, align 1
  %addr.addr.i.i36 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i36, metadata !3777, metadata !DIExpression()), !dbg !3782
  %bytes.addr.i.i37 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i37, metadata !3791, metadata !DIExpression()), !dbg !3792
  %is_source.addr.i.i38 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i38, metadata !3793, metadata !DIExpression()), !dbg !3794
  %sz.i.i39 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i39, metadata !3795, metadata !DIExpression()), !dbg !3796
  %__ret_warn_on.i.i40 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i40, metadata !3797, metadata !DIExpression()), !dbg !3800
  %tmp.i.i41 = alloca i64, align 8
  %to.addr.i42 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i42, metadata !3801, metadata !DIExpression()), !dbg !3802
  %from.addr.i43 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i43, metadata !3803, metadata !DIExpression()), !dbg !3804
  %n.addr.i44 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i44, metadata !3805, metadata !DIExpression()), !dbg !3806
  %retval.i.i25 = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !3777, metadata !DIExpression()), !dbg !3807
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !3791, metadata !DIExpression()), !dbg !3813
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !3793, metadata !DIExpression()), !dbg !3814
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !3795, metadata !DIExpression()), !dbg !3815
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !3797, metadata !DIExpression()), !dbg !3816
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !3801, metadata !DIExpression()), !dbg !3817
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !3803, metadata !DIExpression()), !dbg !3818
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !3805, metadata !DIExpression()), !dbg !3819
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3820, metadata !DIExpression()), !dbg !3824
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3832, metadata !DIExpression()), !dbg !3833
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3834, metadata !DIExpression()), !dbg !3835
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3836, metadata !DIExpression()), !dbg !3837
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3838, metadata !DIExpression()), !dbg !3842
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3844, metadata !DIExpression()), !dbg !3848
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3850, metadata !DIExpression()), !dbg !3854
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3859, metadata !DIExpression()), !dbg !3860
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3861, metadata !DIExpression()), !dbg !3862
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3863, metadata !DIExpression()), !dbg !3864
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3865, metadata !DIExpression()), !dbg !3866
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3867, metadata !DIExpression()), !dbg !3868
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3869, metadata !DIExpression()), !dbg !3870
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3871, metadata !DIExpression()), !dbg !3872
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3873, metadata !DIExpression()), !dbg !3874
  %retval = alloca i64, align 8
  %fp.addr = alloca %struct.file*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %f_pos.addr = alloca i64*, align 8
  %cd = alloca %struct.console_data*, align 8
  %bytes = alloca i64, align 8
  %bytes_end = alloca i64, align 8
  %written = alloca i64, align 8
  %kbuf = alloca i8*, align 8
  %err = alloca i32, align 4
  store %struct.file* %fp, %struct.file** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %fp.addr, metadata !3875, metadata !DIExpression()), !dbg !3876
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3877, metadata !DIExpression()), !dbg !3878
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3879, metadata !DIExpression()), !dbg !3880
  store i64* %f_pos, i64** %f_pos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %f_pos.addr, metadata !3881, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.declare(metadata %struct.console_data** %cd, metadata !3883, metadata !DIExpression()), !dbg !3893
  %0 = load %struct.file*, %struct.file** %fp.addr, align 8, !dbg !3894
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !3895
  %1 = load i8*, i8** %private_data, align 8, !dbg !3895
  %2 = bitcast i8* %1 to %struct.console_data*, !dbg !3894
  store %struct.console_data* %2, %struct.console_data** %cd, align 8, !dbg !3893
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3896, metadata !DIExpression()), !dbg !3897
  %3 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !3898
  %call = call i64 @dpaa2_console_size(%struct.console_data* %3) #8, !dbg !3899
  store i64 %call, i64* %bytes, align 8, !dbg !3897
  call void @llvm.dbg.declare(metadata i64* %bytes_end, metadata !3900, metadata !DIExpression()), !dbg !3901
  %4 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !3902
  %end_addr = getelementptr inbounds %struct.console_data, %struct.console_data* %4, i32 0, i32 3, !dbg !3903
  %5 = load i8*, i8** %end_addr, align 8, !dbg !3903
  %6 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !3904
  %cur_ptr = getelementptr inbounds %struct.console_data, %struct.console_data* %6, i32 0, i32 5, !dbg !3905
  %7 = load i8*, i8** %cur_ptr, align 8, !dbg !3905
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64, !dbg !3906
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !3906
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3906
  store i64 %sub.ptr.sub, i64* %bytes_end, align 8, !dbg !3901
  call void @llvm.dbg.declare(metadata i64* %written, metadata !3907, metadata !DIExpression()), !dbg !3908
  store i64 0, i64* %written, align 8, !dbg !3908
  call void @llvm.dbg.declare(metadata i8** %kbuf, metadata !3909, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3911, metadata !DIExpression()), !dbg !3912
  %8 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !3913
  call void @adjust_end(%struct.console_data* %8) #8, !dbg !3914
  %9 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !3915
  %end_of_data = getelementptr inbounds %struct.console_data, %struct.console_data* %9, i32 0, i32 4, !dbg !3917
  %10 = load i8*, i8** %end_of_data, align 8, !dbg !3917
  %11 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !3918
  %cur_ptr1 = getelementptr inbounds %struct.console_data, %struct.console_data* %11, i32 0, i32 5, !dbg !3919
  %12 = load i8*, i8** %cur_ptr1, align 8, !dbg !3919
  %cmp = icmp eq i8* %10, %12, !dbg !3920
  br i1 %cmp, label %if.then, label %if.end, !dbg !3921

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !3922
  br label %return, !dbg !3922

if.end:                                           ; preds = %entry
  %13 = load i64, i64* %count.addr, align 8, !dbg !3923
  %14 = load i64, i64* %bytes, align 8, !dbg !3925
  %cmp2 = icmp ult i64 %13, %14, !dbg !3926
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !3927

if.then3:                                         ; preds = %if.end
  %15 = load i64, i64* %count.addr, align 8, !dbg !3928
  store i64 %15, i64* %bytes, align 8, !dbg !3929
  br label %if.end4, !dbg !3930

if.end4:                                          ; preds = %if.then3, %if.end
  %16 = load i64, i64* %bytes, align 8, !dbg !3931
  store i64 %16, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !3932
  %18 = call i1 @llvm.is.constant.i64(i64 %17) #10, !dbg !3933
  br i1 %18, label %if.then.i, label %if.end9.i, !dbg !3934

if.then.i:                                        ; preds = %if.end4
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !3935
  %cmp.i = icmp ugt i64 %19, 8192, !dbg !3936
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3937

if.then1.i:                                       ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !3938
  %21 = load i32, i32* %flags.addr.i, align 4, !dbg !3939
  store i64 %20, i64* %size.addr.i.i, align 8
  store i32 %21, i32* %flags.addr.i.i, align 4
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !3940
  %call.i.i = call i32 @get_order(i64 %22) #11, !dbg !3941
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3868
  %23 = load i64, i64* %size.addr.i.i, align 8, !dbg !3942
  %24 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3943
  %25 = load i32, i32* %order.i.i, align 4, !dbg !3944
  store i64 %23, i64* %size.addr.i.i.i, align 8
  store i32 %24, i32* %flags.addr.i.i.i, align 4
  store i32 %25, i32* %order.addr.i.i.i, align 4
  %26 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3945
  %27 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3946
  %28 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3947
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %26, i32 %27, i32 %28) #12, !dbg !3948
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3948
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3948
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3948
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !3948
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3949
  br label %kmalloc.exit, !dbg !3949

if.end.i:                                         ; preds = %if.then.i
  %29 = load i64, i64* %size.addr.i, align 8, !dbg !3950
  store i64 %29, i64* %size.addr.i11.i, align 8
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3951
  %tobool.i.i = icmp ne i64 %30, 0, !dbg !3951
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3953

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3954
  br label %kmalloc_index.exit.i, !dbg !3954

if.end.i.i:                                       ; preds = %if.end.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3955
  %cmp.i.i = icmp ule i64 %31, 8, !dbg !3957
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3958

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3959
  br label %kmalloc_index.exit.i, !dbg !3959

if.end2.i.i:                                      ; preds = %if.end.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3960
  %cmp3.i.i = icmp ugt i64 %32, 64, !dbg !3962
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3963

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3964
  %cmp4.i.i = icmp ule i64 %33, 96, !dbg !3965
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3966

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3967
  br label %kmalloc_index.exit.i, !dbg !3967

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3968
  %cmp7.i.i = icmp ugt i64 %34, 128, !dbg !3970
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3971

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3972
  %cmp9.i.i = icmp ule i64 %35, 192, !dbg !3973
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3974

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3975
  br label %kmalloc_index.exit.i, !dbg !3975

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3976
  %cmp12.i.i = icmp ule i64 %36, 8, !dbg !3978
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3979

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3980
  br label %kmalloc_index.exit.i, !dbg !3980

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3981
  %cmp15.i.i = icmp ule i64 %37, 16, !dbg !3983
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3984

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3985
  br label %kmalloc_index.exit.i, !dbg !3985

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3986
  %cmp18.i.i = icmp ule i64 %38, 32, !dbg !3988
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3989

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3990
  br label %kmalloc_index.exit.i, !dbg !3990

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3991
  %cmp21.i.i = icmp ule i64 %39, 64, !dbg !3993
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3994

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3995
  br label %kmalloc_index.exit.i, !dbg !3995

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3996
  %cmp24.i.i = icmp ule i64 %40, 128, !dbg !3998
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3999

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4000
  br label %kmalloc_index.exit.i, !dbg !4000

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4001
  %cmp27.i.i = icmp ule i64 %41, 256, !dbg !4003
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4004

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4005
  br label %kmalloc_index.exit.i, !dbg !4005

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4006
  %cmp30.i.i = icmp ule i64 %42, 512, !dbg !4008
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4009

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4010
  br label %kmalloc_index.exit.i, !dbg !4010

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4011
  %cmp33.i.i = icmp ule i64 %43, 1024, !dbg !4013
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4014

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4015
  br label %kmalloc_index.exit.i, !dbg !4015

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4016
  %cmp36.i.i = icmp ule i64 %44, 2048, !dbg !4018
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4019

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4020
  br label %kmalloc_index.exit.i, !dbg !4020

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4021
  %cmp39.i.i = icmp ule i64 %45, 4096, !dbg !4023
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4024

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4025
  br label %kmalloc_index.exit.i, !dbg !4025

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4026
  %cmp42.i.i = icmp ule i64 %46, 8192, !dbg !4028
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4029

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4030
  br label %kmalloc_index.exit.i, !dbg !4030

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4031
  %cmp45.i.i = icmp ule i64 %47, 16384, !dbg !4033
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4034

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4035
  br label %kmalloc_index.exit.i, !dbg !4035

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4036
  %cmp48.i.i = icmp ule i64 %48, 32768, !dbg !4038
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4039

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4040
  br label %kmalloc_index.exit.i, !dbg !4040

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4041
  %cmp51.i.i = icmp ule i64 %49, 65536, !dbg !4043
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4044

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4045
  br label %kmalloc_index.exit.i, !dbg !4045

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4046
  %cmp54.i.i = icmp ule i64 %50, 131072, !dbg !4048
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4049

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4050
  br label %kmalloc_index.exit.i, !dbg !4050

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4051
  %cmp57.i.i = icmp ule i64 %51, 262144, !dbg !4053
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4054

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4055
  br label %kmalloc_index.exit.i, !dbg !4055

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4056
  %cmp60.i.i = icmp ule i64 %52, 524288, !dbg !4058
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4059

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4060
  br label %kmalloc_index.exit.i, !dbg !4060

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4061
  %cmp63.i.i = icmp ule i64 %53, 1048576, !dbg !4063
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4064

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4065
  br label %kmalloc_index.exit.i, !dbg !4065

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4066
  %cmp66.i.i = icmp ule i64 %54, 2097152, !dbg !4068
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4069

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4070
  br label %kmalloc_index.exit.i, !dbg !4070

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4071
  %cmp69.i.i = icmp ule i64 %55, 4194304, !dbg !4073
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4074

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4075
  br label %kmalloc_index.exit.i, !dbg !4075

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4076
  %cmp72.i.i = icmp ule i64 %56, 8388608, !dbg !4078
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4079

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4080
  br label %kmalloc_index.exit.i, !dbg !4080

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4081
  %cmp75.i.i = icmp ule i64 %57, 16777216, !dbg !4083
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4084

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4085
  br label %kmalloc_index.exit.i, !dbg !4085

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4086
  %cmp78.i.i = icmp ule i64 %58, 33554432, !dbg !4088
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4089

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4090
  br label %kmalloc_index.exit.i, !dbg !4090

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4091
  %cmp81.i.i = icmp ule i64 %59, 67108864, !dbg !4093
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4094

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4095
  br label %kmalloc_index.exit.i, !dbg !4095

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4096, !srcloc !4099
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 164) #10, !dbg !4100, !srcloc !4103
  unreachable, !dbg !4104

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %60 = load i32, i32* %retval.i.i, align 4, !dbg !4105
  store i32 %60, i32* %index.i, align 4, !dbg !4106
  %61 = load i32, i32* %index.i, align 4, !dbg !4107
  %tobool.i = icmp ne i32 %61, 0, !dbg !4107
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4109

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4110
  br label %kmalloc.exit, !dbg !4110

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !4111
  store i32 %62, i32* %flags.addr.i13.i, align 4
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4112
  %and.i.i = and i32 %63, 17, !dbg !4112
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4112
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4112
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4112
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4112
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4114

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4115
  br label %kmalloc_type.exit.i, !dbg !4115

if.end.i16.i:                                     ; preds = %if.end4.i
  %64 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4116
  %and2.i.i = and i32 %64, 1, !dbg !4117
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4116
  %65 = zext i1 %tobool3.i.i to i64, !dbg !4116
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4116
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4118
  br label %kmalloc_type.exit.i, !dbg !4118

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %66 = load i32, i32* %retval.i12.i, align 4, !dbg !4119
  %idxprom.i = zext i32 %66 to i64, !dbg !4120
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4120
  %67 = load i32, i32* %index.i, align 4, !dbg !4121
  %idxprom6.i = zext i32 %67 to i64, !dbg !4120
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4120
  %68 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4120
  %69 = load i32, i32* %flags.addr.i, align 4, !dbg !4122
  %70 = load i64, i64* %size.addr.i, align 8, !dbg !4123
  store %struct.kmem_cache* %68, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %69, i32* %flags.addr.i17.i, align 4
  store i64 %70, i64* %size.addr.i18.i, align 8
  %71 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4124
  %72 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4125
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %71, i32 %72) #12, !dbg !4126
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4126
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4126
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4126
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4126
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3837
  %73 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4127
  %74 = load i8*, i8** %ret.i.i, align 8, !dbg !4128
  %75 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4129
  %76 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4130
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %73, i8* %74, i64 %75, i32 %76) #12, !dbg !4131
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4132
  %77 = load i8*, i8** %ret.i.i, align 8, !dbg !4133
  store i8* %77, i8** %retval.i, align 8, !dbg !4134
  br label %kmalloc.exit, !dbg !4134

if.end9.i:                                        ; preds = %if.end4
  %78 = load i64, i64* %size.addr.i, align 8, !dbg !4135
  %79 = load i32, i32* %flags.addr.i, align 4, !dbg !4136
  %call10.i = call noalias i8* @__kmalloc(i64 %78, i32 %79) #12, !dbg !4137
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4137
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4137
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4137
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4137
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4138
  br label %kmalloc.exit, !dbg !4138

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %80 = load i8*, i8** %retval.i, align 8, !dbg !4139
  store i8* %80, i8** %kbuf, align 8, !dbg !4140
  %81 = load i8*, i8** %kbuf, align 8, !dbg !4141
  %tobool = icmp ne i8* %81, null, !dbg !4141
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !4143

if.then6:                                         ; preds = %kmalloc.exit
  store i64 -12, i64* %retval, align 8, !dbg !4144
  br label %return, !dbg !4144

if.end7:                                          ; preds = %kmalloc.exit
  %82 = load i64, i64* %bytes, align 8, !dbg !4145
  %83 = load i64, i64* %bytes_end, align 8, !dbg !4146
  %cmp8 = icmp ugt i64 %82, %83, !dbg !4147
  br i1 %cmp8, label %if.then9, label %if.end16, !dbg !4148

if.then9:                                         ; preds = %if.end7
  %84 = load i8*, i8** %kbuf, align 8, !dbg !4149
  %85 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4150
  %cur_ptr10 = getelementptr inbounds %struct.console_data, %struct.console_data* %85, i32 0, i32 5, !dbg !4151
  %86 = load i8*, i8** %cur_ptr10, align 8, !dbg !4151
  %87 = load i64, i64* %bytes_end, align 8, !dbg !4152
  call void @memcpy_fromio(i8* %84, i8* %86, i64 %87) #8, !dbg !4153
  %88 = load i8*, i8** %buf.addr, align 8, !dbg !4154
  %89 = load i8*, i8** %kbuf, align 8, !dbg !4155
  %90 = load i64, i64* %bytes_end, align 8, !dbg !4156
  store i8* %88, i8** %to.addr.i, align 8
  store i8* %89, i8** %from.addr.i, align 8
  store i64 %90, i64* %n.addr.i, align 8
  %91 = load i8*, i8** %from.addr.i, align 8, !dbg !4157
  %92 = load i64, i64* %n.addr.i, align 8, !dbg !4157
  store i8* %91, i8** %addr.addr.i.i, align 8
  store i64 %92, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !3815
  %93 = load i32, i32* %sz.i.i, align 4, !dbg !4158
  %cmp.i.i26 = icmp sge i32 %93, 0, !dbg !4158
  br i1 %cmp.i.i26, label %land.rhs.i.i, label %land.end.i.i, !dbg !4158

land.rhs.i.i:                                     ; preds = %if.then9
  %94 = load i32, i32* %sz.i.i, align 4, !dbg !4158
  %conv.i.i27 = sext i32 %94 to i64, !dbg !4158
  %95 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4158
  %cmp1.i.i = icmp ult i64 %conv.i.i27, %95, !dbg !4158
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.then9
  %96 = phi i1 [ false, %if.then9 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4160
  %lnot.i.i28 = xor i1 %96, true, !dbg !4158
  %lnot.ext.i.i29 = zext i1 %96 to i32, !dbg !4158
  %conv4.i.i = sext i32 %lnot.ext.i.i29 to i64, !dbg !4158
  br i1 %96, label %if.then.i.i30, label %if.end10.i.i, !dbg !4161

if.then.i.i30:                                    ; preds = %land.end.i.i
  %97 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4162
  %98 = call i1 @llvm.is.constant.i64(i64 %97) #10, !dbg !4165
  br i1 %98, label %if.else.i.i, label %if.then5.i.i31, !dbg !4166

if.then5.i.i31:                                   ; preds = %if.then.i.i30
  %99 = load i32, i32* %sz.i.i, align 4, !dbg !4167
  %100 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4168
  call void @copy_overflow(i32 %99, i64 %100) #12, !dbg !4169
  br label %if.end9.i.i, !dbg !4169

if.else.i.i:                                      ; preds = %if.then.i.i30
  %101 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4170
  %tobool6.i.i = trunc i8 %101 to i1, !dbg !4170
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4172

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #12, !dbg !4173
  br label %if.end.i.i32, !dbg !4173

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #12, !dbg !4174
  br label %if.end.i.i32

if.end.i.i32:                                     ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i32, %if.then5.i.i31
  store i1 false, i1* %retval.i.i25, align 1, !dbg !4175
  br label %check_copy_size.exit.i, !dbg !4175

if.end10.i.i:                                     ; preds = %land.end.i.i
  %102 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !3816
  %cmp11.i.i = icmp ugt i64 %102, 2147483647, !dbg !3816
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !3816
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !3816
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !3816
  %103 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4176
  %tobool17.i.i = icmp ne i32 %103, 0, !dbg !4176
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4176
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4176
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4176
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !3816

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !4178, !srcloc !4181
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !4182, !srcloc !4184
  br label %if.end31.i.i, !dbg !4185

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %104 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !3816
  %tobool32.i.i = icmp ne i32 %104, 0, !dbg !3816
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !3816
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !3816
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !3816
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4176
  %105 = load i64, i64* %tmp.i.i, align 8, !dbg !3816
  %tobool38.i.i = icmp ne i64 %105, 0, !dbg !4186
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4187

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i25, align 1, !dbg !4188
  br label %check_copy_size.exit.i, !dbg !4188

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %106 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4189
  %107 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4190
  %108 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4191
  %tobool41.i.i = trunc i8 %108 to i1, !dbg !4191
  call void @check_object_size(i8* %106, i64 %107, i1 zeroext %tobool41.i.i) #12, !dbg !4192
  store i1 true, i1* %retval.i.i25, align 1, !dbg !4193
  br label %check_copy_size.exit.i, !dbg !4193

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %109 = load i1, i1* %retval.i.i25, align 1, !dbg !4194
  %lnot.i = xor i1 %109, true, !dbg !4157
  %lnot.ext.i = zext i1 %109 to i32, !dbg !4157
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4157
  br i1 %109, label %if.then.i33, label %copy_to_user.exit, !dbg !4195

if.then.i33:                                      ; preds = %check_copy_size.exit.i
  %110 = load i8*, i8** %to.addr.i, align 8, !dbg !4196
  %111 = load i8*, i8** %from.addr.i, align 8, !dbg !4197
  %112 = load i64, i64* %n.addr.i, align 8, !dbg !4198
  %call2.i = call i64 @_copy_to_user(i8* %110, i8* %111, i64 %112) #12, !dbg !4199
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4200
  br label %copy_to_user.exit, !dbg !4201

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i33
  %113 = load i64, i64* %n.addr.i, align 8, !dbg !4202
  %tobool12 = icmp ne i64 %113, 0, !dbg !4203
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4204

if.then13:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %err, align 4, !dbg !4205
  br label %err_free_buf, !dbg !4207

if.end14:                                         ; preds = %copy_to_user.exit
  %114 = load i64, i64* %bytes_end, align 8, !dbg !4208
  %115 = load i8*, i8** %buf.addr, align 8, !dbg !4209
  %add.ptr = getelementptr i8, i8* %115, i64 %114, !dbg !4209
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !4209
  %116 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4210
  %start_addr = getelementptr inbounds %struct.console_data, %struct.console_data* %116, i32 0, i32 2, !dbg !4211
  %117 = load i8*, i8** %start_addr, align 8, !dbg !4211
  %118 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4212
  %cur_ptr15 = getelementptr inbounds %struct.console_data, %struct.console_data* %118, i32 0, i32 5, !dbg !4213
  store i8* %117, i8** %cur_ptr15, align 8, !dbg !4214
  %119 = load i64, i64* %bytes_end, align 8, !dbg !4215
  %120 = load i64, i64* %bytes, align 8, !dbg !4216
  %sub = sub i64 %120, %119, !dbg !4216
  store i64 %sub, i64* %bytes, align 8, !dbg !4216
  %121 = load i64, i64* %bytes_end, align 8, !dbg !4217
  %122 = load i64, i64* %written, align 8, !dbg !4218
  %add = add i64 %122, %121, !dbg !4218
  store i64 %add, i64* %written, align 8, !dbg !4218
  br label %if.end16, !dbg !4219

if.end16:                                         ; preds = %if.end14, %if.end7
  %123 = load i8*, i8** %kbuf, align 8, !dbg !4220
  %124 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4221
  %cur_ptr17 = getelementptr inbounds %struct.console_data, %struct.console_data* %124, i32 0, i32 5, !dbg !4222
  %125 = load i8*, i8** %cur_ptr17, align 8, !dbg !4222
  %126 = load i64, i64* %bytes, align 8, !dbg !4223
  call void @memcpy_fromio(i8* %123, i8* %125, i64 %126) #8, !dbg !4224
  %127 = load i8*, i8** %buf.addr, align 8, !dbg !4225
  %128 = load i8*, i8** %kbuf, align 8, !dbg !4226
  %129 = load i64, i64* %bytes, align 8, !dbg !4227
  store i8* %127, i8** %to.addr.i42, align 8
  store i8* %128, i8** %from.addr.i43, align 8
  store i64 %129, i64* %n.addr.i44, align 8
  %130 = load i8*, i8** %from.addr.i43, align 8, !dbg !4228
  %131 = load i64, i64* %n.addr.i44, align 8, !dbg !4228
  store i8* %130, i8** %addr.addr.i.i36, align 8
  store i64 %131, i64* %bytes.addr.i.i37, align 8
  store i8 1, i8* %is_source.addr.i.i38, align 1
  store i32 -1, i32* %sz.i.i39, align 4, !dbg !3796
  %132 = load i32, i32* %sz.i.i39, align 4, !dbg !4229
  %cmp.i.i45 = icmp sge i32 %132, 0, !dbg !4229
  br i1 %cmp.i.i45, label %land.rhs.i.i48, label %land.end.i.i52, !dbg !4229

land.rhs.i.i48:                                   ; preds = %if.end16
  %133 = load i32, i32* %sz.i.i39, align 4, !dbg !4229
  %conv.i.i46 = sext i32 %133 to i64, !dbg !4229
  %134 = load i64, i64* %bytes.addr.i.i37, align 8, !dbg !4229
  %cmp1.i.i47 = icmp ult i64 %conv.i.i46, %134, !dbg !4229
  br label %land.end.i.i52

land.end.i.i52:                                   ; preds = %land.rhs.i.i48, %if.end16
  %135 = phi i1 [ false, %if.end16 ], [ %cmp1.i.i47, %land.rhs.i.i48 ], !dbg !4230
  %lnot.i.i49 = xor i1 %135, true, !dbg !4229
  %lnot.ext.i.i50 = zext i1 %135 to i32, !dbg !4229
  %conv4.i.i51 = sext i32 %lnot.ext.i.i50 to i64, !dbg !4229
  br i1 %135, label %if.then.i.i53, label %if.end10.i.i68, !dbg !4231

if.then.i.i53:                                    ; preds = %land.end.i.i52
  %136 = load i64, i64* %bytes.addr.i.i37, align 8, !dbg !4232
  %137 = call i1 @llvm.is.constant.i64(i64 %136) #10, !dbg !4233
  br i1 %137, label %if.else.i.i56, label %if.then5.i.i54, !dbg !4234

if.then5.i.i54:                                   ; preds = %if.then.i.i53
  %138 = load i32, i32* %sz.i.i39, align 4, !dbg !4235
  %139 = load i64, i64* %bytes.addr.i.i37, align 8, !dbg !4236
  call void @copy_overflow(i32 %138, i64 %139) #12, !dbg !4237
  br label %if.end9.i.i60, !dbg !4237

if.else.i.i56:                                    ; preds = %if.then.i.i53
  %140 = load i8, i8* %is_source.addr.i.i38, align 1, !dbg !4238
  %tobool6.i.i55 = trunc i8 %140 to i1, !dbg !4238
  br i1 %tobool6.i.i55, label %if.then7.i.i57, label %if.else8.i.i58, !dbg !4239

if.then7.i.i57:                                   ; preds = %if.else.i.i56
  call void @__bad_copy_from() #12, !dbg !4240
  br label %if.end.i.i59, !dbg !4240

if.else8.i.i58:                                   ; preds = %if.else.i.i56
  call void @__bad_copy_to() #12, !dbg !4241
  br label %if.end.i.i59

if.end.i.i59:                                     ; preds = %if.else8.i.i58, %if.then7.i.i57
  br label %if.end9.i.i60

if.end9.i.i60:                                    ; preds = %if.end.i.i59, %if.then5.i.i54
  store i1 false, i1* %retval.i.i35, align 1, !dbg !4242
  br label %check_copy_size.exit.i82, !dbg !4242

if.end10.i.i68:                                   ; preds = %land.end.i.i52
  %141 = load i64, i64* %bytes.addr.i.i37, align 8, !dbg !3800
  %cmp11.i.i61 = icmp ugt i64 %141, 2147483647, !dbg !3800
  %lnot13.i.i62 = xor i1 %cmp11.i.i61, true, !dbg !3800
  %lnot.ext16.i.i63 = zext i1 %cmp11.i.i61 to i32, !dbg !3800
  store i32 %lnot.ext16.i.i63, i32* %__ret_warn_on.i.i40, align 4, !dbg !3800
  %142 = load i32, i32* %__ret_warn_on.i.i40, align 4, !dbg !4243
  %tobool17.i.i64 = icmp ne i32 %142, 0, !dbg !4243
  %lnot18.i.i65 = xor i1 %tobool17.i.i64, true, !dbg !4243
  %lnot.ext21.i.i66 = zext i1 %tobool17.i.i64 to i32, !dbg !4243
  %conv22.i.i67 = sext i32 %lnot.ext21.i.i66 to i64, !dbg !4243
  br i1 %tobool17.i.i64, label %if.then24.i.i69, label %if.end31.i.i75, !dbg !3800

if.then24.i.i69:                                  ; preds = %if.end10.i.i68
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !4244, !srcloc !4181
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !4245, !srcloc !4184
  br label %if.end31.i.i75, !dbg !4246

if.end31.i.i75:                                   ; preds = %if.then24.i.i69, %if.end10.i.i68
  %143 = load i32, i32* %__ret_warn_on.i.i40, align 4, !dbg !3800
  %tobool32.i.i70 = icmp ne i32 %143, 0, !dbg !3800
  %lnot33.i.i71 = xor i1 %tobool32.i.i70, true, !dbg !3800
  %lnot.ext36.i.i72 = zext i1 %tobool32.i.i70 to i32, !dbg !3800
  %conv37.i.i73 = sext i32 %lnot.ext36.i.i72 to i64, !dbg !3800
  store i64 %conv37.i.i73, i64* %tmp.i.i41, align 8, !dbg !4243
  %144 = load i64, i64* %tmp.i.i41, align 8, !dbg !3800
  %tobool38.i.i74 = icmp ne i64 %144, 0, !dbg !4247
  br i1 %tobool38.i.i74, label %if.then39.i.i76, label %if.end40.i.i78, !dbg !4248

if.then39.i.i76:                                  ; preds = %if.end31.i.i75
  store i1 false, i1* %retval.i.i35, align 1, !dbg !4249
  br label %check_copy_size.exit.i82, !dbg !4249

if.end40.i.i78:                                   ; preds = %if.end31.i.i75
  %145 = load i8*, i8** %addr.addr.i.i36, align 8, !dbg !4250
  %146 = load i64, i64* %bytes.addr.i.i37, align 8, !dbg !4251
  %147 = load i8, i8* %is_source.addr.i.i38, align 1, !dbg !4252
  %tobool41.i.i77 = trunc i8 %147 to i1, !dbg !4252
  call void @check_object_size(i8* %145, i64 %146, i1 zeroext %tobool41.i.i77) #12, !dbg !4253
  store i1 true, i1* %retval.i.i35, align 1, !dbg !4254
  br label %check_copy_size.exit.i82, !dbg !4254

check_copy_size.exit.i82:                         ; preds = %if.end40.i.i78, %if.then39.i.i76, %if.end9.i.i60
  %148 = load i1, i1* %retval.i.i35, align 1, !dbg !4255
  %lnot.i79 = xor i1 %148, true, !dbg !4228
  %lnot.ext.i80 = zext i1 %148 to i32, !dbg !4228
  %conv.i81 = sext i32 %lnot.ext.i80 to i64, !dbg !4228
  br i1 %148, label %if.then.i84, label %copy_to_user.exit86, !dbg !4256

if.then.i84:                                      ; preds = %check_copy_size.exit.i82
  %149 = load i8*, i8** %to.addr.i42, align 8, !dbg !4257
  %150 = load i8*, i8** %from.addr.i43, align 8, !dbg !4258
  %151 = load i64, i64* %n.addr.i44, align 8, !dbg !4259
  %call2.i83 = call i64 @_copy_to_user(i8* %149, i8* %150, i64 %151) #12, !dbg !4260
  store i64 %call2.i83, i64* %n.addr.i44, align 8, !dbg !4261
  br label %copy_to_user.exit86, !dbg !4262

copy_to_user.exit86:                              ; preds = %check_copy_size.exit.i82, %if.then.i84
  %152 = load i64, i64* %n.addr.i44, align 8, !dbg !4263
  %tobool19 = icmp ne i64 %152, 0, !dbg !4264
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4265

if.then20:                                        ; preds = %copy_to_user.exit86
  store i32 -14, i32* %err, align 4, !dbg !4266
  br label %err_free_buf, !dbg !4268

if.end21:                                         ; preds = %copy_to_user.exit86
  %153 = load i64, i64* %bytes, align 8, !dbg !4269
  %154 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4270
  %cur_ptr22 = getelementptr inbounds %struct.console_data, %struct.console_data* %154, i32 0, i32 5, !dbg !4271
  %155 = load i8*, i8** %cur_ptr22, align 8, !dbg !4272
  %add.ptr23 = getelementptr i8, i8* %155, i64 %153, !dbg !4272
  store i8* %add.ptr23, i8** %cur_ptr22, align 8, !dbg !4272
  %156 = load i64, i64* %bytes, align 8, !dbg !4273
  %157 = load i64, i64* %written, align 8, !dbg !4274
  %add24 = add i64 %157, %156, !dbg !4274
  store i64 %add24, i64* %written, align 8, !dbg !4274
  %158 = load i64, i64* %written, align 8, !dbg !4275
  store i64 %158, i64* %retval, align 8, !dbg !4276
  br label %return, !dbg !4276

err_free_buf:                                     ; preds = %if.then20, %if.then13
  call void @llvm.dbg.label(metadata !4277), !dbg !4278
  %159 = load i8*, i8** %kbuf, align 8, !dbg !4279
  call void @kfree(i8* %159) #8, !dbg !4280
  %160 = load i32, i32* %err, align 4, !dbg !4281
  %conv = sext i32 %160 to i64, !dbg !4281
  store i64 %conv, i64* %retval, align 8, !dbg !4282
  br label %return, !dbg !4282

return:                                           ; preds = %err_free_buf, %if.end21, %if.then6, %if.then
  %161 = load i64, i64* %retval, align 8, !dbg !4283
  ret i64 %161, !dbg !4283
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dpaa2_mc_console_open(%struct.inode* %node, %struct.file* %fp) #2 !dbg !4284 {
entry:
  %node.addr = alloca %struct.inode*, align 8
  %fp.addr = alloca %struct.file*, align 8
  store %struct.inode* %node, %struct.inode** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %node.addr, metadata !4285, metadata !DIExpression()), !dbg !4286
  store %struct.file* %fp, %struct.file** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %fp.addr, metadata !4287, metadata !DIExpression()), !dbg !4288
  %0 = load %struct.inode*, %struct.inode** %node.addr, align 8, !dbg !4289
  %1 = load %struct.file*, %struct.file** %fp.addr, align 8, !dbg !4290
  %call = call i32 @dpaa2_generic_console_open(%struct.inode* %0, %struct.file* %1, i64 16777216, i64 16777216, i32 1296236800, i32 16777216) #8, !dbg !4291
  ret i32 %call, !dbg !4292
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dpaa2_console_close(%struct.inode* %node, %struct.file* %fp) #2 !dbg !4293 {
entry:
  %node.addr = alloca %struct.inode*, align 8
  %fp.addr = alloca %struct.file*, align 8
  %cd = alloca %struct.console_data*, align 8
  store %struct.inode* %node, %struct.inode** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %node.addr, metadata !4294, metadata !DIExpression()), !dbg !4295
  store %struct.file* %fp, %struct.file** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %fp.addr, metadata !4296, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.declare(metadata %struct.console_data** %cd, metadata !4298, metadata !DIExpression()), !dbg !4299
  %0 = load %struct.file*, %struct.file** %fp.addr, align 8, !dbg !4300
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4301
  %1 = load i8*, i8** %private_data, align 8, !dbg !4301
  %2 = bitcast i8* %1 to %struct.console_data*, !dbg !4300
  store %struct.console_data* %2, %struct.console_data** %cd, align 8, !dbg !4299
  %3 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4302
  %map_addr = getelementptr inbounds %struct.console_data, %struct.console_data* %3, i32 0, i32 0, !dbg !4303
  %4 = load i8*, i8** %map_addr, align 8, !dbg !4303
  call void @iounmap(i8* %4) #8, !dbg !4304
  %5 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4305
  %6 = bitcast %struct.console_data* %5 to i8*, !dbg !4305
  call void @kfree(i8* %6) #8, !dbg !4306
  ret i32 0, !dbg !4307
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @dpaa2_console_size(%struct.console_data* %cd) #2 !dbg !4308 {
entry:
  %cd.addr = alloca %struct.console_data*, align 8
  %size = alloca i64, align 8
  store %struct.console_data* %cd, %struct.console_data** %cd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.console_data** %cd.addr, metadata !4311, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.declare(metadata i64* %size, metadata !4313, metadata !DIExpression()), !dbg !4314
  %0 = load %struct.console_data*, %struct.console_data** %cd.addr, align 8, !dbg !4315
  %cur_ptr = getelementptr inbounds %struct.console_data, %struct.console_data* %0, i32 0, i32 5, !dbg !4317
  %1 = load i8*, i8** %cur_ptr, align 8, !dbg !4317
  %2 = load %struct.console_data*, %struct.console_data** %cd.addr, align 8, !dbg !4318
  %end_of_data = getelementptr inbounds %struct.console_data, %struct.console_data* %2, i32 0, i32 4, !dbg !4319
  %3 = load i8*, i8** %end_of_data, align 8, !dbg !4319
  %cmp = icmp ule i8* %1, %3, !dbg !4320
  br i1 %cmp, label %if.then, label %if.else, !dbg !4321

if.then:                                          ; preds = %entry
  %4 = load %struct.console_data*, %struct.console_data** %cd.addr, align 8, !dbg !4322
  %end_of_data1 = getelementptr inbounds %struct.console_data, %struct.console_data* %4, i32 0, i32 4, !dbg !4323
  %5 = load i8*, i8** %end_of_data1, align 8, !dbg !4323
  %6 = load %struct.console_data*, %struct.console_data** %cd.addr, align 8, !dbg !4324
  %cur_ptr2 = getelementptr inbounds %struct.console_data, %struct.console_data* %6, i32 0, i32 5, !dbg !4325
  %7 = load i8*, i8** %cur_ptr2, align 8, !dbg !4325
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64, !dbg !4326
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !4326
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4326
  store i64 %sub.ptr.sub, i64* %size, align 8, !dbg !4327
  br label %if.end, !dbg !4328

if.else:                                          ; preds = %entry
  %8 = load %struct.console_data*, %struct.console_data** %cd.addr, align 8, !dbg !4329
  %end_addr = getelementptr inbounds %struct.console_data, %struct.console_data* %8, i32 0, i32 3, !dbg !4330
  %9 = load i8*, i8** %end_addr, align 8, !dbg !4330
  %10 = load %struct.console_data*, %struct.console_data** %cd.addr, align 8, !dbg !4331
  %cur_ptr3 = getelementptr inbounds %struct.console_data, %struct.console_data* %10, i32 0, i32 5, !dbg !4332
  %11 = load i8*, i8** %cur_ptr3, align 8, !dbg !4332
  %sub.ptr.lhs.cast4 = ptrtoint i8* %9 to i64, !dbg !4333
  %sub.ptr.rhs.cast5 = ptrtoint i8* %11 to i64, !dbg !4333
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5, !dbg !4333
  %12 = load %struct.console_data*, %struct.console_data** %cd.addr, align 8, !dbg !4334
  %end_of_data7 = getelementptr inbounds %struct.console_data, %struct.console_data* %12, i32 0, i32 4, !dbg !4335
  %13 = load i8*, i8** %end_of_data7, align 8, !dbg !4335
  %14 = load %struct.console_data*, %struct.console_data** %cd.addr, align 8, !dbg !4336
  %start_addr = getelementptr inbounds %struct.console_data, %struct.console_data* %14, i32 0, i32 2, !dbg !4337
  %15 = load i8*, i8** %start_addr, align 8, !dbg !4337
  %sub.ptr.lhs.cast8 = ptrtoint i8* %13 to i64, !dbg !4338
  %sub.ptr.rhs.cast9 = ptrtoint i8* %15 to i64, !dbg !4338
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9, !dbg !4338
  %add = add i64 %sub.ptr.sub6, %sub.ptr.sub10, !dbg !4339
  store i64 %add, i64* %size, align 8, !dbg !4340
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i64, i64* %size, align 8, !dbg !4341
  ret i64 %16, !dbg !4342
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @adjust_end(%struct.console_data* %cd) #2 !dbg !4343 {
entry:
  %cd.addr = alloca %struct.console_data*, align 8
  %last_byte = alloca i32, align 4
  store %struct.console_data* %cd, %struct.console_data** %cd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.console_data** %cd.addr, metadata !4346, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.declare(metadata i32* %last_byte, metadata !4348, metadata !DIExpression()), !dbg !4349
  %0 = load %struct.console_data*, %struct.console_data** %cd.addr, align 8, !dbg !4350
  %hdr = getelementptr inbounds %struct.console_data, %struct.console_data* %0, i32 0, i32 1, !dbg !4351
  %1 = load %struct.log_header*, %struct.log_header** %hdr, align 8, !dbg !4351
  %last_byte1 = getelementptr inbounds %struct.log_header, %struct.log_header* %1, i32 0, i32 4, !dbg !4352
  %2 = bitcast i32* %last_byte1 to i8*, !dbg !4353
  %call = call i32 @readl(i8* %2) #8, !dbg !4354
  store i32 %call, i32* %last_byte, align 4, !dbg !4349
  %3 = load %struct.console_data*, %struct.console_data** %cd.addr, align 8, !dbg !4355
  %start_addr = getelementptr inbounds %struct.console_data, %struct.console_data* %3, i32 0, i32 2, !dbg !4356
  %4 = load i8*, i8** %start_addr, align 8, !dbg !4356
  %5 = load i32, i32* %last_byte, align 4, !dbg !4357
  %and = and i32 %5, 2147483647, !dbg !4357
  %idx.ext = zext i32 %and to i64, !dbg !4358
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !4358
  %6 = load %struct.console_data*, %struct.console_data** %cd.addr, align 8, !dbg !4359
  %end_of_data = getelementptr inbounds %struct.console_data, %struct.console_data* %6, i32 0, i32 4, !dbg !4360
  store i8* %add.ptr, i8** %end_of_data, align 8, !dbg !4361
  ret void, !dbg !4362
}

; Function Attrs: noredzone
declare dso_local void @memcpy_fromio(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !4363 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4370, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4372, metadata !DIExpression()), !dbg !4371
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !4371
  %1 = bitcast i8* %0 to i32*, !dbg !4371
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #10, !dbg !4371, !srcloc !4373
  store i32 %2, i32* %ret, align 4, !dbg !4371
  %3 = load i32, i32* %ret, align 4, !dbg !4371
  ret i32 %3, !dbg !4371
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4374 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4378, metadata !DIExpression()), !dbg !4383
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4385, metadata !DIExpression()), !dbg !4386
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4387, metadata !DIExpression()), !dbg !4388
  %0 = load i64, i64* %size.addr, align 8, !dbg !4389
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4391
  br i1 %1, label %if.then, label %if.end447, !dbg !4392

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4393
  %tobool = icmp ne i64 %2, 0, !dbg !4393
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4396

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4397
  br label %return, !dbg !4397

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4398
  %cmp = icmp ult i64 %3, 4096, !dbg !4400
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4401

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4402
  br label %return, !dbg !4402

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub = sub i64 %4, 1, !dbg !4403
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4403
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4403

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub4 = sub i64 %6, 1, !dbg !4403
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4403
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4403

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub6 = sub i64 %8, 1, !dbg !4403
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4403
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4403

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4403

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub9 = sub i64 %9, 1, !dbg !4403
  %and = and i64 %sub9, -9223372036854775808, !dbg !4403
  %tobool10 = icmp ne i64 %and, 0, !dbg !4403
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4403

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4403

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub13 = sub i64 %10, 1, !dbg !4403
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4403
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4403
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4403

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4403

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub18 = sub i64 %11, 1, !dbg !4403
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4403
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4403
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4403

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4403

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub23 = sub i64 %12, 1, !dbg !4403
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4403
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4403
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4403

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4403

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub28 = sub i64 %13, 1, !dbg !4403
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4403
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4403
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4403

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4403

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub33 = sub i64 %14, 1, !dbg !4403
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4403
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4403
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4403

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4403

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub38 = sub i64 %15, 1, !dbg !4403
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4403
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4403
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4403

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4403

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub43 = sub i64 %16, 1, !dbg !4403
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4403
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4403
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4403

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4403

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub48 = sub i64 %17, 1, !dbg !4403
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4403
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4403
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4403

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4403

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub53 = sub i64 %18, 1, !dbg !4403
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4403
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4403
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4403

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4403

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub58 = sub i64 %19, 1, !dbg !4403
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4403
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4403
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4403

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4403

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub63 = sub i64 %20, 1, !dbg !4403
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4403
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4403
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4403

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4403

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub68 = sub i64 %21, 1, !dbg !4403
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4403
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4403
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4403

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4403

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub73 = sub i64 %22, 1, !dbg !4403
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4403
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4403
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4403

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4403

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub78 = sub i64 %23, 1, !dbg !4403
  %and79 = and i64 %sub78, 562949953421312, !dbg !4403
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4403
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4403

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4403

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub83 = sub i64 %24, 1, !dbg !4403
  %and84 = and i64 %sub83, 281474976710656, !dbg !4403
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4403
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4403

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4403

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub88 = sub i64 %25, 1, !dbg !4403
  %and89 = and i64 %sub88, 140737488355328, !dbg !4403
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4403
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4403

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4403

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub93 = sub i64 %26, 1, !dbg !4403
  %and94 = and i64 %sub93, 70368744177664, !dbg !4403
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4403
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4403

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4403

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub98 = sub i64 %27, 1, !dbg !4403
  %and99 = and i64 %sub98, 35184372088832, !dbg !4403
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4403
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4403

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4403

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub103 = sub i64 %28, 1, !dbg !4403
  %and104 = and i64 %sub103, 17592186044416, !dbg !4403
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4403
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4403

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4403

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub108 = sub i64 %29, 1, !dbg !4403
  %and109 = and i64 %sub108, 8796093022208, !dbg !4403
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4403
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4403

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4403

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub113 = sub i64 %30, 1, !dbg !4403
  %and114 = and i64 %sub113, 4398046511104, !dbg !4403
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4403
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4403

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4403

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub118 = sub i64 %31, 1, !dbg !4403
  %and119 = and i64 %sub118, 2199023255552, !dbg !4403
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4403
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4403

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4403

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub123 = sub i64 %32, 1, !dbg !4403
  %and124 = and i64 %sub123, 1099511627776, !dbg !4403
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4403
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4403

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4403

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub128 = sub i64 %33, 1, !dbg !4403
  %and129 = and i64 %sub128, 549755813888, !dbg !4403
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4403
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4403

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4403

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub133 = sub i64 %34, 1, !dbg !4403
  %and134 = and i64 %sub133, 274877906944, !dbg !4403
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4403
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4403

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4403

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub138 = sub i64 %35, 1, !dbg !4403
  %and139 = and i64 %sub138, 137438953472, !dbg !4403
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4403
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4403

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4403

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub143 = sub i64 %36, 1, !dbg !4403
  %and144 = and i64 %sub143, 68719476736, !dbg !4403
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4403
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4403

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4403

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub148 = sub i64 %37, 1, !dbg !4403
  %and149 = and i64 %sub148, 34359738368, !dbg !4403
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4403
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4403

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4403

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub153 = sub i64 %38, 1, !dbg !4403
  %and154 = and i64 %sub153, 17179869184, !dbg !4403
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4403
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4403

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4403

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub158 = sub i64 %39, 1, !dbg !4403
  %and159 = and i64 %sub158, 8589934592, !dbg !4403
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4403
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4403

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4403

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub163 = sub i64 %40, 1, !dbg !4403
  %and164 = and i64 %sub163, 4294967296, !dbg !4403
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4403
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4403

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4403

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub168 = sub i64 %41, 1, !dbg !4403
  %and169 = and i64 %sub168, 2147483648, !dbg !4403
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4403
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4403

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4403

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub173 = sub i64 %42, 1, !dbg !4403
  %and174 = and i64 %sub173, 1073741824, !dbg !4403
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4403
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4403

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4403

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub178 = sub i64 %43, 1, !dbg !4403
  %and179 = and i64 %sub178, 536870912, !dbg !4403
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4403
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4403

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4403

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub183 = sub i64 %44, 1, !dbg !4403
  %and184 = and i64 %sub183, 268435456, !dbg !4403
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4403
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4403

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4403

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub188 = sub i64 %45, 1, !dbg !4403
  %and189 = and i64 %sub188, 134217728, !dbg !4403
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4403
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4403

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4403

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub193 = sub i64 %46, 1, !dbg !4403
  %and194 = and i64 %sub193, 67108864, !dbg !4403
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4403
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4403

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4403

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub198 = sub i64 %47, 1, !dbg !4403
  %and199 = and i64 %sub198, 33554432, !dbg !4403
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4403
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4403

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4403

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub203 = sub i64 %48, 1, !dbg !4403
  %and204 = and i64 %sub203, 16777216, !dbg !4403
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4403
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4403

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4403

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub208 = sub i64 %49, 1, !dbg !4403
  %and209 = and i64 %sub208, 8388608, !dbg !4403
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4403
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4403

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4403

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub213 = sub i64 %50, 1, !dbg !4403
  %and214 = and i64 %sub213, 4194304, !dbg !4403
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4403
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4403

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4403

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub218 = sub i64 %51, 1, !dbg !4403
  %and219 = and i64 %sub218, 2097152, !dbg !4403
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4403
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4403

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4403

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub223 = sub i64 %52, 1, !dbg !4403
  %and224 = and i64 %sub223, 1048576, !dbg !4403
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4403
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4403

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4403

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub228 = sub i64 %53, 1, !dbg !4403
  %and229 = and i64 %sub228, 524288, !dbg !4403
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4403
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4403

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4403

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub233 = sub i64 %54, 1, !dbg !4403
  %and234 = and i64 %sub233, 262144, !dbg !4403
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4403
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4403

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4403

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub238 = sub i64 %55, 1, !dbg !4403
  %and239 = and i64 %sub238, 131072, !dbg !4403
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4403
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4403

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4403

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub243 = sub i64 %56, 1, !dbg !4403
  %and244 = and i64 %sub243, 65536, !dbg !4403
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4403
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4403

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4403

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub248 = sub i64 %57, 1, !dbg !4403
  %and249 = and i64 %sub248, 32768, !dbg !4403
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4403
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4403

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4403

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub253 = sub i64 %58, 1, !dbg !4403
  %and254 = and i64 %sub253, 16384, !dbg !4403
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4403
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4403

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4403

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub258 = sub i64 %59, 1, !dbg !4403
  %and259 = and i64 %sub258, 8192, !dbg !4403
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4403
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4403

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4403

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub263 = sub i64 %60, 1, !dbg !4403
  %and264 = and i64 %sub263, 4096, !dbg !4403
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4403
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4403

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4403

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub268 = sub i64 %61, 1, !dbg !4403
  %and269 = and i64 %sub268, 2048, !dbg !4403
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4403
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4403

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4403

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub273 = sub i64 %62, 1, !dbg !4403
  %and274 = and i64 %sub273, 1024, !dbg !4403
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4403
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4403

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4403

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub278 = sub i64 %63, 1, !dbg !4403
  %and279 = and i64 %sub278, 512, !dbg !4403
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4403
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4403

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4403

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub283 = sub i64 %64, 1, !dbg !4403
  %and284 = and i64 %sub283, 256, !dbg !4403
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4403
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4403

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4403

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub288 = sub i64 %65, 1, !dbg !4403
  %and289 = and i64 %sub288, 128, !dbg !4403
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4403
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4403

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4403

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub293 = sub i64 %66, 1, !dbg !4403
  %and294 = and i64 %sub293, 64, !dbg !4403
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4403
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4403

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4403

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub298 = sub i64 %67, 1, !dbg !4403
  %and299 = and i64 %sub298, 32, !dbg !4403
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4403
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4403

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4403

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub303 = sub i64 %68, 1, !dbg !4403
  %and304 = and i64 %sub303, 16, !dbg !4403
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4403
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4403

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4403

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub308 = sub i64 %69, 1, !dbg !4403
  %and309 = and i64 %sub308, 8, !dbg !4403
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4403
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4403

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4403

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub313 = sub i64 %70, 1, !dbg !4403
  %and314 = and i64 %sub313, 4, !dbg !4403
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4403
  %71 = zext i1 %tobool315 to i64, !dbg !4403
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4403
  br label %cond.end, !dbg !4403

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4403
  br label %cond.end317, !dbg !4403

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4403
  br label %cond.end319, !dbg !4403

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4403
  br label %cond.end321, !dbg !4403

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4403
  br label %cond.end323, !dbg !4403

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4403
  br label %cond.end325, !dbg !4403

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4403
  br label %cond.end327, !dbg !4403

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4403
  br label %cond.end329, !dbg !4403

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4403
  br label %cond.end331, !dbg !4403

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4403
  br label %cond.end333, !dbg !4403

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4403
  br label %cond.end335, !dbg !4403

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4403
  br label %cond.end337, !dbg !4403

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4403
  br label %cond.end339, !dbg !4403

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4403
  br label %cond.end341, !dbg !4403

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4403
  br label %cond.end343, !dbg !4403

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4403
  br label %cond.end345, !dbg !4403

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4403
  br label %cond.end347, !dbg !4403

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4403
  br label %cond.end349, !dbg !4403

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4403
  br label %cond.end351, !dbg !4403

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4403
  br label %cond.end353, !dbg !4403

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4403
  br label %cond.end355, !dbg !4403

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4403
  br label %cond.end357, !dbg !4403

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4403
  br label %cond.end359, !dbg !4403

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4403
  br label %cond.end361, !dbg !4403

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4403
  br label %cond.end363, !dbg !4403

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4403
  br label %cond.end365, !dbg !4403

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4403
  br label %cond.end367, !dbg !4403

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4403
  br label %cond.end369, !dbg !4403

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4403
  br label %cond.end371, !dbg !4403

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4403
  br label %cond.end373, !dbg !4403

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4403
  br label %cond.end375, !dbg !4403

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4403
  br label %cond.end377, !dbg !4403

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4403
  br label %cond.end379, !dbg !4403

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4403
  br label %cond.end381, !dbg !4403

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4403
  br label %cond.end383, !dbg !4403

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4403
  br label %cond.end385, !dbg !4403

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4403
  br label %cond.end387, !dbg !4403

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4403
  br label %cond.end389, !dbg !4403

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4403
  br label %cond.end391, !dbg !4403

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4403
  br label %cond.end393, !dbg !4403

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4403
  br label %cond.end395, !dbg !4403

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4403
  br label %cond.end397, !dbg !4403

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4403
  br label %cond.end399, !dbg !4403

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4403
  br label %cond.end401, !dbg !4403

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4403
  br label %cond.end403, !dbg !4403

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4403
  br label %cond.end405, !dbg !4403

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4403
  br label %cond.end407, !dbg !4403

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4403
  br label %cond.end409, !dbg !4403

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4403
  br label %cond.end411, !dbg !4403

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4403
  br label %cond.end413, !dbg !4403

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4403
  br label %cond.end415, !dbg !4403

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4403
  br label %cond.end417, !dbg !4403

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4403
  br label %cond.end419, !dbg !4403

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4403
  br label %cond.end421, !dbg !4403

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4403
  br label %cond.end423, !dbg !4403

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4403
  br label %cond.end425, !dbg !4403

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4403
  br label %cond.end427, !dbg !4403

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4403
  br label %cond.end429, !dbg !4403

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4403
  br label %cond.end431, !dbg !4403

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4403
  br label %cond.end433, !dbg !4403

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4403
  br label %cond.end435, !dbg !4403

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4403
  br label %cond.end437, !dbg !4403

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4403
  br label %cond.end440, !dbg !4403

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4403

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4403
  br label %cond.end444, !dbg !4403

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4403
  %sub443 = sub i64 %72, 1, !dbg !4403
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4403
  br label %cond.end444, !dbg !4403

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4403
  %sub446 = sub i32 %cond445, 12, !dbg !4404
  %add = add i32 %sub446, 1, !dbg !4405
  store i32 %add, i32* %retval, align 4, !dbg !4406
  br label %return, !dbg !4406

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4407
  %dec = add i64 %73, -1, !dbg !4407
  store i64 %dec, i64* %size.addr, align 8, !dbg !4407
  %74 = load i64, i64* %size.addr, align 8, !dbg !4408
  %shr = lshr i64 %74, 12, !dbg !4408
  store i64 %shr, i64* %size.addr, align 8, !dbg !4408
  %75 = load i64, i64* %size.addr, align 8, !dbg !4409
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4386
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4410
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4411
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4410, !srcloc !4412
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4410
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4413
  %add.i = add i32 %79, 1, !dbg !4414
  store i32 %add.i, i32* %retval, align 4, !dbg !4415
  br label %return, !dbg !4415

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4416
  ret i32 %80, !dbg !4416
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4417 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4378, metadata !DIExpression()), !dbg !4421
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4385, metadata !DIExpression()), !dbg !4423
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4424, metadata !DIExpression()), !dbg !4425
  %0 = load i64, i64* %n.addr, align 8, !dbg !4426
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4423
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4427
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4428
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4427, !srcloc !4412
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4427
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4429
  %add.i = add i32 %4, 1, !dbg !4430
  %sub = sub i32 %add.i, 1, !dbg !4431
  ret i32 %sub, !dbg !4432
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !4433 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4437, metadata !DIExpression()), !dbg !4438
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4439, metadata !DIExpression()), !dbg !4440
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4441, metadata !DIExpression()), !dbg !4442
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4443, metadata !DIExpression()), !dbg !4444
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4445
  ret i8* %0, !dbg !4446
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #2 !dbg !4447 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4450, metadata !DIExpression()), !dbg !4451
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4452, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4454, metadata !DIExpression()), !dbg !4456
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !4456
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !4457
  %tobool = icmp ne i32 %0, 0, !dbg !4457
  %lnot = xor i1 %tobool, true, !dbg !4457
  %lnot1 = xor i1 %lnot, true, !dbg !4457
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4457
  %conv = sext i32 %lnot.ext to i64, !dbg !4457
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4457
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4456

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4457

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !4459

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !4461

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !4459
  %2 = load i64, i64* %count.addr, align 8, !dbg !4459
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %1, i64 %2) #8, !dbg !4459
  br label %do.body4, !dbg !4459

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !4463

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4465

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !4463

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 134, i32 2313, i64 12) #10, !dbg !4467, !srcloc !4469
  br label %do.end8, !dbg !4467

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #10, !dbg !4470, !srcloc !4472
  br label %do.body9, !dbg !4463

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !4473

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !4463

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !4459

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4475

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4459

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4459

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4456
  %tobool15 = icmp ne i32 %3, 0, !dbg !4456
  %lnot16 = xor i1 %tobool15, true, !dbg !4456
  %lnot18 = xor i1 %lnot16, true, !dbg !4456
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4456
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4456
  store i64 %conv20, i64* %tmp, align 8, !dbg !4457
  %4 = load i64, i64* %tmp, align 8, !dbg !4456
  ret void, !dbg !4477
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #1

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #2 !dbg !4478 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4481, metadata !DIExpression()), !dbg !4482
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4483, metadata !DIExpression()), !dbg !4484
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  ret void, !dbg !4487
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dpaa2_generic_console_open(%struct.inode* %node, %struct.file* %fp, i64 %offset, i64 %size, i32 %expected_magic, i32 %offset_delta) #2 !dbg !4488 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3820, metadata !DIExpression()), !dbg !4491
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3832, metadata !DIExpression()), !dbg !4494
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3834, metadata !DIExpression()), !dbg !4495
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3836, metadata !DIExpression()), !dbg !4496
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3838, metadata !DIExpression()), !dbg !4497
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3844, metadata !DIExpression()), !dbg !4499
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3850, metadata !DIExpression()), !dbg !4501
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3859, metadata !DIExpression()), !dbg !4504
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3861, metadata !DIExpression()), !dbg !4505
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3863, metadata !DIExpression()), !dbg !4506
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3865, metadata !DIExpression()), !dbg !4507
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3867, metadata !DIExpression()), !dbg !4508
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3869, metadata !DIExpression()), !dbg !4509
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3871, metadata !DIExpression()), !dbg !4510
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3873, metadata !DIExpression()), !dbg !4511
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.inode*, align 8
  %fp.addr = alloca %struct.file*, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %expected_magic.addr = alloca i32, align 4
  %offset_delta.addr = alloca i32, align 4
  %read_magic = alloca i32, align 4
  %wrapped = alloca i32, align 4
  %last_byte = alloca i32, align 4
  %buf_start = alloca i32, align 4
  %buf_length = alloca i32, align 4
  %cd = alloca %struct.console_data*, align 8
  %base_addr = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.inode* %node, %struct.inode** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %node.addr, metadata !4512, metadata !DIExpression()), !dbg !4513
  store %struct.file* %fp, %struct.file** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %fp.addr, metadata !4514, metadata !DIExpression()), !dbg !4515
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  store i32 %expected_magic, i32* %expected_magic.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %expected_magic.addr, metadata !4520, metadata !DIExpression()), !dbg !4521
  store i32 %offset_delta, i32* %offset_delta.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset_delta.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.declare(metadata i32* %read_magic, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.declare(metadata i32* %wrapped, metadata !4526, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.declare(metadata i32* %last_byte, metadata !4528, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.declare(metadata i32* %buf_start, metadata !4530, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.declare(metadata i32* %buf_length, metadata !4532, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.declare(metadata %struct.console_data** %cd, metadata !4534, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.declare(metadata i64* %base_addr, metadata !4536, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4538, metadata !DIExpression()), !dbg !4539
  store i64 48, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !4540
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #10, !dbg !4541
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !4542

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4543
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !4544
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4545

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !4546
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !4547
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4548
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !4549
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4508
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4550
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4551
  %8 = load i32, i32* %order.i.i, align 4, !dbg !4552
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4553
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4554
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4555
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !4556
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4556
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4556
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4556
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4556
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4557
  br label %kmalloc.exit, !dbg !4557

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !4558
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4559
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !4559
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4560

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4561
  br label %kmalloc_index.exit.i, !dbg !4561

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4562
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !4563
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4564

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4565
  br label %kmalloc_index.exit.i, !dbg !4565

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4566
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !4567
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4568

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4569
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !4570
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4571

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4572
  br label %kmalloc_index.exit.i, !dbg !4572

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4573
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !4574
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4575

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4576
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !4577
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4578

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4579
  br label %kmalloc_index.exit.i, !dbg !4579

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4580
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !4581
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4582

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4583
  br label %kmalloc_index.exit.i, !dbg !4583

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4584
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !4585
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4586

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4587
  br label %kmalloc_index.exit.i, !dbg !4587

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4588
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !4589
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4590

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4591
  br label %kmalloc_index.exit.i, !dbg !4591

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4592
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !4593
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4594

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4595
  br label %kmalloc_index.exit.i, !dbg !4595

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4596
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !4597
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4598

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4599
  br label %kmalloc_index.exit.i, !dbg !4599

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4600
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !4601
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4602

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4603
  br label %kmalloc_index.exit.i, !dbg !4603

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4604
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !4605
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4606

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4607
  br label %kmalloc_index.exit.i, !dbg !4607

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4608
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !4609
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4610

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4611
  br label %kmalloc_index.exit.i, !dbg !4611

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4612
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !4613
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4614

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4615
  br label %kmalloc_index.exit.i, !dbg !4615

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4616
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !4617
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4618

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4619
  br label %kmalloc_index.exit.i, !dbg !4619

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4620
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !4621
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4622

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4623
  br label %kmalloc_index.exit.i, !dbg !4623

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4624
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !4625
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4626

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4627
  br label %kmalloc_index.exit.i, !dbg !4627

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4628
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !4629
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4630

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4631
  br label %kmalloc_index.exit.i, !dbg !4631

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4632
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !4633
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4634

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4635
  br label %kmalloc_index.exit.i, !dbg !4635

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4636
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !4637
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4638

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4639
  br label %kmalloc_index.exit.i, !dbg !4639

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4640
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !4641
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4642

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4643
  br label %kmalloc_index.exit.i, !dbg !4643

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4644
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !4645
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4646

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4647
  br label %kmalloc_index.exit.i, !dbg !4647

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4648
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !4649
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4650

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4651
  br label %kmalloc_index.exit.i, !dbg !4651

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4652
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !4653
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4654

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4655
  br label %kmalloc_index.exit.i, !dbg !4655

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4656
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !4657
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4658

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4659
  br label %kmalloc_index.exit.i, !dbg !4659

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4660
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !4661
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4662

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4663
  br label %kmalloc_index.exit.i, !dbg !4663

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4664
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !4665
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4666

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4667
  br label %kmalloc_index.exit.i, !dbg !4667

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4668
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !4669
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4670

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4671
  br label %kmalloc_index.exit.i, !dbg !4671

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4672
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !4673
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4674

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4675
  br label %kmalloc_index.exit.i, !dbg !4675

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4676, !srcloc !4099
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 164) #10, !dbg !4677, !srcloc !4103
  unreachable, !dbg !4678

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !4679
  store i32 %43, i32* %index.i, align 4, !dbg !4680
  %44 = load i32, i32* %index.i, align 4, !dbg !4681
  %tobool.i = icmp ne i32 %44, 0, !dbg !4681
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4682

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4683
  br label %kmalloc.exit, !dbg !4683

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !4684
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4685
  %and.i.i = and i32 %46, 17, !dbg !4685
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4685
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4685
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4685
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4685
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4686

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4687
  br label %kmalloc_type.exit.i, !dbg !4687

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4688
  %and2.i.i = and i32 %47, 1, !dbg !4689
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4688
  %48 = zext i1 %tobool3.i.i to i64, !dbg !4688
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4688
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4690
  br label %kmalloc_type.exit.i, !dbg !4690

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !4691
  %idxprom.i = zext i32 %49 to i64, !dbg !4692
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4692
  %50 = load i32, i32* %index.i, align 4, !dbg !4693
  %idxprom6.i = zext i32 %50 to i64, !dbg !4692
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4692
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4692
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !4694
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !4695
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4696
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4697
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !4698
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4698
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4698
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4698
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4698
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4496
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4699
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !4700
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4701
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4702
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !4703
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4704
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !4705
  store i8* %60, i8** %retval.i, align 8, !dbg !4706
  br label %kmalloc.exit, !dbg !4706

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !4707
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !4708
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !4709
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4709
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4709
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4709
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4709
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4710
  br label %kmalloc.exit, !dbg !4710

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !4711
  %64 = bitcast i8* %63 to %struct.console_data*, !dbg !4712
  store %struct.console_data* %64, %struct.console_data** %cd, align 8, !dbg !4713
  %65 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4714
  %tobool = icmp ne %struct.console_data* %65, null, !dbg !4714
  br i1 %tobool, label %if.end, label %if.then, !dbg !4716

if.then:                                          ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !4717
  br label %return, !dbg !4717

if.end:                                           ; preds = %kmalloc.exit
  %call1 = call i64 @get_mc_fw_base_address() #8, !dbg !4718
  store i64 %call1, i64* %base_addr, align 8, !dbg !4719
  %66 = load i64, i64* %base_addr, align 8, !dbg !4720
  %tobool2 = icmp ne i64 %66, 0, !dbg !4720
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4722

if.then3:                                         ; preds = %if.end
  store i32 -5, i32* %err, align 4, !dbg !4723
  br label %err_fwba, !dbg !4725

if.end4:                                          ; preds = %if.end
  %67 = load i64, i64* %base_addr, align 8, !dbg !4726
  %68 = load i64, i64* %offset.addr, align 8, !dbg !4727
  %add = add i64 %67, %68, !dbg !4728
  %69 = load i64, i64* %size.addr, align 8, !dbg !4729
  %call5 = call i8* @ioremap(i64 %add, i64 %69) #8, !dbg !4730
  %70 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4731
  %map_addr = getelementptr inbounds %struct.console_data, %struct.console_data* %70, i32 0, i32 0, !dbg !4732
  store i8* %call5, i8** %map_addr, align 8, !dbg !4733
  %71 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4734
  %map_addr6 = getelementptr inbounds %struct.console_data, %struct.console_data* %71, i32 0, i32 0, !dbg !4736
  %72 = load i8*, i8** %map_addr6, align 8, !dbg !4736
  %tobool7 = icmp ne i8* %72, null, !dbg !4734
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !4737

if.then8:                                         ; preds = %if.end4
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !4738
  store i32 -5, i32* %err, align 4, !dbg !4740
  br label %err_ioremap, !dbg !4741

if.end10:                                         ; preds = %if.end4
  %73 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4742
  %map_addr11 = getelementptr inbounds %struct.console_data, %struct.console_data* %73, i32 0, i32 0, !dbg !4743
  %74 = load i8*, i8** %map_addr11, align 8, !dbg !4743
  %75 = bitcast i8* %74 to %struct.log_header*, !dbg !4744
  %76 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4745
  %hdr = getelementptr inbounds %struct.console_data, %struct.console_data* %76, i32 0, i32 1, !dbg !4746
  store %struct.log_header* %75, %struct.log_header** %hdr, align 8, !dbg !4747
  %77 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4748
  %hdr12 = getelementptr inbounds %struct.console_data, %struct.console_data* %77, i32 0, i32 1, !dbg !4749
  %78 = load %struct.log_header*, %struct.log_header** %hdr12, align 8, !dbg !4749
  %magic_word = getelementptr inbounds %struct.log_header, %struct.log_header* %78, i32 0, i32 0, !dbg !4750
  %79 = bitcast i32* %magic_word to i8*, !dbg !4751
  %call13 = call i32 @readl(i8* %79) #8, !dbg !4752
  store i32 %call13, i32* %read_magic, align 4, !dbg !4753
  %80 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4754
  %hdr14 = getelementptr inbounds %struct.console_data, %struct.console_data* %80, i32 0, i32 1, !dbg !4755
  %81 = load %struct.log_header*, %struct.log_header** %hdr14, align 8, !dbg !4755
  %last_byte15 = getelementptr inbounds %struct.log_header, %struct.log_header* %81, i32 0, i32 4, !dbg !4756
  %82 = bitcast i32* %last_byte15 to i8*, !dbg !4757
  %call16 = call i32 @readl(i8* %82) #8, !dbg !4758
  store i32 %call16, i32* %last_byte, align 4, !dbg !4759
  %83 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4760
  %hdr17 = getelementptr inbounds %struct.console_data, %struct.console_data* %83, i32 0, i32 1, !dbg !4761
  %84 = load %struct.log_header*, %struct.log_header** %hdr17, align 8, !dbg !4761
  %buf_start18 = getelementptr inbounds %struct.log_header, %struct.log_header* %84, i32 0, i32 2, !dbg !4762
  %85 = bitcast i32* %buf_start18 to i8*, !dbg !4763
  %call19 = call i32 @readl(i8* %85) #8, !dbg !4764
  store i32 %call19, i32* %buf_start, align 4, !dbg !4765
  %86 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4766
  %hdr20 = getelementptr inbounds %struct.console_data, %struct.console_data* %86, i32 0, i32 1, !dbg !4767
  %87 = load %struct.log_header*, %struct.log_header** %hdr20, align 8, !dbg !4767
  %buf_length21 = getelementptr inbounds %struct.log_header, %struct.log_header* %87, i32 0, i32 3, !dbg !4768
  %88 = bitcast i32* %buf_length21 to i8*, !dbg !4769
  %call22 = call i32 @readl(i8* %88) #8, !dbg !4770
  store i32 %call22, i32* %buf_length, align 4, !dbg !4771
  %89 = load i32, i32* %read_magic, align 4, !dbg !4772
  %90 = load i32, i32* %expected_magic.addr, align 4, !dbg !4774
  %cmp = icmp ne i32 %89, %90, !dbg !4775
  br i1 %cmp, label %if.then23, label %if.end25, !dbg !4776

if.then23:                                        ; preds = %if.end10
  %91 = load i32, i32* %expected_magic.addr, align 4, !dbg !4777
  %92 = load i32, i32* %read_magic, align 4, !dbg !4777
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %91, i32 %92) #9, !dbg !4777
  store i32 -5, i32* %err, align 4, !dbg !4779
  br label %err_magic, !dbg !4780

if.end25:                                         ; preds = %if.end10
  %93 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4781
  %map_addr26 = getelementptr inbounds %struct.console_data, %struct.console_data* %93, i32 0, i32 0, !dbg !4782
  %94 = load i8*, i8** %map_addr26, align 8, !dbg !4782
  %95 = load i32, i32* %buf_start, align 4, !dbg !4783
  %idx.ext = zext i32 %95 to i64, !dbg !4784
  %add.ptr = getelementptr i8, i8* %94, i64 %idx.ext, !dbg !4784
  %96 = load i32, i32* %offset_delta.addr, align 4, !dbg !4785
  %idx.ext27 = zext i32 %96 to i64, !dbg !4786
  %idx.neg = sub i64 0, %idx.ext27, !dbg !4786
  %add.ptr28 = getelementptr i8, i8* %add.ptr, i64 %idx.neg, !dbg !4786
  %97 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4787
  %start_addr = getelementptr inbounds %struct.console_data, %struct.console_data* %97, i32 0, i32 2, !dbg !4788
  store i8* %add.ptr28, i8** %start_addr, align 8, !dbg !4789
  %98 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4790
  %start_addr29 = getelementptr inbounds %struct.console_data, %struct.console_data* %98, i32 0, i32 2, !dbg !4791
  %99 = load i8*, i8** %start_addr29, align 8, !dbg !4791
  %100 = load i32, i32* %buf_length, align 4, !dbg !4792
  %idx.ext30 = zext i32 %100 to i64, !dbg !4793
  %add.ptr31 = getelementptr i8, i8* %99, i64 %idx.ext30, !dbg !4793
  %101 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4794
  %end_addr = getelementptr inbounds %struct.console_data, %struct.console_data* %101, i32 0, i32 3, !dbg !4795
  store i8* %add.ptr31, i8** %end_addr, align 8, !dbg !4796
  %102 = load i32, i32* %last_byte, align 4, !dbg !4797
  %and = and i32 %102, -2147483648, !dbg !4798
  store i32 %and, i32* %wrapped, align 4, !dbg !4799
  %103 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4800
  call void @adjust_end(%struct.console_data* %103) #8, !dbg !4801
  %104 = load i32, i32* %wrapped, align 4, !dbg !4802
  %tobool32 = icmp ne i32 %104, 0, !dbg !4802
  br i1 %tobool32, label %land.lhs.true, label %if.else, !dbg !4804

land.lhs.true:                                    ; preds = %if.end25
  %105 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4805
  %end_of_data = getelementptr inbounds %struct.console_data, %struct.console_data* %105, i32 0, i32 4, !dbg !4806
  %106 = load i8*, i8** %end_of_data, align 8, !dbg !4806
  %107 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4807
  %end_addr33 = getelementptr inbounds %struct.console_data, %struct.console_data* %107, i32 0, i32 3, !dbg !4808
  %108 = load i8*, i8** %end_addr33, align 8, !dbg !4808
  %cmp34 = icmp ne i8* %106, %108, !dbg !4809
  br i1 %cmp34, label %if.then35, label %if.else, !dbg !4810

if.then35:                                        ; preds = %land.lhs.true
  %109 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4811
  %end_of_data36 = getelementptr inbounds %struct.console_data, %struct.console_data* %109, i32 0, i32 4, !dbg !4812
  %110 = load i8*, i8** %end_of_data36, align 8, !dbg !4812
  %add.ptr37 = getelementptr i8, i8* %110, i64 1, !dbg !4813
  %111 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4814
  %cur_ptr = getelementptr inbounds %struct.console_data, %struct.console_data* %111, i32 0, i32 5, !dbg !4815
  store i8* %add.ptr37, i8** %cur_ptr, align 8, !dbg !4816
  br label %if.end40, !dbg !4814

if.else:                                          ; preds = %land.lhs.true, %if.end25
  %112 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4817
  %start_addr38 = getelementptr inbounds %struct.console_data, %struct.console_data* %112, i32 0, i32 2, !dbg !4818
  %113 = load i8*, i8** %start_addr38, align 8, !dbg !4818
  %114 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4819
  %cur_ptr39 = getelementptr inbounds %struct.console_data, %struct.console_data* %114, i32 0, i32 5, !dbg !4820
  store i8* %113, i8** %cur_ptr39, align 8, !dbg !4821
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then35
  %115 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4822
  %116 = bitcast %struct.console_data* %115 to i8*, !dbg !4822
  %117 = load %struct.file*, %struct.file** %fp.addr, align 8, !dbg !4823
  %private_data = getelementptr inbounds %struct.file, %struct.file* %117, i32 0, i32 15, !dbg !4824
  store i8* %116, i8** %private_data, align 8, !dbg !4825
  store i32 0, i32* %retval, align 4, !dbg !4826
  br label %return, !dbg !4826

err_magic:                                        ; preds = %if.then23
  call void @llvm.dbg.label(metadata !4827), !dbg !4828
  %118 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4829
  %map_addr41 = getelementptr inbounds %struct.console_data, %struct.console_data* %118, i32 0, i32 0, !dbg !4830
  %119 = load i8*, i8** %map_addr41, align 8, !dbg !4830
  call void @iounmap(i8* %119) #8, !dbg !4831
  br label %err_ioremap, !dbg !4831

err_ioremap:                                      ; preds = %err_magic, %if.then8
  call void @llvm.dbg.label(metadata !4832), !dbg !4833
  br label %err_fwba, !dbg !4831

err_fwba:                                         ; preds = %err_ioremap, %if.then3
  call void @llvm.dbg.label(metadata !4834), !dbg !4835
  %120 = load %struct.console_data*, %struct.console_data** %cd, align 8, !dbg !4836
  %121 = bitcast %struct.console_data* %120 to i8*, !dbg !4836
  call void @kfree(i8* %121) #8, !dbg !4837
  %122 = load i32, i32* %err, align 4, !dbg !4838
  store i32 %122, i32* %retval, align 4, !dbg !4839
  br label %return, !dbg !4839

return:                                           ; preds = %err_fwba, %if.end40, %if.then
  %123 = load i32, i32* %retval, align 4, !dbg !4840
  ret i32 %123, !dbg !4840
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @get_mc_fw_base_address() #2 !dbg !4841 {
entry:
  %retval = alloca i64, align 8
  %mcfwbase = alloca i64, align 8
  %mcfbaregs = alloca i32*, align 8
  %tmp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %mcfwbase, metadata !4844, metadata !DIExpression()), !dbg !4845
  store i64 0, i64* %mcfwbase, align 8, !dbg !4845
  call void @llvm.dbg.declare(metadata i32** %mcfbaregs, metadata !4846, metadata !DIExpression()), !dbg !4847
  %0 = load i64, i64* getelementptr inbounds (%struct.resource, %struct.resource* @mc_base_addr, i32 0, i32 0), align 8, !dbg !4848
  %call = call i64 @resource_size(%struct.resource* @mc_base_addr) #8, !dbg !4849
  %call1 = call i8* @ioremap(i64 %0, i64 %call) #8, !dbg !4850
  %1 = bitcast i8* %call1 to i32*, !dbg !4850
  store i32* %1, i32** %mcfbaregs, align 8, !dbg !4851
  %2 = load i32*, i32** %mcfbaregs, align 8, !dbg !4852
  %tobool = icmp ne i32* %2, null, !dbg !4852
  br i1 %tobool, label %if.end, label %if.then, !dbg !4854

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !4855
  store i64 0, i64* %retval, align 8, !dbg !4857
  br label %return, !dbg !4857

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %mcfbaregs, align 8, !dbg !4858
  %add.ptr = getelementptr i32, i32* %3, i64 1, !dbg !4859
  %4 = bitcast i32* %add.ptr to i8*, !dbg !4858
  %call3 = call i32 @readl(i8* %4) #8, !dbg !4860
  %and = and i32 %call3, 131071, !dbg !4861
  %conv = zext i32 %and to i64, !dbg !4860
  store i64 %conv, i64* %mcfwbase, align 8, !dbg !4862
  %5 = load i64, i64* %mcfwbase, align 8, !dbg !4863
  %shl = shl i64 %5, 32, !dbg !4863
  store i64 %shl, i64* %mcfwbase, align 8, !dbg !4863
  %6 = load i32*, i32** %mcfbaregs, align 8, !dbg !4864
  %add.ptr4 = getelementptr i32, i32* %6, i64 0, !dbg !4865
  %7 = bitcast i32* %add.ptr4 to i8*, !dbg !4864
  %call5 = call i32 @readl(i8* %7) #8, !dbg !4866
  %and6 = and i32 %call5, -536870912, !dbg !4867
  %conv7 = zext i32 %and6 to i64, !dbg !4866
  %8 = load i64, i64* %mcfwbase, align 8, !dbg !4868
  %or = or i64 %8, %conv7, !dbg !4868
  store i64 %or, i64* %mcfwbase, align 8, !dbg !4868
  %9 = load i32*, i32** %mcfbaregs, align 8, !dbg !4869
  %10 = bitcast i32* %9 to i8*, !dbg !4869
  call void @iounmap(i8* %10) #8, !dbg !4870
  store i32 0, i32* %tmp, align 4, !dbg !4871
  %11 = load i32, i32* %tmp, align 4, !dbg !4874
  %12 = load i64, i64* %mcfwbase, align 8, !dbg !4875
  store i64 %12, i64* %retval, align 8, !dbg !4876
  br label %return, !dbg !4876

return:                                           ; preds = %if.end, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !4877
  ret i64 %13, !dbg !4877
}

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #1

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_size(%struct.resource* %res) #2 !dbg !4878 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4883, metadata !DIExpression()), !dbg !4884
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4885
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 1, !dbg !4886
  %1 = load i64, i64* %end, align 8, !dbg !4886
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4887
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !4888
  %3 = load i64, i64* %start, align 8, !dbg !4888
  %sub = sub i64 %1, %3, !dbg !4889
  %add = add i64 %sub, 1, !dbg !4890
  ret i64 %add, !dbg !4891
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dpaa2_aiop_console_open(%struct.inode* %node, %struct.file* %fp) #2 !dbg !4892 {
entry:
  %node.addr = alloca %struct.inode*, align 8
  %fp.addr = alloca %struct.file*, align 8
  store %struct.inode* %node, %struct.inode** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %node.addr, metadata !4893, metadata !DIExpression()), !dbg !4894
  store %struct.file* %fp, %struct.file** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %fp.addr, metadata !4895, metadata !DIExpression()), !dbg !4896
  %0 = load %struct.inode*, %struct.inode** %node.addr, align 8, !dbg !4897
  %1 = load %struct.file*, %struct.file** %fp.addr, align 8, !dbg !4898
  %call = call i32 @dpaa2_generic_console_open(%struct.inode* %0, %struct.file* %1, i64 100663296, i64 16777216, i32 1095323472, i32 0) #8, !dbg !4899
  ret i32 %call, !dbg !4900
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3716, !3717, !3718, !3719}
!llvm.ident = !{!3720}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dpaa2_console_driver_init203", scope: !2, file: !3, line: 325, type: !100, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !92, globals: !118, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/soc/fsl/dpaa2-console.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !87}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !14, line: 65, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !19, line: 16, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
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
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !48, line: 26, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !81, line: 305, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 10, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!92 = !{!93, !96, !98, !100, !101, !102}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !95, line: 76, flags: DIFlagFwdDecl)
!95 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !97, line: 148, baseType: !7)
!97 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "log_header", file: !3, line: 43, size: 160, elements: !104)
!104 = !{!105, !110, !115, !116, !117}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "magic_word", scope: !103, file: !3, line: 44, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !107, line: 31, baseType: !108)
!107 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !109, line: 27, baseType: !7)
!109 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !103, file: !3, line: 45, baseType: !111, size: 32, offset: 32)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 32, elements: !113)
!112 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "buf_start", scope: !103, file: !3, line: 46, baseType: !106, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "buf_length", scope: !103, file: !3, line: 47, baseType: !106, size: 32, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "last_byte", scope: !103, file: !3, line: 48, baseType: !106, size: 32, offset: 128)
!118 = !{!0, !119, !126, !132, !137, !142, !147, !3691, !3693, !3707, !3709, !3711, !3713}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "__exitcall_dpaa2_console_driver_exit", scope: !2, file: !3, line: 325, type: !121, isLocal: true, isDefinition: true)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !122, line: 117, baseType: !123)
!122 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{null}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file204", scope: !2, file: !3, line: 327, type: !128, isLocal: true, isDefinition: true, align: 8)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 392, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!130 = !{!131}
!131 = !DISubrange(count: 49)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license205", scope: !2, file: !3, line: 327, type: !134, isLocal: true, isDefinition: true, align: 8)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 280, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 35)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author206", scope: !2, file: !3, line: 328, type: !139, isLocal: true, isDefinition: true, align: 8)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 424, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 53)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description207", scope: !2, file: !3, line: 329, type: !144, isLocal: true, isDefinition: true, align: 8)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 376, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 47)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "dpaa2_console_driver", scope: !2, file: !3, line: 316, type: !149, isLocal: true, isDefinition: true)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !150, line: 200, size: 1600, elements: !151)
!150 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !3678, !3679, !3683, !3687, !3688, !3689, !3690}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !149, file: !150, line: 201, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!101, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !150, line: 22, size: 6208, elements: !158)
!158 = !{!159, !161, !162, !165, !3647, !3648, !3649, !3650, !3664, !3672, !3673, !3676}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !150, line: 23, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !157, file: !150, line: 24, baseType: !101, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !157, file: !150, line: 25, baseType: !163, size: 8, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !97, line: 30, baseType: !164)
!164 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !157, file: !150, line: 26, baseType: !166, size: 5568, offset: 128)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !167)
!167 = !{!168, !3178, !3180, !3183, !3184, !3235, !3326, !3327, !3328, !3329, !3330, !3339, !3444, !3457, !3460, !3461, !3465, !3467, !3468, !3469, !3473, !3479, !3480, !3483, !3598, !3599, !3600, !3601, !3602, !3603, !3635, !3636, !3637, !3640, !3643, !3644, !3645, !3646}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !166, file: !60, line: 462, baseType: !169, size: 512)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !170, line: 64, size: 512, elements: !171)
!170 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !173, !179, !181, !241, !3029, !3168, !3173, !3174, !3175, !3176, !3177}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !170, line: 65, baseType: !160, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !169, file: !170, line: 66, baseType: !174, size: 128, offset: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !97, line: 178, size: 128, elements: !175)
!175 = !{!176, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !97, line: 179, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !174, file: !97, line: 179, baseType: !177, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !169, file: !170, line: 67, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !169, file: !170, line: 68, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !170, line: 192, size: 704, elements: !184)
!184 = !{!185, !186, !202, !203}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !183, file: !170, line: 193, baseType: !174, size: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !183, file: !170, line: 194, baseType: !187, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !188, line: 83, baseType: !189)
!188 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !188, line: 71, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !188, line: 72, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !188, line: 72, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !192, file: !188, line: 73, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !188, line: 20, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !195, file: !188, line: 21, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !199, line: 25, baseType: !200)
!199 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 25, elements: !201)
!201 = !{}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !183, file: !170, line: 195, baseType: !169, size: 512, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !183, file: !170, line: 196, baseType: !204, size: 64, offset: 640)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !170, line: 156, size: 192, elements: !207)
!207 = !{!208, !213, !218}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !206, file: !170, line: 157, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!101, !182, !180}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !170, line: 158, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!160, !182, !180}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !206, file: !170, line: 159, baseType: !219, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!101, !182, !180, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !170, line: 148, size: 20736, elements: !225)
!225 = !{!226, !231, !235, !236, !240}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !224, file: !170, line: 149, baseType: !227, size: 192)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 192, elements: !229)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!229 = !{!230}
!230 = !DISubrange(count: 3)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !224, file: !170, line: 150, baseType: !232, size: 4096, offset: 192)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 4096, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !224, file: !170, line: 151, baseType: !101, size: 32, offset: 4288)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !224, file: !170, line: 152, baseType: !237, size: 16384, offset: 4320)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 16384, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 2048)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !224, file: !170, line: 153, baseType: !101, size: 32, offset: 20704)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !169, file: !170, line: 69, baseType: !242, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !170, line: 138, size: 448, elements: !244)
!244 = !{!245, !249, !279, !281, !2991, !3019, !3023}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !243, file: !170, line: 139, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !180}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !243, file: !170, line: 140, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !253, line: 230, size: 128, elements: !254)
!253 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!254 = !{!255, !271}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !252, file: !253, line: 231, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !180, !264, !228}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !97, line: 60, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !261, line: 73, baseType: !262)
!261 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !261, line: 15, baseType: !263)
!263 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !253, line: 30, size: 128, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !253, line: 31, baseType: !160, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !265, file: !253, line: 32, baseType: !269, size: 16, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !97, line: 19, baseType: !270)
!270 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !252, file: !253, line: 232, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!259, !180, !264, !160, !275}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 55, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !261, line: 72, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !261, line: 16, baseType: !278)
!278 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !243, file: !170, line: 141, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !243, file: !170, line: 142, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !253, line: 84, size: 320, elements: !286)
!286 = !{!287, !288, !292, !2988, !2989}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !253, line: 85, baseType: !160, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !285, file: !253, line: 86, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!269, !180, !264, !101}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !285, file: !253, line: 88, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!269, !180, !296, !101}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !253, line: 168, size: 448, elements: !298)
!298 = !{!299, !300, !301, !302, !2983, !2984}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !297, file: !253, line: 169, baseType: !265, size: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !297, file: !253, line: 170, baseType: !275, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !297, file: !253, line: 171, baseType: !100, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !297, file: !253, line: 172, baseType: !303, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!259, !306, !180, !296, !228, !481, !275}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !308)
!308 = !{!309, !327, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2966, !2967, !2976, !2977, !2978, !2979, !2980, !2981, !2982}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !307, file: !31, line: 920, baseType: !310, size: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !31, line: 917, size: 128, elements: !311)
!311 = !{!312, !318}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !310, file: !31, line: 918, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !314, line: 58, size: 64, elements: !315)
!314 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !314, line: 59, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !310, file: !31, line: 919, baseType: !319, size: 128, align: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !97, line: 216, size: 128, align: 64, elements: !320)
!320 = !{!321, !323}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !97, line: 217, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !319, file: !97, line: 218, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !322}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !307, file: !31, line: 921, baseType: !328, size: 128, offset: 128)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !329, line: 8, size: 128, elements: !330)
!329 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331, !335}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !328, file: !329, line: 9, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !334, line: 18, flags: DIFlagFwdDecl)
!334 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !328, file: !329, line: 10, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !334, line: 89, size: 1536, elements: !338)
!338 = !{!339, !340, !350, !358, !359, !380, !2916, !2918, !2930, !2931, !2932, !2933, !2934, !2940, !2941, !2942}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !337, file: !334, line: 91, baseType: !7, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !337, file: !334, line: 92, baseType: !341, size: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !342, line: 277, baseType: !343)
!342 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !342, line: 277, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !343, file: !342, line: 277, baseType: !346, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !342, line: 70, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !342, line: 65, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !347, file: !342, line: 66, baseType: !7, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !337, file: !334, line: 93, baseType: !351, size: 128, offset: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !352, line: 38, size: 128, elements: !353)
!352 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !352, line: 39, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !351, file: !352, line: 39, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !337, file: !334, line: 94, baseType: !336, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !337, file: !334, line: 95, baseType: !360, size: 128, offset: 256)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !334, line: 47, size: 128, elements: !361)
!361 = !{!362, !376}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !334, line: 48, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !334, line: 48, size: 64, elements: !364)
!364 = !{!365, !372}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !334, line: 49, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !334, line: 49, size: 64, elements: !367)
!367 = !{!368, !371}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !366, file: !334, line: 50, baseType: !369, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !370, line: 21, baseType: !108)
!370 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!371 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !366, file: !334, line: 50, baseType: !369, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !363, file: !334, line: 52, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !370, line: 23, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !109, line: 31, baseType: !375)
!375 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !360, file: !334, line: 54, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !337, file: !334, line: 96, baseType: !381, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !383)
!383 = !{!384, !385, !386, !394, !401, !402, !548, !2628, !2629, !2630, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2892, !2900, !2901, !2902, !2912, !2913, !2914, !2915}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !382, file: !31, line: 611, baseType: !269, size: 16)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !382, file: !31, line: 612, baseType: !270, size: 16, offset: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !382, file: !31, line: 613, baseType: !387, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !388, line: 23, baseType: !389)
!388 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 21, size: 32, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !389, file: !388, line: 22, baseType: !392, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !97, line: 32, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !261, line: 49, baseType: !7)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !382, file: !31, line: 614, baseType: !395, size: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !388, line: 28, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 26, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !396, file: !388, line: 27, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !97, line: 33, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !261, line: 50, baseType: !7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !382, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !382, file: !31, line: 622, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !406)
!406 = !{!407, !411, !424, !428, !434, !438, !442, !446, !450, !454, !458, !459, !465, !469, !495, !524, !528, !534, !539, !543, !544}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !405, file: !31, line: 1865, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!336, !381, !336, !7}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !405, file: !31, line: 1866, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!160, !336, !381, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !417, line: 10, size: 128, elements: !418)
!417 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !423}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !416, file: !417, line: 11, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !100}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !416, file: !417, line: 12, baseType: !100, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !405, file: !31, line: 1867, baseType: !425, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!101, !381, !101}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !405, file: !31, line: 1868, baseType: !429, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!432, !381, !101}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !405, file: !31, line: 1870, baseType: !435, size: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!101, !336, !228, !101}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !405, file: !31, line: 1872, baseType: !439, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!101, !381, !336, !269, !163}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !405, file: !31, line: 1873, baseType: !443, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!101, !336, !381, !336}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !405, file: !31, line: 1874, baseType: !447, size: 64, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!101, !381, !336}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !405, file: !31, line: 1875, baseType: !451, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!101, !381, !336, !160}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !405, file: !31, line: 1876, baseType: !455, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!101, !381, !336, !269}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !405, file: !31, line: 1877, baseType: !447, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !405, file: !31, line: 1878, baseType: !460, size: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!101, !381, !336, !269, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !97, line: 16, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !97, line: 13, baseType: !369)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !405, file: !31, line: 1879, baseType: !466, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!101, !381, !336, !381, !336, !7}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !405, file: !31, line: 1881, baseType: !470, size: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!101, !336, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !484, !492, !493, !494}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !474, file: !31, line: 220, baseType: !7, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !474, file: !31, line: 221, baseType: !269, size: 16, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !474, file: !31, line: 222, baseType: !387, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !474, file: !31, line: 223, baseType: !395, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !474, file: !31, line: 224, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !97, line: 46, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !261, line: 88, baseType: !483)
!483 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !474, file: !31, line: 225, baseType: !485, size: 128, offset: 192)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !486, line: 13, size: 128, elements: !487)
!486 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!487 = !{!488, !491}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !485, file: !486, line: 14, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !486, line: 8, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !109, line: 30, baseType: !483)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !485, file: !486, line: 15, baseType: !263, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !474, file: !31, line: 226, baseType: !485, size: 128, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !474, file: !31, line: 227, baseType: !485, size: 128, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !474, file: !31, line: 234, baseType: !306, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !405, file: !31, line: 1882, baseType: !496, size: 64, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!101, !499, !501, !369, !7}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !503, line: 22, size: 1152, elements: !504)
!503 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!504 = !{!505, !506, !507, !508, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !502, file: !503, line: 23, baseType: !369, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !502, file: !503, line: 24, baseType: !269, size: 16, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !502, file: !503, line: 25, baseType: !7, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !502, file: !503, line: 26, baseType: !509, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !97, line: 104, baseType: !369)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !502, file: !503, line: 27, baseType: !373, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !502, file: !503, line: 28, baseType: !373, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !502, file: !503, line: 37, baseType: !373, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !502, file: !503, line: 38, baseType: !463, size: 32, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !502, file: !503, line: 39, baseType: !463, size: 32, offset: 352)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !502, file: !503, line: 40, baseType: !387, size: 32, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !502, file: !503, line: 41, baseType: !395, size: 32, offset: 416)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !502, file: !503, line: 42, baseType: !481, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !502, file: !503, line: 43, baseType: !485, size: 128, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !502, file: !503, line: 44, baseType: !485, size: 128, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !502, file: !503, line: 45, baseType: !485, size: 128, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !502, file: !503, line: 46, baseType: !485, size: 128, offset: 896)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !502, file: !503, line: 47, baseType: !373, size: 64, offset: 1024)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !502, file: !503, line: 48, baseType: !373, size: 64, offset: 1088)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !405, file: !31, line: 1883, baseType: !525, size: 64, offset: 960)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!259, !336, !228, !275}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !405, file: !31, line: 1884, baseType: !529, size: 64, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!101, !381, !532, !373, !373}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !405, file: !31, line: 1886, baseType: !535, size: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!101, !381, !538, !101}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !405, file: !31, line: 1887, baseType: !540, size: 64, offset: 1152)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!101, !381, !336, !306, !7, !269}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !405, file: !31, line: 1890, baseType: !455, size: 64, offset: 1216)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !405, file: !31, line: 1891, baseType: !545, size: 64, offset: 1280)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!101, !381, !432, !101}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !382, file: !31, line: 623, baseType: !549, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !604, !2235, !2317, !2400, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2416, !2420, !2421, !2424, !2425, !2428, !2429, !2430, !2471, !2498, !2499, !2500, !2501, !2502, !2503, !2506, !2508, !2515, !2516, !2518, !2519, !2520, !2579, !2580, !2595, !2596, !2597, !2598, !2599, !2602, !2603, !2604, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !550, file: !31, line: 1417, baseType: !174, size: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !550, file: !31, line: 1418, baseType: !463, size: 32, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !550, file: !31, line: 1419, baseType: !379, size: 8, offset: 160)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !550, file: !31, line: 1420, baseType: !278, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !550, file: !31, line: 1421, baseType: !481, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !550, file: !31, line: 1422, baseType: !558, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !560)
!560 = !{!561, !562, !563, !570, !574, !578, !582, !583, !584, !594, !597, !598, !599, !601, !602, !603}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !559, file: !31, line: 2229, baseType: !160, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !559, file: !31, line: 2230, baseType: !101, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !559, file: !31, line: 2238, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!101, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !569, line: 28, flags: DIFlagFwdDecl)
!569 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!570 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !559, file: !31, line: 2239, baseType: !571, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !559, file: !31, line: 2240, baseType: !575, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!336, !558, !101, !160, !100}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !559, file: !31, line: 2242, baseType: !579, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !549}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !559, file: !31, line: 2243, baseType: !93, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !31, line: 2244, baseType: !558, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !559, file: !31, line: 2245, baseType: !585, size: 64, offset: 512)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !97, line: 182, size: 64, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !585, file: !97, line: 183, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !97, line: 186, size: 128, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !97, line: 187, baseType: !588, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !589, file: !97, line: 187, baseType: !593, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !559, file: !31, line: 2247, baseType: !595, offset: 576)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !596, line: 187, elements: !201)
!596 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !559, file: !31, line: 2248, baseType: !595, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !559, file: !31, line: 2249, baseType: !595, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !559, file: !31, line: 2250, baseType: !600, offset: 576)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, elements: !229)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !559, file: !31, line: 2252, baseType: !595, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !559, file: !31, line: 2253, baseType: !595, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !559, file: !31, line: 2254, baseType: !595, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !550, file: !31, line: 1423, baseType: !605, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !608)
!608 = !{!609, !613, !617, !618, !622, !628, !632, !633, !634, !638, !642, !643, !644, !645, !651, !656, !657, !664, !665, !666, !667, !2219, !2234}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !607, file: !31, line: 1936, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!381, !549}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !607, file: !31, line: 1937, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !381}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !607, file: !31, line: 1938, baseType: !614, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !607, file: !31, line: 1940, baseType: !619, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !381, !101}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !607, file: !31, line: 1941, baseType: !623, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!101, !381, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !607, file: !31, line: 1942, baseType: !629, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!101, !381}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !607, file: !31, line: 1943, baseType: !614, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !607, file: !31, line: 1944, baseType: !579, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !607, file: !31, line: 1945, baseType: !635, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!101, !549, !101}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !607, file: !31, line: 1946, baseType: !639, size: 64, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!101, !549}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !607, file: !31, line: 1947, baseType: !639, size: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !607, file: !31, line: 1948, baseType: !639, size: 64, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !607, file: !31, line: 1949, baseType: !639, size: 64, offset: 768)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !607, file: !31, line: 1950, baseType: !646, size: 64, offset: 832)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!101, !336, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !607, file: !31, line: 1951, baseType: !652, size: 64, offset: 896)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!101, !549, !655, !228}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !607, file: !31, line: 1952, baseType: !579, size: 64, offset: 960)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !607, file: !31, line: 1954, baseType: !658, size: 64, offset: 1024)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!101, !661, !336}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !663, line: 539, flags: DIFlagFwdDecl)
!663 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!664 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !607, file: !31, line: 1955, baseType: !658, size: 64, offset: 1088)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !607, file: !31, line: 1956, baseType: !658, size: 64, offset: 1152)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !607, file: !31, line: 1957, baseType: !658, size: 64, offset: 1216)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !607, file: !31, line: 1963, baseType: !668, size: 64, offset: 1280)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!101, !549, !671, !96}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !673, line: 68, size: 512, align: 128, elements: !674)
!673 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!674 = !{!675, !676, !2211, !2218}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !673, line: 69, baseType: !278, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !673, line: 77, baseType: !677, size: 320, offset: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !673, line: 77, size: 320, elements: !678)
!678 = !{!679, !866, !871, !899, !907, !913, !2203, !2210}
!679 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 78, baseType: !680, size: 320)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 78, size: 320, elements: !681)
!681 = !{!682, !683, !864, !865}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !680, file: !673, line: 84, baseType: !174, size: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !680, file: !673, line: 86, baseType: !684, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !686)
!686 = !{!687, !688, !695, !696, !701, !716, !732, !733, !734, !735, !857, !858, !861, !862, !863}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !685, file: !31, line: 452, baseType: !381, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !685, file: !31, line: 453, baseType: !689, size: 128, offset: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !690, line: 292, size: 128, elements: !691)
!690 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!691 = !{!692, !693, !694}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !689, file: !690, line: 293, baseType: !187)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !689, file: !690, line: 295, baseType: !96, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !689, file: !690, line: 296, baseType: !100, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !685, file: !31, line: 454, baseType: !96, size: 32, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !685, file: !31, line: 455, baseType: !697, size: 32, offset: 224)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !97, line: 168, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 166, size: 32, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !698, file: !97, line: 167, baseType: !101, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !685, file: !31, line: 460, baseType: !702, size: 128, offset: 256)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !703, line: 125, size: 128, elements: !704)
!703 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!704 = !{!705, !715}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !702, file: !703, line: 126, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !703, line: 31, size: 64, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !706, file: !703, line: 32, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !703, line: 24, size: 192, align: 64, elements: !711)
!711 = !{!712, !713, !714}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !710, file: !703, line: 25, baseType: !278, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !710, file: !703, line: 26, baseType: !709, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !710, file: !703, line: 27, baseType: !709, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !702, file: !703, line: 127, baseType: !709, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !685, file: !31, line: 461, baseType: !717, size: 256, offset: 384)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !718, line: 35, size: 256, elements: !719)
!718 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!719 = !{!720, !728, !729, !731}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !717, file: !718, line: 36, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !722, line: 13, baseType: !723)
!722 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !97, line: 175, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 173, size: 64, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !724, file: !97, line: 174, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !370, line: 22, baseType: !490)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !717, file: !718, line: 42, baseType: !721, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !717, file: !718, line: 46, baseType: !730, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !188, line: 29, baseType: !195)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !717, file: !718, line: 47, baseType: !174, size: 128, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !685, file: !31, line: 462, baseType: !278, size: 64, offset: 640)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !685, file: !31, line: 463, baseType: !278, size: 64, offset: 704)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !685, file: !31, line: 464, baseType: !278, size: 64, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !685, file: !31, line: 465, baseType: !736, size: 64, offset: 832)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !739)
!739 = !{!740, !744, !748, !752, !756, !760, !766, !772, !776, !781, !785, !789, !793, !821, !825, !831, !832, !833, !837, !842, !846, !853}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !738, file: !31, line: 368, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!101, !671, !626}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !738, file: !31, line: 369, baseType: !745, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!101, !306, !671}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !738, file: !31, line: 372, baseType: !749, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!101, !684, !626}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !738, file: !31, line: 375, baseType: !753, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!101, !671}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !738, file: !31, line: 381, baseType: !757, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!101, !306, !684, !177, !7}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !738, file: !31, line: 383, baseType: !761, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !738, file: !31, line: 385, baseType: !767, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!101, !306, !684, !481, !7, !7, !770, !771}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !738, file: !31, line: 388, baseType: !773, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!101, !306, !684, !481, !7, !7, !671, !100}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !738, file: !31, line: 393, baseType: !777, size: 64, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!780, !684, !780}
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !97, line: 125, baseType: !373)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !738, file: !31, line: 394, baseType: !782, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !671, !7, !7}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !738, file: !31, line: 395, baseType: !786, size: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!101, !671, !96}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !738, file: !31, line: 396, baseType: !790, size: 64, offset: 704)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !671}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !738, file: !31, line: 397, baseType: !794, size: 64, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!259, !797, !819}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !799)
!799 = !{!800, !801, !802, !806, !807, !808, !811, !812}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !798, file: !31, line: 321, baseType: !306, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !798, file: !31, line: 326, baseType: !481, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !798, file: !31, line: 327, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !797, !263, !263}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !798, file: !31, line: 328, baseType: !100, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !798, file: !31, line: 329, baseType: !101, size: 32, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !798, file: !31, line: 330, baseType: !809, size: 16, offset: 288)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !370, line: 19, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !109, line: 24, baseType: !270)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !798, file: !31, line: 331, baseType: !809, size: 16, offset: 304)
!812 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !31, line: 332, baseType: !813, size: 64, offset: 320)
!813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !798, file: !31, line: 332, size: 64, elements: !814)
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !813, file: !31, line: 333, baseType: !7, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !813, file: !31, line: 334, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !738, file: !31, line: 402, baseType: !822, size: 64, offset: 832)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!101, !684, !671, !671, !5}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !738, file: !31, line: 404, baseType: !826, size: 64, offset: 896)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!163, !671, !829}
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !830, line: 305, baseType: !7)
!830 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!831 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !738, file: !31, line: 405, baseType: !790, size: 64, offset: 960)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !738, file: !31, line: 406, baseType: !753, size: 64, offset: 1024)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !738, file: !31, line: 407, baseType: !834, size: 64, offset: 1088)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!101, !671, !278, !278}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !738, file: !31, line: 409, baseType: !838, size: 64, offset: 1152)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !671, !841, !841}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !738, file: !31, line: 410, baseType: !843, size: 64, offset: 1216)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!101, !684, !671}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !738, file: !31, line: 413, baseType: !847, size: 64, offset: 1280)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!101, !850, !306, !852}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !738, file: !31, line: 415, baseType: !854, size: 64, offset: 1344)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !306}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !31, line: 466, baseType: !278, size: 64, offset: 896)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !685, file: !31, line: 467, baseType: !859, size: 32, offset: 960)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !860, line: 8, baseType: !369)
!860 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!861 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !685, file: !31, line: 468, baseType: !187, offset: 992)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !685, file: !31, line: 469, baseType: !174, size: 128, offset: 1024)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !685, file: !31, line: 470, baseType: !100, size: 64, offset: 1152)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !680, file: !673, line: 87, baseType: !278, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !680, file: !673, line: 94, baseType: !278, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 96, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 96, size: 64, elements: !868)
!868 = !{!869}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !867, file: !673, line: 101, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !97, line: 143, baseType: !373)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 103, baseType: !872, size: 320)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 103, size: 320, elements: !873)
!873 = !{!874, !884, !887, !888}
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !673, line: 104, baseType: !875, size: 128)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !872, file: !673, line: 104, size: 128, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !875, file: !673, line: 105, baseType: !174, size: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !673, line: 106, baseType: !879, size: 128)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !875, file: !673, line: 106, size: 128, elements: !880)
!880 = !{!881, !882, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !879, file: !673, line: 107, baseType: !671, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !879, file: !673, line: 109, baseType: !101, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !879, file: !673, line: 110, baseType: !101, size: 32, offset: 96)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !872, file: !673, line: 117, baseType: !885, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !673, line: 117, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !872, file: !673, line: 119, baseType: !100, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !673, line: 120, baseType: !889, size: 64, offset: 256)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !872, file: !673, line: 120, size: 64, elements: !890)
!890 = !{!891, !892, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !889, file: !673, line: 121, baseType: !100, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !889, file: !673, line: 122, baseType: !278, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !673, line: 123, baseType: !894, size: 32)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !673, line: 123, size: 32, elements: !895)
!895 = !{!896, !897, !898}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !894, file: !673, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !894, file: !673, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !894, file: !673, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 130, baseType: !900, size: 192)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 130, size: 192, elements: !901)
!901 = !{!902, !903, !904, !905, !906}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !900, file: !673, line: 131, baseType: !278, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !900, file: !673, line: 134, baseType: !379, size: 8, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !900, file: !673, line: 135, baseType: !379, size: 8, offset: 72)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !900, file: !673, line: 136, baseType: !697, size: 32, offset: 96)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !900, file: !673, line: 137, baseType: !7, size: 32, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 139, baseType: !908, size: 256)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 139, size: 256, elements: !909)
!909 = !{!910, !911, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !908, file: !673, line: 140, baseType: !278, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !908, file: !673, line: 141, baseType: !697, size: 32, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !908, file: !673, line: 143, baseType: !174, size: 128, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 145, baseType: !914, size: 256)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 145, size: 256, elements: !915)
!915 = !{!916, !917, !919, !920, !2202}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !914, file: !673, line: 146, baseType: !278, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !914, file: !673, line: 147, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !663, line: 509, baseType: !671)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !914, file: !673, line: 148, baseType: !278, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !914, file: !673, line: 149, baseType: !921, size: 64, offset: 192)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !914, file: !673, line: 149, size: 64, elements: !922)
!922 = !{!923, !2201}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !921, file: !673, line: 150, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !673, line: 388, size: 7296, elements: !926)
!926 = !{!927, !2197}
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !673, line: 389, baseType: !928, size: 7296)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !673, line: 389, size: 7296, elements: !929)
!929 = !{!930, !968, !969, !970, !974, !975, !976, !977, !978, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1019, !1025, !1028, !1074, !1075, !2181, !2182, !2185, !2186, !2187, !2190, !2191, !2192, !2195, !2196}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !928, file: !673, line: 390, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !673, line: 305, size: 1472, elements: !933)
!933 = !{!934, !935, !936, !937, !938, !939, !940, !941, !948, !949, !954, !955, !958, !962, !963, !964, !965, !966}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !932, file: !673, line: 308, baseType: !278, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !932, file: !673, line: 309, baseType: !278, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !932, file: !673, line: 313, baseType: !931, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !932, file: !673, line: 313, baseType: !931, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !932, file: !673, line: 315, baseType: !710, size: 192, align: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !932, file: !673, line: 323, baseType: !278, size: 64, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !932, file: !673, line: 327, baseType: !924, size: 64, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !932, file: !673, line: 333, baseType: !942, size: 64, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !663, line: 284, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !663, line: 284, size: 64, elements: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !943, file: !663, line: 284, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !947, line: 19, baseType: !278)
!947 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!948 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !932, file: !673, line: 334, baseType: !278, size: 64, offset: 640)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !932, file: !673, line: 343, baseType: !950, size: 256, offset: 704)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !932, file: !673, line: 340, size: 256, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !950, file: !673, line: 341, baseType: !710, size: 192, align: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !950, file: !673, line: 342, baseType: !278, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !932, file: !673, line: 351, baseType: !174, size: 128, offset: 960)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !932, file: !673, line: 353, baseType: !956, size: 64, offset: 1088)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !673, line: 353, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !932, file: !673, line: 356, baseType: !959, size: 64, offset: 1152)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !961)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !673, line: 356, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !932, file: !673, line: 359, baseType: !278, size: 64, offset: 1216)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !932, file: !673, line: 361, baseType: !306, size: 64, offset: 1280)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !932, file: !673, line: 362, baseType: !100, size: 64, offset: 1344)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !932, file: !673, line: 365, baseType: !721, size: 64, offset: 1408)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !932, file: !673, line: 373, baseType: !967, offset: 1472)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !673, line: 296, elements: !201)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !928, file: !673, line: 391, baseType: !706, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !928, file: !673, line: 392, baseType: !373, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !928, file: !673, line: 394, baseType: !971, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!278, !306, !278, !278, !278, !278}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !928, file: !673, line: 398, baseType: !278, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !928, file: !673, line: 399, baseType: !278, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !928, file: !673, line: 405, baseType: !278, size: 64, offset: 384)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !928, file: !673, line: 406, baseType: !278, size: 64, offset: 448)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !928, file: !673, line: 407, baseType: !979, size: 64, offset: 512)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !663, line: 286, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !663, line: 286, size: 64, elements: !982)
!982 = !{!983}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !981, file: !663, line: 286, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !947, line: 18, baseType: !278)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !928, file: !673, line: 416, baseType: !697, size: 32, offset: 576)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !928, file: !673, line: 428, baseType: !697, size: 32, offset: 608)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !928, file: !673, line: 437, baseType: !697, size: 32, offset: 640)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !928, file: !673, line: 447, baseType: !697, size: 32, offset: 672)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !928, file: !673, line: 450, baseType: !721, size: 64, offset: 704)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !928, file: !673, line: 452, baseType: !101, size: 32, offset: 768)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !928, file: !673, line: 454, baseType: !187, offset: 800)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !928, file: !673, line: 457, baseType: !717, size: 256, offset: 832)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !928, file: !673, line: 459, baseType: !174, size: 128, offset: 1088)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !928, file: !673, line: 466, baseType: !278, size: 64, offset: 1216)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !928, file: !673, line: 467, baseType: !278, size: 64, offset: 1280)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !928, file: !673, line: 469, baseType: !278, size: 64, offset: 1344)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !928, file: !673, line: 470, baseType: !278, size: 64, offset: 1408)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !928, file: !673, line: 471, baseType: !723, size: 64, offset: 1472)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !928, file: !673, line: 472, baseType: !278, size: 64, offset: 1536)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !928, file: !673, line: 473, baseType: !278, size: 64, offset: 1600)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !928, file: !673, line: 474, baseType: !278, size: 64, offset: 1664)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !928, file: !673, line: 475, baseType: !278, size: 64, offset: 1728)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !928, file: !673, line: 477, baseType: !187, offset: 1792)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !928, file: !673, line: 478, baseType: !278, size: 64, offset: 1792)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !928, file: !673, line: 478, baseType: !278, size: 64, offset: 1856)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !928, file: !673, line: 478, baseType: !278, size: 64, offset: 1920)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !928, file: !673, line: 478, baseType: !278, size: 64, offset: 1984)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !928, file: !673, line: 479, baseType: !278, size: 64, offset: 2048)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !928, file: !673, line: 479, baseType: !278, size: 64, offset: 2112)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !928, file: !673, line: 479, baseType: !278, size: 64, offset: 2176)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !928, file: !673, line: 480, baseType: !278, size: 64, offset: 2240)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !928, file: !673, line: 480, baseType: !278, size: 64, offset: 2304)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !928, file: !673, line: 480, baseType: !278, size: 64, offset: 2368)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !928, file: !673, line: 480, baseType: !278, size: 64, offset: 2432)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !928, file: !673, line: 482, baseType: !1016, size: 2816, offset: 2496)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 2816, elements: !1017)
!1017 = !{!1018}
!1018 = !DISubrange(count: 44)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !928, file: !673, line: 488, baseType: !1020, size: 256, offset: 5312)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1021, line: 60, size: 256, elements: !1022)
!1021 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1022 = !{!1023}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1020, file: !1021, line: 61, baseType: !1024, size: 256)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 256, elements: !113)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !928, file: !673, line: 490, baseType: !1026, size: 64, offset: 5568)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !673, line: 490, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !928, file: !673, line: 493, baseType: !1029, size: 896, offset: 5632)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1030, line: 53, baseType: !1031)
!1030 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1030, line: 13, size: 896, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1039, !1040, !1047, !1048, !1068, !1069, !1070}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1031, file: !1030, line: 18, baseType: !373, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1031, file: !1030, line: 28, baseType: !723, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1031, file: !1030, line: 31, baseType: !717, size: 256, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1031, file: !1030, line: 32, baseType: !1037, size: 64, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1030, line: 32, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1031, file: !1030, line: 37, baseType: !270, size: 16, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1031, file: !1030, line: 40, baseType: !1041, size: 192, offset: 512)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1042, line: 53, size: 192, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1043 = !{!1044, !1045, !1046}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1041, file: !1042, line: 54, baseType: !721, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1041, file: !1042, line: 55, baseType: !187, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1041, file: !1042, line: 59, baseType: !174, size: 128, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1031, file: !1030, line: 41, baseType: !100, size: 64, offset: 704)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1031, file: !1030, line: 42, baseType: !1049, size: 64, offset: 768)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1052, line: 13, size: 896, elements: !1053)
!1052 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1051, file: !1052, line: 14, baseType: !100, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1051, file: !1052, line: 15, baseType: !278, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1051, file: !1052, line: 17, baseType: !278, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1051, file: !1052, line: 17, baseType: !278, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1051, file: !1052, line: 19, baseType: !263, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1051, file: !1052, line: 21, baseType: !263, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1051, file: !1052, line: 22, baseType: !263, size: 64, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1051, file: !1052, line: 23, baseType: !263, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1051, file: !1052, line: 24, baseType: !263, size: 64, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1051, file: !1052, line: 25, baseType: !263, size: 64, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1051, file: !1052, line: 26, baseType: !263, size: 64, offset: 640)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1051, file: !1052, line: 27, baseType: !263, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1051, file: !1052, line: 28, baseType: !263, size: 64, offset: 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1051, file: !1052, line: 29, baseType: !263, size: 64, offset: 832)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1031, file: !1030, line: 44, baseType: !697, size: 32, offset: 832)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1031, file: !1030, line: 50, baseType: !809, size: 16, offset: 864)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1031, file: !1030, line: 51, baseType: !1071, size: 16, offset: 880)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !370, line: 18, baseType: !1072)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !109, line: 23, baseType: !1073)
!1073 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !928, file: !673, line: 495, baseType: !278, size: 64, offset: 6528)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !928, file: !673, line: 497, baseType: !1076, size: 64, offset: 6592)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !673, line: 381, size: 384, elements: !1078)
!1078 = !{!1079, !1080, !2180}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1077, file: !673, line: 382, baseType: !697, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1077, file: !673, line: 383, baseType: !1081, size: 128, offset: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !673, line: 376, size: 128, elements: !1082)
!1082 = !{!1083, !2178}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1081, file: !673, line: 377, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1086, line: 640, size: 48640, elements: !1087)
!1086 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1087 = !{!1088, !1094, !1096, !1097, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1114, !1132, !1143, !1228, !1229, !1230, !1241, !1242, !1244, !1245, !1246, !1247, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1326, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1364, !1366, !1367, !1368, !1380, !1381, !1382, !1383, !1384, !1385, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1409, !1414, !1598, !1599, !1600, !1601, !1605, !1608, !1611, !1614, !1617, !1621, !1722, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1766, !1767, !1768, !1769, !1770, !1775, !1776, !1777, !1780, !1781, !1784, !1787, !1790, !1793, !1836, !1839, !1840, !1919, !1920, !1923, !1924, !1927, !1928, !1929, !1933, !1934, !1935, !1948, !1949, !1950, !1960, !1965, !1968, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1085, file: !1086, line: 646, baseType: !1089, size: 128)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1090, line: 56, size: 128, elements: !1091)
!1090 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !1090, line: 57, baseType: !278, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1089, file: !1090, line: 58, baseType: !369, size: 32, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1085, file: !1086, line: 649, baseType: !1095, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !263)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1085, file: !1086, line: 657, baseType: !100, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1085, file: !1086, line: 658, baseType: !1098, size: 32, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1099, line: 113, baseType: !1100)
!1099 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1099, line: 111, size: 32, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1100, file: !1099, line: 112, baseType: !697, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1085, file: !1086, line: 660, baseType: !7, size: 32, offset: 288)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1085, file: !1086, line: 661, baseType: !7, size: 32, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1085, file: !1086, line: 684, baseType: !101, size: 32, offset: 352)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1085, file: !1086, line: 686, baseType: !101, size: 32, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1085, file: !1086, line: 687, baseType: !101, size: 32, offset: 416)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1085, file: !1086, line: 688, baseType: !101, size: 32, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1085, file: !1086, line: 689, baseType: !7, size: 32, offset: 480)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1085, file: !1086, line: 691, baseType: !1111, size: 64, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1086, line: 691, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1085, file: !1086, line: 692, baseType: !1115, size: 832, offset: 576)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1086, line: 451, size: 832, elements: !1116)
!1116 = !{!1117, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1115, file: !1086, line: 453, baseType: !1118, size: 128)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1086, line: 325, size: 128, elements: !1119)
!1119 = !{!1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1118, file: !1086, line: 326, baseType: !278, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1118, file: !1086, line: 327, baseType: !369, size: 32, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1115, file: !1086, line: 454, baseType: !710, size: 192, align: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1115, file: !1086, line: 455, baseType: !174, size: 128, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1115, file: !1086, line: 456, baseType: !7, size: 32, offset: 448)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1115, file: !1086, line: 458, baseType: !373, size: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1115, file: !1086, line: 459, baseType: !373, size: 64, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1115, file: !1086, line: 460, baseType: !373, size: 64, offset: 640)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1115, file: !1086, line: 461, baseType: !373, size: 64, offset: 704)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1115, file: !1086, line: 463, baseType: !373, size: 64, offset: 768)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1115, file: !1086, line: 465, baseType: !1131, offset: 832)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1086, line: 415, elements: !201)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1085, file: !1086, line: 693, baseType: !1133, size: 384, offset: 1408)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1086, line: 489, size: 384, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140, !1141}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1133, file: !1086, line: 490, baseType: !174, size: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1133, file: !1086, line: 491, baseType: !278, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1133, file: !1086, line: 492, baseType: !278, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1133, file: !1086, line: 493, baseType: !7, size: 32, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1133, file: !1086, line: 494, baseType: !270, size: 16, offset: 288)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1133, file: !1086, line: 495, baseType: !270, size: 16, offset: 304)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1133, file: !1086, line: 497, baseType: !1142, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1085, file: !1086, line: 697, baseType: !1144, size: 1792, offset: 1792)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1086, line: 507, size: 1792, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1225, !1226}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1144, file: !1086, line: 508, baseType: !710, size: 192, align: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1144, file: !1086, line: 515, baseType: !373, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1144, file: !1086, line: 516, baseType: !373, size: 64, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1144, file: !1086, line: 517, baseType: !373, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1144, file: !1086, line: 518, baseType: !373, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1144, file: !1086, line: 519, baseType: !373, size: 64, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1144, file: !1086, line: 526, baseType: !727, size: 64, offset: 512)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1144, file: !1086, line: 527, baseType: !373, size: 64, offset: 576)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1144, file: !1086, line: 528, baseType: !7, size: 32, offset: 640)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1144, file: !1086, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1144, file: !1086, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1144, file: !1086, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1144, file: !1086, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1144, file: !1086, line: 563, baseType: !1160, size: 512, offset: 704)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1161)
!1161 = !{!1162, !1170, !1171, !1176, !1219, !1222, !1223, !1224}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1160, file: !14, line: 119, baseType: !1163, size: 256)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1164, line: 9, size: 256, elements: !1165)
!1164 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1163, file: !1164, line: 10, baseType: !710, size: 192, align: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1163, file: !1164, line: 11, baseType: !1168, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1169, line: 29, baseType: !727)
!1169 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1160, file: !14, line: 120, baseType: !1168, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1160, file: !14, line: 121, baseType: !1172, size: 64, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!13, !1175}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1160, file: !14, line: 122, baseType: !1177, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1179)
!1179 = !{!1180, !1200, !1201, !1204, !1209, !1210, !1214, !1218}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1178, file: !14, line: 160, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1182, file: !14, line: 215, baseType: !730)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1182, file: !14, line: 216, baseType: !7, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1182, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1182, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1182, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1182, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1182, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1182, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1182, file: !14, line: 233, baseType: !1168, size: 64, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1182, file: !14, line: 234, baseType: !1175, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1182, file: !14, line: 235, baseType: !1168, size: 64, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1182, file: !14, line: 236, baseType: !1175, size: 64, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1182, file: !14, line: 237, baseType: !1197, size: 4096, offset: 512)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 4096, elements: !1198)
!1198 = !{!1199}
!1199 = !DISubrange(count: 8)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1178, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1178, file: !14, line: 162, baseType: !1202, size: 32, offset: 96)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !97, line: 27, baseType: !1203)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !261, line: 96, baseType: !101)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1178, file: !14, line: 163, baseType: !1205, size: 32, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !342, line: 276, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !342, line: 276, size: 32, elements: !1207)
!1207 = !{!1208}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1206, file: !342, line: 276, baseType: !346, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1178, file: !14, line: 164, baseType: !1175, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1178, file: !14, line: 165, baseType: !1211, size: 128, offset: 256)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1164, line: 14, size: 128, elements: !1212)
!1212 = !{!1213}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1211, file: !1164, line: 15, baseType: !702, size: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1178, file: !14, line: 166, baseType: !1215, size: 64, offset: 384)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!1168}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1178, file: !14, line: 167, baseType: !1168, size: 64, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1160, file: !14, line: 123, baseType: !1220, size: 8, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !370, line: 17, baseType: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !109, line: 21, baseType: !379)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1160, file: !14, line: 124, baseType: !1220, size: 8, offset: 456)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1160, file: !14, line: 125, baseType: !1220, size: 8, offset: 464)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1160, file: !14, line: 126, baseType: !1220, size: 8, offset: 472)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1144, file: !1086, line: 572, baseType: !1160, size: 512, offset: 1216)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1144, file: !1086, line: 580, baseType: !1227, size: 64, offset: 1728)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1085, file: !1086, line: 721, baseType: !7, size: 32, offset: 3584)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1085, file: !1086, line: 722, baseType: !101, size: 32, offset: 3616)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1085, file: !1086, line: 723, baseType: !1231, size: 64, offset: 3648)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1234, line: 17, baseType: !1235)
!1234 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1234, line: 17, size: 64, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1235, file: !1234, line: 17, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 64, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 1)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1085, file: !1086, line: 724, baseType: !1233, size: 64, offset: 3712)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1085, file: !1086, line: 749, baseType: !1243, offset: 3776)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1086, line: 290, elements: !201)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1085, file: !1086, line: 751, baseType: !174, size: 128, offset: 3776)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1085, file: !1086, line: 757, baseType: !924, size: 64, offset: 3904)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1085, file: !1086, line: 758, baseType: !924, size: 64, offset: 3968)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1085, file: !1086, line: 761, baseType: !1248, size: 320, offset: 4032)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1021, line: 34, size: 320, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1248, file: !1021, line: 35, baseType: !373, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1248, file: !1021, line: 36, baseType: !1252, size: 256, offset: 64)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !931, size: 256, elements: !113)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1085, file: !1086, line: 766, baseType: !101, size: 32, offset: 4352)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1085, file: !1086, line: 767, baseType: !101, size: 32, offset: 4384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1085, file: !1086, line: 768, baseType: !101, size: 32, offset: 4416)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1085, file: !1086, line: 770, baseType: !101, size: 32, offset: 4448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1085, file: !1086, line: 772, baseType: !278, size: 64, offset: 4480)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1085, file: !1086, line: 775, baseType: !7, size: 32, offset: 4544)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1085, file: !1086, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1085, file: !1086, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1085, file: !1086, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1085, file: !1086, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1085, file: !1086, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1085, file: !1086, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1085, file: !1086, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1085, file: !1086, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1085, file: !1086, line: 831, baseType: !278, size: 64, offset: 4672)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1085, file: !1086, line: 833, baseType: !1269, size: 384, offset: 4736)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1270)
!1270 = !{!1271, !1276}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1269, file: !19, line: 26, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!263, !1275}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !19, line: 27, baseType: !1277, size: 320, offset: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1269, file: !19, line: 27, size: 320, elements: !1278)
!1278 = !{!1279, !1289, !1316}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1277, file: !19, line: 36, baseType: !1280, size: 320)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1277, file: !19, line: 29, size: 320, elements: !1281)
!1281 = !{!1282, !1284, !1285, !1286, !1287, !1288}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1280, file: !19, line: 30, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1280, file: !19, line: 31, baseType: !369, size: 32, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1280, file: !19, line: 32, baseType: !369, size: 32, offset: 96)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1280, file: !19, line: 33, baseType: !369, size: 32, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1280, file: !19, line: 34, baseType: !373, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1280, file: !19, line: 35, baseType: !1283, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1277, file: !19, line: 46, baseType: !1290, size: 192)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1277, file: !19, line: 38, size: 192, elements: !1291)
!1291 = !{!1292, !1293, !1294, !1315}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1290, file: !19, line: 39, baseType: !1202, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1290, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1290, file: !19, line: 41, baseType: !1295, size: 64, offset: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1290, file: !19, line: 41, size: 64, elements: !1296)
!1296 = !{!1297, !1305}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1295, file: !19, line: 42, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1300, line: 7, size: 128, elements: !1301)
!1300 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1301 = !{!1302, !1304}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1299, file: !1300, line: 8, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !261, line: 93, baseType: !483)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1299, file: !1300, line: 9, baseType: !483, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1295, file: !19, line: 43, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1308, line: 7, size: 64, elements: !1309)
!1308 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !{!1310, !1314}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1307, file: !1308, line: 8, baseType: !1311, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1308, line: 5, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !370, line: 20, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !109, line: 26, baseType: !101)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1307, file: !1308, line: 9, baseType: !1312, size: 32, offset: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1290, file: !19, line: 45, baseType: !373, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1277, file: !19, line: 54, baseType: !1317, size: 256)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1277, file: !19, line: 48, size: 256, elements: !1318)
!1318 = !{!1319, !1322, !1323, !1324, !1325}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1317, file: !19, line: 49, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1317, file: !19, line: 50, baseType: !101, size: 32, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1317, file: !19, line: 51, baseType: !101, size: 32, offset: 96)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1317, file: !19, line: 52, baseType: !278, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1317, file: !19, line: 53, baseType: !278, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1085, file: !1086, line: 835, baseType: !1327, size: 32, offset: 5120)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !97, line: 22, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !261, line: 28, baseType: !101)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1085, file: !1086, line: 836, baseType: !1327, size: 32, offset: 5152)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1085, file: !1086, line: 840, baseType: !278, size: 64, offset: 5184)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1085, file: !1086, line: 849, baseType: !1084, size: 64, offset: 5248)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1085, file: !1086, line: 852, baseType: !1084, size: 64, offset: 5312)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1085, file: !1086, line: 857, baseType: !174, size: 128, offset: 5376)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1085, file: !1086, line: 858, baseType: !174, size: 128, offset: 5504)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1085, file: !1086, line: 859, baseType: !1084, size: 64, offset: 5632)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1085, file: !1086, line: 867, baseType: !174, size: 128, offset: 5696)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1085, file: !1086, line: 868, baseType: !174, size: 128, offset: 5824)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1085, file: !1086, line: 871, baseType: !1339, size: 64, offset: 5952)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1347, !1348, !1355, !1356}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1340, file: !40, line: 61, baseType: !1098, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1340, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1340, file: !40, line: 63, baseType: !187, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1340, file: !40, line: 65, baseType: !1346, size: 256, offset: 64)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 256, elements: !113)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1340, file: !40, line: 66, baseType: !585, size: 64, offset: 320)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1340, file: !40, line: 68, baseType: !1349, size: 128, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1350, line: 40, baseType: !1351)
!1350 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1350, line: 36, size: 128, elements: !1352)
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1351, file: !1350, line: 37, baseType: !187)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1351, file: !1350, line: 38, baseType: !174, size: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1340, file: !40, line: 69, baseType: !319, size: 128, align: 64, offset: 512)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1340, file: !40, line: 70, baseType: !1357, size: 128, offset: 640)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1358, size: 128, elements: !1239)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1358, file: !40, line: 55, baseType: !101, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1358, file: !40, line: 56, baseType: !1362, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1085, file: !1086, line: 872, baseType: !1365, size: 512, offset: 6016)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 512, elements: !113)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1085, file: !1086, line: 873, baseType: !174, size: 128, offset: 6528)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1085, file: !1086, line: 874, baseType: !174, size: 128, offset: 6656)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1085, file: !1086, line: 876, baseType: !1369, size: 64, offset: 6784)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1371, line: 26, size: 192, elements: !1372)
!1371 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1370, file: !1371, line: 27, baseType: !7, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1370, file: !1371, line: 28, baseType: !1375, size: 128, offset: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1376, line: 43, size: 128, elements: !1377)
!1376 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1375, file: !1376, line: 44, baseType: !730)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1375, file: !1376, line: 45, baseType: !174, size: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1085, file: !1086, line: 879, baseType: !655, size: 64, offset: 6848)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1085, file: !1086, line: 882, baseType: !655, size: 64, offset: 6912)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1085, file: !1086, line: 884, baseType: !373, size: 64, offset: 6976)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1085, file: !1086, line: 885, baseType: !373, size: 64, offset: 7040)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1085, file: !1086, line: 890, baseType: !373, size: 64, offset: 7104)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1085, file: !1086, line: 891, baseType: !1386, size: 128, offset: 7168)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1086, line: 242, size: 128, elements: !1387)
!1387 = !{!1388, !1389, !1390}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1386, file: !1086, line: 244, baseType: !373, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1386, file: !1086, line: 245, baseType: !373, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1386, file: !1086, line: 246, baseType: !730, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1085, file: !1086, line: 900, baseType: !278, size: 64, offset: 7296)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1085, file: !1086, line: 901, baseType: !278, size: 64, offset: 7360)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1085, file: !1086, line: 904, baseType: !373, size: 64, offset: 7424)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1085, file: !1086, line: 907, baseType: !373, size: 64, offset: 7488)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1085, file: !1086, line: 910, baseType: !278, size: 64, offset: 7552)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1085, file: !1086, line: 911, baseType: !278, size: 64, offset: 7616)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1085, file: !1086, line: 914, baseType: !1398, size: 640, offset: 7680)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1399, line: 123, size: 640, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1400 = !{!1401, !1407, !1408}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1398, file: !1399, line: 124, baseType: !1402, size: 576)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1403, size: 576, elements: !229)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1399, line: 108, size: 192, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1403, file: !1399, line: 109, baseType: !373, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1403, file: !1399, line: 110, baseType: !1211, size: 128, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1398, file: !1399, line: 125, baseType: !7, size: 32, offset: 576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1398, file: !1399, line: 126, baseType: !7, size: 32, offset: 608)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1085, file: !1086, line: 917, baseType: !1410, size: 192, offset: 8320)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1399, line: 134, size: 192, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1410, file: !1399, line: 135, baseType: !319, size: 128, align: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1410, file: !1399, line: 136, baseType: !7, size: 32, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1085, file: !1086, line: 923, baseType: !1415, size: 64, offset: 8512)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1418, line: 111, size: 1280, elements: !1419)
!1418 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1419 = !{!1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1439, !1440, !1441, !1442, !1443, !1444, !1551, !1552, !1553, !1554, !1580, !1583, !1593}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1417, file: !1418, line: 112, baseType: !697, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1417, file: !1418, line: 120, baseType: !387, size: 32, offset: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1417, file: !1418, line: 121, baseType: !395, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1417, file: !1418, line: 122, baseType: !387, size: 32, offset: 96)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1417, file: !1418, line: 123, baseType: !395, size: 32, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1417, file: !1418, line: 124, baseType: !387, size: 32, offset: 160)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1417, file: !1418, line: 125, baseType: !395, size: 32, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1417, file: !1418, line: 126, baseType: !387, size: 32, offset: 224)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1417, file: !1418, line: 127, baseType: !395, size: 32, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1417, file: !1418, line: 128, baseType: !7, size: 32, offset: 288)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1417, file: !1418, line: 129, baseType: !1431, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1432, line: 26, baseType: !1433)
!1432 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1432, line: 24, size: 64, elements: !1434)
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1433, file: !1432, line: 25, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !1437)
!1437 = !{!1438}
!1438 = !DISubrange(count: 2)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1417, file: !1418, line: 130, baseType: !1431, size: 64, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1417, file: !1418, line: 131, baseType: !1431, size: 64, offset: 448)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1417, file: !1418, line: 132, baseType: !1431, size: 64, offset: 512)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1417, file: !1418, line: 133, baseType: !1431, size: 64, offset: 576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1417, file: !1418, line: 135, baseType: !379, size: 8, offset: 640)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1417, file: !1418, line: 137, baseType: !1445, size: 64, offset: 704)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1447, line: 189, size: 1664, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1448 = !{!1449, !1450, !1453, !1458, !1459, !1462, !1463, !1468, !1469, !1470, !1471, !1473, !1474, !1475, !1476, !1477, !1515, !1536}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1446, file: !1447, line: 190, baseType: !1098, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1446, file: !1447, line: 191, baseType: !1451, size: 32, offset: 32)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1447, line: 28, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !97, line: 98, baseType: !1312)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 192, baseType: !1454, size: 192, offset: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 192, size: 192, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1454, file: !1447, line: 193, baseType: !174, size: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1454, file: !1447, line: 194, baseType: !710, size: 192, align: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1446, file: !1447, line: 199, baseType: !717, size: 256, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1446, file: !1447, line: 200, baseType: !1460, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1447, line: 200, flags: DIFlagFwdDecl)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1446, file: !1447, line: 201, baseType: !100, size: 64, offset: 576)
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 202, baseType: !1464, size: 64, offset: 640)
!1464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 202, size: 64, elements: !1465)
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1464, file: !1447, line: 203, baseType: !489, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1464, file: !1447, line: 204, baseType: !489, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1446, file: !1447, line: 206, baseType: !489, size: 64, offset: 704)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1446, file: !1447, line: 207, baseType: !387, size: 32, offset: 768)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1446, file: !1447, line: 208, baseType: !395, size: 32, offset: 800)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1446, file: !1447, line: 209, baseType: !1472, size: 32, offset: 832)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1447, line: 31, baseType: !509)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1446, file: !1447, line: 210, baseType: !270, size: 16, offset: 864)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1446, file: !1447, line: 211, baseType: !270, size: 16, offset: 880)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1446, file: !1447, line: 215, baseType: !1073, size: 16, offset: 896)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1446, file: !1447, line: 222, baseType: !278, size: 64, offset: 960)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 239, baseType: !1478, size: 320, offset: 1024)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 239, size: 320, elements: !1479)
!1479 = !{!1480, !1507}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1478, file: !1447, line: 240, baseType: !1481, size: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1447, line: 108, size: 320, elements: !1482)
!1482 = !{!1483, !1484, !1496, !1499, !1506}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1481, file: !1447, line: 110, baseType: !278, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1447, line: 111, baseType: !1485, size: 64, offset: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1481, file: !1447, line: 111, size: 64, elements: !1486)
!1486 = !{!1487, !1495}
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1447, line: 112, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1485, file: !1447, line: 112, size: 64, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1488, file: !1447, line: 114, baseType: !809, size: 16)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1488, file: !1447, line: 115, baseType: !1492, size: 48, offset: 16)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 48, elements: !1493)
!1493 = !{!1494}
!1494 = !DISubrange(count: 6)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1485, file: !1447, line: 121, baseType: !278, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1481, file: !1447, line: 123, baseType: !1497, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1447, line: 96, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1481, file: !1447, line: 124, baseType: !1500, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1447, line: 102, size: 192, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1501, file: !1447, line: 103, baseType: !319, size: 128, align: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1501, file: !1447, line: 104, baseType: !1098, size: 32, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1501, file: !1447, line: 105, baseType: !163, size: 8, offset: 160)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1481, file: !1447, line: 125, baseType: !160, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !1447, line: 241, baseType: !1508, size: 320)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !1447, line: 241, size: 320, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1508, file: !1447, line: 242, baseType: !278, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1508, file: !1447, line: 243, baseType: !278, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1508, file: !1447, line: 244, baseType: !1497, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1508, file: !1447, line: 245, baseType: !1500, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1508, file: !1447, line: 246, baseType: !228, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 254, baseType: !1516, size: 256, offset: 1344)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 254, size: 256, elements: !1517)
!1517 = !{!1518, !1524}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1516, file: !1447, line: 255, baseType: !1519, size: 256)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1447, line: 128, size: 256, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1519, file: !1447, line: 129, baseType: !100, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1519, file: !1447, line: 130, baseType: !1523, size: 256)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 256, elements: !113)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !1447, line: 256, baseType: !1525, size: 256)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1516, file: !1447, line: 256, size: 256, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1525, file: !1447, line: 258, baseType: !174, size: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1525, file: !1447, line: 259, baseType: !1529, size: 128, offset: 128)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1530, line: 22, size: 128, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1531 = !{!1532, !1535}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1529, file: !1530, line: 23, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1530, line: 23, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1529, file: !1530, line: 24, baseType: !278, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1446, file: !1447, line: 274, baseType: !1537, size: 64, offset: 1600)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1447, line: 170, size: 192, elements: !1539)
!1539 = !{!1540, !1549, !1550}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1538, file: !1447, line: 171, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1447, line: 165, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!101, !1445, !1545, !1547, !1445}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1538, file: !1447, line: 172, baseType: !1445, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1538, file: !1447, line: 173, baseType: !1497, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1417, file: !1418, line: 138, baseType: !1445, size: 64, offset: 768)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1417, file: !1418, line: 139, baseType: !1445, size: 64, offset: 832)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1417, file: !1418, line: 140, baseType: !1445, size: 64, offset: 896)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1417, file: !1418, line: 145, baseType: !1555, size: 64, offset: 960)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1557, line: 13, size: 896, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1556, file: !1557, line: 14, baseType: !1098, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1556, file: !1557, line: 15, baseType: !697, size: 32, offset: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1556, file: !1557, line: 16, baseType: !697, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1556, file: !1557, line: 21, baseType: !721, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1556, file: !1557, line: 27, baseType: !278, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1556, file: !1557, line: 28, baseType: !278, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1556, file: !1557, line: 29, baseType: !721, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1556, file: !1557, line: 32, baseType: !589, size: 128, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1556, file: !1557, line: 33, baseType: !387, size: 32, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1556, file: !1557, line: 37, baseType: !721, size: 64, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1556, file: !1557, line: 44, baseType: !1570, size: 256, offset: 640)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1571, line: 15, size: 256, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1570, file: !1571, line: 16, baseType: !730)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1570, file: !1571, line: 18, baseType: !101, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1570, file: !1571, line: 19, baseType: !101, size: 32, offset: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1570, file: !1571, line: 20, baseType: !101, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1570, file: !1571, line: 21, baseType: !101, size: 32, offset: 96)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1570, file: !1571, line: 22, baseType: !278, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !1571, line: 23, baseType: !278, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1417, file: !1418, line: 146, baseType: !1581, size: 64, offset: 1024)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !388, line: 18, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1417, file: !1418, line: 147, baseType: !1584, size: 64, offset: 1088)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1418, line: 25, size: 64, elements: !1586)
!1586 = !{!1587, !1588, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1585, file: !1418, line: 26, baseType: !697, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1585, file: !1418, line: 27, baseType: !101, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1585, file: !1418, line: 28, baseType: !1590, offset: 64)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, elements: !1591)
!1591 = !{!1592}
!1592 = !DISubrange(count: 0)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !1418, line: 149, baseType: !1594, size: 128, offset: 1152)
!1594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !1418, line: 149, size: 128, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1594, file: !1418, line: 150, baseType: !101, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1594, file: !1418, line: 151, baseType: !319, size: 128, align: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1085, file: !1086, line: 926, baseType: !1415, size: 64, offset: 8576)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1085, file: !1086, line: 929, baseType: !1415, size: 64, offset: 8640)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1085, file: !1086, line: 933, baseType: !1445, size: 64, offset: 8704)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1085, file: !1086, line: 943, baseType: !1602, size: 128, offset: 8768)
!1602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, elements: !1603)
!1603 = !{!1604}
!1604 = !DISubrange(count: 16)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1085, file: !1086, line: 945, baseType: !1606, size: 64, offset: 8896)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1086, line: 49, flags: DIFlagFwdDecl)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1085, file: !1086, line: 956, baseType: !1609, size: 64, offset: 8960)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1086, line: 45, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1085, file: !1086, line: 959, baseType: !1612, size: 64, offset: 9024)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1086, line: 959, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1085, file: !1086, line: 962, baseType: !1615, size: 64, offset: 9088)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1086, line: 66, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1085, file: !1086, line: 966, baseType: !1618, size: 64, offset: 9152)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1620, line: 35, flags: DIFlagFwdDecl)
!1620 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1085, file: !1086, line: 969, baseType: !1622, size: 64, offset: 9216)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1624, line: 82, size: 7296, elements: !1625)
!1624 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1631, !1632, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1661, !1670, !1671, !1673, !1674, !1675, !1678, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1708, !1709, !1716, !1717, !1718, !1719, !1720, !1721}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1623, file: !1624, line: 83, baseType: !1098, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1623, file: !1624, line: 84, baseType: !697, size: 32, offset: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1623, file: !1624, line: 85, baseType: !101, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1623, file: !1624, line: 86, baseType: !174, size: 128, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1623, file: !1624, line: 88, baseType: !1349, size: 128, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1623, file: !1624, line: 91, baseType: !1084, size: 64, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1623, file: !1624, line: 94, baseType: !1633, size: 192, offset: 448)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1634, line: 30, size: 192, elements: !1635)
!1634 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1633, file: !1634, line: 31, baseType: !174, size: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1633, file: !1634, line: 32, baseType: !1638, size: 64, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1639, line: 25, baseType: !1640)
!1639 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1639, line: 23, size: 64, elements: !1641)
!1641 = !{!1642}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1640, file: !1639, line: 24, baseType: !1238, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1623, file: !1624, line: 97, baseType: !585, size: 64, offset: 640)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1623, file: !1624, line: 100, baseType: !101, size: 32, offset: 704)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1623, file: !1624, line: 106, baseType: !101, size: 32, offset: 736)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1623, file: !1624, line: 107, baseType: !1084, size: 64, offset: 768)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1623, file: !1624, line: 110, baseType: !101, size: 32, offset: 832)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1623, file: !1624, line: 111, baseType: !7, size: 32, offset: 864)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1623, file: !1624, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1623, file: !1624, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1623, file: !1624, line: 128, baseType: !101, size: 32, offset: 928)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1623, file: !1624, line: 129, baseType: !174, size: 128, offset: 960)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1623, file: !1624, line: 132, baseType: !1160, size: 512, offset: 1088)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1623, file: !1624, line: 133, baseType: !1168, size: 64, offset: 1600)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1623, file: !1624, line: 140, baseType: !1656, size: 256, offset: 1664)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1657, size: 256, elements: !1437)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1624, line: 38, size: 128, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1657, file: !1624, line: 39, baseType: !373, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1657, file: !1624, line: 40, baseType: !373, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1623, file: !1624, line: 146, baseType: !1662, size: 192, offset: 1920)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1624, line: 66, size: 192, elements: !1663)
!1663 = !{!1664}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1662, file: !1624, line: 67, baseType: !1665, size: 192)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1624, line: 47, size: 192, elements: !1666)
!1666 = !{!1667, !1668, !1669}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1665, file: !1624, line: 48, baseType: !723, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1665, file: !1624, line: 49, baseType: !723, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1665, file: !1624, line: 50, baseType: !723, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1623, file: !1624, line: 150, baseType: !1398, size: 640, offset: 2112)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1623, file: !1624, line: 153, baseType: !1672, size: 256, offset: 2752)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1339, size: 256, elements: !113)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1623, file: !1624, line: 159, baseType: !1339, size: 64, offset: 3008)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1623, file: !1624, line: 162, baseType: !101, size: 32, offset: 3072)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1623, file: !1624, line: 164, baseType: !1676, size: 64, offset: 3136)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1624, line: 164, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1623, file: !1624, line: 175, baseType: !1679, size: 32, offset: 3200)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !342, line: 805, baseType: !1680)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 798, size: 32, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1680, file: !342, line: 803, baseType: !341, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1680, file: !342, line: 804, baseType: !187, offset: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1623, file: !1624, line: 176, baseType: !373, size: 64, offset: 3264)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1623, file: !1624, line: 176, baseType: !373, size: 64, offset: 3328)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1623, file: !1624, line: 176, baseType: !373, size: 64, offset: 3392)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1623, file: !1624, line: 176, baseType: !373, size: 64, offset: 3456)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1623, file: !1624, line: 177, baseType: !373, size: 64, offset: 3520)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1623, file: !1624, line: 178, baseType: !373, size: 64, offset: 3584)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1623, file: !1624, line: 179, baseType: !1386, size: 128, offset: 3648)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1623, file: !1624, line: 180, baseType: !278, size: 64, offset: 3776)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1623, file: !1624, line: 180, baseType: !278, size: 64, offset: 3840)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1623, file: !1624, line: 180, baseType: !278, size: 64, offset: 3904)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1623, file: !1624, line: 180, baseType: !278, size: 64, offset: 3968)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1623, file: !1624, line: 181, baseType: !278, size: 64, offset: 4032)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1623, file: !1624, line: 181, baseType: !278, size: 64, offset: 4096)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1623, file: !1624, line: 181, baseType: !278, size: 64, offset: 4160)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1623, file: !1624, line: 181, baseType: !278, size: 64, offset: 4224)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1623, file: !1624, line: 182, baseType: !278, size: 64, offset: 4288)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1623, file: !1624, line: 182, baseType: !278, size: 64, offset: 4352)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1623, file: !1624, line: 182, baseType: !278, size: 64, offset: 4416)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1623, file: !1624, line: 182, baseType: !278, size: 64, offset: 4480)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1623, file: !1624, line: 183, baseType: !278, size: 64, offset: 4544)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1623, file: !1624, line: 183, baseType: !278, size: 64, offset: 4608)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1623, file: !1624, line: 184, baseType: !1706, offset: 4672)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1707, line: 12, elements: !201)
!1707 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1623, file: !1624, line: 192, baseType: !375, size: 64, offset: 4672)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1623, file: !1624, line: 203, baseType: !1710, size: 2048, offset: 4736)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1711, size: 2048, elements: !1603)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1712, line: 43, size: 128, elements: !1713)
!1712 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1713 = !{!1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1711, file: !1712, line: 44, baseType: !277, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1711, file: !1712, line: 45, baseType: !277, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1623, file: !1624, line: 220, baseType: !163, size: 8, offset: 6784)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1623, file: !1624, line: 221, baseType: !1073, size: 16, offset: 6800)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1623, file: !1624, line: 222, baseType: !1073, size: 16, offset: 6816)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1623, file: !1624, line: 224, baseType: !924, size: 64, offset: 6848)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1623, file: !1624, line: 227, baseType: !1041, size: 192, offset: 6912)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1623, file: !1624, line: 233, baseType: !1041, size: 192, offset: 7104)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1085, file: !1086, line: 970, baseType: !1723, size: 64, offset: 9280)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1624, line: 20, size: 16576, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1724, file: !1624, line: 21, baseType: !187)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1724, file: !1624, line: 22, baseType: !1098, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1724, file: !1624, line: 23, baseType: !1349, size: 128, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1724, file: !1624, line: 24, baseType: !1730, size: 16384, offset: 192)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1731, size: 16384, elements: !233)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1634, line: 49, size: 256, elements: !1732)
!1732 = !{!1733}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1731, file: !1634, line: 50, baseType: !1734, size: 256)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1634, line: 35, size: 256, elements: !1735)
!1735 = !{!1736, !1743, !1744, !1748}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1734, file: !1634, line: 37, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1738, line: 19, baseType: !1739)
!1738 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1738, line: 18, baseType: !1741)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !101}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1734, file: !1634, line: 38, baseType: !278, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1734, file: !1634, line: 44, baseType: !1745, size: 64, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1738, line: 22, baseType: !1746)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1738, line: 21, baseType: !124)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1734, file: !1634, line: 46, baseType: !1638, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1085, file: !1086, line: 971, baseType: !1638, size: 64, offset: 9344)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1085, file: !1086, line: 972, baseType: !1638, size: 64, offset: 9408)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1085, file: !1086, line: 974, baseType: !1638, size: 64, offset: 9472)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1085, file: !1086, line: 975, baseType: !1633, size: 192, offset: 9536)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1085, file: !1086, line: 976, baseType: !278, size: 64, offset: 9728)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1085, file: !1086, line: 977, baseType: !275, size: 64, offset: 9792)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1085, file: !1086, line: 978, baseType: !7, size: 32, offset: 9856)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1085, file: !1086, line: 980, baseType: !322, size: 64, offset: 9920)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1085, file: !1086, line: 989, baseType: !1758, size: 128, offset: 9984)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1759, line: 35, size: 128, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1760 = !{!1761, !1762, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1758, file: !1759, line: 36, baseType: !101, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1758, file: !1759, line: 37, baseType: !697, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1758, file: !1759, line: 38, baseType: !1764, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1759, line: 23, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1085, file: !1086, line: 992, baseType: !373, size: 64, offset: 10112)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1085, file: !1086, line: 993, baseType: !373, size: 64, offset: 10176)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1085, file: !1086, line: 996, baseType: !187, offset: 10240)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1085, file: !1086, line: 999, baseType: !730, offset: 10240)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1085, file: !1086, line: 1001, baseType: !1771, size: 64, offset: 10240)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1086, line: 636, size: 64, elements: !1772)
!1772 = !{!1773}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1771, file: !1086, line: 637, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1085, file: !1086, line: 1005, baseType: !702, size: 128, offset: 10304)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1085, file: !1086, line: 1007, baseType: !1084, size: 64, offset: 10432)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1085, file: !1086, line: 1009, baseType: !1778, size: 64, offset: 10496)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1086, line: 1009, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1085, file: !1086, line: 1043, baseType: !100, size: 64, offset: 10560)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1085, file: !1086, line: 1046, baseType: !1782, size: 64, offset: 10624)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1086, line: 41, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1085, file: !1086, line: 1050, baseType: !1785, size: 64, offset: 10688)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1086, line: 42, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1085, file: !1086, line: 1054, baseType: !1788, size: 64, offset: 10752)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1086, line: 55, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1085, file: !1086, line: 1056, baseType: !1791, size: 64, offset: 10816)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1086, line: 40, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1085, file: !1086, line: 1058, baseType: !1794, size: 64, offset: 10880)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1796, line: 99, size: 704, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1823, !1824}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1795, file: !1796, line: 100, baseType: !721, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1795, file: !1796, line: 101, baseType: !697, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1795, file: !1796, line: 102, baseType: !697, size: 32, offset: 96)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1795, file: !1796, line: 105, baseType: !187, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1795, file: !1796, line: 107, baseType: !270, size: 16, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1795, file: !1796, line: 109, baseType: !689, size: 128, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1795, file: !1796, line: 110, baseType: !1805, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1796, line: 73, size: 448, elements: !1807)
!1807 = !{!1808, !1811, !1812, !1817, !1822}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1806, file: !1796, line: 74, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1796, line: 74, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1806, file: !1796, line: 75, baseType: !1794, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !1796, line: 83, baseType: !1813, size: 128, offset: 128)
!1813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1806, file: !1796, line: 83, size: 128, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1813, file: !1796, line: 84, baseType: !174, size: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1813, file: !1796, line: 85, baseType: !885, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !1796, line: 87, baseType: !1818, size: 128, offset: 256)
!1818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1806, file: !1796, line: 87, size: 128, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1818, file: !1796, line: 88, baseType: !589, size: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1818, file: !1796, line: 89, baseType: !319, size: 128, align: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1806, file: !1796, line: 92, baseType: !7, size: 32, offset: 384)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1795, file: !1796, line: 111, baseType: !585, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1795, file: !1796, line: 113, baseType: !1825, size: 256, offset: 448)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1826, line: 102, size: 256, elements: !1827)
!1826 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1827 = !{!1828, !1829, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1825, file: !1826, line: 103, baseType: !721, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1825, file: !1826, line: 104, baseType: !174, size: 128, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1825, file: !1826, line: 105, baseType: !1831, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1826, line: 21, baseType: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1085, file: !1086, line: 1061, baseType: !1837, size: 64, offset: 10944)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1086, line: 43, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1085, file: !1086, line: 1064, baseType: !278, size: 64, offset: 11008)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1085, file: !1086, line: 1065, baseType: !1841, size: 64, offset: 11072)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1634, line: 14, baseType: !1843)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1634, line: 12, size: 384, elements: !1844)
!1844 = !{!1845}
!1845 = !DIDerivedType(tag: DW_TAG_member, scope: !1843, file: !1634, line: 13, baseType: !1846, size: 384)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1843, file: !1634, line: 13, size: 384, elements: !1847)
!1847 = !{!1848, !1849, !1850, !1851}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1846, file: !1634, line: 13, baseType: !101, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1846, file: !1634, line: 13, baseType: !101, size: 32, offset: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1846, file: !1634, line: 13, baseType: !101, size: 32, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1846, file: !1634, line: 13, baseType: !1852, size: 256, offset: 128)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1853, line: 32, size: 256, elements: !1854)
!1853 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1854 = !{!1855, !1860, !1873, !1879, !1888, !1908, !1913}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1852, file: !1853, line: 37, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !1853, line: 34, size: 64, elements: !1857)
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1856, file: !1853, line: 35, baseType: !1328, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1856, file: !1853, line: 36, baseType: !393, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1852, file: !1853, line: 45, baseType: !1861, size: 192)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !1853, line: 40, size: 192, elements: !1862)
!1862 = !{!1863, !1865, !1866, !1872}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1861, file: !1853, line: 41, baseType: !1864, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !261, line: 95, baseType: !101)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1861, file: !1853, line: 42, baseType: !101, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1861, file: !1853, line: 43, baseType: !1867, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1853, line: 11, baseType: !1868)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1853, line: 8, size: 64, elements: !1869)
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1868, file: !1853, line: 9, baseType: !101, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1868, file: !1853, line: 10, baseType: !100, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1861, file: !1853, line: 44, baseType: !101, size: 32, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1852, file: !1853, line: 52, baseType: !1874, size: 128)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !1853, line: 48, size: 128, elements: !1875)
!1875 = !{!1876, !1877, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1874, file: !1853, line: 49, baseType: !1328, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1874, file: !1853, line: 50, baseType: !393, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1874, file: !1853, line: 51, baseType: !1867, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1852, file: !1853, line: 61, baseType: !1880, size: 256)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !1853, line: 55, size: 256, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1887}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1880, file: !1853, line: 56, baseType: !1328, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1880, file: !1853, line: 57, baseType: !393, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1880, file: !1853, line: 58, baseType: !101, size: 32, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1880, file: !1853, line: 59, baseType: !1886, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !261, line: 94, baseType: !262)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1880, file: !1853, line: 60, baseType: !1886, size: 64, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1852, file: !1853, line: 95, baseType: !1889, size: 256)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !1853, line: 64, size: 256, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1889, file: !1853, line: 65, baseType: !100, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1889, file: !1853, line: 77, baseType: !1893, size: 192, offset: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1889, file: !1853, line: 77, size: 192, elements: !1894)
!1894 = !{!1895, !1896, !1903}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1893, file: !1853, line: 82, baseType: !1073, size: 16)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1893, file: !1853, line: 88, baseType: !1897, size: 192)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1893, file: !1853, line: 84, size: 192, elements: !1898)
!1898 = !{!1899, !1901, !1902}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1897, file: !1853, line: 85, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !1198)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1897, file: !1853, line: 86, baseType: !100, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1897, file: !1853, line: 87, baseType: !100, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1893, file: !1853, line: 93, baseType: !1904, size: 96)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1893, file: !1853, line: 90, size: 96, elements: !1905)
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1904, file: !1853, line: 91, baseType: !1900, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1904, file: !1853, line: 92, baseType: !108, size: 32, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1852, file: !1853, line: 101, baseType: !1909, size: 128)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !1853, line: 98, size: 128, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1909, file: !1853, line: 99, baseType: !263, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1909, file: !1853, line: 100, baseType: !101, size: 32, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1852, file: !1853, line: 108, baseType: !1914, size: 128)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !1853, line: 104, size: 128, elements: !1915)
!1915 = !{!1916, !1917, !1918}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1914, file: !1853, line: 105, baseType: !100, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1914, file: !1853, line: 106, baseType: !101, size: 32, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1914, file: !1853, line: 107, baseType: !7, size: 32, offset: 96)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1085, file: !1086, line: 1067, baseType: !1706, offset: 11136)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1085, file: !1086, line: 1099, baseType: !1921, size: 64, offset: 11136)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1086, line: 56, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1085, file: !1086, line: 1103, baseType: !174, size: 128, offset: 11200)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1085, file: !1086, line: 1104, baseType: !1925, size: 64, offset: 11328)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1086, line: 46, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1085, file: !1086, line: 1105, baseType: !1041, size: 192, offset: 11392)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1085, file: !1086, line: 1106, baseType: !7, size: 32, offset: 11584)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1085, file: !1086, line: 1109, baseType: !1930, size: 128, offset: 11648)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1931, size: 128, elements: !1437)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1086, line: 51, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1085, file: !1086, line: 1110, baseType: !1041, size: 192, offset: 11776)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1085, file: !1086, line: 1111, baseType: !174, size: 128, offset: 11968)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1085, file: !1086, line: 1173, baseType: !1936, size: 64, offset: 12096)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1938, line: 62, size: 256, align: 256, elements: !1939)
!1938 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1939 = !{!1940, !1941, !1942, !1947}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1937, file: !1938, line: 75, baseType: !108, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1937, file: !1938, line: 90, baseType: !108, size: 32, offset: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1937, file: !1938, line: 124, baseType: !1943, size: 64, offset: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1937, file: !1938, line: 109, size: 64, elements: !1944)
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1943, file: !1938, line: 110, baseType: !374, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1943, file: !1938, line: 112, baseType: !374, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1937, file: !1938, line: 144, baseType: !108, size: 32, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1085, file: !1086, line: 1174, baseType: !369, size: 32, offset: 12160)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1085, file: !1086, line: 1179, baseType: !278, size: 64, offset: 12224)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1085, file: !1086, line: 1182, baseType: !1951, size: 128, offset: 12288)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1021, line: 76, size: 128, elements: !1952)
!1952 = !{!1953, !1958, !1959}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1951, file: !1021, line: 85, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1955, line: 7, size: 64, elements: !1956)
!1955 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1956 = !{!1957}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1954, file: !1955, line: 12, baseType: !1235, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1951, file: !1021, line: 88, baseType: !163, size: 8, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1951, file: !1021, line: 95, baseType: !163, size: 8, offset: 72)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !1086, line: 1184, baseType: !1961, size: 128, offset: 12416)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !1086, line: 1184, size: 128, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1961, file: !1086, line: 1185, baseType: !1098, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1961, file: !1086, line: 1186, baseType: !319, size: 128, align: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1085, file: !1086, line: 1190, baseType: !1966, size: 64, offset: 12544)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1086, line: 53, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1085, file: !1086, line: 1192, baseType: !1969, size: 128, offset: 12608)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1021, line: 64, size: 128, elements: !1970)
!1970 = !{!1971, !1972, !1973}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1969, file: !1021, line: 65, baseType: !671, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1969, file: !1021, line: 67, baseType: !108, size: 32, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1969, file: !1021, line: 68, baseType: !108, size: 32, offset: 96)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1085, file: !1086, line: 1206, baseType: !101, size: 32, offset: 12736)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1085, file: !1086, line: 1207, baseType: !101, size: 32, offset: 12768)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1085, file: !1086, line: 1209, baseType: !278, size: 64, offset: 12800)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1085, file: !1086, line: 1219, baseType: !373, size: 64, offset: 12864)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1085, file: !1086, line: 1220, baseType: !373, size: 64, offset: 12928)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1085, file: !1086, line: 1317, baseType: !101, size: 32, offset: 12992)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1085, file: !1086, line: 1319, baseType: !1084, size: 64, offset: 13056)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1085, file: !1086, line: 1322, baseType: !1982, size: 64, offset: 13120)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1984, line: 56, size: 512, elements: !1985)
!1984 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1985 = !{!1986, !1987, !1988, !1989, !1990, !1991, !1992, !1994}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1983, file: !1984, line: 57, baseType: !1982, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1983, file: !1984, line: 58, baseType: !100, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1983, file: !1984, line: 59, baseType: !278, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1983, file: !1984, line: 60, baseType: !278, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1983, file: !1984, line: 61, baseType: !770, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1983, file: !1984, line: 62, baseType: !7, size: 32, offset: 320)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1983, file: !1984, line: 63, baseType: !1993, size: 64, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !97, line: 153, baseType: !373)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1983, file: !1984, line: 64, baseType: !1995, size: 64, offset: 448)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1085, file: !1086, line: 1326, baseType: !1098, size: 32, offset: 13184)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1085, file: !1086, line: 1342, baseType: !100, size: 64, offset: 13248)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1085, file: !1086, line: 1343, baseType: !374, size: 64, offset: 13312)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1085, file: !1086, line: 1344, baseType: !373, size: 64, offset: 13376)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1085, file: !1086, line: 1345, baseType: !374, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1085, file: !1086, line: 1346, baseType: !374, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1085, file: !1086, line: 1347, baseType: !374, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1085, file: !1086, line: 1348, baseType: !319, size: 128, align: 64, offset: 13504)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1085, file: !1086, line: 1358, baseType: !2006, size: 34816, offset: 13824)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2007, line: 485, size: 34816, elements: !2008)
!2007 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2008 = !{!2009, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2038, !2039, !2040, !2041, !2042, !2043, !2046, !2047, !2048}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2006, file: !2007, line: 487, baseType: !2010, size: 192)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2011, size: 192, elements: !229)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2012, line: 16, size: 64, elements: !2013)
!2012 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2011, file: !2012, line: 17, baseType: !809, size: 16)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2011, file: !2012, line: 18, baseType: !809, size: 16, offset: 16)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2011, file: !2012, line: 19, baseType: !809, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2011, file: !2012, line: 19, baseType: !809, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2011, file: !2012, line: 19, baseType: !809, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2011, file: !2012, line: 19, baseType: !809, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2011, file: !2012, line: 19, baseType: !809, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2011, file: !2012, line: 20, baseType: !809, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2011, file: !2012, line: 20, baseType: !809, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2011, file: !2012, line: 20, baseType: !809, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2011, file: !2012, line: 20, baseType: !809, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2011, file: !2012, line: 20, baseType: !809, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2011, file: !2012, line: 20, baseType: !809, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2006, file: !2007, line: 491, baseType: !278, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2006, file: !2007, line: 495, baseType: !270, size: 16, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2006, file: !2007, line: 496, baseType: !270, size: 16, offset: 272)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2006, file: !2007, line: 497, baseType: !270, size: 16, offset: 288)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2006, file: !2007, line: 498, baseType: !270, size: 16, offset: 304)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2006, file: !2007, line: 502, baseType: !278, size: 64, offset: 320)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2006, file: !2007, line: 503, baseType: !278, size: 64, offset: 384)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2006, file: !2007, line: 514, baseType: !2035, size: 256, offset: 448)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2036, size: 256, elements: !113)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2007, line: 483, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2006, file: !2007, line: 516, baseType: !278, size: 64, offset: 704)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2006, file: !2007, line: 518, baseType: !278, size: 64, offset: 768)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2006, file: !2007, line: 520, baseType: !278, size: 64, offset: 832)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2006, file: !2007, line: 521, baseType: !278, size: 64, offset: 896)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2006, file: !2007, line: 522, baseType: !278, size: 64, offset: 960)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2006, file: !2007, line: 528, baseType: !2044, size: 64, offset: 1024)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2007, line: 10, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2006, file: !2007, line: 535, baseType: !278, size: 64, offset: 1088)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2006, file: !2007, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2006, file: !2007, line: 540, baseType: !2049, size: 33280, offset: 1536)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2050, line: 317, size: 33280, elements: !2051)
!2050 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2049, file: !2050, line: 330, baseType: !7, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2049, file: !2050, line: 337, baseType: !278, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2049, file: !2050, line: 348, baseType: !2055, size: 32768, offset: 512)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2050, line: 304, size: 32768, elements: !2056)
!2056 = !{!2057, !2072, !2111, !2161, !2174}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2055, file: !2050, line: 305, baseType: !2058, size: 896)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2050, line: 12, size: 896, elements: !2059)
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2071}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2058, file: !2050, line: 13, baseType: !369, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2058, file: !2050, line: 14, baseType: !369, size: 32, offset: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2058, file: !2050, line: 15, baseType: !369, size: 32, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2058, file: !2050, line: 16, baseType: !369, size: 32, offset: 96)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2058, file: !2050, line: 17, baseType: !369, size: 32, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2058, file: !2050, line: 18, baseType: !369, size: 32, offset: 160)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2058, file: !2050, line: 19, baseType: !369, size: 32, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2058, file: !2050, line: 22, baseType: !2068, size: 640, offset: 224)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 640, elements: !2069)
!2069 = !{!2070}
!2070 = !DISubrange(count: 20)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2058, file: !2050, line: 25, baseType: !369, size: 32, offset: 864)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2055, file: !2050, line: 306, baseType: !2073, size: 4096, align: 128)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2050, line: 34, size: 4096, align: 128, elements: !2074)
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2094, !2095, !2096, !2100, !2102, !2106}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2073, file: !2050, line: 35, baseType: !809, size: 16)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2073, file: !2050, line: 36, baseType: !809, size: 16, offset: 16)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2073, file: !2050, line: 37, baseType: !809, size: 16, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2073, file: !2050, line: 38, baseType: !809, size: 16, offset: 48)
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !2050, line: 39, baseType: !2080, size: 128, offset: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2073, file: !2050, line: 39, size: 128, elements: !2081)
!2081 = !{!2082, !2087}
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !2050, line: 40, baseType: !2083, size: 128)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2080, file: !2050, line: 40, size: 128, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2083, file: !2050, line: 41, baseType: !373, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2083, file: !2050, line: 42, baseType: !373, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !2050, line: 44, baseType: !2088, size: 128)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2080, file: !2050, line: 44, size: 128, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2093}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2088, file: !2050, line: 45, baseType: !369, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2088, file: !2050, line: 46, baseType: !369, size: 32, offset: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2088, file: !2050, line: 47, baseType: !369, size: 32, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2088, file: !2050, line: 48, baseType: !369, size: 32, offset: 96)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2073, file: !2050, line: 51, baseType: !369, size: 32, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2073, file: !2050, line: 52, baseType: !369, size: 32, offset: 224)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2073, file: !2050, line: 55, baseType: !2097, size: 1024, offset: 256)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 1024, elements: !2098)
!2098 = !{!2099}
!2099 = !DISubrange(count: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2073, file: !2050, line: 58, baseType: !2101, size: 2048, offset: 1280)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 2048, elements: !233)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2073, file: !2050, line: 60, baseType: !2103, size: 384, offset: 3328)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 384, elements: !2104)
!2104 = !{!2105}
!2105 = !DISubrange(count: 12)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !2050, line: 62, baseType: !2107, size: 384, offset: 3712)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2073, file: !2050, line: 62, size: 384, elements: !2108)
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2107, file: !2050, line: 63, baseType: !2103, size: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2107, file: !2050, line: 64, baseType: !2103, size: 384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2055, file: !2050, line: 307, baseType: !2112, size: 1088)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2050, line: 79, size: 1088, elements: !2113)
!2113 = !{!2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2160}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2112, file: !2050, line: 80, baseType: !369, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2112, file: !2050, line: 81, baseType: !369, size: 32, offset: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2112, file: !2050, line: 82, baseType: !369, size: 32, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2112, file: !2050, line: 83, baseType: !369, size: 32, offset: 96)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2112, file: !2050, line: 84, baseType: !369, size: 32, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2112, file: !2050, line: 85, baseType: !369, size: 32, offset: 160)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2112, file: !2050, line: 86, baseType: !369, size: 32, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2112, file: !2050, line: 88, baseType: !2068, size: 640, offset: 224)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2112, file: !2050, line: 89, baseType: !1220, size: 8, offset: 864)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2112, file: !2050, line: 90, baseType: !1220, size: 8, offset: 872)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2112, file: !2050, line: 91, baseType: !1220, size: 8, offset: 880)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2112, file: !2050, line: 92, baseType: !1220, size: 8, offset: 888)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2112, file: !2050, line: 93, baseType: !1220, size: 8, offset: 896)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2112, file: !2050, line: 94, baseType: !1220, size: 8, offset: 904)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2112, file: !2050, line: 95, baseType: !2129, size: 64, offset: 960)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2131, line: 11, size: 128, elements: !2132)
!2131 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2132 = !{!2133, !2134}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2130, file: !2131, line: 12, baseType: !263, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2130, file: !2131, line: 13, baseType: !2135, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2137, line: 56, size: 1344, elements: !2138)
!2137 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2138 = !{!2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2136, file: !2137, line: 61, baseType: !278, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2136, file: !2137, line: 62, baseType: !278, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2136, file: !2137, line: 63, baseType: !278, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2136, file: !2137, line: 64, baseType: !278, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2136, file: !2137, line: 65, baseType: !278, size: 64, offset: 256)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2136, file: !2137, line: 66, baseType: !278, size: 64, offset: 320)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2136, file: !2137, line: 68, baseType: !278, size: 64, offset: 384)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2136, file: !2137, line: 69, baseType: !278, size: 64, offset: 448)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2136, file: !2137, line: 70, baseType: !278, size: 64, offset: 512)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2136, file: !2137, line: 71, baseType: !278, size: 64, offset: 576)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2136, file: !2137, line: 72, baseType: !278, size: 64, offset: 640)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2136, file: !2137, line: 73, baseType: !278, size: 64, offset: 704)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2136, file: !2137, line: 74, baseType: !278, size: 64, offset: 768)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2136, file: !2137, line: 75, baseType: !278, size: 64, offset: 832)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2136, file: !2137, line: 76, baseType: !278, size: 64, offset: 896)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2136, file: !2137, line: 81, baseType: !278, size: 64, offset: 960)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2136, file: !2137, line: 83, baseType: !278, size: 64, offset: 1024)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2136, file: !2137, line: 84, baseType: !278, size: 64, offset: 1088)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2136, file: !2137, line: 85, baseType: !278, size: 64, offset: 1152)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2136, file: !2137, line: 86, baseType: !278, size: 64, offset: 1216)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2136, file: !2137, line: 87, baseType: !278, size: 64, offset: 1280)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2112, file: !2050, line: 96, baseType: !369, size: 32, offset: 1024)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2055, file: !2050, line: 308, baseType: !2162, size: 4608, align: 512)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2050, line: 289, size: 4608, align: 512, elements: !2163)
!2163 = !{!2164, !2165, !2172}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2162, file: !2050, line: 290, baseType: !2073, size: 4096, align: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2162, file: !2050, line: 291, baseType: !2166, size: 512, offset: 4096)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2050, line: 268, size: 512, elements: !2167)
!2167 = !{!2168, !2169, !2170}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2166, file: !2050, line: 269, baseType: !373, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2166, file: !2050, line: 270, baseType: !373, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2166, file: !2050, line: 271, baseType: !2171, size: 384, offset: 128)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 384, elements: !1493)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2162, file: !2050, line: 292, baseType: !2173, offset: 4608)
!2173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1220, elements: !1591)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2055, file: !2050, line: 309, baseType: !2175, size: 32768)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1220, size: 32768, elements: !2176)
!2176 = !{!2177}
!2177 = !DISubrange(count: 4096)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1081, file: !673, line: 378, baseType: !2179, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1077, file: !673, line: 384, baseType: !1370, size: 192, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !928, file: !673, line: 500, baseType: !187, offset: 6656)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !928, file: !673, line: 501, baseType: !2183, size: 64, offset: 6656)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !673, line: 387, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !928, file: !673, line: 516, baseType: !1581, size: 64, offset: 6720)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !928, file: !673, line: 519, baseType: !306, size: 64, offset: 6784)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !928, file: !673, line: 521, baseType: !2188, size: 64, offset: 6848)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !673, line: 521, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !928, file: !673, line: 545, baseType: !697, size: 32, offset: 6912)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !928, file: !673, line: 548, baseType: !163, size: 8, offset: 6944)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !928, file: !673, line: 550, baseType: !2193, offset: 6952)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2194, line: 142, elements: !201)
!2194 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !928, file: !673, line: 554, baseType: !1825, size: 256, offset: 6976)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !928, file: !673, line: 557, baseType: !369, size: 32, offset: 7232)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !925, file: !673, line: 565, baseType: !2198, offset: 7296)
!2198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, elements: !2199)
!2199 = !{!2200}
!2200 = !DISubrange(count: -1)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !921, file: !673, line: 151, baseType: !697, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !914, file: !673, line: 156, baseType: !187, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !673, line: 159, baseType: !2204, size: 128)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !673, line: 159, size: 128, elements: !2205)
!2205 = !{!2206, !2209}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2204, file: !673, line: 161, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !673, line: 161, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2204, file: !673, line: 162, baseType: !100, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !677, file: !673, line: 176, baseType: !319, size: 128, align: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !673, line: 179, baseType: !2212, size: 32, offset: 384)
!2212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !673, line: 179, size: 32, elements: !2213)
!2213 = !{!2214, !2215, !2216, !2217}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2212, file: !673, line: 184, baseType: !697, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2212, file: !673, line: 192, baseType: !7, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2212, file: !673, line: 194, baseType: !7, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2212, file: !673, line: 195, baseType: !101, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !672, file: !673, line: 199, baseType: !697, size: 32, offset: 416)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !607, file: !31, line: 1964, baseType: !2220, size: 64, offset: 1344)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!263, !549, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2225, line: 12, size: 256, elements: !2226)
!2225 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2226 = !{!2227, !2228, !2229, !2230, !2231}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2224, file: !2225, line: 13, baseType: !96, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2224, file: !2225, line: 16, baseType: !101, size: 32, offset: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2224, file: !2225, line: 23, baseType: !278, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2224, file: !2225, line: 30, baseType: !278, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2224, file: !2225, line: 33, baseType: !2232, size: 64, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !673, line: 27, flags: DIFlagFwdDecl)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !607, file: !31, line: 1966, baseType: !2220, size: 64, offset: 1408)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !550, file: !31, line: 1424, baseType: !2236, size: 64, offset: 448)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2238)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2239)
!2239 = !{!2240, !2286, !2290, !2294, !2295, !2296, !2297, !2298, !2303, !2308, !2312}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2238, file: !25, line: 323, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!101, !2244}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2271, !2272, !2273}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2245, file: !25, line: 295, baseType: !589, size: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2245, file: !25, line: 296, baseType: !174, size: 128, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2245, file: !25, line: 297, baseType: !174, size: 128, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2245, file: !25, line: 298, baseType: !174, size: 128, offset: 384)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2245, file: !25, line: 299, baseType: !1041, size: 192, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2245, file: !25, line: 300, baseType: !187, offset: 704)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2245, file: !25, line: 301, baseType: !697, size: 32, offset: 704)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2245, file: !25, line: 302, baseType: !549, size: 64, offset: 768)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2245, file: !25, line: 303, baseType: !2256, size: 64, offset: 832)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2257)
!2257 = !{!2258, !2270}
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !25, line: 69, baseType: !2259, size: 32)
!2259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2256, file: !25, line: 69, size: 32, elements: !2260)
!2260 = !{!2261, !2262, !2263}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2259, file: !25, line: 70, baseType: !387, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2259, file: !25, line: 71, baseType: !395, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2259, file: !25, line: 72, baseType: !2264, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2265, line: 24, baseType: !2266)
!2265 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2265, line: 22, size: 32, elements: !2267)
!2267 = !{!2268}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2266, file: !2265, line: 23, baseType: !2269, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2265, line: 20, baseType: !393)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2256, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2245, file: !25, line: 304, baseType: !481, size: 64, offset: 896)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2245, file: !25, line: 305, baseType: !278, size: 64, offset: 960)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2245, file: !25, line: 306, baseType: !2274, size: 576, offset: 1024)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2275)
!2275 = !{!2276, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2274, file: !25, line: 206, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !483)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2274, file: !25, line: 207, baseType: !2277, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2274, file: !25, line: 208, baseType: !2277, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2274, file: !25, line: 209, baseType: !2277, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2274, file: !25, line: 210, baseType: !2277, size: 64, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2274, file: !25, line: 211, baseType: !2277, size: 64, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2274, file: !25, line: 212, baseType: !2277, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2274, file: !25, line: 213, baseType: !489, size: 64, offset: 448)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2274, file: !25, line: 214, baseType: !489, size: 64, offset: 512)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2238, file: !25, line: 324, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!2244, !549, !101}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2238, file: !25, line: 325, baseType: !2291, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{null, !2244}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2238, file: !25, line: 326, baseType: !2241, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2238, file: !25, line: 327, baseType: !2241, size: 64, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2238, file: !25, line: 328, baseType: !2241, size: 64, offset: 320)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2238, file: !25, line: 329, baseType: !635, size: 64, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2238, file: !25, line: 332, baseType: !2299, size: 64, offset: 448)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!2302, !381}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2238, file: !25, line: 333, baseType: !2304, size: 64, offset: 512)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!101, !381, !2307}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2238, file: !25, line: 335, baseType: !2309, size: 64, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!101, !381, !2302}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2238, file: !25, line: 337, baseType: !2313, size: 64, offset: 640)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!101, !549, !2316}
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !550, file: !31, line: 1425, baseType: !2318, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2320)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2321)
!2321 = !{!2322, !2326, !2327, !2331, !2332, !2333, !2348, !2371, !2375, !2376, !2399}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2320, file: !25, line: 429, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!101, !549, !101, !101, !499}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2320, file: !25, line: 430, baseType: !635, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2320, file: !25, line: 431, baseType: !2328, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!101, !549, !7}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2320, file: !25, line: 432, baseType: !2328, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2320, file: !25, line: 433, baseType: !635, size: 64, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2320, file: !25, line: 434, baseType: !2334, size: 64, offset: 320)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!101, !549, !101, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2338, file: !25, line: 416, baseType: !101, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2338, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2338, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2338, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2338, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2338, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2338, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2338, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2320, file: !25, line: 435, baseType: !2349, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!101, !549, !2256, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2354)
!2354 = !{!2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2353, file: !25, line: 344, baseType: !101, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2353, file: !25, line: 345, baseType: !373, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2353, file: !25, line: 346, baseType: !373, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2353, file: !25, line: 347, baseType: !373, size: 64, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2353, file: !25, line: 348, baseType: !373, size: 64, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2353, file: !25, line: 349, baseType: !373, size: 64, offset: 320)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2353, file: !25, line: 350, baseType: !373, size: 64, offset: 384)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2353, file: !25, line: 351, baseType: !727, size: 64, offset: 448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2353, file: !25, line: 353, baseType: !727, size: 64, offset: 512)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2353, file: !25, line: 354, baseType: !101, size: 32, offset: 576)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2353, file: !25, line: 355, baseType: !101, size: 32, offset: 608)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2353, file: !25, line: 356, baseType: !373, size: 64, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2353, file: !25, line: 357, baseType: !373, size: 64, offset: 704)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2353, file: !25, line: 358, baseType: !373, size: 64, offset: 768)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2353, file: !25, line: 359, baseType: !727, size: 64, offset: 832)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2353, file: !25, line: 360, baseType: !101, size: 32, offset: 896)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2320, file: !25, line: 436, baseType: !2372, size: 64, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!101, !549, !2316, !2352}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2320, file: !25, line: 438, baseType: !2349, size: 64, offset: 512)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2320, file: !25, line: 439, baseType: !2377, size: 64, offset: 576)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!101, !549, !2380}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2382)
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2381, file: !25, line: 410, baseType: !7, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2381, file: !25, line: 411, baseType: !2385, size: 1344, offset: 64)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2386, size: 1344, elements: !229)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2387)
!2387 = !{!2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2398}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2386, file: !25, line: 396, baseType: !7, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2386, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2386, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2386, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2386, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2386, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2386, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2386, file: !25, line: 404, baseType: !375, size: 64, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2386, file: !25, line: 405, baseType: !2397, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !97, line: 126, baseType: !373)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2386, file: !25, line: 406, baseType: !2397, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2320, file: !25, line: 440, baseType: !2328, size: 64, offset: 640)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !550, file: !31, line: 1426, baseType: !2401, size: 64, offset: 576)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !550, file: !31, line: 1427, baseType: !278, size: 64, offset: 640)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !550, file: !31, line: 1428, baseType: !278, size: 64, offset: 704)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !550, file: !31, line: 1429, baseType: !278, size: 64, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !550, file: !31, line: 1430, baseType: !336, size: 64, offset: 832)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !550, file: !31, line: 1431, baseType: !717, size: 256, offset: 896)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !550, file: !31, line: 1432, baseType: !101, size: 32, offset: 1152)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !550, file: !31, line: 1433, baseType: !697, size: 32, offset: 1184)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !550, file: !31, line: 1437, baseType: !2412, size: 64, offset: 1216)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2415)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !550, file: !31, line: 1449, baseType: !2417, size: 64, offset: 1280)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !352, line: 34, size: 64, elements: !2418)
!2418 = !{!2419}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2417, file: !352, line: 35, baseType: !355, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !550, file: !31, line: 1450, baseType: !174, size: 128, offset: 1344)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !550, file: !31, line: 1451, baseType: !2422, size: 64, offset: 1472)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !550, file: !31, line: 1452, baseType: !1791, size: 64, offset: 1536)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !550, file: !31, line: 1453, baseType: !2426, size: 64, offset: 1600)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !550, file: !31, line: 1454, baseType: !589, size: 128, offset: 1664)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !550, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !550, file: !31, line: 1456, baseType: !2431, size: 2432, offset: 1856)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2437, !2469}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2431, file: !25, line: 519, baseType: !7, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2431, file: !25, line: 520, baseType: !717, size: 256, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2431, file: !25, line: 521, baseType: !2436, size: 192, offset: 320)
!2436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 192, elements: !229)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2431, file: !25, line: 522, baseType: !2438, size: 1728, offset: 512)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2439, size: 1728, elements: !229)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2440)
!2440 = !{!2441, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2439, file: !25, line: 223, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2444)
!2444 = !{!2445, !2446, !2459, !2460}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2443, file: !25, line: 444, baseType: !101, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2443, file: !25, line: 445, baseType: !2447, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2449)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2450)
!2450 = !{!2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2449, file: !25, line: 311, baseType: !635, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2449, file: !25, line: 312, baseType: !635, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2449, file: !25, line: 313, baseType: !635, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2449, file: !25, line: 314, baseType: !635, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2449, file: !25, line: 315, baseType: !2241, size: 64, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2449, file: !25, line: 316, baseType: !2241, size: 64, offset: 320)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2449, file: !25, line: 317, baseType: !2241, size: 64, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2449, file: !25, line: 318, baseType: !2313, size: 64, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2443, file: !25, line: 446, baseType: !93, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2443, file: !25, line: 447, baseType: !2442, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2439, file: !25, line: 224, baseType: !101, size: 32, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2439, file: !25, line: 226, baseType: !174, size: 128, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2439, file: !25, line: 227, baseType: !278, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2439, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2439, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2439, file: !25, line: 230, baseType: !2277, size: 64, offset: 384)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2439, file: !25, line: 231, baseType: !2277, size: 64, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2439, file: !25, line: 232, baseType: !100, size: 64, offset: 512)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2431, file: !25, line: 523, baseType: !2470, size: 192, offset: 2240)
!2470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2447, size: 192, elements: !229)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !550, file: !31, line: 1458, baseType: !2472, size: 2112, offset: 4288)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2473)
!2473 = !{!2474, !2475, !2476}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2472, file: !31, line: 1411, baseType: !101, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2472, file: !31, line: 1412, baseType: !1349, size: 128, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2472, file: !31, line: 1413, baseType: !2477, size: 1920, offset: 192)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2478, size: 1920, elements: !229)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2479, line: 12, size: 640, elements: !2480)
!2479 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2480 = !{!2481, !2489, !2491, !2496, !2497}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2478, file: !2479, line: 13, baseType: !2482, size: 320)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2483, line: 17, size: 320, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2484 = !{!2485, !2486, !2487, !2488}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2482, file: !2483, line: 18, baseType: !101, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2482, file: !2483, line: 19, baseType: !101, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2482, file: !2483, line: 20, baseType: !1349, size: 128, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2482, file: !2483, line: 22, baseType: !319, size: 128, align: 64, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2478, file: !2479, line: 14, baseType: !2490, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2478, file: !2479, line: 15, baseType: !2492, size: 64, offset: 384)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2493, line: 16, size: 64, elements: !2494)
!2493 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2494 = !{!2495}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2492, file: !2493, line: 17, baseType: !1084, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2478, file: !2479, line: 16, baseType: !1349, size: 128, offset: 448)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2478, file: !2479, line: 17, baseType: !697, size: 32, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !550, file: !31, line: 1465, baseType: !100, size: 64, offset: 6400)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !550, file: !31, line: 1468, baseType: !369, size: 32, offset: 6464)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !550, file: !31, line: 1470, baseType: !489, size: 64, offset: 6528)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !550, file: !31, line: 1471, baseType: !489, size: 64, offset: 6592)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !550, file: !31, line: 1473, baseType: !108, size: 32, offset: 6656)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !550, file: !31, line: 1474, baseType: !2504, size: 64, offset: 6720)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !550, file: !31, line: 1477, baseType: !2507, size: 256, offset: 6784)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !2098)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !550, file: !31, line: 1478, baseType: !2509, size: 128, offset: 7040)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2510, line: 18, baseType: !2511)
!2510 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2510, line: 16, size: 128, elements: !2512)
!2512 = !{!2513}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2511, file: !2510, line: 17, baseType: !2514, size: 128)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 128, elements: !1603)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !550, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !550, file: !31, line: 1481, baseType: !2517, size: 32, offset: 7200)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !97, line: 150, baseType: !7)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !550, file: !31, line: 1487, baseType: !1041, size: 192, offset: 7232)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !550, file: !31, line: 1493, baseType: !160, size: 64, offset: 7424)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !550, file: !31, line: 1495, baseType: !2521, size: 64, offset: 7488)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2523)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !334, line: 135, size: 1024, align: 512, elements: !2524)
!2524 = !{!2525, !2529, !2530, !2537, !2543, !2547, !2551, !2555, !2556, !2560, !2564, !2569, !2573}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2523, file: !334, line: 136, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!101, !336, !7}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2523, file: !334, line: 137, baseType: !2526, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2523, file: !334, line: 138, baseType: !2531, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!101, !2534, !2536}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2523, file: !334, line: 139, baseType: !2538, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!101, !2534, !7, !160, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2523, file: !334, line: 141, baseType: !2544, size: 64, offset: 256)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!101, !2534}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2523, file: !334, line: 142, baseType: !2548, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!101, !336}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2523, file: !334, line: 143, baseType: !2552, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{null, !336}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2523, file: !334, line: 144, baseType: !2552, size: 64, offset: 448)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2523, file: !334, line: 145, baseType: !2557, size: 64, offset: 512)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{null, !336, !381}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2523, file: !334, line: 146, baseType: !2561, size: 64, offset: 576)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!228, !336, !228, !101}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2523, file: !334, line: 147, baseType: !2565, size: 64, offset: 640)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!332, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2523, file: !334, line: 148, baseType: !2570, size: 64, offset: 704)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!101, !499, !163}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2523, file: !334, line: 149, baseType: !2574, size: 64, offset: 768)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!336, !336, !2577}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !550, file: !31, line: 1500, baseType: !101, size: 32, offset: 7552)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !550, file: !31, line: 1502, baseType: !2581, size: 448, offset: 7616)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2225, line: 60, size: 448, elements: !2582)
!2582 = !{!2583, !2588, !2589, !2590, !2591, !2592, !2593}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2581, file: !2225, line: 61, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!278, !2587, !2223}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2581, file: !2225, line: 63, baseType: !2584, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2581, file: !2225, line: 66, baseType: !263, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2581, file: !2225, line: 67, baseType: !101, size: 32, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2581, file: !2225, line: 68, baseType: !7, size: 32, offset: 224)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2581, file: !2225, line: 71, baseType: !174, size: 128, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2581, file: !2225, line: 77, baseType: !2594, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !550, file: !31, line: 1505, baseType: !721, size: 64, offset: 8064)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !550, file: !31, line: 1508, baseType: !721, size: 64, offset: 8128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !550, file: !31, line: 1511, baseType: !101, size: 32, offset: 8192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !550, file: !31, line: 1514, baseType: !859, size: 32, offset: 8224)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !550, file: !31, line: 1517, baseType: !2600, size: 64, offset: 8256)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1826, line: 18, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !550, file: !31, line: 1518, baseType: !585, size: 64, offset: 8320)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !550, file: !31, line: 1525, baseType: !1581, size: 64, offset: 8384)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !550, file: !31, line: 1532, baseType: !2605, size: 64, offset: 8448)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2606, line: 52, size: 64, elements: !2607)
!2606 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2607 = !{!2608}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2605, file: !2606, line: 53, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2606, line: 40, size: 256, elements: !2611)
!2611 = !{!2612, !2613, !2618}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2610, file: !2606, line: 42, baseType: !187)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2610, file: !2606, line: 44, baseType: !2614, size: 192)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2606, line: 28, size: 192, elements: !2615)
!2615 = !{!2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2614, file: !2606, line: 29, baseType: !174, size: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2614, file: !2606, line: 31, baseType: !263, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2610, file: !2606, line: 49, baseType: !263, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !550, file: !31, line: 1533, baseType: !2605, size: 64, offset: 8512)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !550, file: !31, line: 1534, baseType: !319, size: 128, align: 64, offset: 8576)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !550, file: !31, line: 1535, baseType: !1825, size: 256, offset: 8704)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !550, file: !31, line: 1537, baseType: !1041, size: 192, offset: 8960)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !550, file: !31, line: 1542, baseType: !101, size: 32, offset: 9152)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !550, file: !31, line: 1545, baseType: !187, offset: 9184)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !550, file: !31, line: 1546, baseType: !174, size: 128, offset: 9216)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !550, file: !31, line: 1548, baseType: !187, offset: 9344)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !550, file: !31, line: 1549, baseType: !174, size: 128, offset: 9344)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !382, file: !31, line: 624, baseType: !684, size: 64, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !382, file: !31, line: 631, baseType: !278, size: 64, offset: 320)
!2630 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !31, line: 639, baseType: !2631, size: 32, offset: 384)
!2631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !31, line: 639, size: 32, elements: !2632)
!2632 = !{!2633, !2635}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2631, file: !31, line: 640, baseType: !2634, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2631, file: !31, line: 641, baseType: !7, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !382, file: !31, line: 643, baseType: !463, size: 32, offset: 416)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !382, file: !31, line: 644, baseType: !481, size: 64, offset: 448)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !382, file: !31, line: 645, baseType: !485, size: 128, offset: 512)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !382, file: !31, line: 646, baseType: !485, size: 128, offset: 640)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !382, file: !31, line: 647, baseType: !485, size: 128, offset: 768)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !382, file: !31, line: 648, baseType: !187, offset: 896)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !382, file: !31, line: 649, baseType: !270, size: 16, offset: 896)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !382, file: !31, line: 650, baseType: !1220, size: 8, offset: 912)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !382, file: !31, line: 651, baseType: !1220, size: 8, offset: 920)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !382, file: !31, line: 652, baseType: !2397, size: 64, offset: 960)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !382, file: !31, line: 659, baseType: !278, size: 64, offset: 1024)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !382, file: !31, line: 660, baseType: !717, size: 256, offset: 1088)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !382, file: !31, line: 662, baseType: !278, size: 64, offset: 1344)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !382, file: !31, line: 663, baseType: !278, size: 64, offset: 1408)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !382, file: !31, line: 665, baseType: !589, size: 128, offset: 1472)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !382, file: !31, line: 666, baseType: !174, size: 128, offset: 1600)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !382, file: !31, line: 675, baseType: !174, size: 128, offset: 1728)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !382, file: !31, line: 676, baseType: !174, size: 128, offset: 1856)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !382, file: !31, line: 677, baseType: !174, size: 128, offset: 1984)
!2655 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !31, line: 678, baseType: !2656, size: 128, offset: 2112)
!2656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !31, line: 678, size: 128, elements: !2657)
!2657 = !{!2658, !2659}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2656, file: !31, line: 679, baseType: !585, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2656, file: !31, line: 680, baseType: !319, size: 128, align: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !382, file: !31, line: 682, baseType: !723, size: 64, offset: 2240)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !382, file: !31, line: 683, baseType: !723, size: 64, offset: 2304)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !382, file: !31, line: 684, baseType: !697, size: 32, offset: 2368)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !382, file: !31, line: 685, baseType: !697, size: 32, offset: 2400)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !382, file: !31, line: 686, baseType: !697, size: 32, offset: 2432)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !382, file: !31, line: 688, baseType: !697, size: 32, offset: 2464)
!2666 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !31, line: 690, baseType: !2667, size: 64, offset: 2496)
!2667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !31, line: 690, size: 64, elements: !2668)
!2668 = !{!2669, !2891}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2667, file: !31, line: 691, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2672)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2673)
!2673 = !{!2674, !2675, !2679, !2684, !2688, !2689, !2690, !2694, !2707, !2708, !2715, !2719, !2720, !2724, !2725, !2729, !2734, !2735, !2739, !2743, !2851, !2855, !2856, !2860, !2861, !2865, !2869, !2874, !2878, !2882, !2886, !2890}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2672, file: !31, line: 1823, baseType: !93, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2672, file: !31, line: 1824, baseType: !2676, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!481, !306, !481, !101}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2672, file: !31, line: 1825, baseType: !2680, size: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!259, !306, !228, !275, !2683}
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2672, file: !31, line: 1826, baseType: !2685, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!259, !306, !160, !275, !2683}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2672, file: !31, line: 1827, baseType: !794, size: 64, offset: 256)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2672, file: !31, line: 1828, baseType: !794, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2672, file: !31, line: 1829, baseType: !2691, size: 64, offset: 384)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!101, !797, !163}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2672, file: !31, line: 1830, baseType: !2695, size: 64, offset: 448)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!101, !306, !2698}
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2700)
!2700 = !{!2701, !2706}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2699, file: !31, line: 1777, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2703)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!101, !2698, !160, !101, !481, !373, !7}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2699, file: !31, line: 1778, baseType: !481, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2672, file: !31, line: 1831, baseType: !2695, size: 64, offset: 512)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2672, file: !31, line: 1832, baseType: !2709, size: 64, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!2712, !306, !2713}
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !107, line: 52, baseType: !7)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !569, line: 27, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2672, file: !31, line: 1833, baseType: !2716, size: 64, offset: 640)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!263, !306, !7, !278}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2672, file: !31, line: 1834, baseType: !2716, size: 64, offset: 704)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2672, file: !31, line: 1835, baseType: !2721, size: 64, offset: 768)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!101, !306, !931}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2672, file: !31, line: 1836, baseType: !278, size: 64, offset: 832)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2672, file: !31, line: 1837, baseType: !2726, size: 64, offset: 896)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!101, !381, !306}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2672, file: !31, line: 1838, baseType: !2730, size: 64, offset: 960)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!101, !306, !2733}
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !100)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2672, file: !31, line: 1839, baseType: !2726, size: 64, offset: 1024)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2672, file: !31, line: 1840, baseType: !2736, size: 64, offset: 1088)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!101, !306, !481, !481, !101}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2672, file: !31, line: 1841, baseType: !2740, size: 64, offset: 1152)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!101, !101, !306, !101}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2672, file: !31, line: 1842, baseType: !2744, size: 64, offset: 1216)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!101, !306, !101, !2747}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2749)
!2749 = !{!2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2781, !2782, !2783, !2796, !2827}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2748, file: !31, line: 1063, baseType: !2747, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2748, file: !31, line: 1064, baseType: !174, size: 128, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2748, file: !31, line: 1065, baseType: !589, size: 128, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2748, file: !31, line: 1066, baseType: !174, size: 128, offset: 320)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2748, file: !31, line: 1069, baseType: !174, size: 128, offset: 448)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2748, file: !31, line: 1072, baseType: !2733, size: 64, offset: 576)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2748, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2748, file: !31, line: 1074, baseType: !379, size: 8, offset: 672)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2748, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2748, file: !31, line: 1076, baseType: !101, size: 32, offset: 736)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2748, file: !31, line: 1077, baseType: !1349, size: 128, offset: 768)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2748, file: !31, line: 1078, baseType: !306, size: 64, offset: 896)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2748, file: !31, line: 1079, baseType: !481, size: 64, offset: 960)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2748, file: !31, line: 1080, baseType: !481, size: 64, offset: 1024)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2748, file: !31, line: 1082, baseType: !2765, size: 64, offset: 1088)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2767)
!2767 = !{!2768, !2776, !2777, !2778, !2779, !2780}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2766, file: !31, line: 1315, baseType: !2769)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2770, line: 20, baseType: !2771)
!2770 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2770, line: 11, elements: !2772)
!2772 = !{!2773}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2771, file: !2770, line: 12, baseType: !2774)
!2774 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !199, line: 33, baseType: !2775)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 31, elements: !201)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2766, file: !31, line: 1316, baseType: !101, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2766, file: !31, line: 1317, baseType: !101, size: 32, offset: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2766, file: !31, line: 1318, baseType: !2765, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2766, file: !31, line: 1319, baseType: !306, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2766, file: !31, line: 1320, baseType: !319, size: 128, align: 64, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2748, file: !31, line: 1084, baseType: !278, size: 64, offset: 1152)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2748, file: !31, line: 1085, baseType: !278, size: 64, offset: 1216)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2748, file: !31, line: 1087, baseType: !2784, size: 64, offset: 1280)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2786)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2787)
!2787 = !{!2788, !2792}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2786, file: !31, line: 1012, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !2747, !2747}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2786, file: !31, line: 1013, baseType: !2793, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !2747}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2748, file: !31, line: 1088, baseType: !2797, size: 64, offset: 1344)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2799)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2800)
!2800 = !{!2801, !2805, !2809, !2810, !2814, !2818, !2822, !2826}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2799, file: !31, line: 1017, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!2733, !2733}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2799, file: !31, line: 1018, baseType: !2806, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{null, !2733}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2799, file: !31, line: 1019, baseType: !2793, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2799, file: !31, line: 1020, baseType: !2811, size: 64, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!101, !2747, !101}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2799, file: !31, line: 1021, baseType: !2815, size: 64, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!163, !2747}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2799, file: !31, line: 1022, baseType: !2819, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!101, !2747, !101, !177}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2799, file: !31, line: 1023, baseType: !2823, size: 64, offset: 384)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{null, !2747, !771}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2799, file: !31, line: 1024, baseType: !2815, size: 64, offset: 448)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2748, file: !31, line: 1097, baseType: !2828, size: 256, offset: 1408)
!2828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2748, file: !31, line: 1089, size: 256, elements: !2829)
!2829 = !{!2830, !2839, !2845}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2828, file: !31, line: 1090, baseType: !2831, size: 256)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2832, line: 10, size: 256, elements: !2833)
!2832 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2833 = !{!2834, !2835, !2838}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2831, file: !2832, line: 11, baseType: !369, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2831, file: !2832, line: 12, baseType: !2836, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2832, line: 5, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2831, file: !2832, line: 13, baseType: !174, size: 128, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2828, file: !31, line: 1091, baseType: !2840, size: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2832, line: 17, size: 64, elements: !2841)
!2841 = !{!2842}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2840, file: !2832, line: 18, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2832, line: 16, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2828, file: !31, line: 1096, baseType: !2846, size: 192)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2828, file: !31, line: 1092, size: 192, elements: !2847)
!2847 = !{!2848, !2849, !2850}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2846, file: !31, line: 1093, baseType: !174, size: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2846, file: !31, line: 1094, baseType: !101, size: 32, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2846, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2672, file: !31, line: 1843, baseType: !2852, size: 64, offset: 1280)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!259, !306, !671, !101, !275, !2683, !101}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2672, file: !31, line: 1844, baseType: !971, size: 64, offset: 1344)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2672, file: !31, line: 1845, baseType: !2857, size: 64, offset: 1408)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!101, !101}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2672, file: !31, line: 1846, baseType: !2744, size: 64, offset: 1472)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2672, file: !31, line: 1847, baseType: !2862, size: 64, offset: 1536)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!259, !1966, !306, !2683, !275, !7}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2672, file: !31, line: 1848, baseType: !2866, size: 64, offset: 1600)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!259, !306, !2683, !1966, !275, !7}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2672, file: !31, line: 1849, baseType: !2870, size: 64, offset: 1664)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!101, !306, !263, !2873, !771}
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2672, file: !31, line: 1850, baseType: !2875, size: 64, offset: 1728)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!263, !306, !101, !481, !481}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2672, file: !31, line: 1852, baseType: !2879, size: 64, offset: 1792)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null, !661, !306}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2672, file: !31, line: 1856, baseType: !2883, size: 64, offset: 1856)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!259, !306, !481, !306, !481, !275, !7}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2672, file: !31, line: 1858, baseType: !2887, size: 64, offset: 1920)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!481, !306, !481, !306, !481, !481, !7}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2672, file: !31, line: 1861, baseType: !2736, size: 64, offset: 1984)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2667, file: !31, line: 692, baseType: !614, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !382, file: !31, line: 694, baseType: !2893, size: 64, offset: 2560)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2895)
!2895 = !{!2896, !2897, !2898, !2899}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2894, file: !31, line: 1101, baseType: !187)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2894, file: !31, line: 1102, baseType: !174, size: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2894, file: !31, line: 1103, baseType: !174, size: 128, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2894, file: !31, line: 1104, baseType: !174, size: 128, offset: 256)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !382, file: !31, line: 695, baseType: !685, size: 1216, align: 64, offset: 2624)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !382, file: !31, line: 696, baseType: !174, size: 128, offset: 3840)
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !31, line: 697, baseType: !2903, size: 64, offset: 3968)
!2903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !31, line: 697, size: 64, elements: !2904)
!2904 = !{!2905, !2906, !2907, !2910, !2911}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2903, file: !31, line: 698, baseType: !1966, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2903, file: !31, line: 699, baseType: !2422, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2903, file: !31, line: 700, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2903, file: !31, line: 701, baseType: !228, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2903, file: !31, line: 702, baseType: !7, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !382, file: !31, line: 705, baseType: !108, size: 32, offset: 4032)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !382, file: !31, line: 708, baseType: !108, size: 32, offset: 4064)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !382, file: !31, line: 709, baseType: !2504, size: 64, offset: 4096)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !382, file: !31, line: 720, baseType: !100, size: 64, offset: 4160)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !337, file: !334, line: 98, baseType: !2917, size: 256, offset: 448)
!2917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 256, elements: !2098)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !337, file: !334, line: 101, baseType: !2919, size: 32, offset: 704)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2920, line: 25, size: 32, elements: !2921)
!2920 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2921 = !{!2922}
!2922 = !DIDerivedType(tag: DW_TAG_member, scope: !2919, file: !2920, line: 26, baseType: !2923, size: 32)
!2923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2919, file: !2920, line: 26, size: 32, elements: !2924)
!2924 = !{!2925}
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !2923, file: !2920, line: 30, baseType: !2926, size: 32)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2923, file: !2920, line: 30, size: 32, elements: !2927)
!2927 = !{!2928, !2929}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2926, file: !2920, line: 31, baseType: !187)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2926, file: !2920, line: 32, baseType: !101, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !337, file: !334, line: 102, baseType: !2521, size: 64, offset: 768)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !337, file: !334, line: 103, baseType: !549, size: 64, offset: 832)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !337, file: !334, line: 104, baseType: !278, size: 64, offset: 896)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !337, file: !334, line: 105, baseType: !100, size: 64, offset: 960)
!2934 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !334, line: 107, baseType: !2935, size: 128, offset: 1024)
!2935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !334, line: 107, size: 128, elements: !2936)
!2936 = !{!2937, !2938}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2935, file: !334, line: 108, baseType: !174, size: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2935, file: !334, line: 109, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !337, file: !334, line: 111, baseType: !174, size: 128, offset: 1152)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !337, file: !334, line: 112, baseType: !174, size: 128, offset: 1280)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !337, file: !334, line: 120, baseType: !2943, size: 128, offset: 1408)
!2943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !334, line: 116, size: 128, elements: !2944)
!2944 = !{!2945, !2946, !2947}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2943, file: !334, line: 117, baseType: !589, size: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2943, file: !334, line: 118, baseType: !351, size: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2943, file: !334, line: 119, baseType: !319, size: 128, align: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !307, file: !31, line: 922, baseType: !381, size: 64, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !307, file: !31, line: 923, baseType: !2670, size: 64, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !307, file: !31, line: 929, baseType: !187, offset: 384)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !307, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !307, file: !31, line: 931, baseType: !721, size: 64, offset: 448)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !307, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !307, file: !31, line: 933, baseType: !2517, size: 32, offset: 544)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !307, file: !31, line: 934, baseType: !1041, size: 192, offset: 576)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !307, file: !31, line: 935, baseType: !481, size: 64, offset: 768)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !307, file: !31, line: 936, baseType: !2958, size: 192, offset: 832)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2959)
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2965}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2958, file: !31, line: 886, baseType: !2769)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2958, file: !31, line: 887, baseType: !1339, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2958, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2958, file: !31, line: 889, baseType: !387, size: 32, offset: 96)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2958, file: !31, line: 889, baseType: !387, size: 32, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2958, file: !31, line: 890, baseType: !101, size: 32, offset: 160)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !307, file: !31, line: 937, baseType: !1415, size: 64, offset: 1024)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !307, file: !31, line: 938, baseType: !2968, size: 256, offset: 1088)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2969)
!2969 = !{!2970, !2971, !2972, !2973, !2974, !2975}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2968, file: !31, line: 897, baseType: !278, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2968, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2968, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2968, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2968, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2968, file: !31, line: 904, baseType: !481, size: 64, offset: 192)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !307, file: !31, line: 940, baseType: !373, size: 64, offset: 1344)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !307, file: !31, line: 945, baseType: !100, size: 64, offset: 1408)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !307, file: !31, line: 949, baseType: !174, size: 128, offset: 1472)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !307, file: !31, line: 950, baseType: !174, size: 128, offset: 1600)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !307, file: !31, line: 952, baseType: !684, size: 64, offset: 1728)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !307, file: !31, line: 953, baseType: !859, size: 32, offset: 1792)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !307, file: !31, line: 954, baseType: !859, size: 32, offset: 1824)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !297, file: !253, line: 174, baseType: !303, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !297, file: !253, line: 176, baseType: !2985, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!101, !306, !180, !296, !931}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !285, file: !253, line: 90, baseType: !280, size: 64, offset: 192)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !285, file: !253, line: 91, baseType: !2990, size: 64, offset: 256)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !243, file: !170, line: 143, baseType: !2992, size: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!2995, !180}
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2997)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !2998)
!2998 = !{!2999, !3000, !3004, !3008, !3014, !3018}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2997, file: !48, line: 40, baseType: !47, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2997, file: !48, line: 41, baseType: !3001, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!163}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2997, file: !48, line: 42, baseType: !3005, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!100}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2997, file: !48, line: 43, baseType: !3009, size: 64, offset: 192)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!1995, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2997, file: !48, line: 44, baseType: !3015, size: 64, offset: 256)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!1995}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2997, file: !48, line: 45, baseType: !420, size: 64, offset: 320)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !243, file: !170, line: 144, baseType: !3020, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!1995, !180}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !243, file: !170, line: 145, baseType: !3024, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !180, !3027, !3028}
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !169, file: !170, line: 70, baseType: !3030, size: 64, offset: 384)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !569, line: 123, size: 1024, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3161, !3162, !3163, !3164, !3165}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3031, file: !569, line: 124, baseType: !697, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3031, file: !569, line: 125, baseType: !697, size: 32, offset: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3031, file: !569, line: 135, baseType: !3030, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3031, file: !569, line: 136, baseType: !160, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3031, file: !569, line: 138, baseType: !710, size: 192, align: 64, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3031, file: !569, line: 140, baseType: !1995, size: 64, offset: 384)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3031, file: !569, line: 141, baseType: !7, size: 32, offset: 448)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3031, file: !569, line: 142, baseType: !3041, size: 256, offset: 512)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3031, file: !569, line: 142, size: 256, elements: !3042)
!3042 = !{!3043, !3089, !3093}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3041, file: !569, line: 143, baseType: !3044, size: 192)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !569, line: 91, size: 192, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3044, file: !569, line: 92, baseType: !278, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3044, file: !569, line: 94, baseType: !706, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3044, file: !569, line: 100, baseType: !3049, size: 64, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !569, line: 180, size: 704, elements: !3051)
!3051 = !{!3052, !3053, !3054, !3061, !3062, !3063, !3087, !3088}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3050, file: !569, line: 182, baseType: !3030, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3050, file: !569, line: 183, baseType: !7, size: 32, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3050, file: !569, line: 186, baseType: !3055, size: 192, offset: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3056, line: 19, size: 192, elements: !3057)
!3056 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3057 = !{!3058, !3059, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3055, file: !3056, line: 20, baseType: !689, size: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3055, file: !3056, line: 21, baseType: !7, size: 32, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3055, file: !3056, line: 22, baseType: !7, size: 32, offset: 160)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3050, file: !569, line: 187, baseType: !369, size: 32, offset: 320)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3050, file: !569, line: 188, baseType: !369, size: 32, offset: 352)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3050, file: !569, line: 189, baseType: !3064, size: 64, offset: 384)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !569, line: 168, size: 320, elements: !3066)
!3066 = !{!3067, !3071, !3075, !3079, !3083}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3065, file: !569, line: 169, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!101, !661, !3049}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3065, file: !569, line: 171, baseType: !3072, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!101, !3030, !160, !269}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3065, file: !569, line: 173, baseType: !3076, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!101, !3030}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3065, file: !569, line: 174, baseType: !3080, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!101, !3030, !3030, !160}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3065, file: !569, line: 176, baseType: !3084, size: 64, offset: 256)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!101, !661, !3030, !3049}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3050, file: !569, line: 192, baseType: !174, size: 128, offset: 448)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3050, file: !569, line: 194, baseType: !1349, size: 128, offset: 576)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3041, file: !569, line: 144, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !569, line: 103, size: 64, elements: !3091)
!3091 = !{!3092}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3090, file: !569, line: 104, baseType: !3030, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3041, file: !569, line: 145, baseType: !3094, size: 256)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !569, line: 107, size: 256, elements: !3095)
!3095 = !{!3096, !3156, !3159, !3160}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3094, file: !569, line: 108, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !569, line: 217, size: 768, elements: !3100)
!3100 = !{!3101, !3121, !3125, !3129, !3133, !3137, !3141, !3145, !3146, !3147, !3148, !3152}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3099, file: !569, line: 222, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!101, !3105}
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !569, line: 197, size: 1088, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3106, file: !569, line: 199, baseType: !3030, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3106, file: !569, line: 200, baseType: !306, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3106, file: !569, line: 201, baseType: !661, size: 64, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3106, file: !569, line: 202, baseType: !100, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3106, file: !569, line: 205, baseType: !1041, size: 192, offset: 256)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3106, file: !569, line: 206, baseType: !1041, size: 192, offset: 448)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3106, file: !569, line: 207, baseType: !101, size: 32, offset: 640)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3106, file: !569, line: 208, baseType: !174, size: 128, offset: 704)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3106, file: !569, line: 209, baseType: !228, size: 64, offset: 832)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3106, file: !569, line: 211, baseType: !275, size: 64, offset: 896)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3106, file: !569, line: 212, baseType: !163, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3106, file: !569, line: 213, baseType: !163, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3106, file: !569, line: 214, baseType: !959, size: 64, offset: 1024)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3099, file: !569, line: 223, baseType: !3122, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{null, !3105}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3099, file: !569, line: 236, baseType: !3126, size: 64, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!101, !661, !100}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3099, file: !569, line: 238, baseType: !3130, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!100, !661, !2683}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3099, file: !569, line: 239, baseType: !3134, size: 64, offset: 256)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!100, !661, !100, !2683}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3099, file: !569, line: 240, baseType: !3138, size: 64, offset: 320)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !661, !100}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3099, file: !569, line: 242, baseType: !3142, size: 64, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!259, !3105, !228, !275, !481}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3099, file: !569, line: 252, baseType: !275, size: 64, offset: 448)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3099, file: !569, line: 259, baseType: !163, size: 8, offset: 512)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3099, file: !569, line: 260, baseType: !3142, size: 64, offset: 576)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3099, file: !569, line: 263, baseType: !3149, size: 64, offset: 640)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!2712, !3105, !2713}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3099, file: !569, line: 266, baseType: !3153, size: 64, offset: 704)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!101, !3105, !931}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3094, file: !569, line: 109, baseType: !3157, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !569, line: 31, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3094, file: !569, line: 110, baseType: !481, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3094, file: !569, line: 111, baseType: !3030, size: 64, offset: 192)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3031, file: !569, line: 148, baseType: !100, size: 64, offset: 768)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3031, file: !569, line: 154, baseType: !373, size: 64, offset: 832)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3031, file: !569, line: 156, baseType: !270, size: 16, offset: 896)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3031, file: !569, line: 157, baseType: !269, size: 16, offset: 912)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3031, file: !569, line: 158, baseType: !3166, size: 64, offset: 960)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !569, line: 32, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !169, file: !170, line: 71, baseType: !3169, size: 32, offset: 448)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3170, line: 19, size: 32, elements: !3171)
!3170 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3171 = !{!3172}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3169, file: !3170, line: 20, baseType: !1098, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !169, file: !170, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !169, file: !170, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !169, file: !170, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !169, file: !170, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !169, file: !170, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !166, file: !60, line: 463, baseType: !3179, size: 64, offset: 512)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !166, file: !60, line: 465, baseType: !3181, size: 64, offset: 576)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !166, file: !60, line: 467, baseType: !160, size: 64, offset: 640)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !166, file: !60, line: 468, baseType: !3185, size: 64, offset: 704)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3187)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3195, !3200, !3204}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3187, file: !60, line: 88, baseType: !160, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3187, file: !60, line: 89, baseType: !282, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3187, file: !60, line: 90, baseType: !3192, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!101, !3179, !223}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3187, file: !60, line: 91, baseType: !3196, size: 64, offset: 192)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!228, !3179, !3199, !3027, !3028}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3187, file: !60, line: 93, baseType: !3201, size: 64, offset: 256)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !3179}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3187, file: !60, line: 95, baseType: !3205, size: 64, offset: 320)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3207)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3208)
!3208 = !{!3209, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3207, file: !67, line: 279, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!101, !3179}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3207, file: !67, line: 280, baseType: !3201, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3207, file: !67, line: 281, baseType: !3210, size: 64, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3207, file: !67, line: 282, baseType: !3210, size: 64, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3207, file: !67, line: 283, baseType: !3210, size: 64, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3207, file: !67, line: 284, baseType: !3210, size: 64, offset: 320)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3207, file: !67, line: 285, baseType: !3210, size: 64, offset: 384)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3207, file: !67, line: 286, baseType: !3210, size: 64, offset: 448)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3207, file: !67, line: 287, baseType: !3210, size: 64, offset: 512)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3207, file: !67, line: 288, baseType: !3210, size: 64, offset: 576)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3207, file: !67, line: 289, baseType: !3210, size: 64, offset: 640)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3207, file: !67, line: 290, baseType: !3210, size: 64, offset: 704)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3207, file: !67, line: 291, baseType: !3210, size: 64, offset: 768)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3207, file: !67, line: 292, baseType: !3210, size: 64, offset: 832)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3207, file: !67, line: 293, baseType: !3210, size: 64, offset: 896)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3207, file: !67, line: 294, baseType: !3210, size: 64, offset: 960)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3207, file: !67, line: 295, baseType: !3210, size: 64, offset: 1024)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3207, file: !67, line: 296, baseType: !3210, size: 64, offset: 1088)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3207, file: !67, line: 297, baseType: !3210, size: 64, offset: 1152)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3207, file: !67, line: 298, baseType: !3210, size: 64, offset: 1216)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3207, file: !67, line: 299, baseType: !3210, size: 64, offset: 1280)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3207, file: !67, line: 300, baseType: !3210, size: 64, offset: 1344)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3207, file: !67, line: 301, baseType: !3210, size: 64, offset: 1408)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !166, file: !60, line: 470, baseType: !3236, size: 64, offset: 768)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3238, line: 82, size: 1408, elements: !3239)
!3238 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245, !3246, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3321, !3324, !3325}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3237, file: !3238, line: 83, baseType: !160, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3237, file: !3238, line: 84, baseType: !160, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3237, file: !3238, line: 85, baseType: !3179, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3237, file: !3238, line: 86, baseType: !282, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3237, file: !3238, line: 87, baseType: !282, size: 64, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3237, file: !3238, line: 88, baseType: !282, size: 64, offset: 320)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3237, file: !3238, line: 90, baseType: !3247, size: 64, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!101, !3179, !3250}
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3252)
!3252 = !{!3253, !3254, !3255, !3256, !3257, !3258, !3259, !3272, !3285, !3286, !3287, !3288, !3289, !3297, !3298, !3299, !3300, !3301, !3302}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3251, file: !54, line: 96, baseType: !160, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3251, file: !54, line: 97, baseType: !3236, size: 64, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3251, file: !54, line: 99, baseType: !93, size: 64, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3251, file: !54, line: 100, baseType: !160, size: 64, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3251, file: !54, line: 102, baseType: !163, size: 8, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3251, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3251, file: !54, line: 105, baseType: !3260, size: 64, offset: 320)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3262)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3263, line: 262, size: 1600, elements: !3264)
!3263 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3264 = !{!3265, !3266, !3267, !3271}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3262, file: !3263, line: 263, baseType: !2507, size: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3262, file: !3263, line: 264, baseType: !2507, size: 256, offset: 256)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3262, file: !3263, line: 265, baseType: !3268, size: 1024, offset: 512)
!3268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 1024, elements: !3269)
!3269 = !{!3270}
!3270 = !DISubrange(count: 128)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3262, file: !3263, line: 266, baseType: !1995, size: 64, offset: 1536)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3251, file: !54, line: 106, baseType: !3273, size: 64, offset: 384)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3275)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3263, line: 210, size: 256, elements: !3276)
!3276 = !{!3277, !3281, !3283, !3284}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3275, file: !3263, line: 211, baseType: !3278, size: 72)
!3278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 72, elements: !3279)
!3279 = !{!3280}
!3280 = !DISubrange(count: 9)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3275, file: !3263, line: 212, baseType: !3282, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3263, line: 14, baseType: !278)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3275, file: !3263, line: 213, baseType: !108, size: 32, offset: 192)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3275, file: !3263, line: 214, baseType: !108, size: 32, offset: 224)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3251, file: !54, line: 108, baseType: !3210, size: 64, offset: 448)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3251, file: !54, line: 109, baseType: !3201, size: 64, offset: 512)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3251, file: !54, line: 110, baseType: !3210, size: 64, offset: 576)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3251, file: !54, line: 111, baseType: !3201, size: 64, offset: 640)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3251, file: !54, line: 112, baseType: !3290, size: 64, offset: 704)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!101, !3179, !3293}
!3293 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3294)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3295)
!3295 = !{!3296}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3294, file: !67, line: 51, baseType: !101, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3251, file: !54, line: 113, baseType: !3210, size: 64, offset: 768)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3251, file: !54, line: 114, baseType: !282, size: 64, offset: 832)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3251, file: !54, line: 115, baseType: !282, size: 64, offset: 896)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3251, file: !54, line: 117, baseType: !3205, size: 64, offset: 960)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3251, file: !54, line: 118, baseType: !3201, size: 64, offset: 1024)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3251, file: !54, line: 120, baseType: !3303, size: 64, offset: 1088)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3237, file: !3238, line: 91, baseType: !3192, size: 64, offset: 448)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3237, file: !3238, line: 92, baseType: !3210, size: 64, offset: 512)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3237, file: !3238, line: 93, baseType: !3201, size: 64, offset: 576)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3237, file: !3238, line: 94, baseType: !3210, size: 64, offset: 640)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3237, file: !3238, line: 95, baseType: !3201, size: 64, offset: 704)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3237, file: !3238, line: 97, baseType: !3210, size: 64, offset: 768)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3237, file: !3238, line: 98, baseType: !3210, size: 64, offset: 832)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3237, file: !3238, line: 100, baseType: !3290, size: 64, offset: 896)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3237, file: !3238, line: 101, baseType: !3210, size: 64, offset: 960)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3237, file: !3238, line: 103, baseType: !3210, size: 64, offset: 1024)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3237, file: !3238, line: 105, baseType: !3210, size: 64, offset: 1088)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3237, file: !3238, line: 107, baseType: !3205, size: 64, offset: 1152)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3237, file: !3238, line: 109, baseType: !3318, size: 64, offset: 1216)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3320)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3238, line: 109, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3237, file: !3238, line: 111, baseType: !3322, size: 64, offset: 1280)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3238, line: 111, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3237, file: !3238, line: 112, baseType: !595, offset: 1344)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3237, file: !3238, line: 114, baseType: !163, size: 8, offset: 1344)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !166, file: !60, line: 471, baseType: !3250, size: 64, offset: 832)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !166, file: !60, line: 473, baseType: !100, size: 64, offset: 896)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !166, file: !60, line: 475, baseType: !100, size: 64, offset: 960)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !166, file: !60, line: 480, baseType: !1041, size: 192, offset: 1024)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !166, file: !60, line: 484, baseType: !3331, size: 576, offset: 1216)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3331, file: !60, line: 362, baseType: !174, size: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3331, file: !60, line: 363, baseType: !174, size: 128, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3331, file: !60, line: 364, baseType: !174, size: 128, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3331, file: !60, line: 365, baseType: !174, size: 128, offset: 384)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3331, file: !60, line: 366, baseType: !163, size: 8, offset: 512)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3331, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !166, file: !60, line: 485, baseType: !3340, size: 2304, offset: 1792)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3437, !3441}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3340, file: !67, line: 566, baseType: !3293, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3340, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3340, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3340, file: !67, line: 569, baseType: !163, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3340, file: !67, line: 570, baseType: !163, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3340, file: !67, line: 571, baseType: !163, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3340, file: !67, line: 572, baseType: !163, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3340, file: !67, line: 573, baseType: !163, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3340, file: !67, line: 574, baseType: !163, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3340, file: !67, line: 575, baseType: !163, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3340, file: !67, line: 576, baseType: !163, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3340, file: !67, line: 577, baseType: !369, size: 32, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3340, file: !67, line: 578, baseType: !187, offset: 96)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3340, file: !67, line: 580, baseType: !174, size: 128, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3340, file: !67, line: 581, baseType: !1370, size: 192, offset: 256)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3340, file: !67, line: 582, baseType: !3358, size: 64, offset: 448)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3360, line: 43, size: 1472, elements: !3361)
!3360 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3361 = !{!3362, !3363, !3364, !3365, !3366, !3369, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3359, file: !3360, line: 44, baseType: !160, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3359, file: !3360, line: 45, baseType: !101, size: 32, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3359, file: !3360, line: 46, baseType: !174, size: 128, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3359, file: !3360, line: 47, baseType: !187, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3359, file: !3360, line: 48, baseType: !3367, size: 64, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3359, file: !3360, line: 49, baseType: !3370, size: 320, offset: 320)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3371, line: 11, size: 320, elements: !3372)
!3371 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3372 = !{!3373, !3374, !3375, !3380}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3370, file: !3371, line: 16, baseType: !589, size: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3370, file: !3371, line: 17, baseType: !278, size: 64, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3370, file: !3371, line: 18, baseType: !3376, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !3379}
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3370, file: !3371, line: 19, baseType: !369, size: 32, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3359, file: !3360, line: 50, baseType: !278, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3359, file: !3360, line: 51, baseType: !1168, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3359, file: !3360, line: 52, baseType: !1168, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3359, file: !3360, line: 53, baseType: !1168, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3359, file: !3360, line: 54, baseType: !1168, size: 64, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3359, file: !3360, line: 55, baseType: !1168, size: 64, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3359, file: !3360, line: 56, baseType: !278, size: 64, offset: 1024)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3359, file: !3360, line: 57, baseType: !278, size: 64, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3359, file: !3360, line: 58, baseType: !278, size: 64, offset: 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3359, file: !3360, line: 59, baseType: !278, size: 64, offset: 1216)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3359, file: !3360, line: 60, baseType: !278, size: 64, offset: 1280)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3359, file: !3360, line: 61, baseType: !3179, size: 64, offset: 1344)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3359, file: !3360, line: 62, baseType: !163, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3359, file: !3360, line: 63, baseType: !163, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3340, file: !67, line: 583, baseType: !163, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3340, file: !67, line: 584, baseType: !163, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3340, file: !67, line: 585, baseType: !163, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3340, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3340, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3340, file: !67, line: 592, baseType: !1160, size: 512, offset: 576)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3340, file: !67, line: 593, baseType: !373, size: 64, offset: 1088)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3340, file: !67, line: 594, baseType: !1825, size: 256, offset: 1152)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3340, file: !67, line: 595, baseType: !1349, size: 128, offset: 1408)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3340, file: !67, line: 596, baseType: !3367, size: 64, offset: 1536)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3340, file: !67, line: 597, baseType: !697, size: 32, offset: 1600)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3340, file: !67, line: 598, baseType: !697, size: 32, offset: 1632)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3340, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3340, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3340, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3340, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3340, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3340, file: !67, line: 604, baseType: !163, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3340, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3340, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3340, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3340, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3340, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3340, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3340, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3340, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3340, file: !67, line: 613, baseType: !101, size: 32, offset: 1792)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3340, file: !67, line: 614, baseType: !101, size: 32, offset: 1824)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3340, file: !67, line: 615, baseType: !373, size: 64, offset: 1856)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3340, file: !67, line: 616, baseType: !373, size: 64, offset: 1920)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3340, file: !67, line: 617, baseType: !373, size: 64, offset: 1984)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3340, file: !67, line: 618, baseType: !373, size: 64, offset: 2048)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3340, file: !67, line: 620, baseType: !3428, size: 64, offset: 2112)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3430)
!3430 = !{!3431, !3432, !3433, !3434}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3429, file: !67, line: 537, baseType: !187)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3429, file: !67, line: 538, baseType: !7, size: 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3429, file: !67, line: 540, baseType: !174, size: 128, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3429, file: !67, line: 543, baseType: !3435, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3340, file: !67, line: 621, baseType: !3438, size: 64, offset: 2176)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !3179, !1312}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3340, file: !67, line: 622, baseType: !3442, size: 64, offset: 2240)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !166, file: !60, line: 486, baseType: !3445, size: 64, offset: 4096)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3454, !3455, !3456}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3446, file: !67, line: 643, baseType: !3207, size: 1472)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3446, file: !67, line: 644, baseType: !3210, size: 64, offset: 1472)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3446, file: !67, line: 645, baseType: !3451, size: 64, offset: 1536)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{null, !3179, !163}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3446, file: !67, line: 646, baseType: !3210, size: 64, offset: 1600)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3446, file: !67, line: 647, baseType: !3201, size: 64, offset: 1664)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3446, file: !67, line: 648, baseType: !3201, size: 64, offset: 1728)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !166, file: !60, line: 493, baseType: !3458, size: 64, offset: 4160)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !166, file: !60, line: 499, baseType: !174, size: 128, offset: 4224)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !166, file: !60, line: 502, baseType: !3462, size: 64, offset: 4352)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3464)
!3464 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !166, file: !60, line: 504, baseType: !3466, size: 64, offset: 4416)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !166, file: !60, line: 505, baseType: !373, size: 64, offset: 4480)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !166, file: !60, line: 510, baseType: !373, size: 64, offset: 4544)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !166, file: !60, line: 511, baseType: !3470, size: 64, offset: 4608)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3472)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !166, file: !60, line: 513, baseType: !3474, size: 64, offset: 4672)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3476)
!3476 = !{!3477, !3478}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3475, file: !60, line: 293, baseType: !7, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3475, file: !60, line: 294, baseType: !278, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !166, file: !60, line: 515, baseType: !174, size: 128, offset: 4736)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !166, file: !60, line: 526, baseType: !3481, offset: 4864)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3482, line: 5, elements: !201)
!3482 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !166, file: !60, line: 528, baseType: !3484, size: 64, offset: 4864)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3486, line: 51, size: 1344, elements: !3487)
!3486 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3487 = !{!3488, !3489, !3491, !3492, !3582, !3591, !3592, !3593, !3594, !3595, !3596, !3597}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3485, file: !3486, line: 52, baseType: !160, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3485, file: !3486, line: 53, baseType: !3490, size: 32, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3486, line: 28, baseType: !369)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3485, file: !3486, line: 54, baseType: !160, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3485, file: !3486, line: 55, baseType: !3493, size: 192, offset: 192)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3494, line: 17, size: 192, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3495 = !{!3496, !3498, !3581}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3493, file: !3494, line: 18, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3493, file: !3494, line: 19, baseType: !3499, size: 64, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3501)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3494, line: 110, size: 1152, elements: !3502)
!3502 = !{!3503, !3507, !3511, !3517, !3523, !3527, !3531, !3536, !3540, !3541, !3545, !3549, !3553, !3564, !3565, !3566, !3567, !3577}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3501, file: !3494, line: 111, baseType: !3504, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!3497, !3497}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3501, file: !3494, line: 112, baseType: !3508, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !3497}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3501, file: !3494, line: 113, baseType: !3512, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!163, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3501, file: !3494, line: 114, baseType: !3518, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!1995, !3515, !3521}
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3501, file: !3494, line: 116, baseType: !3524, size: 64, offset: 256)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!163, !3515, !160}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3501, file: !3494, line: 118, baseType: !3528, size: 64, offset: 320)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!101, !3515, !160, !7, !100, !275}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3501, file: !3494, line: 123, baseType: !3532, size: 64, offset: 384)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!101, !3515, !160, !3535, !275}
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3501, file: !3494, line: 126, baseType: !3537, size: 64, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!160, !3515}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3501, file: !3494, line: 127, baseType: !3537, size: 64, offset: 512)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3501, file: !3494, line: 128, baseType: !3542, size: 64, offset: 576)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!3497, !3515}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3501, file: !3494, line: 130, baseType: !3546, size: 64, offset: 640)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!3497, !3515, !3497}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3501, file: !3494, line: 133, baseType: !3550, size: 64, offset: 704)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!3497, !3515, !160}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3501, file: !3494, line: 135, baseType: !3554, size: 64, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!101, !3515, !160, !160, !7, !7, !3557}
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3494, line: 43, size: 640, elements: !3559)
!3559 = !{!3560, !3561, !3562}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3558, file: !3494, line: 44, baseType: !3497, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3558, file: !3494, line: 45, baseType: !7, size: 32, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3558, file: !3494, line: 46, baseType: !3563, size: 512, offset: 128)
!3563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 512, elements: !1198)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3501, file: !3494, line: 140, baseType: !3546, size: 64, offset: 832)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3501, file: !3494, line: 143, baseType: !3542, size: 64, offset: 896)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3501, file: !3494, line: 145, baseType: !3504, size: 64, offset: 960)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3501, file: !3494, line: 146, baseType: !3568, size: 64, offset: 1024)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!101, !3515, !3571}
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3494, line: 29, size: 128, elements: !3573)
!3573 = !{!3574, !3575, !3576}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3572, file: !3494, line: 30, baseType: !7, size: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3572, file: !3494, line: 31, baseType: !7, size: 32, offset: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3572, file: !3494, line: 32, baseType: !3515, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3501, file: !3494, line: 148, baseType: !3578, size: 64, offset: 1088)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!101, !3515, !3179}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3493, file: !3494, line: 20, baseType: !3179, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3485, file: !3486, line: 57, baseType: !3583, size: 64, offset: 384)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3486, line: 31, size: 704, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3584, file: !3486, line: 32, baseType: !228, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3584, file: !3486, line: 33, baseType: !101, size: 32, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3584, file: !3486, line: 34, baseType: !100, size: 64, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3584, file: !3486, line: 35, baseType: !3583, size: 64, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3584, file: !3486, line: 43, baseType: !297, size: 448, offset: 256)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3485, file: !3486, line: 58, baseType: !3583, size: 64, offset: 448)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3485, file: !3486, line: 59, baseType: !3484, size: 64, offset: 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3485, file: !3486, line: 60, baseType: !3484, size: 64, offset: 576)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3485, file: !3486, line: 61, baseType: !3484, size: 64, offset: 640)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3485, file: !3486, line: 63, baseType: !169, size: 512, offset: 704)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3485, file: !3486, line: 65, baseType: !278, size: 64, offset: 1216)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3485, file: !3486, line: 66, baseType: !100, size: 64, offset: 1280)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !166, file: !60, line: 529, baseType: !3497, size: 64, offset: 4928)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !166, file: !60, line: 534, baseType: !463, size: 32, offset: 4992)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !166, file: !60, line: 535, baseType: !369, size: 32, offset: 5024)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !166, file: !60, line: 537, baseType: !187, offset: 5056)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !166, file: !60, line: 538, baseType: !174, size: 128, offset: 5056)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !166, file: !60, line: 540, baseType: !3604, size: 64, offset: 5184)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3606, line: 54, size: 960, elements: !3607)
!3606 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3618, !3622, !3623, !3624, !3625, !3629, !3633, !3634}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3605, file: !3606, line: 55, baseType: !160, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3605, file: !3606, line: 56, baseType: !93, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3605, file: !3606, line: 58, baseType: !282, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3605, file: !3606, line: 59, baseType: !282, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3605, file: !3606, line: 60, baseType: !180, size: 64, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3605, file: !3606, line: 62, baseType: !3192, size: 64, offset: 320)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3605, file: !3606, line: 63, baseType: !3615, size: 64, offset: 384)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!228, !3179, !3199}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3605, file: !3606, line: 65, baseType: !3619, size: 64, offset: 448)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{null, !3604}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3605, file: !3606, line: 66, baseType: !3201, size: 64, offset: 512)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3605, file: !3606, line: 68, baseType: !3210, size: 64, offset: 576)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3605, file: !3606, line: 70, baseType: !2995, size: 64, offset: 640)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3605, file: !3606, line: 71, baseType: !3626, size: 64, offset: 704)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!1995, !3179}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3605, file: !3606, line: 73, baseType: !3630, size: 64, offset: 768)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !3179, !3027, !3028}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3605, file: !3606, line: 75, baseType: !3205, size: 64, offset: 832)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3605, file: !3606, line: 77, baseType: !3322, size: 64, offset: 896)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !166, file: !60, line: 541, baseType: !282, size: 64, offset: 5248)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !166, file: !60, line: 543, baseType: !3201, size: 64, offset: 5312)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !166, file: !60, line: 544, baseType: !3638, size: 64, offset: 5376)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !166, file: !60, line: 545, baseType: !3641, size: 64, offset: 5440)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !166, file: !60, line: 547, baseType: !163, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !166, file: !60, line: 548, baseType: !163, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !166, file: !60, line: 549, baseType: !163, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !166, file: !60, line: 550, baseType: !163, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !157, file: !150, line: 27, baseType: !373, size: 64, offset: 5696)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !157, file: !150, line: 28, baseType: !3475, size: 128, offset: 5760)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !157, file: !150, line: 29, baseType: !369, size: 32, offset: 5888)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !157, file: !150, line: 30, baseType: !3651, size: 64, offset: 5952)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3653, line: 20, size: 512, elements: !3654)
!3653 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3654 = !{!3655, !3657, !3658, !3659, !3660, !3661, !3662, !3663}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3652, file: !3653, line: 21, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !97, line: 158, baseType: !1993)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3652, file: !3653, line: 22, baseType: !3656, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3652, file: !3653, line: 23, baseType: !160, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3652, file: !3653, line: 24, baseType: !278, size: 64, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3652, file: !3653, line: 25, baseType: !278, size: 64, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3652, file: !3653, line: 26, baseType: !3651, size: 64, offset: 320)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3652, file: !3653, line: 26, baseType: !3651, size: 64, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3652, file: !3653, line: 26, baseType: !3651, size: 64, offset: 448)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !157, file: !150, line: 32, baseType: !3665, size: 64, offset: 6016)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3667)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !3263, line: 586, size: 256, elements: !3668)
!3668 = !{!3669, !3671}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3667, file: !3263, line: 587, baseType: !3670, size: 160)
!3670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 160, elements: !2069)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3667, file: !3263, line: 588, baseType: !3282, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !157, file: !150, line: 33, baseType: !228, size: 64, offset: 6080)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !157, file: !150, line: 36, baseType: !3674, size: 64, offset: 6144)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !150, line: 18, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !157, file: !150, line: 39, baseType: !3677, offset: 6208)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !3482, line: 8, elements: !201)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !149, file: !150, line: 202, baseType: !153, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !149, file: !150, line: 203, baseType: !3680, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !156}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !149, file: !150, line: 204, baseType: !3684, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!101, !156, !3293}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !149, file: !150, line: 205, baseType: !153, size: 64, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !149, file: !150, line: 206, baseType: !3251, size: 1152, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !149, file: !150, line: 207, baseType: !3665, size: 64, offset: 1472)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !149, file: !150, line: 208, baseType: !163, size: 8, offset: 1536)
!3691 = !DIGlobalVariableExpression(var: !3692, expr: !DIExpression())
!3692 = distinct !DIGlobalVariable(name: "mc_base_addr", scope: !2, file: !3, line: 60, type: !3652, isLocal: true, isDefinition: true)
!3693 = !DIGlobalVariableExpression(var: !3694, expr: !DIExpression())
!3694 = distinct !DIGlobalVariable(name: "dpaa2_mc_console_dev", scope: !2, file: !3, line: 249, type: !3695, isLocal: true, isDefinition: true)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !3696, line: 79, size: 640, elements: !3697)
!3696 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/lizy2001/genbc/linux")
!3697 = !{!3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3695, file: !3696, line: 80, baseType: !101, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3695, file: !3696, line: 81, baseType: !160, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3695, file: !3696, line: 82, baseType: !2670, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3695, file: !3696, line: 83, baseType: !174, size: 128, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3695, file: !3696, line: 84, baseType: !3179, size: 64, offset: 320)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !3695, file: !3696, line: 85, baseType: !3179, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3695, file: !3696, line: 86, baseType: !282, size: 64, offset: 448)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !3695, file: !3696, line: 87, baseType: !160, size: 64, offset: 512)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3695, file: !3696, line: 88, baseType: !269, size: 16, offset: 576)
!3707 = !DIGlobalVariableExpression(var: !3708, expr: !DIExpression())
!3708 = distinct !DIGlobalVariable(name: "dpaa2_mc_console_fops", scope: !2, file: !3, line: 242, type: !2671, isLocal: true, isDefinition: true)
!3709 = !DIGlobalVariableExpression(var: !3710, expr: !DIExpression())
!3710 = distinct !DIGlobalVariable(name: "dpaa2_aiop_console_dev", scope: !2, file: !3, line: 262, type: !3695, isLocal: true, isDefinition: true)
!3711 = !DIGlobalVariableExpression(var: !3712, expr: !DIExpression())
!3712 = distinct !DIGlobalVariable(name: "dpaa2_aiop_console_fops", scope: !2, file: !3, line: 255, type: !2671, isLocal: true, isDefinition: true)
!3713 = !DIGlobalVariableExpression(var: !3714, expr: !DIExpression())
!3714 = distinct !DIGlobalVariable(name: "dpaa2_console_match_table", scope: !2, file: !3, line: 309, type: !3715, isLocal: true, isDefinition: true)
!3715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3261, size: 3200, elements: !1437)
!3716 = !{i32 7, !"Dwarf Version", i32 4}
!3717 = !{i32 2, !"Debug Info Version", i32 3}
!3718 = !{i32 1, !"wchar_size", i32 2}
!3719 = !{i32 1, !"Code Model", i32 2}
!3720 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3721 = distinct !DISubprogram(name: "dpaa2_console_driver_init", scope: !3, file: !3, line: 325, type: !3722, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!101}
!3724 = !DILocation(line: 325, column: 1, scope: !3721)
!3725 = distinct !DISubprogram(name: "dpaa2_console_driver_exit", scope: !3, file: !3, line: 325, type: !124, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3726 = !DILocation(line: 325, column: 1, scope: !3725)
!3727 = distinct !DISubprogram(name: "dpaa2_console_probe", scope: !3, file: !3, line: 268, type: !154, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3728 = !DILocalVariable(name: "pdev", arg: 1, scope: !3727, file: !3, line: 268, type: !156)
!3729 = !DILocation(line: 268, column: 56, scope: !3727)
!3730 = !DILocalVariable(name: "error", scope: !3727, file: !3, line: 270, type: !101)
!3731 = !DILocation(line: 270, column: 6, scope: !3727)
!3732 = !DILocation(line: 272, column: 33, scope: !3727)
!3733 = !DILocation(line: 272, column: 39, scope: !3727)
!3734 = !DILocation(line: 272, column: 43, scope: !3727)
!3735 = !DILocation(line: 272, column: 10, scope: !3727)
!3736 = !DILocation(line: 272, column: 8, scope: !3727)
!3737 = !DILocation(line: 273, column: 6, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 273, column: 6)
!3739 = !DILocation(line: 273, column: 12, scope: !3738)
!3740 = !DILocation(line: 273, column: 6, scope: !3727)
!3741 = !DILocation(line: 274, column: 3, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 273, column: 17)
!3743 = !DILocation(line: 276, column: 10, scope: !3742)
!3744 = !DILocation(line: 276, column: 3, scope: !3742)
!3745 = !DILocation(line: 279, column: 10, scope: !3727)
!3746 = !DILocation(line: 279, column: 8, scope: !3727)
!3747 = !DILocation(line: 280, column: 6, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 280, column: 6)
!3749 = !DILocation(line: 280, column: 6, scope: !3727)
!3750 = !DILocation(line: 281, column: 3, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 280, column: 13)
!3752 = !DILocation(line: 283, column: 3, scope: !3751)
!3753 = !DILocation(line: 286, column: 10, scope: !3727)
!3754 = !DILocation(line: 286, column: 8, scope: !3727)
!3755 = !DILocation(line: 287, column: 6, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 287, column: 6)
!3757 = !DILocation(line: 287, column: 6, scope: !3727)
!3758 = !DILocation(line: 288, column: 3, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 287, column: 13)
!3760 = !DILocation(line: 290, column: 3, scope: !3759)
!3761 = !DILocation(line: 293, column: 2, scope: !3727)
!3762 = !DILabel(scope: !3727, name: "err_register_aiop", file: !3, line: 295)
!3763 = !DILocation(line: 295, column: 1, scope: !3727)
!3764 = !DILocation(line: 296, column: 2, scope: !3727)
!3765 = !DILabel(scope: !3727, name: "err_register_mc", file: !3, line: 297)
!3766 = !DILocation(line: 297, column: 1, scope: !3727)
!3767 = !DILocation(line: 298, column: 9, scope: !3727)
!3768 = !DILocation(line: 298, column: 2, scope: !3727)
!3769 = !DILocation(line: 299, column: 1, scope: !3727)
!3770 = distinct !DISubprogram(name: "dpaa2_console_remove", scope: !3, file: !3, line: 301, type: !154, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3771 = !DILocalVariable(name: "pdev", arg: 1, scope: !3770, file: !3, line: 301, type: !156)
!3772 = !DILocation(line: 301, column: 57, scope: !3770)
!3773 = !DILocation(line: 303, column: 2, scope: !3770)
!3774 = !DILocation(line: 304, column: 2, scope: !3770)
!3775 = !DILocation(line: 306, column: 2, scope: !3770)
!3776 = distinct !DISubprogram(name: "dpaa2_console_read", scope: !3, file: !3, line: 191, type: !2681, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3777 = !DILocalVariable(name: "addr", arg: 1, scope: !3778, file: !3779, line: 138, type: !1995)
!3778 = distinct !DISubprogram(name: "check_copy_size", scope: !3779, file: !3779, line: 138, type: !3780, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3779 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!163, !1995, !275, !163}
!3782 = !DILocation(line: 138, column: 29, scope: !3778, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 199, column: 6, scope: !3784, inlinedAt: !3789)
!3784 = distinct !DILexicalBlock(scope: !3786, file: !3785, line: 199, column: 6)
!3785 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!3786 = distinct !DISubprogram(name: "copy_to_user", scope: !3785, file: !3785, line: 197, type: !3787, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!278, !100, !1995, !278}
!3789 = distinct !DILocation(line: 227, column: 6, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 227, column: 6)
!3791 = !DILocalVariable(name: "bytes", arg: 2, scope: !3778, file: !3779, line: 138, type: !275)
!3792 = !DILocation(line: 138, column: 42, scope: !3778, inlinedAt: !3783)
!3793 = !DILocalVariable(name: "is_source", arg: 3, scope: !3778, file: !3779, line: 138, type: !163)
!3794 = !DILocation(line: 138, column: 54, scope: !3778, inlinedAt: !3783)
!3795 = !DILocalVariable(name: "sz", scope: !3778, file: !3779, line: 140, type: !101)
!3796 = !DILocation(line: 140, column: 6, scope: !3778, inlinedAt: !3783)
!3797 = !DILocalVariable(name: "__ret_warn_on", scope: !3798, file: !3779, line: 150, type: !101)
!3798 = distinct !DILexicalBlock(scope: !3799, file: !3779, line: 150, column: 6)
!3799 = distinct !DILexicalBlock(scope: !3778, file: !3779, line: 150, column: 6)
!3800 = !DILocation(line: 150, column: 6, scope: !3798, inlinedAt: !3783)
!3801 = !DILocalVariable(name: "to", arg: 1, scope: !3786, file: !3785, line: 197, type: !100)
!3802 = !DILocation(line: 197, column: 27, scope: !3786, inlinedAt: !3789)
!3803 = !DILocalVariable(name: "from", arg: 2, scope: !3786, file: !3785, line: 197, type: !1995)
!3804 = !DILocation(line: 197, column: 43, scope: !3786, inlinedAt: !3789)
!3805 = !DILocalVariable(name: "n", arg: 3, scope: !3786, file: !3785, line: 197, type: !278)
!3806 = !DILocation(line: 197, column: 63, scope: !3786, inlinedAt: !3789)
!3807 = !DILocation(line: 138, column: 29, scope: !3778, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 199, column: 6, scope: !3784, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 216, column: 7, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 216, column: 7)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 214, column: 25)
!3812 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 214, column: 6)
!3813 = !DILocation(line: 138, column: 42, scope: !3778, inlinedAt: !3808)
!3814 = !DILocation(line: 138, column: 54, scope: !3778, inlinedAt: !3808)
!3815 = !DILocation(line: 140, column: 6, scope: !3778, inlinedAt: !3808)
!3816 = !DILocation(line: 150, column: 6, scope: !3798, inlinedAt: !3808)
!3817 = !DILocation(line: 197, column: 27, scope: !3786, inlinedAt: !3809)
!3818 = !DILocation(line: 197, column: 43, scope: !3786, inlinedAt: !3809)
!3819 = !DILocation(line: 197, column: 63, scope: !3786, inlinedAt: !3809)
!3820 = !DILocalVariable(name: "s", arg: 1, scope: !3821, file: !81, line: 445, type: !885)
!3821 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !81, file: !81, line: 445, type: !3822, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!100, !885, !96, !275}
!3824 = !DILocation(line: 445, column: 72, scope: !3821, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 552, column: 10, scope: !3826, inlinedAt: !3831)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !81, line: 540, column: 34)
!3827 = distinct !DILexicalBlock(scope: !3828, file: !81, line: 540, column: 6)
!3828 = distinct !DISubprogram(name: "kmalloc", scope: !81, file: !81, line: 538, type: !3829, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!100, !275, !96}
!3831 = distinct !DILocation(line: 210, column: 9, scope: !3776)
!3832 = !DILocalVariable(name: "flags", arg: 2, scope: !3821, file: !81, line: 446, type: !96)
!3833 = !DILocation(line: 446, column: 9, scope: !3821, inlinedAt: !3825)
!3834 = !DILocalVariable(name: "size", arg: 3, scope: !3821, file: !81, line: 446, type: !275)
!3835 = !DILocation(line: 446, column: 23, scope: !3821, inlinedAt: !3825)
!3836 = !DILocalVariable(name: "ret", scope: !3821, file: !81, line: 448, type: !100)
!3837 = !DILocation(line: 448, column: 8, scope: !3821, inlinedAt: !3825)
!3838 = !DILocalVariable(name: "flags", arg: 1, scope: !3839, file: !81, line: 318, type: !96)
!3839 = distinct !DISubprogram(name: "kmalloc_type", scope: !81, file: !81, line: 318, type: !3840, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!80, !96}
!3842 = !DILocation(line: 318, column: 67, scope: !3839, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 553, column: 20, scope: !3826, inlinedAt: !3831)
!3844 = !DILocalVariable(name: "size", arg: 1, scope: !3845, file: !81, line: 346, type: !275)
!3845 = distinct !DISubprogram(name: "kmalloc_index", scope: !81, file: !81, line: 346, type: !3846, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!7, !275}
!3848 = !DILocation(line: 346, column: 58, scope: !3845, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 547, column: 11, scope: !3826, inlinedAt: !3831)
!3850 = !DILocalVariable(name: "size", arg: 1, scope: !3851, file: !81, line: 472, type: !275)
!3851 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !81, file: !81, line: 472, type: !3852, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!100, !275, !96, !7}
!3854 = !DILocation(line: 472, column: 28, scope: !3851, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 481, column: 9, scope: !3856, inlinedAt: !3857)
!3856 = distinct !DISubprogram(name: "kmalloc_large", scope: !81, file: !81, line: 478, type: !3829, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!3857 = distinct !DILocation(line: 545, column: 11, scope: !3858, inlinedAt: !3831)
!3858 = distinct !DILexicalBlock(scope: !3826, file: !81, line: 544, column: 7)
!3859 = !DILocalVariable(name: "flags", arg: 2, scope: !3851, file: !81, line: 472, type: !96)
!3860 = !DILocation(line: 472, column: 40, scope: !3851, inlinedAt: !3855)
!3861 = !DILocalVariable(name: "order", arg: 3, scope: !3851, file: !81, line: 472, type: !7)
!3862 = !DILocation(line: 472, column: 60, scope: !3851, inlinedAt: !3855)
!3863 = !DILocalVariable(name: "size", arg: 1, scope: !3856, file: !81, line: 478, type: !275)
!3864 = !DILocation(line: 478, column: 51, scope: !3856, inlinedAt: !3857)
!3865 = !DILocalVariable(name: "flags", arg: 2, scope: !3856, file: !81, line: 478, type: !96)
!3866 = !DILocation(line: 478, column: 63, scope: !3856, inlinedAt: !3857)
!3867 = !DILocalVariable(name: "order", scope: !3856, file: !81, line: 480, type: !7)
!3868 = !DILocation(line: 480, column: 15, scope: !3856, inlinedAt: !3857)
!3869 = !DILocalVariable(name: "size", arg: 1, scope: !3828, file: !81, line: 538, type: !275)
!3870 = !DILocation(line: 538, column: 45, scope: !3828, inlinedAt: !3831)
!3871 = !DILocalVariable(name: "flags", arg: 2, scope: !3828, file: !81, line: 538, type: !96)
!3872 = !DILocation(line: 538, column: 57, scope: !3828, inlinedAt: !3831)
!3873 = !DILocalVariable(name: "index", scope: !3826, file: !81, line: 542, type: !7)
!3874 = !DILocation(line: 542, column: 16, scope: !3826, inlinedAt: !3831)
!3875 = !DILocalVariable(name: "fp", arg: 1, scope: !3776, file: !3, line: 191, type: !306)
!3876 = !DILocation(line: 191, column: 48, scope: !3776)
!3877 = !DILocalVariable(name: "buf", arg: 2, scope: !3776, file: !3, line: 191, type: !228)
!3878 = !DILocation(line: 191, column: 65, scope: !3776)
!3879 = !DILocalVariable(name: "count", arg: 3, scope: !3776, file: !3, line: 192, type: !275)
!3880 = !DILocation(line: 192, column: 14, scope: !3776)
!3881 = !DILocalVariable(name: "f_pos", arg: 4, scope: !3776, file: !3, line: 192, type: !2683)
!3882 = !DILocation(line: 192, column: 29, scope: !3776)
!3883 = !DILocalVariable(name: "cd", scope: !3776, file: !3, line: 194, type: !3884)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "console_data", file: !3, line: 51, size: 384, elements: !3886)
!3886 = !{!3887, !3888, !3889, !3890, !3891, !3892}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "map_addr", scope: !3885, file: !3, line: 52, baseType: !100, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !3885, file: !3, line: 53, baseType: !102, size: 64, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "start_addr", scope: !3885, file: !3, line: 54, baseType: !100, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "end_addr", scope: !3885, file: !3, line: 55, baseType: !100, size: 64, offset: 192)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "end_of_data", scope: !3885, file: !3, line: 56, baseType: !100, size: 64, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "cur_ptr", scope: !3885, file: !3, line: 57, baseType: !100, size: 64, offset: 320)
!3893 = !DILocation(line: 194, column: 23, scope: !3776)
!3894 = !DILocation(line: 194, column: 28, scope: !3776)
!3895 = !DILocation(line: 194, column: 32, scope: !3776)
!3896 = !DILocalVariable(name: "bytes", scope: !3776, file: !3, line: 195, type: !275)
!3897 = !DILocation(line: 195, column: 9, scope: !3776)
!3898 = !DILocation(line: 195, column: 36, scope: !3776)
!3899 = !DILocation(line: 195, column: 17, scope: !3776)
!3900 = !DILocalVariable(name: "bytes_end", scope: !3776, file: !3, line: 196, type: !275)
!3901 = !DILocation(line: 196, column: 9, scope: !3776)
!3902 = !DILocation(line: 196, column: 21, scope: !3776)
!3903 = !DILocation(line: 196, column: 25, scope: !3776)
!3904 = !DILocation(line: 196, column: 36, scope: !3776)
!3905 = !DILocation(line: 196, column: 40, scope: !3776)
!3906 = !DILocation(line: 196, column: 34, scope: !3776)
!3907 = !DILocalVariable(name: "written", scope: !3776, file: !3, line: 197, type: !275)
!3908 = !DILocation(line: 197, column: 9, scope: !3776)
!3909 = !DILocalVariable(name: "kbuf", scope: !3776, file: !3, line: 198, type: !100)
!3910 = !DILocation(line: 198, column: 8, scope: !3776)
!3911 = !DILocalVariable(name: "err", scope: !3776, file: !3, line: 199, type: !101)
!3912 = !DILocation(line: 199, column: 6, scope: !3776)
!3913 = !DILocation(line: 202, column: 13, scope: !3776)
!3914 = !DILocation(line: 202, column: 2, scope: !3776)
!3915 = !DILocation(line: 204, column: 6, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 204, column: 6)
!3917 = !DILocation(line: 204, column: 10, scope: !3916)
!3918 = !DILocation(line: 204, column: 25, scope: !3916)
!3919 = !DILocation(line: 204, column: 29, scope: !3916)
!3920 = !DILocation(line: 204, column: 22, scope: !3916)
!3921 = !DILocation(line: 204, column: 6, scope: !3776)
!3922 = !DILocation(line: 205, column: 3, scope: !3916)
!3923 = !DILocation(line: 207, column: 6, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 207, column: 6)
!3925 = !DILocation(line: 207, column: 14, scope: !3924)
!3926 = !DILocation(line: 207, column: 12, scope: !3924)
!3927 = !DILocation(line: 207, column: 6, scope: !3776)
!3928 = !DILocation(line: 208, column: 11, scope: !3924)
!3929 = !DILocation(line: 208, column: 9, scope: !3924)
!3930 = !DILocation(line: 208, column: 3, scope: !3924)
!3931 = !DILocation(line: 210, column: 17, scope: !3776)
!3932 = !DILocation(line: 540, column: 27, scope: !3827, inlinedAt: !3831)
!3933 = !DILocation(line: 540, column: 6, scope: !3827, inlinedAt: !3831)
!3934 = !DILocation(line: 540, column: 6, scope: !3828, inlinedAt: !3831)
!3935 = !DILocation(line: 544, column: 7, scope: !3858, inlinedAt: !3831)
!3936 = !DILocation(line: 544, column: 12, scope: !3858, inlinedAt: !3831)
!3937 = !DILocation(line: 544, column: 7, scope: !3826, inlinedAt: !3831)
!3938 = !DILocation(line: 545, column: 25, scope: !3858, inlinedAt: !3831)
!3939 = !DILocation(line: 545, column: 31, scope: !3858, inlinedAt: !3831)
!3940 = !DILocation(line: 480, column: 33, scope: !3856, inlinedAt: !3857)
!3941 = !DILocation(line: 480, column: 23, scope: !3856, inlinedAt: !3857)
!3942 = !DILocation(line: 481, column: 29, scope: !3856, inlinedAt: !3857)
!3943 = !DILocation(line: 481, column: 35, scope: !3856, inlinedAt: !3857)
!3944 = !DILocation(line: 481, column: 42, scope: !3856, inlinedAt: !3857)
!3945 = !DILocation(line: 474, column: 23, scope: !3851, inlinedAt: !3855)
!3946 = !DILocation(line: 474, column: 29, scope: !3851, inlinedAt: !3855)
!3947 = !DILocation(line: 474, column: 36, scope: !3851, inlinedAt: !3855)
!3948 = !DILocation(line: 474, column: 9, scope: !3851, inlinedAt: !3855)
!3949 = !DILocation(line: 545, column: 4, scope: !3858, inlinedAt: !3831)
!3950 = !DILocation(line: 547, column: 25, scope: !3826, inlinedAt: !3831)
!3951 = !DILocation(line: 348, column: 7, scope: !3952, inlinedAt: !3849)
!3952 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 348, column: 6)
!3953 = !DILocation(line: 348, column: 6, scope: !3845, inlinedAt: !3849)
!3954 = !DILocation(line: 349, column: 3, scope: !3952, inlinedAt: !3849)
!3955 = !DILocation(line: 351, column: 6, scope: !3956, inlinedAt: !3849)
!3956 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 351, column: 6)
!3957 = !DILocation(line: 351, column: 11, scope: !3956, inlinedAt: !3849)
!3958 = !DILocation(line: 351, column: 6, scope: !3845, inlinedAt: !3849)
!3959 = !DILocation(line: 352, column: 3, scope: !3956, inlinedAt: !3849)
!3960 = !DILocation(line: 354, column: 32, scope: !3961, inlinedAt: !3849)
!3961 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 354, column: 6)
!3962 = !DILocation(line: 354, column: 37, scope: !3961, inlinedAt: !3849)
!3963 = !DILocation(line: 354, column: 42, scope: !3961, inlinedAt: !3849)
!3964 = !DILocation(line: 354, column: 45, scope: !3961, inlinedAt: !3849)
!3965 = !DILocation(line: 354, column: 50, scope: !3961, inlinedAt: !3849)
!3966 = !DILocation(line: 354, column: 6, scope: !3845, inlinedAt: !3849)
!3967 = !DILocation(line: 355, column: 3, scope: !3961, inlinedAt: !3849)
!3968 = !DILocation(line: 356, column: 32, scope: !3969, inlinedAt: !3849)
!3969 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 356, column: 6)
!3970 = !DILocation(line: 356, column: 37, scope: !3969, inlinedAt: !3849)
!3971 = !DILocation(line: 356, column: 43, scope: !3969, inlinedAt: !3849)
!3972 = !DILocation(line: 356, column: 46, scope: !3969, inlinedAt: !3849)
!3973 = !DILocation(line: 356, column: 51, scope: !3969, inlinedAt: !3849)
!3974 = !DILocation(line: 356, column: 6, scope: !3845, inlinedAt: !3849)
!3975 = !DILocation(line: 357, column: 3, scope: !3969, inlinedAt: !3849)
!3976 = !DILocation(line: 358, column: 6, scope: !3977, inlinedAt: !3849)
!3977 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 358, column: 6)
!3978 = !DILocation(line: 358, column: 11, scope: !3977, inlinedAt: !3849)
!3979 = !DILocation(line: 358, column: 6, scope: !3845, inlinedAt: !3849)
!3980 = !DILocation(line: 358, column: 26, scope: !3977, inlinedAt: !3849)
!3981 = !DILocation(line: 359, column: 6, scope: !3982, inlinedAt: !3849)
!3982 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 359, column: 6)
!3983 = !DILocation(line: 359, column: 11, scope: !3982, inlinedAt: !3849)
!3984 = !DILocation(line: 359, column: 6, scope: !3845, inlinedAt: !3849)
!3985 = !DILocation(line: 359, column: 26, scope: !3982, inlinedAt: !3849)
!3986 = !DILocation(line: 360, column: 6, scope: !3987, inlinedAt: !3849)
!3987 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 360, column: 6)
!3988 = !DILocation(line: 360, column: 11, scope: !3987, inlinedAt: !3849)
!3989 = !DILocation(line: 360, column: 6, scope: !3845, inlinedAt: !3849)
!3990 = !DILocation(line: 360, column: 26, scope: !3987, inlinedAt: !3849)
!3991 = !DILocation(line: 361, column: 6, scope: !3992, inlinedAt: !3849)
!3992 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 361, column: 6)
!3993 = !DILocation(line: 361, column: 11, scope: !3992, inlinedAt: !3849)
!3994 = !DILocation(line: 361, column: 6, scope: !3845, inlinedAt: !3849)
!3995 = !DILocation(line: 361, column: 26, scope: !3992, inlinedAt: !3849)
!3996 = !DILocation(line: 362, column: 6, scope: !3997, inlinedAt: !3849)
!3997 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 362, column: 6)
!3998 = !DILocation(line: 362, column: 11, scope: !3997, inlinedAt: !3849)
!3999 = !DILocation(line: 362, column: 6, scope: !3845, inlinedAt: !3849)
!4000 = !DILocation(line: 362, column: 26, scope: !3997, inlinedAt: !3849)
!4001 = !DILocation(line: 363, column: 6, scope: !4002, inlinedAt: !3849)
!4002 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 363, column: 6)
!4003 = !DILocation(line: 363, column: 11, scope: !4002, inlinedAt: !3849)
!4004 = !DILocation(line: 363, column: 6, scope: !3845, inlinedAt: !3849)
!4005 = !DILocation(line: 363, column: 26, scope: !4002, inlinedAt: !3849)
!4006 = !DILocation(line: 364, column: 6, scope: !4007, inlinedAt: !3849)
!4007 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 364, column: 6)
!4008 = !DILocation(line: 364, column: 11, scope: !4007, inlinedAt: !3849)
!4009 = !DILocation(line: 364, column: 6, scope: !3845, inlinedAt: !3849)
!4010 = !DILocation(line: 364, column: 26, scope: !4007, inlinedAt: !3849)
!4011 = !DILocation(line: 365, column: 6, scope: !4012, inlinedAt: !3849)
!4012 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 365, column: 6)
!4013 = !DILocation(line: 365, column: 11, scope: !4012, inlinedAt: !3849)
!4014 = !DILocation(line: 365, column: 6, scope: !3845, inlinedAt: !3849)
!4015 = !DILocation(line: 365, column: 26, scope: !4012, inlinedAt: !3849)
!4016 = !DILocation(line: 366, column: 6, scope: !4017, inlinedAt: !3849)
!4017 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 366, column: 6)
!4018 = !DILocation(line: 366, column: 11, scope: !4017, inlinedAt: !3849)
!4019 = !DILocation(line: 366, column: 6, scope: !3845, inlinedAt: !3849)
!4020 = !DILocation(line: 366, column: 26, scope: !4017, inlinedAt: !3849)
!4021 = !DILocation(line: 367, column: 6, scope: !4022, inlinedAt: !3849)
!4022 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 367, column: 6)
!4023 = !DILocation(line: 367, column: 11, scope: !4022, inlinedAt: !3849)
!4024 = !DILocation(line: 367, column: 6, scope: !3845, inlinedAt: !3849)
!4025 = !DILocation(line: 367, column: 26, scope: !4022, inlinedAt: !3849)
!4026 = !DILocation(line: 368, column: 6, scope: !4027, inlinedAt: !3849)
!4027 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 368, column: 6)
!4028 = !DILocation(line: 368, column: 11, scope: !4027, inlinedAt: !3849)
!4029 = !DILocation(line: 368, column: 6, scope: !3845, inlinedAt: !3849)
!4030 = !DILocation(line: 368, column: 26, scope: !4027, inlinedAt: !3849)
!4031 = !DILocation(line: 369, column: 6, scope: !4032, inlinedAt: !3849)
!4032 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 369, column: 6)
!4033 = !DILocation(line: 369, column: 11, scope: !4032, inlinedAt: !3849)
!4034 = !DILocation(line: 369, column: 6, scope: !3845, inlinedAt: !3849)
!4035 = !DILocation(line: 369, column: 26, scope: !4032, inlinedAt: !3849)
!4036 = !DILocation(line: 370, column: 6, scope: !4037, inlinedAt: !3849)
!4037 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 370, column: 6)
!4038 = !DILocation(line: 370, column: 11, scope: !4037, inlinedAt: !3849)
!4039 = !DILocation(line: 370, column: 6, scope: !3845, inlinedAt: !3849)
!4040 = !DILocation(line: 370, column: 26, scope: !4037, inlinedAt: !3849)
!4041 = !DILocation(line: 371, column: 6, scope: !4042, inlinedAt: !3849)
!4042 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 371, column: 6)
!4043 = !DILocation(line: 371, column: 11, scope: !4042, inlinedAt: !3849)
!4044 = !DILocation(line: 371, column: 6, scope: !3845, inlinedAt: !3849)
!4045 = !DILocation(line: 371, column: 26, scope: !4042, inlinedAt: !3849)
!4046 = !DILocation(line: 372, column: 6, scope: !4047, inlinedAt: !3849)
!4047 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 372, column: 6)
!4048 = !DILocation(line: 372, column: 11, scope: !4047, inlinedAt: !3849)
!4049 = !DILocation(line: 372, column: 6, scope: !3845, inlinedAt: !3849)
!4050 = !DILocation(line: 372, column: 26, scope: !4047, inlinedAt: !3849)
!4051 = !DILocation(line: 373, column: 6, scope: !4052, inlinedAt: !3849)
!4052 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 373, column: 6)
!4053 = !DILocation(line: 373, column: 11, scope: !4052, inlinedAt: !3849)
!4054 = !DILocation(line: 373, column: 6, scope: !3845, inlinedAt: !3849)
!4055 = !DILocation(line: 373, column: 26, scope: !4052, inlinedAt: !3849)
!4056 = !DILocation(line: 374, column: 6, scope: !4057, inlinedAt: !3849)
!4057 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 374, column: 6)
!4058 = !DILocation(line: 374, column: 11, scope: !4057, inlinedAt: !3849)
!4059 = !DILocation(line: 374, column: 6, scope: !3845, inlinedAt: !3849)
!4060 = !DILocation(line: 374, column: 26, scope: !4057, inlinedAt: !3849)
!4061 = !DILocation(line: 375, column: 6, scope: !4062, inlinedAt: !3849)
!4062 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 375, column: 6)
!4063 = !DILocation(line: 375, column: 11, scope: !4062, inlinedAt: !3849)
!4064 = !DILocation(line: 375, column: 6, scope: !3845, inlinedAt: !3849)
!4065 = !DILocation(line: 375, column: 27, scope: !4062, inlinedAt: !3849)
!4066 = !DILocation(line: 376, column: 6, scope: !4067, inlinedAt: !3849)
!4067 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 376, column: 6)
!4068 = !DILocation(line: 376, column: 11, scope: !4067, inlinedAt: !3849)
!4069 = !DILocation(line: 376, column: 6, scope: !3845, inlinedAt: !3849)
!4070 = !DILocation(line: 376, column: 32, scope: !4067, inlinedAt: !3849)
!4071 = !DILocation(line: 377, column: 6, scope: !4072, inlinedAt: !3849)
!4072 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 377, column: 6)
!4073 = !DILocation(line: 377, column: 11, scope: !4072, inlinedAt: !3849)
!4074 = !DILocation(line: 377, column: 6, scope: !3845, inlinedAt: !3849)
!4075 = !DILocation(line: 377, column: 32, scope: !4072, inlinedAt: !3849)
!4076 = !DILocation(line: 378, column: 6, scope: !4077, inlinedAt: !3849)
!4077 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 378, column: 6)
!4078 = !DILocation(line: 378, column: 11, scope: !4077, inlinedAt: !3849)
!4079 = !DILocation(line: 378, column: 6, scope: !3845, inlinedAt: !3849)
!4080 = !DILocation(line: 378, column: 32, scope: !4077, inlinedAt: !3849)
!4081 = !DILocation(line: 379, column: 6, scope: !4082, inlinedAt: !3849)
!4082 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 379, column: 6)
!4083 = !DILocation(line: 379, column: 11, scope: !4082, inlinedAt: !3849)
!4084 = !DILocation(line: 379, column: 6, scope: !3845, inlinedAt: !3849)
!4085 = !DILocation(line: 379, column: 33, scope: !4082, inlinedAt: !3849)
!4086 = !DILocation(line: 380, column: 6, scope: !4087, inlinedAt: !3849)
!4087 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 380, column: 6)
!4088 = !DILocation(line: 380, column: 11, scope: !4087, inlinedAt: !3849)
!4089 = !DILocation(line: 380, column: 6, scope: !3845, inlinedAt: !3849)
!4090 = !DILocation(line: 380, column: 33, scope: !4087, inlinedAt: !3849)
!4091 = !DILocation(line: 381, column: 6, scope: !4092, inlinedAt: !3849)
!4092 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 381, column: 6)
!4093 = !DILocation(line: 381, column: 11, scope: !4092, inlinedAt: !3849)
!4094 = !DILocation(line: 381, column: 6, scope: !3845, inlinedAt: !3849)
!4095 = !DILocation(line: 381, column: 33, scope: !4092, inlinedAt: !3849)
!4096 = !DILocation(line: 382, column: 2, scope: !4097, inlinedAt: !3849)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !81, line: 382, column: 2)
!4098 = distinct !DILexicalBlock(scope: !3845, file: !81, line: 382, column: 2)
!4099 = !{i32 -2143211642, i32 -2143211613, i32 -2143211567, i32 -2143211509, i32 -2143211455, i32 -2143211401, i32 -2143211346, i32 -2143211315}
!4100 = !DILocation(line: 382, column: 2, scope: !4101, inlinedAt: !3849)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !81, line: 382, column: 2)
!4102 = distinct !DILexicalBlock(scope: !4098, file: !81, line: 382, column: 2)
!4103 = !{i32 -2143210872, i32 -2143210865, i32 -2143210811, i32 -2143210780, i32 -2143210750}
!4104 = !DILocation(line: 382, column: 2, scope: !4102, inlinedAt: !3849)
!4105 = !DILocation(line: 386, column: 1, scope: !3845, inlinedAt: !3849)
!4106 = !DILocation(line: 547, column: 9, scope: !3826, inlinedAt: !3831)
!4107 = !DILocation(line: 549, column: 8, scope: !4108, inlinedAt: !3831)
!4108 = distinct !DILexicalBlock(scope: !3826, file: !81, line: 549, column: 7)
!4109 = !DILocation(line: 549, column: 7, scope: !3826, inlinedAt: !3831)
!4110 = !DILocation(line: 550, column: 4, scope: !4108, inlinedAt: !3831)
!4111 = !DILocation(line: 553, column: 33, scope: !3826, inlinedAt: !3831)
!4112 = !DILocation(line: 325, column: 6, scope: !4113, inlinedAt: !3843)
!4113 = distinct !DILexicalBlock(scope: !3839, file: !81, line: 325, column: 6)
!4114 = !DILocation(line: 325, column: 6, scope: !3839, inlinedAt: !3843)
!4115 = !DILocation(line: 326, column: 3, scope: !4113, inlinedAt: !3843)
!4116 = !DILocation(line: 332, column: 9, scope: !3839, inlinedAt: !3843)
!4117 = !DILocation(line: 332, column: 15, scope: !3839, inlinedAt: !3843)
!4118 = !DILocation(line: 332, column: 2, scope: !3839, inlinedAt: !3843)
!4119 = !DILocation(line: 336, column: 1, scope: !3839, inlinedAt: !3843)
!4120 = !DILocation(line: 553, column: 5, scope: !3826, inlinedAt: !3831)
!4121 = !DILocation(line: 553, column: 41, scope: !3826, inlinedAt: !3831)
!4122 = !DILocation(line: 554, column: 5, scope: !3826, inlinedAt: !3831)
!4123 = !DILocation(line: 554, column: 12, scope: !3826, inlinedAt: !3831)
!4124 = !DILocation(line: 448, column: 31, scope: !3821, inlinedAt: !3825)
!4125 = !DILocation(line: 448, column: 34, scope: !3821, inlinedAt: !3825)
!4126 = !DILocation(line: 448, column: 14, scope: !3821, inlinedAt: !3825)
!4127 = !DILocation(line: 450, column: 22, scope: !3821, inlinedAt: !3825)
!4128 = !DILocation(line: 450, column: 25, scope: !3821, inlinedAt: !3825)
!4129 = !DILocation(line: 450, column: 30, scope: !3821, inlinedAt: !3825)
!4130 = !DILocation(line: 450, column: 36, scope: !3821, inlinedAt: !3825)
!4131 = !DILocation(line: 450, column: 8, scope: !3821, inlinedAt: !3825)
!4132 = !DILocation(line: 450, column: 6, scope: !3821, inlinedAt: !3825)
!4133 = !DILocation(line: 451, column: 9, scope: !3821, inlinedAt: !3825)
!4134 = !DILocation(line: 552, column: 3, scope: !3826, inlinedAt: !3831)
!4135 = !DILocation(line: 557, column: 19, scope: !3828, inlinedAt: !3831)
!4136 = !DILocation(line: 557, column: 25, scope: !3828, inlinedAt: !3831)
!4137 = !DILocation(line: 557, column: 9, scope: !3828, inlinedAt: !3831)
!4138 = !DILocation(line: 557, column: 2, scope: !3828, inlinedAt: !3831)
!4139 = !DILocation(line: 558, column: 1, scope: !3828, inlinedAt: !3831)
!4140 = !DILocation(line: 210, column: 7, scope: !3776)
!4141 = !DILocation(line: 211, column: 7, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 211, column: 6)
!4143 = !DILocation(line: 211, column: 6, scope: !3776)
!4144 = !DILocation(line: 212, column: 3, scope: !4142)
!4145 = !DILocation(line: 214, column: 6, scope: !3812)
!4146 = !DILocation(line: 214, column: 14, scope: !3812)
!4147 = !DILocation(line: 214, column: 12, scope: !3812)
!4148 = !DILocation(line: 214, column: 6, scope: !3776)
!4149 = !DILocation(line: 215, column: 17, scope: !3811)
!4150 = !DILocation(line: 215, column: 23, scope: !3811)
!4151 = !DILocation(line: 215, column: 27, scope: !3811)
!4152 = !DILocation(line: 215, column: 36, scope: !3811)
!4153 = !DILocation(line: 215, column: 3, scope: !3811)
!4154 = !DILocation(line: 216, column: 20, scope: !3810)
!4155 = !DILocation(line: 216, column: 25, scope: !3810)
!4156 = !DILocation(line: 216, column: 31, scope: !3810)
!4157 = !DILocation(line: 199, column: 6, scope: !3784, inlinedAt: !3809)
!4158 = !DILocation(line: 141, column: 6, scope: !4159, inlinedAt: !3808)
!4159 = distinct !DILexicalBlock(scope: !3778, file: !3779, line: 141, column: 6)
!4160 = !DILocation(line: 0, scope: !4159, inlinedAt: !3808)
!4161 = !DILocation(line: 141, column: 6, scope: !3778, inlinedAt: !3808)
!4162 = !DILocation(line: 142, column: 29, scope: !4163, inlinedAt: !3808)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !3779, line: 142, column: 7)
!4164 = distinct !DILexicalBlock(scope: !4159, file: !3779, line: 141, column: 39)
!4165 = !DILocation(line: 142, column: 8, scope: !4163, inlinedAt: !3808)
!4166 = !DILocation(line: 142, column: 7, scope: !4164, inlinedAt: !3808)
!4167 = !DILocation(line: 143, column: 18, scope: !4163, inlinedAt: !3808)
!4168 = !DILocation(line: 143, column: 22, scope: !4163, inlinedAt: !3808)
!4169 = !DILocation(line: 143, column: 4, scope: !4163, inlinedAt: !3808)
!4170 = !DILocation(line: 144, column: 12, scope: !4171, inlinedAt: !3808)
!4171 = distinct !DILexicalBlock(scope: !4163, file: !3779, line: 144, column: 12)
!4172 = !DILocation(line: 144, column: 12, scope: !4163, inlinedAt: !3808)
!4173 = !DILocation(line: 145, column: 4, scope: !4171, inlinedAt: !3808)
!4174 = !DILocation(line: 147, column: 4, scope: !4171, inlinedAt: !3808)
!4175 = !DILocation(line: 148, column: 3, scope: !4164, inlinedAt: !3808)
!4176 = !DILocation(line: 150, column: 6, scope: !4177, inlinedAt: !3808)
!4177 = distinct !DILexicalBlock(scope: !3798, file: !3779, line: 150, column: 6)
!4178 = !DILocation(line: 150, column: 6, scope: !4179, inlinedAt: !3808)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !3779, line: 150, column: 6)
!4180 = distinct !DILexicalBlock(scope: !4177, file: !3779, line: 150, column: 6)
!4181 = !{i32 -2145552633, i32 -2145552604, i32 -2145552558, i32 -2145552500, i32 -2145552446, i32 -2145552392, i32 -2145552337, i32 -2145552306}
!4182 = !DILocation(line: 150, column: 6, scope: !4183, inlinedAt: !3808)
!4183 = distinct !DILexicalBlock(scope: !4180, file: !3779, line: 150, column: 6)
!4184 = !{i32 -2145551886, i32 -2145551879, i32 -2145551827, i32 -2145551796, i32 -2145551766}
!4185 = !DILocation(line: 150, column: 6, scope: !4180, inlinedAt: !3808)
!4186 = !DILocation(line: 150, column: 6, scope: !3799, inlinedAt: !3808)
!4187 = !DILocation(line: 150, column: 6, scope: !3778, inlinedAt: !3808)
!4188 = !DILocation(line: 151, column: 3, scope: !3799, inlinedAt: !3808)
!4189 = !DILocation(line: 152, column: 20, scope: !3778, inlinedAt: !3808)
!4190 = !DILocation(line: 152, column: 26, scope: !3778, inlinedAt: !3808)
!4191 = !DILocation(line: 152, column: 33, scope: !3778, inlinedAt: !3808)
!4192 = !DILocation(line: 152, column: 2, scope: !3778, inlinedAt: !3808)
!4193 = !DILocation(line: 153, column: 2, scope: !3778, inlinedAt: !3808)
!4194 = !DILocation(line: 154, column: 1, scope: !3778, inlinedAt: !3808)
!4195 = !DILocation(line: 199, column: 6, scope: !3786, inlinedAt: !3809)
!4196 = !DILocation(line: 200, column: 21, scope: !3784, inlinedAt: !3809)
!4197 = !DILocation(line: 200, column: 25, scope: !3784, inlinedAt: !3809)
!4198 = !DILocation(line: 200, column: 31, scope: !3784, inlinedAt: !3809)
!4199 = !DILocation(line: 200, column: 7, scope: !3784, inlinedAt: !3809)
!4200 = !DILocation(line: 200, column: 5, scope: !3784, inlinedAt: !3809)
!4201 = !DILocation(line: 200, column: 3, scope: !3784, inlinedAt: !3809)
!4202 = !DILocation(line: 201, column: 9, scope: !3786, inlinedAt: !3809)
!4203 = !DILocation(line: 216, column: 7, scope: !3810)
!4204 = !DILocation(line: 216, column: 7, scope: !3811)
!4205 = !DILocation(line: 217, column: 8, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !3810, file: !3, line: 216, column: 43)
!4207 = !DILocation(line: 218, column: 4, scope: !4206)
!4208 = !DILocation(line: 220, column: 10, scope: !3811)
!4209 = !DILocation(line: 220, column: 7, scope: !3811)
!4210 = !DILocation(line: 221, column: 17, scope: !3811)
!4211 = !DILocation(line: 221, column: 21, scope: !3811)
!4212 = !DILocation(line: 221, column: 3, scope: !3811)
!4213 = !DILocation(line: 221, column: 7, scope: !3811)
!4214 = !DILocation(line: 221, column: 15, scope: !3811)
!4215 = !DILocation(line: 222, column: 12, scope: !3811)
!4216 = !DILocation(line: 222, column: 9, scope: !3811)
!4217 = !DILocation(line: 223, column: 14, scope: !3811)
!4218 = !DILocation(line: 223, column: 11, scope: !3811)
!4219 = !DILocation(line: 224, column: 2, scope: !3811)
!4220 = !DILocation(line: 226, column: 16, scope: !3776)
!4221 = !DILocation(line: 226, column: 22, scope: !3776)
!4222 = !DILocation(line: 226, column: 26, scope: !3776)
!4223 = !DILocation(line: 226, column: 35, scope: !3776)
!4224 = !DILocation(line: 226, column: 2, scope: !3776)
!4225 = !DILocation(line: 227, column: 19, scope: !3790)
!4226 = !DILocation(line: 227, column: 24, scope: !3790)
!4227 = !DILocation(line: 227, column: 30, scope: !3790)
!4228 = !DILocation(line: 199, column: 6, scope: !3784, inlinedAt: !3789)
!4229 = !DILocation(line: 141, column: 6, scope: !4159, inlinedAt: !3783)
!4230 = !DILocation(line: 0, scope: !4159, inlinedAt: !3783)
!4231 = !DILocation(line: 141, column: 6, scope: !3778, inlinedAt: !3783)
!4232 = !DILocation(line: 142, column: 29, scope: !4163, inlinedAt: !3783)
!4233 = !DILocation(line: 142, column: 8, scope: !4163, inlinedAt: !3783)
!4234 = !DILocation(line: 142, column: 7, scope: !4164, inlinedAt: !3783)
!4235 = !DILocation(line: 143, column: 18, scope: !4163, inlinedAt: !3783)
!4236 = !DILocation(line: 143, column: 22, scope: !4163, inlinedAt: !3783)
!4237 = !DILocation(line: 143, column: 4, scope: !4163, inlinedAt: !3783)
!4238 = !DILocation(line: 144, column: 12, scope: !4171, inlinedAt: !3783)
!4239 = !DILocation(line: 144, column: 12, scope: !4163, inlinedAt: !3783)
!4240 = !DILocation(line: 145, column: 4, scope: !4171, inlinedAt: !3783)
!4241 = !DILocation(line: 147, column: 4, scope: !4171, inlinedAt: !3783)
!4242 = !DILocation(line: 148, column: 3, scope: !4164, inlinedAt: !3783)
!4243 = !DILocation(line: 150, column: 6, scope: !4177, inlinedAt: !3783)
!4244 = !DILocation(line: 150, column: 6, scope: !4179, inlinedAt: !3783)
!4245 = !DILocation(line: 150, column: 6, scope: !4183, inlinedAt: !3783)
!4246 = !DILocation(line: 150, column: 6, scope: !4180, inlinedAt: !3783)
!4247 = !DILocation(line: 150, column: 6, scope: !3799, inlinedAt: !3783)
!4248 = !DILocation(line: 150, column: 6, scope: !3778, inlinedAt: !3783)
!4249 = !DILocation(line: 151, column: 3, scope: !3799, inlinedAt: !3783)
!4250 = !DILocation(line: 152, column: 20, scope: !3778, inlinedAt: !3783)
!4251 = !DILocation(line: 152, column: 26, scope: !3778, inlinedAt: !3783)
!4252 = !DILocation(line: 152, column: 33, scope: !3778, inlinedAt: !3783)
!4253 = !DILocation(line: 152, column: 2, scope: !3778, inlinedAt: !3783)
!4254 = !DILocation(line: 153, column: 2, scope: !3778, inlinedAt: !3783)
!4255 = !DILocation(line: 154, column: 1, scope: !3778, inlinedAt: !3783)
!4256 = !DILocation(line: 199, column: 6, scope: !3786, inlinedAt: !3789)
!4257 = !DILocation(line: 200, column: 21, scope: !3784, inlinedAt: !3789)
!4258 = !DILocation(line: 200, column: 25, scope: !3784, inlinedAt: !3789)
!4259 = !DILocation(line: 200, column: 31, scope: !3784, inlinedAt: !3789)
!4260 = !DILocation(line: 200, column: 7, scope: !3784, inlinedAt: !3789)
!4261 = !DILocation(line: 200, column: 5, scope: !3784, inlinedAt: !3789)
!4262 = !DILocation(line: 200, column: 3, scope: !3784, inlinedAt: !3789)
!4263 = !DILocation(line: 201, column: 9, scope: !3786, inlinedAt: !3789)
!4264 = !DILocation(line: 227, column: 6, scope: !3790)
!4265 = !DILocation(line: 227, column: 6, scope: !3776)
!4266 = !DILocation(line: 228, column: 7, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !3790, file: !3, line: 227, column: 38)
!4268 = !DILocation(line: 229, column: 3, scope: !4267)
!4269 = !DILocation(line: 231, column: 17, scope: !3776)
!4270 = !DILocation(line: 231, column: 2, scope: !3776)
!4271 = !DILocation(line: 231, column: 6, scope: !3776)
!4272 = !DILocation(line: 231, column: 14, scope: !3776)
!4273 = !DILocation(line: 232, column: 13, scope: !3776)
!4274 = !DILocation(line: 232, column: 10, scope: !3776)
!4275 = !DILocation(line: 234, column: 9, scope: !3776)
!4276 = !DILocation(line: 234, column: 2, scope: !3776)
!4277 = !DILabel(scope: !3776, name: "err_free_buf", file: !3, line: 236)
!4278 = !DILocation(line: 236, column: 1, scope: !3776)
!4279 = !DILocation(line: 237, column: 8, scope: !3776)
!4280 = !DILocation(line: 237, column: 2, scope: !3776)
!4281 = !DILocation(line: 239, column: 9, scope: !3776)
!4282 = !DILocation(line: 239, column: 2, scope: !3776)
!4283 = !DILocation(line: 240, column: 1, scope: !3776)
!4284 = distinct !DISubprogram(name: "dpaa2_mc_console_open", scope: !3, file: !3, line: 168, type: !2727, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4285 = !DILocalVariable(name: "node", arg: 1, scope: !4284, file: !3, line: 168, type: !381)
!4286 = !DILocation(line: 168, column: 48, scope: !4284)
!4287 = !DILocalVariable(name: "fp", arg: 2, scope: !4284, file: !3, line: 168, type: !306)
!4288 = !DILocation(line: 168, column: 67, scope: !4284)
!4289 = !DILocation(line: 170, column: 36, scope: !4284)
!4290 = !DILocation(line: 170, column: 42, scope: !4284)
!4291 = !DILocation(line: 170, column: 9, scope: !4284)
!4292 = !DILocation(line: 170, column: 2, scope: !4284)
!4293 = distinct !DISubprogram(name: "dpaa2_console_close", scope: !3, file: !3, line: 182, type: !2727, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4294 = !DILocalVariable(name: "node", arg: 1, scope: !4293, file: !3, line: 182, type: !381)
!4295 = !DILocation(line: 182, column: 46, scope: !4293)
!4296 = !DILocalVariable(name: "fp", arg: 2, scope: !4293, file: !3, line: 182, type: !306)
!4297 = !DILocation(line: 182, column: 65, scope: !4293)
!4298 = !DILocalVariable(name: "cd", scope: !4293, file: !3, line: 184, type: !3884)
!4299 = !DILocation(line: 184, column: 23, scope: !4293)
!4300 = !DILocation(line: 184, column: 28, scope: !4293)
!4301 = !DILocation(line: 184, column: 32, scope: !4293)
!4302 = !DILocation(line: 186, column: 10, scope: !4293)
!4303 = !DILocation(line: 186, column: 14, scope: !4293)
!4304 = !DILocation(line: 186, column: 2, scope: !4293)
!4305 = !DILocation(line: 187, column: 8, scope: !4293)
!4306 = !DILocation(line: 187, column: 2, scope: !4293)
!4307 = !DILocation(line: 188, column: 2, scope: !4293)
!4308 = distinct !DISubprogram(name: "dpaa2_console_size", scope: !3, file: !3, line: 90, type: !4309, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!259, !3884}
!4311 = !DILocalVariable(name: "cd", arg: 1, scope: !4308, file: !3, line: 90, type: !3884)
!4312 = !DILocation(line: 90, column: 56, scope: !4308)
!4313 = !DILocalVariable(name: "size", scope: !4308, file: !3, line: 92, type: !259)
!4314 = !DILocation(line: 92, column: 10, scope: !4308)
!4315 = !DILocation(line: 94, column: 6, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 94, column: 6)
!4317 = !DILocation(line: 94, column: 10, scope: !4316)
!4318 = !DILocation(line: 94, column: 21, scope: !4316)
!4319 = !DILocation(line: 94, column: 25, scope: !4316)
!4320 = !DILocation(line: 94, column: 18, scope: !4316)
!4321 = !DILocation(line: 94, column: 6, scope: !4308)
!4322 = !DILocation(line: 95, column: 10, scope: !4316)
!4323 = !DILocation(line: 95, column: 14, scope: !4316)
!4324 = !DILocation(line: 95, column: 28, scope: !4316)
!4325 = !DILocation(line: 95, column: 32, scope: !4316)
!4326 = !DILocation(line: 95, column: 26, scope: !4316)
!4327 = !DILocation(line: 95, column: 8, scope: !4316)
!4328 = !DILocation(line: 95, column: 3, scope: !4316)
!4329 = !DILocation(line: 97, column: 11, scope: !4316)
!4330 = !DILocation(line: 97, column: 15, scope: !4316)
!4331 = !DILocation(line: 97, column: 26, scope: !4316)
!4332 = !DILocation(line: 97, column: 30, scope: !4316)
!4333 = !DILocation(line: 97, column: 24, scope: !4316)
!4334 = !DILocation(line: 98, column: 5, scope: !4316)
!4335 = !DILocation(line: 98, column: 9, scope: !4316)
!4336 = !DILocation(line: 98, column: 23, scope: !4316)
!4337 = !DILocation(line: 98, column: 27, scope: !4316)
!4338 = !DILocation(line: 98, column: 21, scope: !4316)
!4339 = !DILocation(line: 97, column: 39, scope: !4316)
!4340 = !DILocation(line: 97, column: 8, scope: !4316)
!4341 = !DILocation(line: 100, column: 9, scope: !4308)
!4342 = !DILocation(line: 100, column: 2, scope: !4308)
!4343 = distinct !DISubprogram(name: "adjust_end", scope: !3, file: !3, line: 62, type: !4344, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{null, !3884}
!4346 = !DILocalVariable(name: "cd", arg: 1, scope: !4343, file: !3, line: 62, type: !3884)
!4347 = !DILocation(line: 62, column: 52, scope: !4343)
!4348 = !DILocalVariable(name: "last_byte", scope: !4343, file: !3, line: 64, type: !369)
!4349 = !DILocation(line: 64, column: 6, scope: !4343)
!4350 = !DILocation(line: 64, column: 25, scope: !4343)
!4351 = !DILocation(line: 64, column: 29, scope: !4343)
!4352 = !DILocation(line: 64, column: 34, scope: !4343)
!4353 = !DILocation(line: 64, column: 24, scope: !4343)
!4354 = !DILocation(line: 64, column: 18, scope: !4343)
!4355 = !DILocation(line: 66, column: 20, scope: !4343)
!4356 = !DILocation(line: 66, column: 24, scope: !4343)
!4357 = !DILocation(line: 66, column: 37, scope: !4343)
!4358 = !DILocation(line: 66, column: 35, scope: !4343)
!4359 = !DILocation(line: 66, column: 2, scope: !4343)
!4360 = !DILocation(line: 66, column: 6, scope: !4343)
!4361 = !DILocation(line: 66, column: 18, scope: !4343)
!4362 = !DILocation(line: 67, column: 1, scope: !4343)
!4363 = distinct !DISubprogram(name: "readl", scope: !4364, file: !4364, line: 59, type: !4365, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4364 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!7, !4367}
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4369)
!4369 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4370 = !DILocalVariable(name: "addr", arg: 1, scope: !4363, file: !4364, line: 59, type: !4367)
!4371 = !DILocation(line: 59, column: 1, scope: !4363)
!4372 = !DILocalVariable(name: "ret", scope: !4363, file: !4364, line: 59, type: !7)
!4373 = !{i32 -2143454411}
!4374 = distinct !DISubprogram(name: "get_order", scope: !4375, file: !4375, line: 29, type: !4376, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4375 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!101, !278}
!4378 = !DILocalVariable(name: "x", arg: 1, scope: !4379, file: !4380, line: 366, type: !374)
!4379 = distinct !DISubprogram(name: "fls64", scope: !4380, file: !4380, line: 366, type: !4381, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4380 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!101, !374}
!4383 = !DILocation(line: 366, column: 40, scope: !4379, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 46, column: 9, scope: !4374)
!4385 = !DILocalVariable(name: "bitpos", scope: !4379, file: !4380, line: 368, type: !101)
!4386 = !DILocation(line: 368, column: 6, scope: !4379, inlinedAt: !4384)
!4387 = !DILocalVariable(name: "size", arg: 1, scope: !4374, file: !4375, line: 29, type: !278)
!4388 = !DILocation(line: 29, column: 63, scope: !4374)
!4389 = !DILocation(line: 31, column: 27, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4374, file: !4375, line: 31, column: 6)
!4391 = !DILocation(line: 31, column: 6, scope: !4390)
!4392 = !DILocation(line: 31, column: 6, scope: !4374)
!4393 = !DILocation(line: 32, column: 8, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !4375, line: 32, column: 7)
!4395 = distinct !DILexicalBlock(scope: !4390, file: !4375, line: 31, column: 34)
!4396 = !DILocation(line: 32, column: 7, scope: !4395)
!4397 = !DILocation(line: 33, column: 4, scope: !4394)
!4398 = !DILocation(line: 35, column: 7, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4395, file: !4375, line: 35, column: 7)
!4400 = !DILocation(line: 35, column: 12, scope: !4399)
!4401 = !DILocation(line: 35, column: 7, scope: !4395)
!4402 = !DILocation(line: 36, column: 4, scope: !4399)
!4403 = !DILocation(line: 38, column: 10, scope: !4395)
!4404 = !DILocation(line: 38, column: 28, scope: !4395)
!4405 = !DILocation(line: 38, column: 41, scope: !4395)
!4406 = !DILocation(line: 38, column: 3, scope: !4395)
!4407 = !DILocation(line: 41, column: 6, scope: !4374)
!4408 = !DILocation(line: 42, column: 7, scope: !4374)
!4409 = !DILocation(line: 46, column: 15, scope: !4374)
!4410 = !DILocation(line: 374, column: 2, scope: !4379, inlinedAt: !4384)
!4411 = !DILocation(line: 376, column: 14, scope: !4379, inlinedAt: !4384)
!4412 = !{i32 304199}
!4413 = !DILocation(line: 377, column: 9, scope: !4379, inlinedAt: !4384)
!4414 = !DILocation(line: 377, column: 16, scope: !4379, inlinedAt: !4384)
!4415 = !DILocation(line: 46, column: 2, scope: !4374)
!4416 = !DILocation(line: 48, column: 1, scope: !4374)
!4417 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4418, file: !4418, line: 30, type: !4419, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4418 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!101, !373}
!4421 = !DILocation(line: 366, column: 40, scope: !4379, inlinedAt: !4422)
!4422 = distinct !DILocation(line: 32, column: 9, scope: !4417)
!4423 = !DILocation(line: 368, column: 6, scope: !4379, inlinedAt: !4422)
!4424 = !DILocalVariable(name: "n", arg: 1, scope: !4417, file: !4418, line: 30, type: !373)
!4425 = !DILocation(line: 30, column: 21, scope: !4417)
!4426 = !DILocation(line: 32, column: 15, scope: !4417)
!4427 = !DILocation(line: 374, column: 2, scope: !4379, inlinedAt: !4422)
!4428 = !DILocation(line: 376, column: 14, scope: !4379, inlinedAt: !4422)
!4429 = !DILocation(line: 377, column: 9, scope: !4379, inlinedAt: !4422)
!4430 = !DILocation(line: 377, column: 16, scope: !4379, inlinedAt: !4422)
!4431 = !DILocation(line: 32, column: 18, scope: !4417)
!4432 = !DILocation(line: 32, column: 2, scope: !4417)
!4433 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4434, file: !4434, line: 137, type: !4435, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4434 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!100, !885, !1995, !275, !96}
!4437 = !DILocalVariable(name: "s", arg: 1, scope: !4433, file: !4434, line: 137, type: !885)
!4438 = !DILocation(line: 137, column: 54, scope: !4433)
!4439 = !DILocalVariable(name: "object", arg: 2, scope: !4433, file: !4434, line: 137, type: !1995)
!4440 = !DILocation(line: 137, column: 69, scope: !4433)
!4441 = !DILocalVariable(name: "size", arg: 3, scope: !4433, file: !4434, line: 138, type: !275)
!4442 = !DILocation(line: 138, column: 12, scope: !4433)
!4443 = !DILocalVariable(name: "flags", arg: 4, scope: !4433, file: !4434, line: 138, type: !96)
!4444 = !DILocation(line: 138, column: 24, scope: !4433)
!4445 = !DILocation(line: 140, column: 17, scope: !4433)
!4446 = !DILocation(line: 140, column: 2, scope: !4433)
!4447 = distinct !DISubprogram(name: "copy_overflow", scope: !3779, file: !3779, line: 132, type: !4448, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{null, !101, !278}
!4450 = !DILocalVariable(name: "size", arg: 1, scope: !4447, file: !3779, line: 132, type: !101)
!4451 = !DILocation(line: 132, column: 38, scope: !4447)
!4452 = !DILocalVariable(name: "count", arg: 2, scope: !4447, file: !3779, line: 132, type: !278)
!4453 = !DILocation(line: 132, column: 58, scope: !4447)
!4454 = !DILocalVariable(name: "__ret_warn_on", scope: !4455, file: !3779, line: 134, type: !101)
!4455 = distinct !DILexicalBlock(scope: !4447, file: !3779, line: 134, column: 2)
!4456 = !DILocation(line: 134, column: 2, scope: !4455)
!4457 = !DILocation(line: 134, column: 2, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4455, file: !3779, line: 134, column: 2)
!4459 = !DILocation(line: 134, column: 2, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4458, file: !3779, line: 134, column: 2)
!4461 = !DILocation(line: 134, column: 2, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4460, file: !3779, line: 134, column: 2)
!4463 = !DILocation(line: 134, column: 2, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4460, file: !3779, line: 134, column: 2)
!4465 = !DILocation(line: 134, column: 2, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4464, file: !3779, line: 134, column: 2)
!4467 = !DILocation(line: 134, column: 2, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4464, file: !3779, line: 134, column: 2)
!4469 = !{i32 -2145554457, i32 -2145554428, i32 -2145554382, i32 -2145554324, i32 -2145554270, i32 -2145554216, i32 -2145554161, i32 -2145554130}
!4470 = !DILocation(line: 134, column: 2, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4464, file: !3779, line: 134, column: 2)
!4472 = !{i32 -2145553710, i32 -2145553703, i32 -2145553651, i32 -2145553620, i32 -2145553590}
!4473 = !DILocation(line: 134, column: 2, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4464, file: !3779, line: 134, column: 2)
!4475 = !DILocation(line: 134, column: 2, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4460, file: !3779, line: 134, column: 2)
!4477 = !DILocation(line: 135, column: 1, scope: !4447)
!4478 = distinct !DISubprogram(name: "check_object_size", scope: !3779, file: !3779, line: 122, type: !4479, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{null, !1995, !278, !163}
!4481 = !DILocalVariable(name: "ptr", arg: 1, scope: !4478, file: !3779, line: 122, type: !1995)
!4482 = !DILocation(line: 122, column: 50, scope: !4478)
!4483 = !DILocalVariable(name: "n", arg: 2, scope: !4478, file: !3779, line: 122, type: !278)
!4484 = !DILocation(line: 122, column: 69, scope: !4478)
!4485 = !DILocalVariable(name: "to_user", arg: 3, scope: !4478, file: !3779, line: 123, type: !163)
!4486 = !DILocation(line: 123, column: 15, scope: !4478)
!4487 = !DILocation(line: 124, column: 3, scope: !4478)
!4488 = distinct !DISubprogram(name: "dpaa2_generic_console_open", scope: !3, file: !3, line: 103, type: !4489, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!101, !381, !306, !373, !373, !369, !369}
!4491 = !DILocation(line: 445, column: 72, scope: !3821, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 552, column: 10, scope: !3826, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 113, column: 7, scope: !4488)
!4494 = !DILocation(line: 446, column: 9, scope: !3821, inlinedAt: !4492)
!4495 = !DILocation(line: 446, column: 23, scope: !3821, inlinedAt: !4492)
!4496 = !DILocation(line: 448, column: 8, scope: !3821, inlinedAt: !4492)
!4497 = !DILocation(line: 318, column: 67, scope: !3839, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 553, column: 20, scope: !3826, inlinedAt: !4493)
!4499 = !DILocation(line: 346, column: 58, scope: !3845, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 547, column: 11, scope: !3826, inlinedAt: !4493)
!4501 = !DILocation(line: 472, column: 28, scope: !3851, inlinedAt: !4502)
!4502 = distinct !DILocation(line: 481, column: 9, scope: !3856, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 545, column: 11, scope: !3858, inlinedAt: !4493)
!4504 = !DILocation(line: 472, column: 40, scope: !3851, inlinedAt: !4502)
!4505 = !DILocation(line: 472, column: 60, scope: !3851, inlinedAt: !4502)
!4506 = !DILocation(line: 478, column: 51, scope: !3856, inlinedAt: !4503)
!4507 = !DILocation(line: 478, column: 63, scope: !3856, inlinedAt: !4503)
!4508 = !DILocation(line: 480, column: 15, scope: !3856, inlinedAt: !4503)
!4509 = !DILocation(line: 538, column: 45, scope: !3828, inlinedAt: !4493)
!4510 = !DILocation(line: 538, column: 57, scope: !3828, inlinedAt: !4493)
!4511 = !DILocation(line: 542, column: 16, scope: !3826, inlinedAt: !4493)
!4512 = !DILocalVariable(name: "node", arg: 1, scope: !4488, file: !3, line: 103, type: !381)
!4513 = !DILocation(line: 103, column: 53, scope: !4488)
!4514 = !DILocalVariable(name: "fp", arg: 2, scope: !4488, file: !3, line: 103, type: !306)
!4515 = !DILocation(line: 103, column: 72, scope: !4488)
!4516 = !DILocalVariable(name: "offset", arg: 3, scope: !4488, file: !3, line: 104, type: !373)
!4517 = !DILocation(line: 104, column: 15, scope: !4488)
!4518 = !DILocalVariable(name: "size", arg: 4, scope: !4488, file: !3, line: 104, type: !373)
!4519 = !DILocation(line: 104, column: 27, scope: !4488)
!4520 = !DILocalVariable(name: "expected_magic", arg: 5, scope: !4488, file: !3, line: 105, type: !369)
!4521 = !DILocation(line: 105, column: 15, scope: !4488)
!4522 = !DILocalVariable(name: "offset_delta", arg: 6, scope: !4488, file: !3, line: 106, type: !369)
!4523 = !DILocation(line: 106, column: 15, scope: !4488)
!4524 = !DILocalVariable(name: "read_magic", scope: !4488, file: !3, line: 108, type: !369)
!4525 = !DILocation(line: 108, column: 6, scope: !4488)
!4526 = !DILocalVariable(name: "wrapped", scope: !4488, file: !3, line: 108, type: !369)
!4527 = !DILocation(line: 108, column: 18, scope: !4488)
!4528 = !DILocalVariable(name: "last_byte", scope: !4488, file: !3, line: 108, type: !369)
!4529 = !DILocation(line: 108, column: 27, scope: !4488)
!4530 = !DILocalVariable(name: "buf_start", scope: !4488, file: !3, line: 108, type: !369)
!4531 = !DILocation(line: 108, column: 38, scope: !4488)
!4532 = !DILocalVariable(name: "buf_length", scope: !4488, file: !3, line: 108, type: !369)
!4533 = !DILocation(line: 108, column: 49, scope: !4488)
!4534 = !DILocalVariable(name: "cd", scope: !4488, file: !3, line: 109, type: !3884)
!4535 = !DILocation(line: 109, column: 23, scope: !4488)
!4536 = !DILocalVariable(name: "base_addr", scope: !4488, file: !3, line: 110, type: !373)
!4537 = !DILocation(line: 110, column: 6, scope: !4488)
!4538 = !DILocalVariable(name: "err", scope: !4488, file: !3, line: 111, type: !101)
!4539 = !DILocation(line: 111, column: 6, scope: !4488)
!4540 = !DILocation(line: 540, column: 27, scope: !3827, inlinedAt: !4493)
!4541 = !DILocation(line: 540, column: 6, scope: !3827, inlinedAt: !4493)
!4542 = !DILocation(line: 540, column: 6, scope: !3828, inlinedAt: !4493)
!4543 = !DILocation(line: 544, column: 7, scope: !3858, inlinedAt: !4493)
!4544 = !DILocation(line: 544, column: 12, scope: !3858, inlinedAt: !4493)
!4545 = !DILocation(line: 544, column: 7, scope: !3826, inlinedAt: !4493)
!4546 = !DILocation(line: 545, column: 25, scope: !3858, inlinedAt: !4493)
!4547 = !DILocation(line: 545, column: 31, scope: !3858, inlinedAt: !4493)
!4548 = !DILocation(line: 480, column: 33, scope: !3856, inlinedAt: !4503)
!4549 = !DILocation(line: 480, column: 23, scope: !3856, inlinedAt: !4503)
!4550 = !DILocation(line: 481, column: 29, scope: !3856, inlinedAt: !4503)
!4551 = !DILocation(line: 481, column: 35, scope: !3856, inlinedAt: !4503)
!4552 = !DILocation(line: 481, column: 42, scope: !3856, inlinedAt: !4503)
!4553 = !DILocation(line: 474, column: 23, scope: !3851, inlinedAt: !4502)
!4554 = !DILocation(line: 474, column: 29, scope: !3851, inlinedAt: !4502)
!4555 = !DILocation(line: 474, column: 36, scope: !3851, inlinedAt: !4502)
!4556 = !DILocation(line: 474, column: 9, scope: !3851, inlinedAt: !4502)
!4557 = !DILocation(line: 545, column: 4, scope: !3858, inlinedAt: !4493)
!4558 = !DILocation(line: 547, column: 25, scope: !3826, inlinedAt: !4493)
!4559 = !DILocation(line: 348, column: 7, scope: !3952, inlinedAt: !4500)
!4560 = !DILocation(line: 348, column: 6, scope: !3845, inlinedAt: !4500)
!4561 = !DILocation(line: 349, column: 3, scope: !3952, inlinedAt: !4500)
!4562 = !DILocation(line: 351, column: 6, scope: !3956, inlinedAt: !4500)
!4563 = !DILocation(line: 351, column: 11, scope: !3956, inlinedAt: !4500)
!4564 = !DILocation(line: 351, column: 6, scope: !3845, inlinedAt: !4500)
!4565 = !DILocation(line: 352, column: 3, scope: !3956, inlinedAt: !4500)
!4566 = !DILocation(line: 354, column: 32, scope: !3961, inlinedAt: !4500)
!4567 = !DILocation(line: 354, column: 37, scope: !3961, inlinedAt: !4500)
!4568 = !DILocation(line: 354, column: 42, scope: !3961, inlinedAt: !4500)
!4569 = !DILocation(line: 354, column: 45, scope: !3961, inlinedAt: !4500)
!4570 = !DILocation(line: 354, column: 50, scope: !3961, inlinedAt: !4500)
!4571 = !DILocation(line: 354, column: 6, scope: !3845, inlinedAt: !4500)
!4572 = !DILocation(line: 355, column: 3, scope: !3961, inlinedAt: !4500)
!4573 = !DILocation(line: 356, column: 32, scope: !3969, inlinedAt: !4500)
!4574 = !DILocation(line: 356, column: 37, scope: !3969, inlinedAt: !4500)
!4575 = !DILocation(line: 356, column: 43, scope: !3969, inlinedAt: !4500)
!4576 = !DILocation(line: 356, column: 46, scope: !3969, inlinedAt: !4500)
!4577 = !DILocation(line: 356, column: 51, scope: !3969, inlinedAt: !4500)
!4578 = !DILocation(line: 356, column: 6, scope: !3845, inlinedAt: !4500)
!4579 = !DILocation(line: 357, column: 3, scope: !3969, inlinedAt: !4500)
!4580 = !DILocation(line: 358, column: 6, scope: !3977, inlinedAt: !4500)
!4581 = !DILocation(line: 358, column: 11, scope: !3977, inlinedAt: !4500)
!4582 = !DILocation(line: 358, column: 6, scope: !3845, inlinedAt: !4500)
!4583 = !DILocation(line: 358, column: 26, scope: !3977, inlinedAt: !4500)
!4584 = !DILocation(line: 359, column: 6, scope: !3982, inlinedAt: !4500)
!4585 = !DILocation(line: 359, column: 11, scope: !3982, inlinedAt: !4500)
!4586 = !DILocation(line: 359, column: 6, scope: !3845, inlinedAt: !4500)
!4587 = !DILocation(line: 359, column: 26, scope: !3982, inlinedAt: !4500)
!4588 = !DILocation(line: 360, column: 6, scope: !3987, inlinedAt: !4500)
!4589 = !DILocation(line: 360, column: 11, scope: !3987, inlinedAt: !4500)
!4590 = !DILocation(line: 360, column: 6, scope: !3845, inlinedAt: !4500)
!4591 = !DILocation(line: 360, column: 26, scope: !3987, inlinedAt: !4500)
!4592 = !DILocation(line: 361, column: 6, scope: !3992, inlinedAt: !4500)
!4593 = !DILocation(line: 361, column: 11, scope: !3992, inlinedAt: !4500)
!4594 = !DILocation(line: 361, column: 6, scope: !3845, inlinedAt: !4500)
!4595 = !DILocation(line: 361, column: 26, scope: !3992, inlinedAt: !4500)
!4596 = !DILocation(line: 362, column: 6, scope: !3997, inlinedAt: !4500)
!4597 = !DILocation(line: 362, column: 11, scope: !3997, inlinedAt: !4500)
!4598 = !DILocation(line: 362, column: 6, scope: !3845, inlinedAt: !4500)
!4599 = !DILocation(line: 362, column: 26, scope: !3997, inlinedAt: !4500)
!4600 = !DILocation(line: 363, column: 6, scope: !4002, inlinedAt: !4500)
!4601 = !DILocation(line: 363, column: 11, scope: !4002, inlinedAt: !4500)
!4602 = !DILocation(line: 363, column: 6, scope: !3845, inlinedAt: !4500)
!4603 = !DILocation(line: 363, column: 26, scope: !4002, inlinedAt: !4500)
!4604 = !DILocation(line: 364, column: 6, scope: !4007, inlinedAt: !4500)
!4605 = !DILocation(line: 364, column: 11, scope: !4007, inlinedAt: !4500)
!4606 = !DILocation(line: 364, column: 6, scope: !3845, inlinedAt: !4500)
!4607 = !DILocation(line: 364, column: 26, scope: !4007, inlinedAt: !4500)
!4608 = !DILocation(line: 365, column: 6, scope: !4012, inlinedAt: !4500)
!4609 = !DILocation(line: 365, column: 11, scope: !4012, inlinedAt: !4500)
!4610 = !DILocation(line: 365, column: 6, scope: !3845, inlinedAt: !4500)
!4611 = !DILocation(line: 365, column: 26, scope: !4012, inlinedAt: !4500)
!4612 = !DILocation(line: 366, column: 6, scope: !4017, inlinedAt: !4500)
!4613 = !DILocation(line: 366, column: 11, scope: !4017, inlinedAt: !4500)
!4614 = !DILocation(line: 366, column: 6, scope: !3845, inlinedAt: !4500)
!4615 = !DILocation(line: 366, column: 26, scope: !4017, inlinedAt: !4500)
!4616 = !DILocation(line: 367, column: 6, scope: !4022, inlinedAt: !4500)
!4617 = !DILocation(line: 367, column: 11, scope: !4022, inlinedAt: !4500)
!4618 = !DILocation(line: 367, column: 6, scope: !3845, inlinedAt: !4500)
!4619 = !DILocation(line: 367, column: 26, scope: !4022, inlinedAt: !4500)
!4620 = !DILocation(line: 368, column: 6, scope: !4027, inlinedAt: !4500)
!4621 = !DILocation(line: 368, column: 11, scope: !4027, inlinedAt: !4500)
!4622 = !DILocation(line: 368, column: 6, scope: !3845, inlinedAt: !4500)
!4623 = !DILocation(line: 368, column: 26, scope: !4027, inlinedAt: !4500)
!4624 = !DILocation(line: 369, column: 6, scope: !4032, inlinedAt: !4500)
!4625 = !DILocation(line: 369, column: 11, scope: !4032, inlinedAt: !4500)
!4626 = !DILocation(line: 369, column: 6, scope: !3845, inlinedAt: !4500)
!4627 = !DILocation(line: 369, column: 26, scope: !4032, inlinedAt: !4500)
!4628 = !DILocation(line: 370, column: 6, scope: !4037, inlinedAt: !4500)
!4629 = !DILocation(line: 370, column: 11, scope: !4037, inlinedAt: !4500)
!4630 = !DILocation(line: 370, column: 6, scope: !3845, inlinedAt: !4500)
!4631 = !DILocation(line: 370, column: 26, scope: !4037, inlinedAt: !4500)
!4632 = !DILocation(line: 371, column: 6, scope: !4042, inlinedAt: !4500)
!4633 = !DILocation(line: 371, column: 11, scope: !4042, inlinedAt: !4500)
!4634 = !DILocation(line: 371, column: 6, scope: !3845, inlinedAt: !4500)
!4635 = !DILocation(line: 371, column: 26, scope: !4042, inlinedAt: !4500)
!4636 = !DILocation(line: 372, column: 6, scope: !4047, inlinedAt: !4500)
!4637 = !DILocation(line: 372, column: 11, scope: !4047, inlinedAt: !4500)
!4638 = !DILocation(line: 372, column: 6, scope: !3845, inlinedAt: !4500)
!4639 = !DILocation(line: 372, column: 26, scope: !4047, inlinedAt: !4500)
!4640 = !DILocation(line: 373, column: 6, scope: !4052, inlinedAt: !4500)
!4641 = !DILocation(line: 373, column: 11, scope: !4052, inlinedAt: !4500)
!4642 = !DILocation(line: 373, column: 6, scope: !3845, inlinedAt: !4500)
!4643 = !DILocation(line: 373, column: 26, scope: !4052, inlinedAt: !4500)
!4644 = !DILocation(line: 374, column: 6, scope: !4057, inlinedAt: !4500)
!4645 = !DILocation(line: 374, column: 11, scope: !4057, inlinedAt: !4500)
!4646 = !DILocation(line: 374, column: 6, scope: !3845, inlinedAt: !4500)
!4647 = !DILocation(line: 374, column: 26, scope: !4057, inlinedAt: !4500)
!4648 = !DILocation(line: 375, column: 6, scope: !4062, inlinedAt: !4500)
!4649 = !DILocation(line: 375, column: 11, scope: !4062, inlinedAt: !4500)
!4650 = !DILocation(line: 375, column: 6, scope: !3845, inlinedAt: !4500)
!4651 = !DILocation(line: 375, column: 27, scope: !4062, inlinedAt: !4500)
!4652 = !DILocation(line: 376, column: 6, scope: !4067, inlinedAt: !4500)
!4653 = !DILocation(line: 376, column: 11, scope: !4067, inlinedAt: !4500)
!4654 = !DILocation(line: 376, column: 6, scope: !3845, inlinedAt: !4500)
!4655 = !DILocation(line: 376, column: 32, scope: !4067, inlinedAt: !4500)
!4656 = !DILocation(line: 377, column: 6, scope: !4072, inlinedAt: !4500)
!4657 = !DILocation(line: 377, column: 11, scope: !4072, inlinedAt: !4500)
!4658 = !DILocation(line: 377, column: 6, scope: !3845, inlinedAt: !4500)
!4659 = !DILocation(line: 377, column: 32, scope: !4072, inlinedAt: !4500)
!4660 = !DILocation(line: 378, column: 6, scope: !4077, inlinedAt: !4500)
!4661 = !DILocation(line: 378, column: 11, scope: !4077, inlinedAt: !4500)
!4662 = !DILocation(line: 378, column: 6, scope: !3845, inlinedAt: !4500)
!4663 = !DILocation(line: 378, column: 32, scope: !4077, inlinedAt: !4500)
!4664 = !DILocation(line: 379, column: 6, scope: !4082, inlinedAt: !4500)
!4665 = !DILocation(line: 379, column: 11, scope: !4082, inlinedAt: !4500)
!4666 = !DILocation(line: 379, column: 6, scope: !3845, inlinedAt: !4500)
!4667 = !DILocation(line: 379, column: 33, scope: !4082, inlinedAt: !4500)
!4668 = !DILocation(line: 380, column: 6, scope: !4087, inlinedAt: !4500)
!4669 = !DILocation(line: 380, column: 11, scope: !4087, inlinedAt: !4500)
!4670 = !DILocation(line: 380, column: 6, scope: !3845, inlinedAt: !4500)
!4671 = !DILocation(line: 380, column: 33, scope: !4087, inlinedAt: !4500)
!4672 = !DILocation(line: 381, column: 6, scope: !4092, inlinedAt: !4500)
!4673 = !DILocation(line: 381, column: 11, scope: !4092, inlinedAt: !4500)
!4674 = !DILocation(line: 381, column: 6, scope: !3845, inlinedAt: !4500)
!4675 = !DILocation(line: 381, column: 33, scope: !4092, inlinedAt: !4500)
!4676 = !DILocation(line: 382, column: 2, scope: !4097, inlinedAt: !4500)
!4677 = !DILocation(line: 382, column: 2, scope: !4101, inlinedAt: !4500)
!4678 = !DILocation(line: 382, column: 2, scope: !4102, inlinedAt: !4500)
!4679 = !DILocation(line: 386, column: 1, scope: !3845, inlinedAt: !4500)
!4680 = !DILocation(line: 547, column: 9, scope: !3826, inlinedAt: !4493)
!4681 = !DILocation(line: 549, column: 8, scope: !4108, inlinedAt: !4493)
!4682 = !DILocation(line: 549, column: 7, scope: !3826, inlinedAt: !4493)
!4683 = !DILocation(line: 550, column: 4, scope: !4108, inlinedAt: !4493)
!4684 = !DILocation(line: 553, column: 33, scope: !3826, inlinedAt: !4493)
!4685 = !DILocation(line: 325, column: 6, scope: !4113, inlinedAt: !4498)
!4686 = !DILocation(line: 325, column: 6, scope: !3839, inlinedAt: !4498)
!4687 = !DILocation(line: 326, column: 3, scope: !4113, inlinedAt: !4498)
!4688 = !DILocation(line: 332, column: 9, scope: !3839, inlinedAt: !4498)
!4689 = !DILocation(line: 332, column: 15, scope: !3839, inlinedAt: !4498)
!4690 = !DILocation(line: 332, column: 2, scope: !3839, inlinedAt: !4498)
!4691 = !DILocation(line: 336, column: 1, scope: !3839, inlinedAt: !4498)
!4692 = !DILocation(line: 553, column: 5, scope: !3826, inlinedAt: !4493)
!4693 = !DILocation(line: 553, column: 41, scope: !3826, inlinedAt: !4493)
!4694 = !DILocation(line: 554, column: 5, scope: !3826, inlinedAt: !4493)
!4695 = !DILocation(line: 554, column: 12, scope: !3826, inlinedAt: !4493)
!4696 = !DILocation(line: 448, column: 31, scope: !3821, inlinedAt: !4492)
!4697 = !DILocation(line: 448, column: 34, scope: !3821, inlinedAt: !4492)
!4698 = !DILocation(line: 448, column: 14, scope: !3821, inlinedAt: !4492)
!4699 = !DILocation(line: 450, column: 22, scope: !3821, inlinedAt: !4492)
!4700 = !DILocation(line: 450, column: 25, scope: !3821, inlinedAt: !4492)
!4701 = !DILocation(line: 450, column: 30, scope: !3821, inlinedAt: !4492)
!4702 = !DILocation(line: 450, column: 36, scope: !3821, inlinedAt: !4492)
!4703 = !DILocation(line: 450, column: 8, scope: !3821, inlinedAt: !4492)
!4704 = !DILocation(line: 450, column: 6, scope: !3821, inlinedAt: !4492)
!4705 = !DILocation(line: 451, column: 9, scope: !3821, inlinedAt: !4492)
!4706 = !DILocation(line: 552, column: 3, scope: !3826, inlinedAt: !4493)
!4707 = !DILocation(line: 557, column: 19, scope: !3828, inlinedAt: !4493)
!4708 = !DILocation(line: 557, column: 25, scope: !3828, inlinedAt: !4493)
!4709 = !DILocation(line: 557, column: 9, scope: !3828, inlinedAt: !4493)
!4710 = !DILocation(line: 557, column: 2, scope: !3828, inlinedAt: !4493)
!4711 = !DILocation(line: 558, column: 1, scope: !3828, inlinedAt: !4493)
!4712 = !DILocation(line: 113, column: 7, scope: !4488)
!4713 = !DILocation(line: 113, column: 5, scope: !4488)
!4714 = !DILocation(line: 114, column: 7, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 114, column: 6)
!4716 = !DILocation(line: 114, column: 6, scope: !4488)
!4717 = !DILocation(line: 115, column: 3, scope: !4715)
!4718 = !DILocation(line: 117, column: 14, scope: !4488)
!4719 = !DILocation(line: 117, column: 12, scope: !4488)
!4720 = !DILocation(line: 118, column: 7, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 118, column: 6)
!4722 = !DILocation(line: 118, column: 6, scope: !4488)
!4723 = !DILocation(line: 119, column: 7, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 118, column: 18)
!4725 = !DILocation(line: 120, column: 3, scope: !4724)
!4726 = !DILocation(line: 123, column: 25, scope: !4488)
!4727 = !DILocation(line: 123, column: 37, scope: !4488)
!4728 = !DILocation(line: 123, column: 35, scope: !4488)
!4729 = !DILocation(line: 123, column: 45, scope: !4488)
!4730 = !DILocation(line: 123, column: 17, scope: !4488)
!4731 = !DILocation(line: 123, column: 2, scope: !4488)
!4732 = !DILocation(line: 123, column: 6, scope: !4488)
!4733 = !DILocation(line: 123, column: 15, scope: !4488)
!4734 = !DILocation(line: 124, column: 7, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 124, column: 6)
!4736 = !DILocation(line: 124, column: 11, scope: !4735)
!4737 = !DILocation(line: 124, column: 6, scope: !4488)
!4738 = !DILocation(line: 125, column: 3, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 124, column: 21)
!4740 = !DILocation(line: 126, column: 7, scope: !4739)
!4741 = !DILocation(line: 127, column: 3, scope: !4739)
!4742 = !DILocation(line: 130, column: 41, scope: !4488)
!4743 = !DILocation(line: 130, column: 45, scope: !4488)
!4744 = !DILocation(line: 130, column: 12, scope: !4488)
!4745 = !DILocation(line: 130, column: 2, scope: !4488)
!4746 = !DILocation(line: 130, column: 6, scope: !4488)
!4747 = !DILocation(line: 130, column: 10, scope: !4488)
!4748 = !DILocation(line: 131, column: 22, scope: !4488)
!4749 = !DILocation(line: 131, column: 26, scope: !4488)
!4750 = !DILocation(line: 131, column: 31, scope: !4488)
!4751 = !DILocation(line: 131, column: 21, scope: !4488)
!4752 = !DILocation(line: 131, column: 15, scope: !4488)
!4753 = !DILocation(line: 131, column: 13, scope: !4488)
!4754 = !DILocation(line: 132, column: 22, scope: !4488)
!4755 = !DILocation(line: 132, column: 26, scope: !4488)
!4756 = !DILocation(line: 132, column: 31, scope: !4488)
!4757 = !DILocation(line: 132, column: 21, scope: !4488)
!4758 = !DILocation(line: 132, column: 15, scope: !4488)
!4759 = !DILocation(line: 132, column: 12, scope: !4488)
!4760 = !DILocation(line: 133, column: 22, scope: !4488)
!4761 = !DILocation(line: 133, column: 26, scope: !4488)
!4762 = !DILocation(line: 133, column: 31, scope: !4488)
!4763 = !DILocation(line: 133, column: 21, scope: !4488)
!4764 = !DILocation(line: 133, column: 15, scope: !4488)
!4765 = !DILocation(line: 133, column: 12, scope: !4488)
!4766 = !DILocation(line: 134, column: 22, scope: !4488)
!4767 = !DILocation(line: 134, column: 26, scope: !4488)
!4768 = !DILocation(line: 134, column: 31, scope: !4488)
!4769 = !DILocation(line: 134, column: 21, scope: !4488)
!4770 = !DILocation(line: 134, column: 15, scope: !4488)
!4771 = !DILocation(line: 134, column: 13, scope: !4488)
!4772 = !DILocation(line: 136, column: 6, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 136, column: 6)
!4774 = !DILocation(line: 136, column: 20, scope: !4773)
!4775 = !DILocation(line: 136, column: 17, scope: !4773)
!4776 = !DILocation(line: 136, column: 6, scope: !4488)
!4777 = !DILocation(line: 137, column: 3, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 136, column: 36)
!4779 = !DILocation(line: 139, column: 7, scope: !4778)
!4780 = !DILocation(line: 140, column: 3, scope: !4778)
!4781 = !DILocation(line: 143, column: 19, scope: !4488)
!4782 = !DILocation(line: 143, column: 23, scope: !4488)
!4783 = !DILocation(line: 143, column: 34, scope: !4488)
!4784 = !DILocation(line: 143, column: 32, scope: !4488)
!4785 = !DILocation(line: 143, column: 46, scope: !4488)
!4786 = !DILocation(line: 143, column: 44, scope: !4488)
!4787 = !DILocation(line: 143, column: 2, scope: !4488)
!4788 = !DILocation(line: 143, column: 6, scope: !4488)
!4789 = !DILocation(line: 143, column: 17, scope: !4488)
!4790 = !DILocation(line: 144, column: 17, scope: !4488)
!4791 = !DILocation(line: 144, column: 21, scope: !4488)
!4792 = !DILocation(line: 144, column: 34, scope: !4488)
!4793 = !DILocation(line: 144, column: 32, scope: !4488)
!4794 = !DILocation(line: 144, column: 2, scope: !4488)
!4795 = !DILocation(line: 144, column: 6, scope: !4488)
!4796 = !DILocation(line: 144, column: 15, scope: !4488)
!4797 = !DILocation(line: 146, column: 12, scope: !4488)
!4798 = !DILocation(line: 146, column: 22, scope: !4488)
!4799 = !DILocation(line: 146, column: 10, scope: !4488)
!4800 = !DILocation(line: 148, column: 13, scope: !4488)
!4801 = !DILocation(line: 148, column: 2, scope: !4488)
!4802 = !DILocation(line: 149, column: 6, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 149, column: 6)
!4804 = !DILocation(line: 149, column: 14, scope: !4803)
!4805 = !DILocation(line: 149, column: 17, scope: !4803)
!4806 = !DILocation(line: 149, column: 21, scope: !4803)
!4807 = !DILocation(line: 149, column: 36, scope: !4803)
!4808 = !DILocation(line: 149, column: 40, scope: !4803)
!4809 = !DILocation(line: 149, column: 33, scope: !4803)
!4810 = !DILocation(line: 149, column: 6, scope: !4488)
!4811 = !DILocation(line: 150, column: 17, scope: !4803)
!4812 = !DILocation(line: 150, column: 21, scope: !4803)
!4813 = !DILocation(line: 150, column: 33, scope: !4803)
!4814 = !DILocation(line: 150, column: 3, scope: !4803)
!4815 = !DILocation(line: 150, column: 7, scope: !4803)
!4816 = !DILocation(line: 150, column: 15, scope: !4803)
!4817 = !DILocation(line: 152, column: 17, scope: !4803)
!4818 = !DILocation(line: 152, column: 21, scope: !4803)
!4819 = !DILocation(line: 152, column: 3, scope: !4803)
!4820 = !DILocation(line: 152, column: 7, scope: !4803)
!4821 = !DILocation(line: 152, column: 15, scope: !4803)
!4822 = !DILocation(line: 154, column: 21, scope: !4488)
!4823 = !DILocation(line: 154, column: 2, scope: !4488)
!4824 = !DILocation(line: 154, column: 6, scope: !4488)
!4825 = !DILocation(line: 154, column: 19, scope: !4488)
!4826 = !DILocation(line: 156, column: 2, scope: !4488)
!4827 = !DILabel(scope: !4488, name: "err_magic", file: !3, line: 158)
!4828 = !DILocation(line: 158, column: 1, scope: !4488)
!4829 = !DILocation(line: 159, column: 10, scope: !4488)
!4830 = !DILocation(line: 159, column: 14, scope: !4488)
!4831 = !DILocation(line: 159, column: 2, scope: !4488)
!4832 = !DILabel(scope: !4488, name: "err_ioremap", file: !3, line: 161)
!4833 = !DILocation(line: 161, column: 1, scope: !4488)
!4834 = !DILabel(scope: !4488, name: "err_fwba", file: !3, line: 162)
!4835 = !DILocation(line: 162, column: 1, scope: !4488)
!4836 = !DILocation(line: 163, column: 8, scope: !4488)
!4837 = !DILocation(line: 163, column: 2, scope: !4488)
!4838 = !DILocation(line: 165, column: 9, scope: !4488)
!4839 = !DILocation(line: 165, column: 2, scope: !4488)
!4840 = !DILocation(line: 166, column: 1, scope: !4488)
!4841 = distinct !DISubprogram(name: "get_mc_fw_base_address", scope: !3, file: !3, line: 69, type: !4842, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!373}
!4844 = !DILocalVariable(name: "mcfwbase", scope: !4841, file: !3, line: 71, type: !373)
!4845 = !DILocation(line: 71, column: 6, scope: !4841)
!4846 = !DILocalVariable(name: "mcfbaregs", scope: !4841, file: !3, line: 72, type: !1283)
!4847 = !DILocation(line: 72, column: 15, scope: !4841)
!4848 = !DILocation(line: 74, column: 35, scope: !4841)
!4849 = !DILocation(line: 74, column: 42, scope: !4841)
!4850 = !DILocation(line: 74, column: 14, scope: !4841)
!4851 = !DILocation(line: 74, column: 12, scope: !4841)
!4852 = !DILocation(line: 75, column: 7, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 75, column: 6)
!4854 = !DILocation(line: 75, column: 6, scope: !4841)
!4855 = !DILocation(line: 76, column: 3, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 75, column: 18)
!4857 = !DILocation(line: 77, column: 3, scope: !4856)
!4858 = !DILocation(line: 80, column: 20, scope: !4841)
!4859 = !DILocation(line: 80, column: 30, scope: !4841)
!4860 = !DILocation(line: 80, column: 14, scope: !4841)
!4861 = !DILocation(line: 80, column: 48, scope: !4841)
!4862 = !DILocation(line: 80, column: 12, scope: !4841)
!4863 = !DILocation(line: 82, column: 11, scope: !4841)
!4864 = !DILocation(line: 83, column: 20, scope: !4841)
!4865 = !DILocation(line: 83, column: 30, scope: !4841)
!4866 = !DILocation(line: 83, column: 14, scope: !4841)
!4867 = !DILocation(line: 83, column: 48, scope: !4841)
!4868 = !DILocation(line: 83, column: 11, scope: !4841)
!4869 = !DILocation(line: 84, column: 10, scope: !4841)
!4870 = !DILocation(line: 84, column: 2, scope: !4841)
!4871 = !DILocation(line: 86, column: 2, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 86, column: 2)
!4873 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 86, column: 2)
!4874 = !DILocation(line: 86, column: 2, scope: !4873)
!4875 = !DILocation(line: 87, column: 9, scope: !4841)
!4876 = !DILocation(line: 87, column: 2, scope: !4841)
!4877 = !DILocation(line: 88, column: 1, scope: !4841)
!4878 = distinct !DISubprogram(name: "resource_size", scope: !3653, file: !3653, line: 210, type: !4879, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!3656, !4881}
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!4883 = !DILocalVariable(name: "res", arg: 1, scope: !4878, file: !3653, line: 210, type: !4881)
!4884 = !DILocation(line: 210, column: 68, scope: !4878)
!4885 = !DILocation(line: 212, column: 9, scope: !4878)
!4886 = !DILocation(line: 212, column: 14, scope: !4878)
!4887 = !DILocation(line: 212, column: 20, scope: !4878)
!4888 = !DILocation(line: 212, column: 25, scope: !4878)
!4889 = !DILocation(line: 212, column: 18, scope: !4878)
!4890 = !DILocation(line: 212, column: 31, scope: !4878)
!4891 = !DILocation(line: 212, column: 2, scope: !4878)
!4892 = distinct !DISubprogram(name: "dpaa2_aiop_console_open", scope: !3, file: !3, line: 175, type: !2727, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!4893 = !DILocalVariable(name: "node", arg: 1, scope: !4892, file: !3, line: 175, type: !381)
!4894 = !DILocation(line: 175, column: 50, scope: !4892)
!4895 = !DILocalVariable(name: "fp", arg: 2, scope: !4892, file: !3, line: 175, type: !306)
!4896 = !DILocation(line: 175, column: 69, scope: !4892)
!4897 = !DILocation(line: 177, column: 36, scope: !4892)
!4898 = !DILocation(line: 177, column: 42, scope: !4892)
!4899 = !DILocation(line: 177, column: 9, scope: !4892)
!4900 = !DILocation(line: 177, column: 2, scope: !4892)
